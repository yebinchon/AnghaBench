; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_usrreq.c_tcp_usr_rcvd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_usrreq.c_tcp_usr_rcvd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.inpcb = type { i32 }
%struct.tcpcb = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.tcpcb*)* }

@TCPDEBUG0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"tcp_usr_rcvd: inp == NULL\00", align 1
@INP_TIMEWAIT = common dso_local global i32 0, align 4
@INP_DROPPED = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@TCPS_SYN_RECEIVED = common dso_local global i64 0, align 8
@PRU_RCVD = common dso_local global i32 0, align 4
@debug__user = common dso_local global i32 0, align 4
@TF_TOE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32)* @tcp_usr_rcvd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_usr_rcvd(%struct.socket* %0, i32 %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.inpcb*, align 8
  %6 = alloca %struct.tcpcb*, align 8
  %7 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.tcpcb* null, %struct.tcpcb** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @TCPDEBUG0, align 4
  %9 = load %struct.socket*, %struct.socket** %3, align 8
  %10 = call %struct.inpcb* @sotoinpcb(%struct.socket* %9)
  store %struct.inpcb* %10, %struct.inpcb** %5, align 8
  %11 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %12 = icmp ne %struct.inpcb* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @KASSERT(i32 %13, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %16 = call i32 @INP_WLOCK(%struct.inpcb* %15)
  %17 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %18 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @INP_TIMEWAIT, align 4
  %21 = load i32, i32* @INP_DROPPED, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @ECONNRESET, align 4
  store i32 %26, i32* %7, align 4
  br label %51

27:                                               ; preds = %2
  %28 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %29 = call %struct.tcpcb* @intotcpcb(%struct.inpcb* %28)
  store %struct.tcpcb* %29, %struct.tcpcb** %6, align 8
  %30 = call i32 (...) @TCPDEBUG1()
  %31 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %32 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @IS_FASTOPEN(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %27
  %37 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %38 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @TCPS_SYN_RECEIVED, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %51

43:                                               ; preds = %36, %27
  %44 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %45 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32 (%struct.tcpcb*)*, i32 (%struct.tcpcb*)** %47, align 8
  %49 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %50 = call i32 %48(%struct.tcpcb* %49)
  br label %51

51:                                               ; preds = %43, %42, %25
  %52 = load i32, i32* @PRU_RCVD, align 4
  %53 = call i32 @TCPDEBUG2(i32 %52)
  %54 = load i32, i32* @debug__user, align 4
  %55 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %56 = load i32, i32* @PRU_RCVD, align 4
  %57 = call i32 @TCP_PROBE2(i32 %54, %struct.tcpcb* %55, i32 %56)
  %58 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %59 = call i32 @INP_WUNLOCK(%struct.inpcb* %58)
  %60 = load i32, i32* %7, align 4
  ret i32 %60
}

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @INP_WLOCK(%struct.inpcb*) #1

declare dso_local %struct.tcpcb* @intotcpcb(%struct.inpcb*) #1

declare dso_local i32 @TCPDEBUG1(...) #1

declare dso_local i64 @IS_FASTOPEN(i32) #1

declare dso_local i32 @TCPDEBUG2(i32) #1

declare dso_local i32 @TCP_PROBE2(i32, %struct.tcpcb*, i32) #1

declare dso_local i32 @INP_WUNLOCK(%struct.inpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
