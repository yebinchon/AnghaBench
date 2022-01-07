; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_usrreq.c_tcp_usrclosed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_usrreq.c_tcp_usrclosed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"tcp_usrclosed: tcp_close() returned NULL\00", align 1
@TF_NEEDFIN = common dso_local global i32 0, align 4
@TCPS_FIN_WAIT_1 = common dso_local global i32 0, align 4
@TCPS_LAST_ACK = common dso_local global i32 0, align 4
@TCPS_FIN_WAIT_2 = common dso_local global i32 0, align 4
@tcp_fast_finwait2_recycle = common dso_local global i64 0, align 8
@tcp_finwait2_timeout = common dso_local global i32 0, align 4
@TT_2MSL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpcb*)* @tcp_usrclosed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_usrclosed(%struct.tcpcb* %0) #0 {
  %2 = alloca %struct.tcpcb*, align 8
  %3 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %2, align 8
  %4 = call i32 (...) @NET_EPOCH_ASSERT()
  %5 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %6 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = call i32 @INP_WLOCK_ASSERT(%struct.TYPE_2__* %7)
  %9 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %10 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %36 [
    i32 130, label %12
    i32 133, label %15
    i32 128, label %22
    i32 129, label %22
    i32 131, label %28
    i32 132, label %32
  ]

12:                                               ; preds = %1
  %13 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %14 = call i32 @tcp_state_change(%struct.tcpcb* %13, i32 133)
  br label %15

15:                                               ; preds = %1, %12
  %16 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %17 = call %struct.tcpcb* @tcp_close(%struct.tcpcb* %16)
  store %struct.tcpcb* %17, %struct.tcpcb** %2, align 8
  %18 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %19 = icmp ne %struct.tcpcb* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @KASSERT(i32 %20, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %36

22:                                               ; preds = %1, %1
  %23 = load i32, i32* @TF_NEEDFIN, align 4
  %24 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %25 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  br label %36

28:                                               ; preds = %1
  %29 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %30 = load i32, i32* @TCPS_FIN_WAIT_1, align 4
  %31 = call i32 @tcp_state_change(%struct.tcpcb* %29, i32 %30)
  br label %36

32:                                               ; preds = %1
  %33 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %34 = load i32, i32* @TCPS_LAST_ACK, align 4
  %35 = call i32 @tcp_state_change(%struct.tcpcb* %33, i32 %34)
  br label %36

36:                                               ; preds = %1, %32, %28, %22, %15
  %37 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %38 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @TCPS_FIN_WAIT_2, align 4
  %41 = icmp sge i32 %39, %40
  br i1 %41, label %42, label %69

42:                                               ; preds = %36
  %43 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %44 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @soisdisconnected(i32 %47)
  %49 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %50 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @TCPS_FIN_WAIT_2, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %68

54:                                               ; preds = %42
  %55 = load i64, i64* @tcp_fast_finwait2_recycle, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32, i32* @tcp_finwait2_timeout, align 4
  br label %62

59:                                               ; preds = %54
  %60 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %61 = call i32 @TP_MAXIDLE(%struct.tcpcb* %60)
  br label %62

62:                                               ; preds = %59, %57
  %63 = phi i32 [ %58, %57 ], [ %61, %59 ]
  store i32 %63, i32* %3, align 4
  %64 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %65 = load i32, i32* @TT_2MSL, align 4
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @tcp_timer_activate(%struct.tcpcb* %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %62, %42
  br label %69

69:                                               ; preds = %68, %36
  ret void
}

declare dso_local i32 @NET_EPOCH_ASSERT(...) #1

declare dso_local i32 @INP_WLOCK_ASSERT(%struct.TYPE_2__*) #1

declare dso_local i32 @tcp_state_change(%struct.tcpcb*, i32) #1

declare dso_local %struct.tcpcb* @tcp_close(%struct.tcpcb*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @soisdisconnected(i32) #1

declare dso_local i32 @TP_MAXIDLE(%struct.tcpcb*) #1

declare dso_local i32 @tcp_timer_activate(%struct.tcpcb*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
