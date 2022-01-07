; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_ieee8023ad_lacp.c_lacp_sm_rx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_ieee8023ad_lacp.c_lacp_sm_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lacp_port = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.lacpdu = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@LACP_STATE_AGGREGATION = common dso_local global i32 0, align 4
@LACP_STATE_TIMEOUT = common dso_local global i32 0, align 4
@LACP_SHORT_TIMEOUT_TIME = common dso_local global i32 0, align 4
@LACP_LONG_TIMEOUT_TIME = common dso_local global i32 0, align 4
@LACP_TIMER_CURRENT_WHILE = common dso_local global i32 0, align 4
@LACP_STATE_EXPIRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lacp_port*, %struct.lacpdu*)* @lacp_sm_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lacp_sm_rx(%struct.lacp_port* %0, %struct.lacpdu* %1) #0 {
  %3 = alloca %struct.lacp_port*, align 8
  %4 = alloca %struct.lacpdu*, align 8
  %5 = alloca i32, align 4
  store %struct.lacp_port* %0, %struct.lacp_port** %3, align 8
  store %struct.lacpdu* %1, %struct.lacpdu** %4, align 8
  %6 = load %struct.lacp_port*, %struct.lacp_port** %3, align 8
  %7 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @LACP_STATE_AGGREGATION, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %57

13:                                               ; preds = %2
  %14 = load %struct.lacpdu*, %struct.lacpdu** %4, align 8
  %15 = getelementptr inbounds %struct.lacpdu, %struct.lacpdu* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.lacp_port*, %struct.lacp_port** %3, align 8
  %18 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = call i32 @lacp_compare_systemid(i32* %16, i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %13
  br label %57

23:                                               ; preds = %13
  %24 = load %struct.lacp_port*, %struct.lacp_port** %3, align 8
  %25 = load %struct.lacpdu*, %struct.lacpdu** %4, align 8
  %26 = call i32 @lacp_sm_rx_update_selected(%struct.lacp_port* %24, %struct.lacpdu* %25)
  %27 = load %struct.lacp_port*, %struct.lacp_port** %3, align 8
  %28 = load %struct.lacpdu*, %struct.lacpdu** %4, align 8
  %29 = call i32 @lacp_sm_rx_update_ntt(%struct.lacp_port* %27, %struct.lacpdu* %28)
  %30 = load %struct.lacp_port*, %struct.lacp_port** %3, align 8
  %31 = load %struct.lacpdu*, %struct.lacpdu** %4, align 8
  %32 = call i32 @lacp_sm_rx_record_pdu(%struct.lacp_port* %30, %struct.lacpdu* %31)
  %33 = load %struct.lacp_port*, %struct.lacp_port** %3, align 8
  %34 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @LACP_STATE_TIMEOUT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %23
  %40 = load i32, i32* @LACP_SHORT_TIMEOUT_TIME, align 4
  br label %43

41:                                               ; preds = %23
  %42 = load i32, i32* @LACP_LONG_TIMEOUT_TIME, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  store i32 %44, i32* %5, align 4
  %45 = load %struct.lacp_port*, %struct.lacp_port** %3, align 8
  %46 = load i32, i32* @LACP_TIMER_CURRENT_WHILE, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @LACP_TIMER_ARM(%struct.lacp_port* %45, i32 %46, i32 %47)
  %49 = load i32, i32* @LACP_STATE_EXPIRED, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.lacp_port*, %struct.lacp_port** %3, align 8
  %52 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load %struct.lacp_port*, %struct.lacp_port** %3, align 8
  %56 = call i32 @lacp_sm_tx(%struct.lacp_port* %55)
  br label %57

57:                                               ; preds = %43, %22, %12
  ret void
}

declare dso_local i32 @lacp_compare_systemid(i32*, i32*) #1

declare dso_local i32 @lacp_sm_rx_update_selected(%struct.lacp_port*, %struct.lacpdu*) #1

declare dso_local i32 @lacp_sm_rx_update_ntt(%struct.lacp_port*, %struct.lacpdu*) #1

declare dso_local i32 @lacp_sm_rx_record_pdu(%struct.lacp_port*, %struct.lacpdu*) #1

declare dso_local i32 @LACP_TIMER_ARM(%struct.lacp_port*, i32, i32) #1

declare dso_local i32 @lacp_sm_tx(%struct.lacp_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
