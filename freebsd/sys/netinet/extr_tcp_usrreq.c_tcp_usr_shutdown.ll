; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_usrreq.c_tcp_usr_shutdown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_usrreq.c_tcp_usr_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.inpcb = type { i32 }
%struct.tcpcb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.tcpcb*)* }
%struct.epoch_tracker = type { i32 }

@TCPDEBUG0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"inp == NULL\00", align 1
@INP_TIMEWAIT = common dso_local global i32 0, align 4
@INP_DROPPED = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@PRU_SHUTDOWN = common dso_local global i32 0, align 4
@debug__user = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*)* @tcp_usr_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_usr_shutdown(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.inpcb*, align 8
  %5 = alloca %struct.tcpcb*, align 8
  %6 = alloca %struct.epoch_tracker, align 4
  store %struct.socket* %0, %struct.socket** %2, align 8
  store i32 0, i32* %3, align 4
  store %struct.tcpcb* null, %struct.tcpcb** %5, align 8
  %7 = load i32, i32* @TCPDEBUG0, align 4
  %8 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %6, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @NET_EPOCH_ENTER(i32 %9)
  %11 = load %struct.socket*, %struct.socket** %2, align 8
  %12 = call %struct.inpcb* @sotoinpcb(%struct.socket* %11)
  store %struct.inpcb* %12, %struct.inpcb** %4, align 8
  %13 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %14 = icmp ne %struct.inpcb* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @KASSERT(i32 %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %18 = call i32 @INP_WLOCK(%struct.inpcb* %17)
  %19 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %20 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @INP_TIMEWAIT, align 4
  %23 = load i32, i32* @INP_DROPPED, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %21, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i32, i32* @ECONNRESET, align 4
  store i32 %28, i32* %3, align 4
  br label %52

29:                                               ; preds = %1
  %30 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %31 = call %struct.tcpcb* @intotcpcb(%struct.inpcb* %30)
  store %struct.tcpcb* %31, %struct.tcpcb** %5, align 8
  %32 = call i32 (...) @TCPDEBUG1()
  %33 = load %struct.socket*, %struct.socket** %2, align 8
  %34 = call i32 @socantsendmore(%struct.socket* %33)
  %35 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %36 = call i32 @tcp_usrclosed(%struct.tcpcb* %35)
  %37 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %38 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @INP_DROPPED, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %29
  %44 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %45 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32 (%struct.tcpcb*)*, i32 (%struct.tcpcb*)** %47, align 8
  %49 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %50 = call i32 %48(%struct.tcpcb* %49)
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %43, %29
  br label %52

52:                                               ; preds = %51, %27
  %53 = load i32, i32* @PRU_SHUTDOWN, align 4
  %54 = call i32 @TCPDEBUG2(i32 %53)
  %55 = load i32, i32* @debug__user, align 4
  %56 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %57 = load i32, i32* @PRU_SHUTDOWN, align 4
  %58 = call i32 @TCP_PROBE2(i32 %55, %struct.tcpcb* %56, i32 %57)
  %59 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %60 = call i32 @INP_WUNLOCK(%struct.inpcb* %59)
  %61 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %6, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @NET_EPOCH_EXIT(i32 %62)
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @NET_EPOCH_ENTER(i32) #1

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @INP_WLOCK(%struct.inpcb*) #1

declare dso_local %struct.tcpcb* @intotcpcb(%struct.inpcb*) #1

declare dso_local i32 @TCPDEBUG1(...) #1

declare dso_local i32 @socantsendmore(%struct.socket*) #1

declare dso_local i32 @tcp_usrclosed(%struct.tcpcb*) #1

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
