; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_eth_set_rx_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_eth_set_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_eth_adapter = type { %struct.ifnet* }
%struct.ifnet = type { i32 }

@al_count_maddr = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@AL_ETH_MAC_TABLE_ALL_MULTICAST_IDX = common dso_local global i64 0, align 8
@AL_ETH_MAC_TABLE_UNICAST_IDX_BASE = common dso_local global i64 0, align 8
@AL_ETH_MAC_TABLE_UNICAST_MAX_COUNT = common dso_local global i32 0, align 4
@al_program_addr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.al_eth_adapter*)* @al_eth_set_rx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @al_eth_set_rx_mode(%struct.al_eth_adapter* %0) #0 {
  %2 = alloca %struct.al_eth_adapter*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.al_eth_adapter* %0, %struct.al_eth_adapter** %2, align 8
  %7 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %7, i32 0, i32 0
  %9 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %9, %struct.ifnet** %3, align 8
  %10 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %11 = load i32, i32* @al_count_maddr, align 4
  %12 = call i32 @if_foreach_llmaddr(%struct.ifnet* %10, i32 %11, i32* null)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %14 = call i32 @if_lladdr_count(%struct.ifnet* %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %16 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IFF_PROMISC, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %23 = call i32 @al_eth_mac_table_promiscuous_set(%struct.al_eth_adapter* %22, i32 1)
  br label %81

24:                                               ; preds = %1
  %25 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %26 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @IFF_ALLMULTI, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %33 = load i64, i64* @AL_ETH_MAC_TABLE_ALL_MULTICAST_IDX, align 8
  %34 = call i32 @al_eth_mac_table_all_multicast_add(%struct.al_eth_adapter* %32, i64 %33, i32 1)
  br label %47

35:                                               ; preds = %24
  %36 = load i32, i32* %4, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %40 = load i64, i64* @AL_ETH_MAC_TABLE_ALL_MULTICAST_IDX, align 8
  %41 = call i32 @al_eth_mac_table_entry_clear(%struct.al_eth_adapter* %39, i64 %40)
  br label %46

42:                                               ; preds = %35
  %43 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %44 = load i64, i64* @AL_ETH_MAC_TABLE_ALL_MULTICAST_IDX, align 8
  %45 = call i32 @al_eth_mac_table_all_multicast_add(%struct.al_eth_adapter* %43, i64 %44, i32 1)
  br label %46

46:                                               ; preds = %42, %38
  br label %47

47:                                               ; preds = %46, %31
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %78

50:                                               ; preds = %47
  %51 = load i64, i64* @AL_ETH_MAC_TABLE_UNICAST_IDX_BASE, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %6, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @AL_ETH_MAC_TABLE_UNICAST_MAX_COUNT, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %58 = call i32 @al_eth_mac_table_promiscuous_set(%struct.al_eth_adapter* %57, i32 1)
  br label %81

59:                                               ; preds = %50
  br label %60

60:                                               ; preds = %67, %59
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* @AL_ETH_MAC_TABLE_UNICAST_IDX_BASE, align 8
  %63 = load i32, i32* @AL_ETH_MAC_TABLE_UNICAST_MAX_COUNT, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %62, %64
  %66 = icmp slt i64 %61, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %60
  %68 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %69 = load i64, i64* %6, align 8
  %70 = call i32 @al_eth_mac_table_entry_clear(%struct.al_eth_adapter* %68, i64 %69)
  %71 = load i64, i64* %6, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %6, align 8
  br label %60

73:                                               ; preds = %60
  %74 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %75 = load i32, i32* @al_program_addr, align 4
  %76 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %77 = call i32 @if_foreach_lladdr(%struct.ifnet* %74, i32 %75, %struct.al_eth_adapter* %76)
  br label %78

78:                                               ; preds = %73, %47
  %79 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %80 = call i32 @al_eth_mac_table_promiscuous_set(%struct.al_eth_adapter* %79, i32 0)
  br label %81

81:                                               ; preds = %56, %78, %21
  ret void
}

declare dso_local i32 @if_foreach_llmaddr(%struct.ifnet*, i32, i32*) #1

declare dso_local i32 @if_lladdr_count(%struct.ifnet*) #1

declare dso_local i32 @al_eth_mac_table_promiscuous_set(%struct.al_eth_adapter*, i32) #1

declare dso_local i32 @al_eth_mac_table_all_multicast_add(%struct.al_eth_adapter*, i64, i32) #1

declare dso_local i32 @al_eth_mac_table_entry_clear(%struct.al_eth_adapter*, i64) #1

declare dso_local i32 @if_foreach_lladdr(%struct.ifnet*, i32, %struct.al_eth_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
