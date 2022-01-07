; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_eth_config_rx_fwd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_eth_config_rx_fwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_eth_adapter = type { i32*, i32*, i32 }
%struct.al_eth_fwd_ctrl_table_entry = type { i32, i32, i32, i32, i32 }

@AL_ETH_FWD_PBITS_TABLE_NUM = common dso_local global i32 0, align 4
@AL_ETH_FWD_PRIO_TABLE_NUM = common dso_local global i32 0, align 4
@AL_ETH_CTRL_TABLE_PRIO_SEL_VAL_0 = common dso_local global i32 0, align 4
@AL_ETH_CTRL_TABLE_QUEUE_SEL_1_THASH_TABLE = common dso_local global i32 0, align 4
@AL_ETH_CTRL_TABLE_QUEUE_SEL_2_NO_PRIO = common dso_local global i32 0, align 4
@AL_ETH_CTRL_TABLE_UDMA_SEL_MAC_TABLE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@AL_ETH_MAC_TABLE_UNICAST_IDX_BASE = common dso_local global i32 0, align 4
@AL_ETH_MAC_TABLE_BROADCAST_IDX = common dso_local global i32 0, align 4
@AL_ETH_RX_HASH_KEY_NUM = common dso_local global i32 0, align 4
@AL_ETH_RX_RSS_TABLE_SIZE = common dso_local global i32 0, align 4
@AL_ETH_NUM_QUEUES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.al_eth_adapter*)* @al_eth_config_rx_fwd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @al_eth_config_rx_fwd(%struct.al_eth_adapter* %0) #0 {
  %2 = alloca %struct.al_eth_adapter*, align 8
  %3 = alloca %struct.al_eth_fwd_ctrl_table_entry, align 4
  %4 = alloca i32, align 4
  store %struct.al_eth_adapter* %0, %struct.al_eth_adapter** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %15, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @AL_ETH_FWD_PBITS_TABLE_NUM, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %18

9:                                                ; preds = %5
  %10 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %10, i32 0, i32 2
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @al_eth_fwd_pbits_table_set(i32* %11, i32 %12, i32 %13)
  br label %15

15:                                               ; preds = %9
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %4, align 4
  br label %5

18:                                               ; preds = %5
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %30, %18
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @AL_ETH_FWD_PRIO_TABLE_NUM, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %19
  %24 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %25 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %24, i32 0, i32 2
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = ashr i32 %27, 1
  %29 = call i32 @al_eth_fwd_priority_table_set(i32* %25, i32 %26, i32 %28)
  br label %30

30:                                               ; preds = %23
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %19

33:                                               ; preds = %19
  %34 = load i32, i32* @AL_ETH_CTRL_TABLE_PRIO_SEL_VAL_0, align 4
  %35 = getelementptr inbounds %struct.al_eth_fwd_ctrl_table_entry, %struct.al_eth_fwd_ctrl_table_entry* %3, i32 0, i32 4
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* @AL_ETH_CTRL_TABLE_QUEUE_SEL_1_THASH_TABLE, align 4
  %37 = getelementptr inbounds %struct.al_eth_fwd_ctrl_table_entry, %struct.al_eth_fwd_ctrl_table_entry* %3, i32 0, i32 3
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* @AL_ETH_CTRL_TABLE_QUEUE_SEL_2_NO_PRIO, align 4
  %39 = getelementptr inbounds %struct.al_eth_fwd_ctrl_table_entry, %struct.al_eth_fwd_ctrl_table_entry* %3, i32 0, i32 2
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @AL_ETH_CTRL_TABLE_UDMA_SEL_MAC_TABLE, align 4
  %41 = getelementptr inbounds %struct.al_eth_fwd_ctrl_table_entry, %struct.al_eth_fwd_ctrl_table_entry* %3, i32 0, i32 1
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @FALSE, align 4
  %43 = getelementptr inbounds %struct.al_eth_fwd_ctrl_table_entry, %struct.al_eth_fwd_ctrl_table_entry* %3, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %45 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %44, i32 0, i32 2
  %46 = load i32, i32* @FALSE, align 4
  %47 = call i32 @al_eth_ctrl_table_def_set(i32* %45, i32 %46, %struct.al_eth_fwd_ctrl_table_entry* %3)
  %48 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %49 = load i32, i32* @AL_ETH_MAC_TABLE_UNICAST_IDX_BASE, align 4
  %50 = call i32 @al_eth_mac_table_unicast_add(%struct.al_eth_adapter* %48, i32 %49, i32 1)
  %51 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %52 = load i32, i32* @AL_ETH_MAC_TABLE_BROADCAST_IDX, align 4
  %53 = call i32 @al_eth_mac_table_broadcast_add(%struct.al_eth_adapter* %51, i32 %52, i32 1)
  %54 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %55 = call i32 @al_eth_mac_table_promiscuous_set(%struct.al_eth_adapter* %54, i32 0)
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %69, %33
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = icmp ult i64 %58, 8
  br i1 %59, label %60, label %72

