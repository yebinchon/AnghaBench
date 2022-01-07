; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_ext_phy_update_adv_fc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_ext_phy_update_adv_fc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_phy = type { i64 }
%struct.elink_params = type { %struct.bxe_softc* }
%struct.bxe_softc = type { i32 }
%struct.elink_vars = type { i32 }

@PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM54618SE = common dso_local global i64 0, align 8
@MDIO_AN_DEVAD = common dso_local global i32 0, align 4
@MDIO_WC_REG_GP2_STATUS_GP_2_4 = common dso_local global i32 0, align 4
@MDIO_WC_REG_GP2_STATUS_GP_2_4_CL73_AN_CMPL = common dso_local global i32 0, align 4
@MDIO_WC_REG_GP2_STATUS_GP_2_4_CL37_LP_AN_CAP = common dso_local global i32 0, align 4
@MDIO_AN_REG_ADV_PAUSE = common dso_local global i32 0, align 4
@MDIO_AN_REG_LP_AUTO_NEG = common dso_local global i32 0, align 4
@MDIO_AN_REG_CL37_FC_LD = common dso_local global i32 0, align 4
@MDIO_AN_REG_CL37_FC_LP = common dso_local global i32 0, align 4
@MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_BOTH = common dso_local global i32 0, align 4
@MDIO_AN_REG_ADV_PAUSE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Ext PHY pause result 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elink_phy*, %struct.elink_params*, %struct.elink_vars*)* @elink_ext_phy_update_adv_fc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elink_ext_phy_update_adv_fc(%struct.elink_phy* %0, %struct.elink_params* %1, %struct.elink_vars* %2) #0 {
  %4 = alloca %struct.elink_phy*, align 8
  %5 = alloca %struct.elink_params*, align 8
  %6 = alloca %struct.elink_vars*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bxe_softc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.elink_phy* %0, %struct.elink_phy** %4, align 8
  store %struct.elink_params* %1, %struct.elink_params** %5, align 8
  store %struct.elink_vars* %2, %struct.elink_vars** %6, align 8
  %14 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %15 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %14, i32 0, i32 0
  %16 = load %struct.bxe_softc*, %struct.bxe_softc** %15, align 8
  store %struct.bxe_softc* %16, %struct.bxe_softc** %10, align 8
  %17 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %18 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM54618SE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %3
  %23 = load %struct.bxe_softc*, %struct.bxe_softc** %10, align 8
  %24 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %25 = call i32 @elink_cl22_read(%struct.bxe_softc* %23, %struct.elink_phy* %24, i32 4, i32* %7)
  %26 = load %struct.bxe_softc*, %struct.bxe_softc** %10, align 8
  %27 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %28 = call i32 @elink_cl22_read(%struct.bxe_softc* %26, %struct.elink_phy* %27, i32 5, i32* %8)
  br label %99

