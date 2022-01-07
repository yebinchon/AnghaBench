; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_usrreq.c_sctp_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_usrreq.c_sctp_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, i64, i32*, %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.sctp_inpcb = type { i32 }

@SCTP_PCB_FLAGS_SOCKET_GONE = common dso_local global i32 0, align 4
@SCTP_PCB_FLAGS_CLOSE_IP = common dso_local global i32 0, align 4
@SO_LINGER = common dso_local global i32 0, align 4
@SCTP_FREE_SHOULD_USE_ABORT = common dso_local global i32 0, align 4
@SCTP_CALLED_AFTER_CMPSET_OFCLOSE = common dso_local global i32 0, align 4
@SCTP_FREE_SHOULD_USE_GRACEFUL_CLOSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_close(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  %3 = alloca %struct.sctp_inpcb*, align 8
  %4 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %2, align 8
  %5 = load %struct.socket*, %struct.socket** %2, align 8
  %6 = getelementptr inbounds %struct.socket, %struct.socket* %5, i32 0, i32 2
  %7 = load i32*, i32** %6, align 8
  %8 = bitcast i32* %7 to %struct.sctp_inpcb*
  store %struct.sctp_inpcb* %8, %struct.sctp_inpcb** %3, align 8
  %9 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %10 = icmp eq %struct.sctp_inpcb* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %88

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %85, %12
  %14 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %15 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @SCTP_PCB_FLAGS_SOCKET_GONE, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %77

21:                                               ; preds = %13
  %22 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %23 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %22, i32 0, i32 0
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @SCTP_PCB_FLAGS_SOCKET_GONE, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @SCTP_PCB_FLAGS_CLOSE_IP, align 4
  %29 = or i32 %27, %28
  %30 = call i64 @atomic_cmpset_int(i32* %23, i32 %24, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %77

32:                                               ; preds = %21
  %33 = load %struct.socket*, %struct.socket** %2, align 8
  %34 = getelementptr inbounds %struct.socket, %struct.socket* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @SO_LINGER, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load %struct.socket*, %struct.socket** %2, align 8
  %41 = getelementptr inbounds %struct.socket, %struct.socket* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %39, %32
  %45 = load %struct.socket*, %struct.socket** %2, align 8
  %46 = getelementptr inbounds %struct.socket, %struct.socket* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %44, %39
  %51 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %52 = load i32, i32* @SCTP_FREE_SHOULD_USE_ABORT, align 4
  %53 = load i32, i32* @SCTP_CALLED_AFTER_CMPSET_OFCLOSE, align 4
  %54 = call i32 @sctp_inpcb_free(%struct.sctp_inpcb* %51, i32 %52, i32 %53)
  br label %60

55:                                               ; preds = %44
  %56 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %57 = load i32, i32* @SCTP_FREE_SHOULD_USE_GRACEFUL_CLOSE, align 4
  %58 = load i32, i32* @SCTP_CALLED_AFTER_CMPSET_OFCLOSE, align 4
  %59 = call i32 @sctp_inpcb_free(%struct.sctp_inpcb* %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %55, %50
  %61 = load %struct.socket*, %struct.socket** %2, align 8
  %62 = call i32 @SOCK_LOCK(%struct.socket* %61)
  %63 = load %struct.socket*, %struct.socket** %2, align 8
  %64 = getelementptr inbounds %struct.socket, %struct.socket* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @SCTP_SB_CLEAR(i64 %66)
  %68 = load %struct.socket*, %struct.socket** %2, align 8
  %69 = getelementptr inbounds %struct.socket, %struct.socket* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @SCTP_SB_CLEAR(i64 %71)
  %73 = load %struct.socket*, %struct.socket** %2, align 8
  %74 = getelementptr inbounds %struct.socket, %struct.socket* %73, i32 0, i32 2
  store i32* null, i32** %74, align 8
  %75 = load %struct.socket*, %struct.socket** %2, align 8
  %76 = call i32 @SOCK_UNLOCK(%struct.socket* %75)
  br label %87

77:                                               ; preds = %21, %13
  %78 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %79 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @SCTP_PCB_FLAGS_SOCKET_GONE, align 4
  %83 = and i32 %81, %82
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  br label %13

86:                                               ; preds = %77
  br label %87

87:                                               ; preds = %86, %60
  br label %88

88:                                               ; preds = %87, %11
  ret void
}

declare dso_local i64 @atomic_cmpset_int(i32*, i32, i32) #1

declare dso_local i32 @sctp_inpcb_free(%struct.sctp_inpcb*, i32, i32) #1

declare dso_local i32 @SOCK_LOCK(%struct.socket*) #1

declare dso_local i32 @SCTP_SB_CLEAR(i64) #1

declare dso_local i32 @SOCK_UNLOCK(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
