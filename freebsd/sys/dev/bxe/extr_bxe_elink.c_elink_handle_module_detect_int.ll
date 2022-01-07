; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_handle_module_detect_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_handle_module_detect_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_params = type { i32, i32, i32, i32, %struct.elink_phy*, %struct.bxe_softc* }
%struct.elink_phy = type { i32 }
%struct.bxe_softc = type { i32 }

@ELINK_INT_PHY = common dso_local global i64 0, align 8
@ELINK_EXT_PHY1 = common dso_local global i64 0, align 8
@ELINK_STATUS_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Failed to get MOD_ABS interrupt config\0A\00", align 1
@MISC_REGISTERS_GPIO_HIGH = common dso_local global i32 0, align 4
@MISC_REGISTERS_GPIO_INT_OUTPUT_CLR = common dso_local global i32 0, align 4
@MDIO_WC_DEVAD = common dso_local global i32 0, align 4
@MDIO_WC_REG_DIGITAL5_MISC6 = common dso_local global i32 0, align 4
@ELINK_PHY_INITIALIZED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"SFP+ module is not initialized\0A\00", align 1
@MISC_REGISTERS_GPIO_INT_OUTPUT_SET = common dso_local global i32 0, align 4
@ELINK_ETH_PHY_NOT_PRESENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @elink_handle_module_detect_int(%struct.elink_params* %0) #0 {
  %2 = alloca %struct.elink_params*, align 8
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca %struct.elink_phy*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.elink_params* %0, %struct.elink_params** %2, align 8
  %9 = load %struct.elink_params*, %struct.elink_params** %2, align 8
  %10 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %9, i32 0, i32 5
  %11 = load %struct.bxe_softc*, %struct.bxe_softc** %10, align 8
  store %struct.bxe_softc* %11, %struct.bxe_softc** %3, align 8
  %12 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %13 = call i64 @CHIP_IS_E3(%struct.bxe_softc* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load %struct.elink_params*, %struct.elink_params** %2, align 8
  %17 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %16, i32 0, i32 4
  %18 = load %struct.elink_phy*, %struct.elink_phy** %17, align 8
  %19 = load i64, i64* @ELINK_INT_PHY, align 8
  %20 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %18, i64 %19
  store %struct.elink_phy* %20, %struct.elink_phy** %4, align 8
  %21 = load %struct.elink_params*, %struct.elink_params** %2, align 8
  %22 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %23 = call i32 @elink_sfp_set_transmitter(%struct.elink_params* %21, %struct.elink_phy* %22, i32 1)
  br label %30

24:                                               ; preds = %1
  %25 = load %struct.elink_params*, %struct.elink_params** %2, align 8
  %26 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %25, i32 0, i32 4
  %27 = load %struct.elink_phy*, %struct.elink_phy** %26, align 8
  %28 = load i64, i64* @ELINK_EXT_PHY1, align 8
  %29 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %27, i64 %28
  store %struct.elink_phy* %29, %struct.elink_phy** %4, align 8
  br label %30

30:                                               ; preds = %24, %15
  %31 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %32 = load %struct.elink_params*, %struct.elink_params** %2, align 8
  %33 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.elink_params*, %struct.elink_params** %2, align 8
  %36 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.elink_params*, %struct.elink_params** %2, align 8
  %39 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @elink_get_mod_abs_int_cfg(%struct.bxe_softc* %31, i32 %34, i32 %37, i32 %40, i32* %6, i32* %7)
  %42 = load i64, i64* @ELINK_STATUS_ERROR, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %30
  %45 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %46 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %45, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %123

47:                                               ; preds = %30
  %48 = load %struct.elink_params*, %struct.elink_params** %2, align 8
  %49 = load i32, i32* @MISC_REGISTERS_GPIO_HIGH, align 4
  %50 = call i32 @elink_set_sfp_module_fault_led(%struct.elink_params* %48, i32 %49)
  %51 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i64 @elink_cb_gpio_read(%struct.bxe_softc* %51, i32 %52, i32 %53)
  store i64 %54, i64* %5, align 8
  %55 = load i64, i64* %5, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %114

57:                                               ; preds = %47
  %58 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %59 = load %struct.elink_params*, %struct.elink_params** %2, align 8
  %60 = call i32 @elink_set_mdio_emac_per_phy(%struct.bxe_softc* %58, %struct.elink_params* %59)
  %61 = load %struct.elink_params*, %struct.elink_params** %2, align 8
  %62 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %63 = call i32 @elink_set_aer_mmd(%struct.elink_params* %61, %struct.elink_phy* %62)
  %64 = load %struct.elink_params*, %struct.elink_params** %2, align 8
  %65 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %66 = call i32 @elink_power_sfp_module(%struct.elink_params* %64, %struct.elink_phy* %65, i32 1)
  %67 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @MISC_REGISTERS_GPIO_INT_OUTPUT_CLR, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @elink_cb_gpio_int_write(%struct.bxe_softc* %67, i32 %68, i32 %69, i32 %70)
  %72 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %73 = load %struct.elink_params*, %struct.elink_params** %2, align 8
  %74 = call i64 @elink_wait_for_sfp_module_initialized(%struct.elink_phy* %72, %struct.elink_params* %73)
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %110

76:                                               ; preds = %57
  %77 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %78 = load %struct.elink_params*, %struct.elink_params** %2, align 8
  %79 = call i32 @elink_sfp_module_detection(%struct.elink_phy* %77, %struct.elink_params* %78)
  %80 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %81 = call i64 @CHIP_IS_E3(%struct.bxe_softc* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %109

83:                                               ; preds = %76
  %84 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %85 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %86 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %87 = load i32, i32* @MDIO_WC_REG_DIGITAL5_MISC6, align 4
  %88 = call i32 @elink_cl45_read(%struct.bxe_softc* %84, %struct.elink_phy* %85, i32 %86, i32 %87, i32* %8)
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %108, label %91

91:                                               ; preds = %83
  %92 = load %struct.elink_params*, %struct.elink_params** %2, align 8
  %93 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @ELINK_PHY_INITIALIZED, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %91
  %99 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %100 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %101 = call i32 @elink_warpcore_reset_lane(%struct.bxe_softc* %99, %struct.elink_phy* %100, i32 1)
  %102 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %103 = load %struct.elink_params*, %struct.elink_params** %2, align 8
  %104 = call i32 @elink_warpcore_config_sfi(%struct.elink_phy* %102, %struct.elink_params* %103)
  %105 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %106 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %107 = call i32 @elink_warpcore_reset_lane(%struct.bxe_softc* %105, %struct.elink_phy* %106, i32 0)
  br label %108

108:                                              ; preds = %98, %91, %83
  br label %109

109:                                              ; preds = %108, %76
  br label %113

110:                                              ; preds = %57
  %111 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %112 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %111, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %113

113:                                              ; preds = %110, %109
  br label %123

114:                                              ; preds = %47
  %115 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* @MISC_REGISTERS_GPIO_INT_OUTPUT_SET, align 4
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @elink_cb_gpio_int_write(%struct.bxe_softc* %115, i32 %116, i32 %117, i32 %118)
  %120 = load i32, i32* @ELINK_ETH_PHY_NOT_PRESENT, align 4
  %121 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %122 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 4
  br label %123

123:                                              ; preds = %44, %114, %113
  ret void
}

declare dso_local i64 @CHIP_IS_E3(%struct.bxe_softc*) #1

declare dso_local i32 @elink_sfp_set_transmitter(%struct.elink_params*, %struct.elink_phy*, i32) #1

declare dso_local i64 @elink_get_mod_abs_int_cfg(%struct.bxe_softc*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @ELINK_DEBUG_P0(%struct.bxe_softc*, i8*) #1

declare dso_local i32 @elink_set_sfp_module_fault_led(%struct.elink_params*, i32) #1

declare dso_local i64 @elink_cb_gpio_read(%struct.bxe_softc*, i32, i32) #1

declare dso_local i32 @elink_set_mdio_emac_per_phy(%struct.bxe_softc*, %struct.elink_params*) #1

declare dso_local i32 @elink_set_aer_mmd(%struct.elink_params*, %struct.elink_phy*) #1

declare dso_local i32 @elink_power_sfp_module(%struct.elink_params*, %struct.elink_phy*, i32) #1

declare dso_local i32 @elink_cb_gpio_int_write(%struct.bxe_softc*, i32, i32, i32) #1

declare dso_local i64 @elink_wait_for_sfp_module_initialized(%struct.elink_phy*, %struct.elink_params*) #1

declare dso_local i32 @elink_sfp_module_detection(%struct.elink_phy*, %struct.elink_params*) #1

declare dso_local i32 @elink_cl45_read(%struct.bxe_softc*, %struct.elink_phy*, i32, i32, i32*) #1

declare dso_local i32 @elink_warpcore_reset_lane(%struct.bxe_softc*, %struct.elink_phy*, i32) #1

declare dso_local i32 @elink_warpcore_config_sfi(%struct.elink_phy*, %struct.elink_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
