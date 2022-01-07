; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_usrreq.c_tcp_usr_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_usrreq.c_tcp_usr_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, i64 }
%struct.thread = type { i32 }
%struct.inpcb = type { i32 }
%struct.tcpcb = type { i32 }

@TCPDEBUG0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"tcp_usr_attach: inp != NULL\00", align 1
@SO_LINGER = common dso_local global i32 0, align 4
@TCP_LINGERTIME = common dso_local global i64 0, align 8
@PRU_ATTACH = common dso_local global i32 0, align 4
@debug__user = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32, %struct.thread*)* @tcp_usr_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_usr_attach(%struct.socket* %0, i32 %1, %struct.thread* %2) #0 {
  %4 = alloca %struct.socket*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca %struct.inpcb*, align 8
  %8 = alloca %struct.tcpcb*, align 8
  %9 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.thread* %2, %struct.thread** %6, align 8
  store %struct.tcpcb* null, %struct.tcpcb** %8, align 8
  %10 = load i32, i32* @TCPDEBUG0, align 4
  %11 = load %struct.socket*, %struct.socket** %4, align 8
  %12 = call %struct.inpcb* @sotoinpcb(%struct.socket* %11)
  store %struct.inpcb* %12, %struct.inpcb** %7, align 8
  %13 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %14 = icmp eq %struct.inpcb* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @KASSERT(i32 %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 (...) @TCPDEBUG1()
  %18 = load %struct.socket*, %struct.socket** %4, align 8
  %19 = call i32 @tcp_attach(%struct.socket* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %44

23:                                               ; preds = %3
  %24 = load %struct.socket*, %struct.socket** %4, align 8
  %25 = getelementptr inbounds %struct.socket, %struct.socket* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @SO_LINGER, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %23
  %31 = load %struct.socket*, %struct.socket** %4, align 8
  %32 = getelementptr inbounds %struct.socket, %struct.socket* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i64, i64* @TCP_LINGERTIME, align 8
  %37 = load %struct.socket*, %struct.socket** %4, align 8
  %38 = getelementptr inbounds %struct.socket, %struct.socket* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  br label %39

39:                                               ; preds = %35, %30, %23
  %40 = load %struct.socket*, %struct.socket** %4, align 8
  %41 = call %struct.inpcb* @sotoinpcb(%struct.socket* %40)
  store %struct.inpcb* %41, %struct.inpcb** %7, align 8
  %42 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %43 = call %struct.tcpcb* @intotcpcb(%struct.inpcb* %42)
  store %struct.tcpcb* %43, %struct.tcpcb** %8, align 8
  br label %44

44:                                               ; preds = %39, %22
  %45 = load i32, i32* @PRU_ATTACH, align 4
  %46 = call i32 @TCPDEBUG2(i32 %45)
  %47 = load i32, i32* @debug__user, align 4
  %48 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %49 = load i32, i32* @PRU_ATTACH, align 4
  %50 = call i32 @TCP_PROBE2(i32 %47, %struct.tcpcb* %48, i32 %49)
  %51 = load i32, i32* %9, align 4
  ret i32 %51
}

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @TCPDEBUG1(...) #1

declare dso_local i32 @tcp_attach(%struct.socket*) #1

declare dso_local %struct.tcpcb* @intotcpcb(%struct.inpcb*) #1

declare dso_local i32 @TCPDEBUG2(i32) #1

declare dso_local i32 @TCP_PROBE2(i32, %struct.tcpcb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
