; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_usrreq.c_tcp_usr_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_usrreq.c_tcp_usr_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.inpcb = type { i32, i32* }
%struct.tcpcb = type { i32 }
%struct.epoch_tracker = type { i32 }

@TCPDEBUG0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"tcp_usr_close: inp == NULL\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"tcp_usr_close: inp_socket == NULL\00", align 1
@INP_TIMEWAIT = common dso_local global i32 0, align 4
@INP_DROPPED = common dso_local global i32 0, align 4
@PRU_CLOSE = common dso_local global i32 0, align 4
@debug__user = common dso_local global i32 0, align 4
@SS_PROTOREF = common dso_local global i32 0, align 4
@INP_SOCKREF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.socket*)* @tcp_usr_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_usr_close(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  %3 = alloca %struct.inpcb*, align 8
  %4 = alloca %struct.tcpcb*, align 8
  %5 = alloca %struct.epoch_tracker, align 4
  store %struct.socket* %0, %struct.socket** %2, align 8
  store %struct.tcpcb* null, %struct.tcpcb** %4, align 8
  %6 = load i32, i32* @TCPDEBUG0, align 4
  %7 = load %struct.socket*, %struct.socket** %2, align 8
  %8 = call %struct.inpcb* @sotoinpcb(%struct.socket* %7)
  store %struct.inpcb* %8, %struct.inpcb** %3, align 8
  %9 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %10 = icmp ne %struct.inpcb* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @KASSERT(i32 %11, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %13 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %5, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @NET_EPOCH_ENTER(i32 %14)
  %16 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %17 = call i32 @INP_WLOCK(%struct.inpcb* %16)
  %18 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %19 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @KASSERT(i32 %22, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %25 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @INP_TIMEWAIT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %49, label %30

30:                                               ; preds = %1
  %31 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %32 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @INP_DROPPED, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %30
  %38 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %39 = call %struct.tcpcb* @intotcpcb(%struct.inpcb* %38)
  store %struct.tcpcb* %39, %struct.tcpcb** %4, align 8
  %40 = call i32 (...) @TCPDEBUG1()
  %41 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %42 = call i32 @tcp_disconnect(%struct.tcpcb* %41)
  %43 = load i32, i32* @PRU_CLOSE, align 4
  %44 = call i32 @TCPDEBUG2(i32 %43)
  %45 = load i32, i32* @debug__user, align 4
  %46 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %47 = load i32, i32* @PRU_CLOSE, align 4
  %48 = call i32 @TCP_PROBE2(i32 %45, %struct.tcpcb* %46, i32 %47)
  br label %49

49:                                               ; preds = %37, %30, %1
  %50 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %51 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @INP_DROPPED, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %71, label %56

56:                                               ; preds = %49
  %57 = load %struct.socket*, %struct.socket** %2, align 8
  %58 = call i32 @SOCK_LOCK(%struct.socket* %57)
  %59 = load i32, i32* @SS_PROTOREF, align 4
  %60 = load %struct.socket*, %struct.socket** %2, align 8
  %61 = getelementptr inbounds %struct.socket, %struct.socket* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load %struct.socket*, %struct.socket** %2, align 8
  %65 = call i32 @SOCK_UNLOCK(%struct.socket* %64)
  %66 = load i32, i32* @INP_SOCKREF, align 4
  %67 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %68 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  br label %71

71:                                               ; preds = %56, %49
  %72 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %73 = call i32 @INP_WUNLOCK(%struct.inpcb* %72)
  %74 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %5, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @NET_EPOCH_EXIT(i32 %75)
  ret void
}

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @NET_EPOCH_ENTER(i32) #1

declare dso_local i32 @INP_WLOCK(%struct.inpcb*) #1

declare dso_local %struct.tcpcb* @intotcpcb(%struct.inpcb*) #1

declare dso_local i32 @TCPDEBUG1(...) #1

declare dso_local i32 @tcp_disconnect(%struct.tcpcb*) #1

declare dso_local i32 @TCPDEBUG2(i32) #1

declare dso_local i32 @TCP_PROBE2(i32, %struct.tcpcb*, i32) #1

declare dso_local i32 @SOCK_LOCK(%struct.socket*) #1

declare dso_local i32 @SOCK_UNLOCK(%struct.socket*) #1

declare dso_local i32 @INP_WUNLOCK(%struct.inpcb*) #1

declare dso_local i32 @NET_EPOCH_EXIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
