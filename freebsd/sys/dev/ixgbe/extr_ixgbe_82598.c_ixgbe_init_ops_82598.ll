; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82598.c_ixgbe_init_ops_82598.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82598.c_ixgbe_init_ops_82598.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.ixgbe_phy_info, %struct.ixgbe_mac_info }
%struct.ixgbe_phy_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.ixgbe_mac_info = type { %struct.TYPE_4__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32*, i32*, i32, i32, i32*, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"ixgbe_init_ops_82598\00", align 1
@ixgbe_init_phy_ops_82598 = common dso_local global i32 0, align 4
@ixgbe_start_hw_82598 = common dso_local global i32 0, align 4
@ixgbe_enable_relaxed_ordering_82598 = common dso_local global i32 0, align 4
@ixgbe_reset_hw_82598 = common dso_local global i32 0, align 4
@ixgbe_get_media_type_82598 = common dso_local global i32 0, align 4
@ixgbe_get_supported_physical_layer_82598 = common dso_local global i32 0, align 4
@ixgbe_read_analog_reg8_82598 = common dso_local global i32 0, align 4
@ixgbe_write_analog_reg8_82598 = common dso_local global i32 0, align 4
@ixgbe_set_lan_id_multi_port_pcie_82598 = common dso_local global i32 0, align 4
@ixgbe_enable_rx_dma_82598 = common dso_local global i32 0, align 4
@ixgbe_set_vmdq_82598 = common dso_local global i32 0, align 4
@ixgbe_clear_vmdq_82598 = common dso_local global i32 0, align 4
@ixgbe_set_vfta_82598 = common dso_local global i32 0, align 4
@ixgbe_clear_vfta_82598 = common dso_local global i32 0, align 4
@ixgbe_fc_enable_82598 = common dso_local global i32 0, align 4
@IXGBE_82598_MC_TBL_SIZE = common dso_local global i32 0, align 4
@IXGBE_82598_VFT_TBL_SIZE = common dso_local global i32 0, align 4
@IXGBE_82598_RAR_ENTRIES = common dso_local global i32 0, align 4
@IXGBE_82598_RX_PB_SIZE = common dso_local global i32 0, align 4
@IXGBE_82598_MAX_RX_QUEUES = common dso_local global i32 0, align 4
@IXGBE_82598_MAX_TX_QUEUES = common dso_local global i32 0, align 4
@ixgbe_read_i2c_eeprom_82598 = common dso_local global i32 0, align 4
@ixgbe_read_i2c_sff8472_82598 = common dso_local global i32 0, align 4
@ixgbe_check_mac_link_82598 = common dso_local global i32 0, align 4
@ixgbe_setup_mac_link_82598 = common dso_local global i32 0, align 4
@ixgbe_get_link_capabilities_82598 = common dso_local global i32 0, align 4
@ixgbe_set_rxpba_82598 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_init_ops_82598(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca %struct.ixgbe_mac_info*, align 8
  %4 = alloca %struct.ixgbe_phy_info*, align 8
  %5 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %6 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %7 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %6, i32 0, i32 1
  store %struct.ixgbe_mac_info* %7, %struct.ixgbe_mac_info** %3, align 8
  %8 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %9 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %8, i32 0, i32 0
  store %struct.ixgbe_phy_info* %9, %struct.ixgbe_phy_info** %4, align 8
  %10 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %12 = call i32 @ixgbe_init_phy_ops_generic(%struct.ixgbe_hw* %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %14 = call i32 @ixgbe_init_ops_generic(%struct.ixgbe_hw* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @ixgbe_init_phy_ops_82598, align 4
  %16 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %4, align 8
  %17 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* @ixgbe_start_hw_82598, align 4
  %20 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %21 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 21
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* @ixgbe_enable_relaxed_ordering_82598, align 4
  %24 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %25 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 20
  store i32 %23, i32* %26, align 8
  %27 = load i32, i32* @ixgbe_reset_hw_82598, align 4
  %28 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %29 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 19
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* @ixgbe_get_media_type_82598, align 4
  %32 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %33 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 18
  store i32 %31, i32* %34, align 8
  %35 = load i32, i32* @ixgbe_get_supported_physical_layer_82598, align 4
  %36 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %37 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 17
  store i32 %35, i32* %38, align 4
  %39 = load i32, i32* @ixgbe_read_analog_reg8_82598, align 4
  %40 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %41 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 16
  store i32 %39, i32* %42, align 8
  %43 = load i32, i32* @ixgbe_write_analog_reg8_82598, align 4
  %44 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %45 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 15
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* @ixgbe_set_lan_id_multi_port_pcie_82598, align 4
  %48 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %49 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 14
  store i32 %47, i32* %50, align 8
  %51 = load i32, i32* @ixgbe_enable_rx_dma_82598, align 4
  %52 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %53 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 13
  store i32 %51, i32* %54, align 4
  %55 = load i32, i32* @ixgbe_set_vmdq_82598, align 4
  %56 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %57 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 12
  store i32 %55, i32* %58, align 8
  %59 = load i32, i32* @ixgbe_clear_vmdq_82598, align 4
  %60 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %61 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 11
  store i32 %59, i32* %62, align 4
  %63 = load i32, i32* @ixgbe_set_vfta_82598, align 4
  %64 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %65 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 10
  store i32 %63, i32* %66, align 8
  %67 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %68 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 9
  store i32* null, i32** %69, align 8
  %70 = load i32, i32* @ixgbe_clear_vfta_82598, align 4
  %71 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %72 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 8
  store i32 %70, i32* %73, align 4
  %74 = load i32, i32* @ixgbe_fc_enable_82598, align 4
  %75 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %76 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 7
  store i32 %74, i32* %77, align 8
  %78 = load i32, i32* @IXGBE_82598_MC_TBL_SIZE, align 4
  %79 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %80 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %79, i32 0, i32 7
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* @IXGBE_82598_VFT_TBL_SIZE, align 4
  %82 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %83 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %82, i32 0, i32 6
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @IXGBE_82598_RAR_ENTRIES, align 4
  %85 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %86 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %85, i32 0, i32 5
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* @IXGBE_82598_RX_PB_SIZE, align 4
  %88 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %89 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %88, i32 0, i32 4
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* @IXGBE_82598_MAX_RX_QUEUES, align 4
  %91 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %92 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* @IXGBE_82598_MAX_TX_QUEUES, align 4
  %94 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %95 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 4
  %96 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %97 = call i32 @ixgbe_get_pcie_msix_count_generic(%struct.ixgbe_hw* %96)
  %98 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %99 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 8
  %100 = load i32, i32* @ixgbe_read_i2c_eeprom_82598, align 4
  %101 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %4, align 8
  %102 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  store i32 %100, i32* %103, align 4
  %104 = load i32, i32* @ixgbe_read_i2c_sff8472_82598, align 4
  %105 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %4, align 8
  %106 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  store i32 %104, i32* %107, align 4
  %108 = load i32, i32* @ixgbe_check_mac_link_82598, align 4
  %109 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %110 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 6
  store i32 %108, i32* %111, align 4
  %112 = load i32, i32* @ixgbe_setup_mac_link_82598, align 4
  %113 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %114 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 5
  store i32 %112, i32* %115, align 8
  %116 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %117 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 4
  store i32* null, i32** %118, align 8
  %119 = load i32, i32* @ixgbe_get_link_capabilities_82598, align 4
  %120 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %121 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 3
  store i32 %119, i32* %122, align 4
  %123 = load i32, i32* @ixgbe_set_rxpba_82598, align 4
  %124 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %125 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 2
  store i32 %123, i32* %126, align 8
  %127 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %128 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  store i32* null, i32** %129, align 8
  %130 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %131 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  store i32* null, i32** %132, align 8
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @ixgbe_init_phy_ops_generic(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_init_ops_generic(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_get_pcie_msix_count_generic(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