29:                                               ; preds = %3
  %30 = load %struct.bxe_softc*, %struct.bxe_softc** %10, align 8
  %31 = call i64 @CHIP_IS_E3(%struct.bxe_softc* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %87

33:                                               ; preds = %29
  %34 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %35 = call i64 @ELINK_SINGLE_MEDIA_DIRECT(%struct.elink_params* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %87

37:                                               ; preds = %33
  %38 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %39 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %40 = call i32 @elink_get_warpcore_lane(%struct.elink_phy* %38, %struct.elink_params* %39)
  store i32 %40, i32* %11, align 4
  %41 = load %struct.bxe_softc*, %struct.bxe_softc** %10, align 8
  %42 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %43 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %44 = load i32, i32* @MDIO_WC_REG_GP2_STATUS_GP_2_4, align 4
  %45 = call i32 @elink_cl45_read(%struct.bxe_softc* %41, %struct.elink_phy* %42, i32 %43, i32 %44, i32* %12)
  %46 = load i32, i32* @MDIO_WC_REG_GP2_STATUS_GP_2_4_CL73_AN_CMPL, align 4
  %47 = load i32, i32* @MDIO_WC_REG_GP2_STATUS_GP_2_4_CL37_LP_AN_CAP, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* %11, align 4
  %50 = shl i32 %48, %49
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %13, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* %13, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %37
  %57 = load %struct.bxe_softc*, %struct.bxe_softc** %10, align 8
  %58 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %59 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %60 = load i32, i32* @MDIO_AN_REG_ADV_PAUSE, align 4
  %61 = call i32 @elink_cl45_read(%struct.bxe_softc* %57, %struct.elink_phy* %58, i32 %59, i32 %60, i32* %7)
  %62 = load %struct.bxe_softc*, %struct.bxe_softc** %10, align 8
  %63 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %64 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %65 = load i32, i32* @MDIO_AN_REG_LP_AUTO_NEG, align 4
  %66 = call i32 @elink_cl45_read(%struct.bxe_softc* %62, %struct.elink_phy* %63, i32 %64, i32 %65, i32* %8)
  br label %86

67:                                               ; preds = %37
  %68 = load %struct.bxe_softc*, %struct.bxe_softc** %10, align 8
  %69 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %70 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %71 = load i32, i32* @MDIO_AN_REG_CL37_FC_LD, align 4
  %72 = call i32 @elink_cl45_read(%struct.bxe_softc* %68, %struct.elink_phy* %69, i32 %70, i32 %71, i32* %7)
  %73 = load %struct.bxe_softc*, %struct.bxe_softc** %10, align 8
  %74 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %75 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %76 = load i32, i32* @MDIO_AN_REG_CL37_FC_LP, align 4
  %77 = call i32 @elink_cl45_read(%struct.bxe_softc* %73, %struct.elink_phy* %74, i32 %75, i32 %76, i32* %8)
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_BOTH, align 4
  %80 = and i32 %78, %79
  %81 = shl i32 %80, 3
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_BOTH, align 4
  %84 = and i32 %82, %83
  %85 = shl i32 %84, 3
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %67, %56
  br label %98

87:                                               ; preds = %33, %29
  %88 = load %struct.bxe_softc*, %struct.bxe_softc** %10, align 8
  %89 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %90 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %91 = load i32, i32* @MDIO_AN_REG_ADV_PAUSE, align 4
  %92 = call i32 @elink_cl45_read(%struct.bxe_softc* %88, %struct.elink_phy* %89, i32 %90, i32 %91, i32* %7)
  %93 = load %struct.bxe_softc*, %struct.bxe_softc** %10, align 8
  %94 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %95 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %96 = load i32, i32* @MDIO_AN_REG_LP_AUTO_NEG, align 4
  %97 = call i32 @elink_cl45_read(%struct.bxe_softc* %93, %struct.elink_phy* %94, i32 %95, i32 %96, i32* %8)
  br label %98

98:                                               ; preds = %87, %86
  br label %99

99:                                               ; preds = %98, %22
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @MDIO_AN_REG_ADV_PAUSE_MASK, align 4
  %102 = and i32 %100, %101
  %103 = ashr i32 %102, 8
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* @MDIO_AN_REG_ADV_PAUSE_MASK, align 4
  %106 = and i32 %104, %105
  %107 = ashr i32 %106, 10
  %108 = load i32, i32* %9, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %9, align 4
  %110 = load %struct.bxe_softc*, %struct.bxe_softc** %10, align 8
  %111 = load i32, i32* %9, align 4
  %112 = call i32 @ELINK_DEBUG_P1(%struct.bxe_softc* %110, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %111)
  %113 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %114 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %115 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @elink_pause_resolve(%struct.elink_phy* %113, %struct.elink_params* %114, %struct.elink_vars* %115, i32 %116)
  ret void
}

declare dso_local i32 @elink_cl22_read(%struct.bxe_softc*, %struct.elink_phy*, i32, i32*) #1

declare dso_local i64 @CHIP_IS_E3(%struct.bxe_softc*) #1

declare dso_local i64 @ELINK_SINGLE_MEDIA_DIRECT(%struct.elink_params*) #1

declare dso_local i32 @elink_get_warpcore_lane(%struct.elink_phy*, %struct.elink_params*) #1

declare dso_local i32 @elink_cl45_read(%struct.bxe_softc*, %struct.elink_phy*, i32, i32, i32*) #1

declare dso_local i32 @ELINK_DEBUG_P1(%struct.bxe_softc*, i8*, i32) #1

declare dso_local i32 @elink_pause_resolve(%struct.elink_phy*, %struct.elink_params*, %struct.elink_vars*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