60:                                               ; preds = %56
  %61 = call i64 (...) @random()
  %62 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %63 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = bitcast i32* %64 to i64*
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  store i64 %61, i64* %68, align 8
  br label %69

69:                                               ; preds = %60
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %4, align 4
  br label %56

72:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %90, %72
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @AL_ETH_RX_HASH_KEY_NUM, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %93

77:                                               ; preds = %73
  %78 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %79 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %78, i32 0, i32 2
  %80 = load i32, i32* %4, align 4
  %81 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %82 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @htonl(i32 %87)
  %89 = call i32 @al_eth_hash_key_set(i32* %79, i32 %80, i32 %88)
  br label %90

90:                                               ; preds = %77
  %91 = load i32, i32* %4, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %4, align 4
  br label %73

93:                                               ; preds = %73
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %118, %93
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* @AL_ETH_RX_RSS_TABLE_SIZE, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %121

98:                                               ; preds = %94
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @AL_ETH_NUM_QUEUES, align 4
  %101 = call i32 @ethtool_rxfh_indir_default(i32 %99, i32 %100)
  %102 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %103 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %4, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32 %101, i32* %107, align 4
  %108 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %109 = load i32, i32* %4, align 4
  %110 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %111 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %4, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @al_eth_set_thash_table_entry(%struct.al_eth_adapter* %108, i32 %109, i32 0, i32 %116)
  br label %118

118:                                              ; preds = %98
  %119 = load i32, i32* %4, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %4, align 4
  br label %94

121:                                              ; preds = %94
  %122 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %123 = call i32 @al_eth_fsm_table_init(%struct.al_eth_adapter* %122)
  ret void
}

declare dso_local i32 @al_eth_fwd_pbits_table_set(i32*, i32, i32) #1

declare dso_local i32 @al_eth_fwd_priority_table_set(i32*, i32, i32) #1

declare dso_local i32 @al_eth_ctrl_table_def_set(i32*, i32, %struct.al_eth_fwd_ctrl_table_entry*) #1

declare dso_local i32 @al_eth_mac_table_unicast_add(%struct.al_eth_adapter*, i32, i32) #1

declare dso_local i32 @al_eth_mac_table_broadcast_add(%struct.al_eth_adapter*, i32, i32) #1

declare dso_local i32 @al_eth_mac_table_promiscuous_set(%struct.al_eth_adapter*, i32) #1

declare dso_local i64 @random(...) #1

declare dso_local i32 @al_eth_hash_key_set(i32*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @ethtool_rxfh_indir_default(i32, i32) #1

declare dso_local i32 @al_eth_set_thash_table_entry(%struct.al_eth_adapter*, i32, i32, i32) #1

declare dso_local i32 @al_eth_fsm_table_init(%struct.al_eth_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
