; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_usrreq.c_sctp_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_usrreq.c_sctp_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.TYPE_4__, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i32*, i64, i64 }
%struct.TYPE_3__ = type { i32*, i64, i64 }
%struct.sctp_inpcb = type { i32 }

@SCTP_FROM_SCTP_USRREQ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SCTP_PCB_FLAGS_UDPTYPE = common dso_local global i32 0, align 4
@PRU_FLUSH_RD = common dso_local global i32 0, align 4
@PRU_FLUSH_RDWR = common dso_local global i32 0, align 4
@SCTP_PCB_FLAGS_SOCKET_CANT_READ = common dso_local global i32 0, align 4
@PRU_FLUSH_WR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_flush(%struct.socket* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sctp_inpcb*, align 8
  store %struct.socket* %0, %struct.socket** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.socket*, %struct.socket** %4, align 8
  %8 = getelementptr inbounds %struct.socket, %struct.socket* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.sctp_inpcb*
  store %struct.sctp_inpcb* %10, %struct.sctp_inpcb** %6, align 8
  %11 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %6, align 8
  %12 = icmp eq %struct.sctp_inpcb* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %6, align 8
  %15 = load i32, i32* @SCTP_FROM_SCTP_USRREQ, align 4
  %16 = load i32, i32* @EINVAL, align 4
  %17 = call i32 @SCTP_LTRACE_ERR_RET(%struct.sctp_inpcb* %14, i32* null, i32* null, i32 %15, i32 %16)
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %3, align 4
  br label %83

19:                                               ; preds = %2
  %20 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %6, align 8
  %21 = call i32 @SCTP_INP_RLOCK(%struct.sctp_inpcb* %20)
  %22 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %6, align 8
  %23 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @SCTP_PCB_FLAGS_UDPTYPE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %6, align 8
  %30 = call i32 @SCTP_INP_RUNLOCK(%struct.sctp_inpcb* %29)
  store i32 0, i32* %3, align 4
  br label %83

31:                                               ; preds = %19
  %32 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %6, align 8
  %33 = call i32 @SCTP_INP_RUNLOCK(%struct.sctp_inpcb* %32)
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @PRU_FLUSH_RD, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @PRU_FLUSH_RDWR, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %64

41:                                               ; preds = %37, %31
  %42 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %6, align 8
  %43 = call i32 @SCTP_INP_WLOCK(%struct.sctp_inpcb* %42)
  %44 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %6, align 8
  %45 = call i32 @SCTP_INP_READ_LOCK(%struct.sctp_inpcb* %44)
  %46 = load i32, i32* @SCTP_PCB_FLAGS_SOCKET_CANT_READ, align 4
  %47 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %6, align 8
  %48 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %6, align 8
  %52 = call i32 @SCTP_INP_READ_UNLOCK(%struct.sctp_inpcb* %51)
  %53 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %6, align 8
  %54 = call i32 @SCTP_INP_WUNLOCK(%struct.sctp_inpcb* %53)
  %55 = load %struct.socket*, %struct.socket** %4, align 8
  %56 = getelementptr inbounds %struct.socket, %struct.socket* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  store i64 0, i64* %57, align 8
  %58 = load %struct.socket*, %struct.socket** %4, align 8
  %59 = getelementptr inbounds %struct.socket, %struct.socket* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  store i64 0, i64* %60, align 8
  %61 = load %struct.socket*, %struct.socket** %4, align 8
  %62 = getelementptr inbounds %struct.socket, %struct.socket* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i32* null, i32** %63, align 8
  br label %64

64:                                               ; preds = %41, %37
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @PRU_FLUSH_WR, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @PRU_FLUSH_RDWR, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %68, %64
  %73 = load %struct.socket*, %struct.socket** %4, align 8
  %74 = getelementptr inbounds %struct.socket, %struct.socket* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  store i64 0, i64* %75, align 8
  %76 = load %struct.socket*, %struct.socket** %4, align 8
  %77 = getelementptr inbounds %struct.socket, %struct.socket* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  store i64 0, i64* %78, align 8
  %79 = load %struct.socket*, %struct.socket** %4, align 8
  %80 = getelementptr inbounds %struct.socket, %struct.socket* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  store i32* null, i32** %81, align 8
  br label %82

82:                                               ; preds = %72, %68
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %28, %13
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @SCTP_LTRACE_ERR_RET(%struct.sctp_inpcb*, i32*, i32*, i32, i32) #1

declare dso_local i32 @SCTP_INP_RLOCK(%struct.sctp_inpcb*) #1

declare dso_local i32 @SCTP_INP_RUNLOCK(%struct.sctp_inpcb*) #1

declare dso_local i32 @SCTP_INP_WLOCK(%struct.sctp_inpcb*) #1

declare dso_local i32 @SCTP_INP_READ_LOCK(%struct.sctp_inpcb*) #1

declare dso_local i32 @SCTP_INP_READ_UNLOCK(%struct.sctp_inpcb*) #1

declare dso_local i32 @SCTP_INP_WUNLOCK(%struct.sctp_inpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
