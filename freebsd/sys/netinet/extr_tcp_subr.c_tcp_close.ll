; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_subr.c_tcp_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_subr.c_tcp_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i64, i32*, %struct.inpcb* }
%struct.inpcb = type { i32, %struct.socket* }
%struct.socket = type { i32 }

@V_tcbinfo = common dso_local global i32 0, align 4
@tcps_closed = common dso_local global i32 0, align 4
@TCPS_CLOSED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"tcp_close: inp_socket NULL\00", align 1
@INP_SOCKREF = common dso_local global i32 0, align 4
@SS_PROTOREF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"tcp_close: !SS_PROTOREF\00", align 1
@TCPS_LISTEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tcpcb* @tcp_close(%struct.tcpcb* %0) #0 {
  %2 = alloca %struct.tcpcb*, align 8
  %3 = alloca %struct.tcpcb*, align 8
  %4 = alloca %struct.inpcb*, align 8
  %5 = alloca %struct.socket*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %3, align 8
  %6 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %7 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %6, i32 0, i32 2
  %8 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  store %struct.inpcb* %8, %struct.inpcb** %4, align 8
  %9 = call i32 @INP_INFO_LOCK_ASSERT(i32* @V_tcbinfo)
  %10 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %11 = call i32 @INP_WLOCK_ASSERT(%struct.inpcb* %10)
  %12 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %13 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %18 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @tcp_fastopen_decrement_counter(i32* %19)
  %21 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %22 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %21, i32 0, i32 1
  store i32* null, i32** %22, align 8
  br label %23

23:                                               ; preds = %16, %1
  %24 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %25 = call i32 @in_pcbdrop(%struct.inpcb* %24)
  %26 = load i32, i32* @tcps_closed, align 4
  %27 = call i32 @TCPSTAT_INC(i32 %26)
  %28 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %29 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @TCPS_CLOSED, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %23
  %34 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %35 = load i64, i64* @TCPS_CLOSED, align 8
  %36 = call i32 @tcp_state_change(%struct.tcpcb* %34, i64 %35)
  br label %37

37:                                               ; preds = %33, %23
  %38 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %39 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %38, i32 0, i32 1
  %40 = load %struct.socket*, %struct.socket** %39, align 8
  %41 = icmp ne %struct.socket* %40, null
  %42 = zext i1 %41 to i32
  %43 = call i32 @KASSERT(i32 %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %45 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %44, i32 0, i32 1
  %46 = load %struct.socket*, %struct.socket** %45, align 8
  store %struct.socket* %46, %struct.socket** %5, align 8
  %47 = load %struct.socket*, %struct.socket** %5, align 8
  %48 = call i32 @soisdisconnected(%struct.socket* %47)
  %49 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %50 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @INP_SOCKREF, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %80

55:                                               ; preds = %37
  %56 = load %struct.socket*, %struct.socket** %5, align 8
  %57 = getelementptr inbounds %struct.socket, %struct.socket* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @SS_PROTOREF, align 4
  %60 = and i32 %58, %59
  %61 = call i32 @KASSERT(i32 %60, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* @INP_SOCKREF, align 4
  %63 = xor i32 %62, -1
  %64 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %65 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = and i32 %66, %63
  store i32 %67, i32* %65, align 8
  %68 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %69 = call i32 @INP_WUNLOCK(%struct.inpcb* %68)
  %70 = load %struct.socket*, %struct.socket** %5, align 8
  %71 = call i32 @SOCK_LOCK(%struct.socket* %70)
  %72 = load i32, i32* @SS_PROTOREF, align 4
  %73 = xor i32 %72, -1
  %74 = load %struct.socket*, %struct.socket** %5, align 8
  %75 = getelementptr inbounds %struct.socket, %struct.socket* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, %73
  store i32 %77, i32* %75, align 4
  %78 = load %struct.socket*, %struct.socket** %5, align 8
  %79 = call i32 @sofree(%struct.socket* %78)
  store %struct.tcpcb* null, %struct.tcpcb** %2, align 8
  br label %82

80:                                               ; preds = %37
  %81 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  store %struct.tcpcb* %81, %struct.tcpcb** %2, align 8
  br label %82

82:                                               ; preds = %80, %55
  %83 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  ret %struct.tcpcb* %83
}

declare dso_local i32 @INP_INFO_LOCK_ASSERT(i32*) #1

declare dso_local i32 @INP_WLOCK_ASSERT(%struct.inpcb*) #1

declare dso_local i32 @tcp_fastopen_decrement_counter(i32*) #1

declare dso_local i32 @in_pcbdrop(%struct.inpcb*) #1

declare dso_local i32 @TCPSTAT_INC(i32) #1

declare dso_local i32 @tcp_state_change(%struct.tcpcb*, i64) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @soisdisconnected(%struct.socket*) #1

declare dso_local i32 @INP_WUNLOCK(%struct.inpcb*) #1

declare dso_local i32 @SOCK_LOCK(%struct.socket*) #1

declare dso_local i32 @sofree(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
