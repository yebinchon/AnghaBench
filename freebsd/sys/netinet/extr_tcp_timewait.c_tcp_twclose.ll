; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_timewait.c_tcp_twclose.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_timewait.c_tcp_twclose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcptw = type { %struct.inpcb* }
%struct.inpcb = type { i32, %struct.socket*, i32* }
%struct.socket = type { i32 }

@INP_TIMEWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"tcp_twclose: !timewait\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"tcp_twclose: inp_ppcb != tw\00", align 1
@INP_SOCKREF = common dso_local global i32 0, align 4
@SS_PROTOREF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"tcp_twclose: INP_SOCKREF && !SS_PROTOREF\00", align 1
@tcps_closed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_twclose(%struct.tcptw* %0, i32 %1) #0 {
  %3 = alloca %struct.tcptw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.inpcb*, align 8
  store %struct.tcptw* %0, %struct.tcptw** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.tcptw*, %struct.tcptw** %3, align 8
  %8 = getelementptr inbounds %struct.tcptw, %struct.tcptw* %7, i32 0, i32 0
  %9 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  store %struct.inpcb* %9, %struct.inpcb** %6, align 8
  %10 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %11 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @INP_TIMEWAIT, align 4
  %14 = and i32 %12, %13
  %15 = call i32 @KASSERT(i32 %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %17 = call %struct.tcptw* @intotw(%struct.inpcb* %16)
  %18 = load %struct.tcptw*, %struct.tcptw** %3, align 8
  %19 = icmp eq %struct.tcptw* %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @KASSERT(i32 %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %22 = call i32 (...) @NET_EPOCH_ASSERT()
  %23 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %24 = call i32 @INP_WLOCK_ASSERT(%struct.inpcb* %23)
  %25 = load %struct.tcptw*, %struct.tcptw** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @tcp_tw_2msl_stop(%struct.tcptw* %25, i32 %26)
  %28 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %29 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %28, i32 0, i32 2
  store i32* null, i32** %29, align 8
  %30 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %31 = call i32 @in_pcbdrop(%struct.inpcb* %30)
  %32 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %33 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %32, i32 0, i32 1
  %34 = load %struct.socket*, %struct.socket** %33, align 8
  store %struct.socket* %34, %struct.socket** %5, align 8
  %35 = load %struct.socket*, %struct.socket** %5, align 8
  %36 = icmp ne %struct.socket* %35, null
  br i1 %36, label %37, label %73

37:                                               ; preds = %2
  %38 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %39 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @INP_SOCKREF, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %69

44:                                               ; preds = %37
  %45 = load i32, i32* @INP_SOCKREF, align 4
  %46 = xor i32 %45, -1
  %47 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %48 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 8
  %51 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %52 = call i32 @INP_WUNLOCK(%struct.inpcb* %51)
  %53 = load %struct.socket*, %struct.socket** %5, align 8
  %54 = call i32 @SOCK_LOCK(%struct.socket* %53)
  %55 = load %struct.socket*, %struct.socket** %5, align 8
  %56 = getelementptr inbounds %struct.socket, %struct.socket* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @SS_PROTOREF, align 4
  %59 = and i32 %57, %58
  %60 = call i32 @KASSERT(i32 %59, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %61 = load i32, i32* @SS_PROTOREF, align 4
  %62 = xor i32 %61, -1
  %63 = load %struct.socket*, %struct.socket** %5, align 8
  %64 = getelementptr inbounds %struct.socket, %struct.socket* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = load %struct.socket*, %struct.socket** %5, align 8
  %68 = call i32 @sofree(%struct.socket* %67)
  br label %72

69:                                               ; preds = %37
  %70 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %71 = call i32 @INP_WUNLOCK(%struct.inpcb* %70)
  br label %72

72:                                               ; preds = %69, %44
  br label %76

73:                                               ; preds = %2
  %74 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %75 = call i32 @in_pcbfree(%struct.inpcb* %74)
  br label %76

76:                                               ; preds = %73, %72
  %77 = load i32, i32* @tcps_closed, align 4
  %78 = call i32 @TCPSTAT_INC(i32 %77)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.tcptw* @intotw(%struct.inpcb*) #1

declare dso_local i32 @NET_EPOCH_ASSERT(...) #1

declare dso_local i32 @INP_WLOCK_ASSERT(%struct.inpcb*) #1

declare dso_local i32 @tcp_tw_2msl_stop(%struct.tcptw*, i32) #1

declare dso_local i32 @in_pcbdrop(%struct.inpcb*) #1

declare dso_local i32 @INP_WUNLOCK(%struct.inpcb*) #1

declare dso_local i32 @SOCK_LOCK(%struct.socket*) #1

declare dso_local i32 @sofree(%struct.socket*) #1

declare dso_local i32 @in_pcbfree(%struct.inpcb*) #1

declare dso_local i32 @TCPSTAT_INC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
