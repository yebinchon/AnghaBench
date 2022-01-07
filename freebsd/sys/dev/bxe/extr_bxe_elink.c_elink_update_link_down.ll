; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_update_link_down.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_update_link_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_params = type { i32, i32, %struct.bxe_softc* }
%struct.bxe_softc = type { i32 }
%struct.elink_vars = type { i32, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"Port %x: Link is down\0A\00", align 1
@ELINK_LED_MODE_OFF = common dso_local global i32 0, align 4
@PHY_PHYSICAL_LINK_FLAG = common dso_local global i32 0, align 4
@ELINK_MAC_TYPE_NONE = common dso_local global i32 0, align 4
@ELINK_LINK_UPDATE_MASK = common dso_local global i32 0, align 4
@NIG_REG_EGRESS_DRAIN0_MODE = common dso_local global i64 0, align 8
@NIG_REG_NIG_EMAC0_EN = common dso_local global i64 0, align 8
@MISC_REG_CPMU_LP_FW_ENABLE_P0 = common dso_local global i64 0, align 8
@MISC_REG_CPMU_LP_MASK_ENT_P0 = common dso_local global i64 0, align 8
@SHMEM_EEE_LP_ADV_STATUS_MASK = common dso_local global i32 0, align 4
@SHMEM_EEE_ACTIVE_BIT = common dso_local global i32 0, align 4
@ELINK_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elink_params*, %struct.elink_vars*)* @elink_update_link_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elink_update_link_down(%struct.elink_params* %0, %struct.elink_vars* %1) #0 {
  %3 = alloca %struct.elink_params*, align 8
  %4 = alloca %struct.elink_vars*, align 8
  %5 = alloca %struct.bxe_softc*, align 8
  %6 = alloca i32, align 4
  store %struct.elink_params* %0, %struct.elink_params** %3, align 8
  store %struct.elink_vars* %1, %struct.elink_vars** %4, align 8
  %7 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %8 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %7, i32 0, i32 2
  %9 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  store %struct.bxe_softc* %9, %struct.bxe_softc** %5, align 8
  %10 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %11 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @ELINK_DEBUG_P1(%struct.bxe_softc* %13, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %17 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %18 = load i32, i32* @ELINK_LED_MODE_OFF, align 4
  %19 = call i32 @elink_set_led(%struct.elink_params* %16, %struct.elink_vars* %17, i32 %18, i32 0)
  %20 = load i32, i32* @PHY_PHYSICAL_LINK_FLAG, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %23 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* @ELINK_MAC_TYPE_NONE, align 4
  %27 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %28 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @ELINK_LINK_UPDATE_MASK, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %32 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %36 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %38 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %39 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @elink_update_mng(%struct.elink_params* %37, i32 %40)
  %42 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %43 = load i64, i64* @NIG_REG_EGRESS_DRAIN0_MODE, align 8
  %44 = load i32, i32* %6, align 4
  %45 = mul nsw i32 %44, 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %43, %46
  %48 = call i32 @REG_WR(%struct.bxe_softc* %42, i64 %47, i32 1)
  %49 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %50 = call i64 @CHIP_IS_E3(%struct.bxe_softc* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %2
  %53 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %54 = load i64, i64* @NIG_REG_NIG_EMAC0_EN, align 8
  %55 = load i32, i32* %6, align 4
  %56 = mul nsw i32 %55, 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %54, %57
  %59 = call i32 @REG_WR(%struct.bxe_softc* %53, i64 %58, i32 0)
  br label %60

60:                                               ; preds = %52, %2
  %61 = call i32 @DELAY(i32 10000)
  %62 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %63 = call i64 @CHIP_IS_E1x(%struct.bxe_softc* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %60
  %66 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %67 = call i64 @CHIP_IS_E2(%struct.bxe_softc* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %65, %60
  %70 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %71 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %72 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %75 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @elink_set_bmac_rx(%struct.bxe_softc* %70, i32 %73, i32 %76, i32 0)
  br label %78

78:                                               ; preds = %69, %65
  %79 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %80 = call i64 @CHIP_IS_E3(%struct.bxe_softc* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %118

82:                                               ; preds = %78
  %83 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %84 = load i64, i64* @MISC_REG_CPMU_LP_FW_ENABLE_P0, align 8
  %85 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %86 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = shl i32 %87, 2
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %84, %89
  %91 = call i32 @REG_WR(%struct.bxe_softc* %83, i64 %90, i32 0)
  %92 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %93 = load i64, i64* @MISC_REG_CPMU_LP_MASK_ENT_P0, align 8
  %94 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %95 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = shl i32 %96, 2
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %93, %98
  %100 = call i32 @REG_WR(%struct.bxe_softc* %92, i64 %99, i32 0)
  %101 = load i32, i32* @SHMEM_EEE_LP_ADV_STATUS_MASK, align 4
  %102 = load i32, i32* @SHMEM_EEE_ACTIVE_BIT, align 4
  %103 = or i32 %101, %102
  %104 = xor i32 %103, -1
  %105 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %106 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = and i32 %107, %104
  store i32 %108, i32* %106, align 8
  %109 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %110 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %111 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @elink_update_mng_eee(%struct.elink_params* %109, i32 %112)
  %114 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %115 = call i32 @elink_set_xmac_rxtx(%struct.elink_params* %114, i32 0)
  %116 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %117 = call i32 @elink_set_umac_rxtx(%struct.elink_params* %116, i32 0)
  br label %118

118:                                              ; preds = %82, %78
  %119 = load i32, i32* @ELINK_STATUS_OK, align 4
  ret i32 %119
}

declare dso_local i32 @ELINK_DEBUG_P1(%struct.bxe_softc*, i8*, i32) #1

declare dso_local i32 @elink_set_led(%struct.elink_params*, %struct.elink_vars*, i32, i32) #1

declare dso_local i32 @elink_update_mng(%struct.elink_params*, i32) #1

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i64, i32) #1

declare dso_local i64 @CHIP_IS_E3(%struct.bxe_softc*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i64 @CHIP_IS_E1x(%struct.bxe_softc*) #1

declare dso_local i64 @CHIP_IS_E2(%struct.bxe_softc*) #1

declare dso_local i32 @elink_set_bmac_rx(%struct.bxe_softc*, i32, i32, i32) #1

declare dso_local i32 @elink_update_mng_eee(%struct.elink_params*, i32) #1

declare dso_local i32 @elink_set_xmac_rxtx(%struct.elink_params*, i32) #1

declare dso_local i32 @elink_set_umac_rxtx(%struct.elink_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
