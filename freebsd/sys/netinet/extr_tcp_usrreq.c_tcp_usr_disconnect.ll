; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_usrreq.c_tcp_usr_disconnect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_usrreq.c_tcp_usr_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.inpcb = type { i32 }
%struct.tcpcb = type { i32 }
%struct.epoch_tracker = type { i32 }

@TCPDEBUG0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"tcp_usr_disconnect: inp == NULL\00", align 1
@INP_TIMEWAIT = common dso_local global i32 0, align 4
@INP_DROPPED = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@PRU_DISCONNECT = common dso_local global i32 0, align 4
@debug__user = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*)* @tcp_usr_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_usr_disconnect(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  %3 = alloca %struct.inpcb*, align 8
  %4 = alloca %struct.tcpcb*, align 8
  %5 = alloca %struct.epoch_tracker, align 4
  %6 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %2, align 8
  store %struct.tcpcb* null, %struct.tcpcb** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @TCPDEBUG0, align 4
  %8 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %5, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @NET_EPOCH_ENTER(i32 %9)
  %11 = load %struct.socket*, %struct.socket** %2, align 8
  %12 = call %struct.inpcb* @sotoinpcb(%struct.socket* %11)
  store %struct.inpcb* %12, %struct.inpcb** %3, align 8
  %13 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %14 = icmp ne %struct.inpcb* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @KASSERT(i32 %15, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %18 = call i32 @INP_WLOCK(%struct.inpcb* %17)
  %19 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %20 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @INP_TIMEWAIT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %41

26:                                               ; preds = %1
  %27 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %28 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @INP_DROPPED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* @ECONNRESET, align 4
  store i32 %34, i32* %6, align 4
  br label %41

35:                                               ; preds = %26
  %36 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %37 = call %struct.tcpcb* @intotcpcb(%struct.inpcb* %36)
  store %struct.tcpcb* %37, %struct.tcpcb** %4, align 8
  %38 = call i32 (...) @TCPDEBUG1()
  %39 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %40 = call i32 @tcp_disconnect(%struct.tcpcb* %39)
  br label %41

41:                                               ; preds = %35, %33, %25
  %42 = load i32, i32* @PRU_DISCONNECT, align 4
  %43 = call i32 @TCPDEBUG2(i32 %42)
  %44 = load i32, i32* @debug__user, align 4
  %45 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %46 = load i32, i32* @PRU_DISCONNECT, align 4
  %47 = call i32 @TCP_PROBE2(i32 %44, %struct.tcpcb* %45, i32 %46)
  %48 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %49 = call i32 @INP_WUNLOCK(%struct.inpcb* %48)
  %50 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %5, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @NET_EPOCH_EXIT(i32 %51)
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i32 @NET_EPOCH_ENTER(i32) #1

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @INP_WLOCK(%struct.inpcb*) #1

declare dso_local %struct.tcpcb* @intotcpcb(%struct.inpcb*) #1

declare dso_local i32 @TCPDEBUG1(...) #1

declare dso_local i32 @tcp_disconnect(%struct.tcpcb*) #1

declare dso_local i32 @TCPDEBUG2(i32) #1

declare dso_local i32 @TCP_PROBE2(i32, %struct.tcpcb*, i32) #1

declare dso_local i32 @INP_WUNLOCK(%struct.inpcb*) #1

declare dso_local i32 @NET_EPOCH_EXIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
