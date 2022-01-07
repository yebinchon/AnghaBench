; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_eth_up_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_eth_up_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_eth_adapter = type { i64, i32, i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ALPINE_FPGA_NIC = common dso_local global i64 0, align 8
@ALPINE_NIC = common dso_local global i64 0, align 8
@AL_REG_OFFSET_FORWARD_INTR = common dso_local global i32 0, align 4
@AL_EN_FORWARD_INTR = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@al_tick_stats = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.al_eth_adapter*)* @al_eth_up_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @al_eth_up_complete(%struct.al_eth_adapter* %0) #0 {
  %2 = alloca %struct.al_eth_adapter*, align 8
  store %struct.al_eth_adapter* %0, %struct.al_eth_adapter** %2, align 8
  %3 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %4 = call i32 @al_eth_configure_int_mode(%struct.al_eth_adapter* %3)
  %5 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %6 = call i32 @al_eth_config_rx_fwd(%struct.al_eth_adapter* %5)
  %7 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %8 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %8, i32 0, i32 5
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @al_eth_change_mtu(%struct.al_eth_adapter* %7, i32 %12)
  %14 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %15 = call i32 @al_eth_udma_queues_enable_all(%struct.al_eth_adapter* %14)
  %16 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %17 = call i32 @al_eth_refill_all_rx_bufs(%struct.al_eth_adapter* %16)
  %18 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %19 = call i32 @al_eth_interrupts_unmask(%struct.al_eth_adapter* %18)
  %20 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %21 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ALPINE_FPGA_NIC, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %1
  %26 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %27 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ALPINE_NIC, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %25, %1
  %32 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %33 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i32*
  %36 = load i32, i32* @AL_REG_OFFSET_FORWARD_INTR, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* @AL_EN_FORWARD_INTR, align 4
  %40 = call i32 @al_eth_forward_int_config(i32* %38, i32 %39)
  br label %41

41:                                               ; preds = %31, %25
  %42 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %43 = call i32 @al_eth_flow_ctrl_enable(%struct.al_eth_adapter* %42)
  %44 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %45 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %44, i32 0, i32 2
  %46 = call i32 @mtx_lock(i32* %45)
  %47 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %48 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %47, i32 0, i32 3
  %49 = load i32, i32* @hz, align 4
  %50 = load i32, i32* @al_tick_stats, align 4
  %51 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %52 = bitcast %struct.al_eth_adapter* %51 to i8*
  %53 = call i32 @callout_reset(i32* %48, i32 %49, i32 %50, i8* %52)
  %54 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %55 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %54, i32 0, i32 2
  %56 = call i32 @mtx_unlock(i32* %55)
  %57 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %58 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %57, i32 0, i32 1
  %59 = call i32 @al_eth_mac_start(i32* %58)
  ret void
}

declare dso_local i32 @al_eth_configure_int_mode(%struct.al_eth_adapter*) #1

declare dso_local i32 @al_eth_config_rx_fwd(%struct.al_eth_adapter*) #1

declare dso_local i32 @al_eth_change_mtu(%struct.al_eth_adapter*, i32) #1

declare dso_local i32 @al_eth_udma_queues_enable_all(%struct.al_eth_adapter*) #1

declare dso_local i32 @al_eth_refill_all_rx_bufs(%struct.al_eth_adapter*) #1

declare dso_local i32 @al_eth_interrupts_unmask(%struct.al_eth_adapter*) #1

declare dso_local i32 @al_eth_forward_int_config(i32*, i32) #1

declare dso_local i32 @al_eth_flow_ctrl_enable(%struct.al_eth_adapter*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, i8*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @al_eth_mac_start(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
