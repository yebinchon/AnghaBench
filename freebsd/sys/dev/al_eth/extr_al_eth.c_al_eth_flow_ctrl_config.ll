; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_eth_flow_ctrl_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_eth_flow_ctrl_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_eth_adapter = type { i32, %struct.al_eth_flow_control_params, %struct.TYPE_2__ }
%struct.al_eth_flow_control_params = type { i32, i32, i32**, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@AL_ETH_FLOW_CONTROL_TYPE_LINK_PAUSE = common dso_local global i32 0, align 4
@AL_ETH_FLOW_CTRL_RX_PAUSE = common dso_local global i32 0, align 4
@AL_ETH_FLOW_CTRL_TX_PAUSE = common dso_local global i32 0, align 4
@AL_ETH_FLOW_CTRL_RX_FIFO_TH_HIGH = common dso_local global i32 0, align 4
@AL_ETH_FLOW_CTRL_RX_FIFO_TH_LOW = common dso_local global i32 0, align 4
@AL_ETH_FLOW_CTRL_QUANTA = common dso_local global i32 0, align 4
@AL_ETH_FLOW_CTRL_QUANTA_TH = common dso_local global i32 0, align 4
@AL_ETH_FWD_PRIO_TABLE_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.al_eth_adapter*)* @al_eth_flow_ctrl_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @al_eth_flow_ctrl_config(%struct.al_eth_adapter* %0) #0 {
  %2 = alloca %struct.al_eth_adapter*, align 8
  %3 = alloca %struct.al_eth_flow_control_params*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.al_eth_adapter* %0, %struct.al_eth_adapter** %2, align 8
  %6 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %4, align 4
  %10 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %10, i32 0, i32 1
  store %struct.al_eth_flow_control_params* %11, %struct.al_eth_flow_control_params** %3, align 8
  %12 = load i32, i32* @AL_ETH_FLOW_CONTROL_TYPE_LINK_PAUSE, align 4
  %13 = load %struct.al_eth_flow_control_params*, %struct.al_eth_flow_control_params** %3, align 8
  %14 = getelementptr inbounds %struct.al_eth_flow_control_params, %struct.al_eth_flow_control_params* %13, i32 0, i32 7
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @AL_ETH_FLOW_CTRL_RX_PAUSE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = load %struct.al_eth_flow_control_params*, %struct.al_eth_flow_control_params** %3, align 8
  %21 = getelementptr inbounds %struct.al_eth_flow_control_params, %struct.al_eth_flow_control_params* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @AL_ETH_FLOW_CTRL_TX_PAUSE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = load %struct.al_eth_flow_control_params*, %struct.al_eth_flow_control_params** %3, align 8
  %28 = getelementptr inbounds %struct.al_eth_flow_control_params, %struct.al_eth_flow_control_params* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @AL_ETH_FLOW_CTRL_RX_FIFO_TH_HIGH, align 4
  %30 = load %struct.al_eth_flow_control_params*, %struct.al_eth_flow_control_params** %3, align 8
  %31 = getelementptr inbounds %struct.al_eth_flow_control_params, %struct.al_eth_flow_control_params* %30, i32 0, i32 6
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @AL_ETH_FLOW_CTRL_RX_FIFO_TH_LOW, align 4
  %33 = load %struct.al_eth_flow_control_params*, %struct.al_eth_flow_control_params** %3, align 8
  %34 = getelementptr inbounds %struct.al_eth_flow_control_params, %struct.al_eth_flow_control_params* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @AL_ETH_FLOW_CTRL_QUANTA, align 4
  %36 = load %struct.al_eth_flow_control_params*, %struct.al_eth_flow_control_params** %3, align 8
  %37 = getelementptr inbounds %struct.al_eth_flow_control_params, %struct.al_eth_flow_control_params* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @AL_ETH_FLOW_CTRL_QUANTA_TH, align 4
  %39 = load %struct.al_eth_flow_control_params*, %struct.al_eth_flow_control_params** %3, align 8
  %40 = getelementptr inbounds %struct.al_eth_flow_control_params, %struct.al_eth_flow_control_params* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %57, %1
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @AL_ETH_FWD_PRIO_TABLE_NUM, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %41
  %46 = load i32, i32* %5, align 4
  %47 = ashr i32 %46, 1
  %48 = shl i32 1, %47
  %49 = load %struct.al_eth_flow_control_params*, %struct.al_eth_flow_control_params** %3, align 8
  %50 = getelementptr inbounds %struct.al_eth_flow_control_params, %struct.al_eth_flow_control_params* %49, i32 0, i32 2
  %51 = load i32**, i32*** %50, align 8
  %52 = getelementptr inbounds i32*, i32** %51, i64 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %48, i32* %56, align 4
  br label %57

57:                                               ; preds = %45
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %41

60:                                               ; preds = %41
  %61 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %62 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %61, i32 0, i32 0
  %63 = load %struct.al_eth_flow_control_params*, %struct.al_eth_flow_control_params** %3, align 8
  %64 = call i32 @al_eth_flow_control_config(i32* %62, %struct.al_eth_flow_control_params* %63)
  ret i32 0
}

declare dso_local i32 @al_eth_flow_control_config(i32*, %struct.al_eth_flow_control_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
