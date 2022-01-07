; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_ieee8023ad_lacp.c_lacp_sm_ptx_tx_schedule.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_ieee8023ad_lacp.c_lacp_sm_ptx_tx_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lacp_port = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@LACP_STATE_ACTIVITY = common dso_local global i32 0, align 4
@LACP_TIMER_PERIODIC = common dso_local global i32 0, align 4
@LACP_STATE_TIMEOUT = common dso_local global i32 0, align 4
@LACP_FAST_PERIODIC_TIME = common dso_local global i32 0, align 4
@LACP_SLOW_PERIODIC_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lacp_port*)* @lacp_sm_ptx_tx_schedule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lacp_sm_ptx_tx_schedule(%struct.lacp_port* %0) #0 {
  %2 = alloca %struct.lacp_port*, align 8
  %3 = alloca i32, align 4
  store %struct.lacp_port* %0, %struct.lacp_port** %2, align 8
  %4 = load %struct.lacp_port*, %struct.lacp_port** %2, align 8
  %5 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @LACP_STATE_ACTIVITY, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %1
  %11 = load %struct.lacp_port*, %struct.lacp_port** %2, align 8
  %12 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @LACP_STATE_ACTIVITY, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %10
  %19 = load %struct.lacp_port*, %struct.lacp_port** %2, align 8
  %20 = load i32, i32* @LACP_TIMER_PERIODIC, align 4
  %21 = call i32 @LACP_TIMER_DISARM(%struct.lacp_port* %19, i32 %20)
  br label %46

22:                                               ; preds = %10, %1
  %23 = load %struct.lacp_port*, %struct.lacp_port** %2, align 8
  %24 = load i32, i32* @LACP_TIMER_PERIODIC, align 4
  %25 = call i64 @LACP_TIMER_ISARMED(%struct.lacp_port* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %46

28:                                               ; preds = %22
  %29 = load %struct.lacp_port*, %struct.lacp_port** %2, align 8
  %30 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @LACP_STATE_TIMEOUT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* @LACP_FAST_PERIODIC_TIME, align 4
  br label %40

38:                                               ; preds = %28
  %39 = load i32, i32* @LACP_SLOW_PERIODIC_TIME, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  store i32 %41, i32* %3, align 4
  %42 = load %struct.lacp_port*, %struct.lacp_port** %2, align 8
  %43 = load i32, i32* @LACP_TIMER_PERIODIC, align 4
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @LACP_TIMER_ARM(%struct.lacp_port* %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %40, %27, %18
  ret void
}

declare dso_local i32 @LACP_TIMER_DISARM(%struct.lacp_port*, i32) #1

declare dso_local i64 @LACP_TIMER_ISARMED(%struct.lacp_port*, i32) #1

declare dso_local i32 @LACP_TIMER_ARM(%struct.lacp_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
