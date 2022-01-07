; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_usrreq.c_tcp_usr_abort.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_usrreq.c_tcp_usr_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.inpcb = type { i32, i32* }
%struct.tcpcb = type { i32 }
%struct.epoch_tracker = type { i32 }

@TCPDEBUG0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"tcp_usr_abort: inp == NULL\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"tcp_usr_abort: inp_socket == NULL\00", align 1
@INP_TIMEWAIT = common dso_local global i32 0, align 4
@INP_DROPPED = common dso_local global i32 0, align 4
@ECONNABORTED = common dso_local global i32 0, align 4
@PRU_ABORT = common dso_local global i32 0, align 4
@debug__user = common dso_local global i32 0, align 4
@SS_PROTOREF = common dso_local global i32 0, align 4
@INP_SOCKREF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.socket*)* @tcp_usr_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_usr_abort(%struct.socket* %0) #0 {
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
  br i1 %29, label %54, label %30

30:                                               ; preds = %1
  %31 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %32 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @INP_DROPPED, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %54, label %37

37:                                               ; preds = %30
  %38 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %39 = call %struct.tcpcb* @intotcpcb(%struct.inpcb* %38)
  store %struct.tcpcb* %39, %struct.tcpcb** %4, align 8
  %40 = call i32 (...) @TCPDEBUG1()
  %41 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %42 = load i32, i32* @ECONNABORTED, align 4
  %43 = call %struct.tcpcb* @tcp_drop(%struct.tcpcb* %41, i32 %42)
  store %struct.tcpcb* %43, %struct.tcpcb** %4, align 8
  %44 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %45 = icmp eq %struct.tcpcb* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %79

47:                                               ; preds = %37
  %48 = load i32, i32* @PRU_ABORT, align 4
  %49 = call i32 @TCPDEBUG2(i32 %48)
  %50 = load i32, i32* @debug__user, align 4
  %51 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %52 = load i32, i32* @PRU_ABORT, align 4
  %53 = call i32 @TCP_PROBE2(i32 %50, %struct.tcpcb* %51, i32 %52)
  br label %54

54:                                               ; preds = %47, %30, %1
  %55 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %56 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @INP_DROPPED, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %76, label %61

61:                                               ; preds = %54
  %62 = load %struct.socket*, %struct.socket** %2, align 8
  %63 = call i32 @SOCK_LOCK(%struct.socket* %62)
  %64 = load i32, i32* @SS_PROTOREF, align 4
  %65 = load %struct.socket*, %struct.socket** %2, align 8
  %66 = getelementptr inbounds %struct.socket, %struct.socket* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  %69 = load %struct.socket*, %struct.socket** %2, align 8
  %70 = call i32 @SOCK_UNLOCK(%struct.socket* %69)
  %71 = load i32, i32* @INP_SOCKREF, align 4
  %72 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %73 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %61, %54
  %77 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %78 = call i32 @INP_WUNLOCK(%struct.inpcb* %77)
  br label %79

79:                                               ; preds = %76, %46
  %80 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %5, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @NET_EPOCH_EXIT(i32 %81)
  ret void
}

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @NET_EPOCH_ENTER(i32) #1

declare dso_local i32 @INP_WLOCK(%struct.inpcb*) #1

declare dso_local %struct.tcpcb* @intotcpcb(%struct.inpcb*) #1

declare dso_local i32 @TCPDEBUG1(...) #1

declare dso_local %struct.tcpcb* @tcp_drop(%struct.tcpcb*, i32) #1

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
