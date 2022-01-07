; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_set_aer_mmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_set_aer_mmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_params = type { i32, %struct.bxe_softc* }
%struct.bxe_softc = type { i32 }
%struct.elink_phy = type { i64, i32, i32 }

@PORT_HW_CFG_LANE_SWAP_CFG_MASTER_MASK = common dso_local global i32 0, align 4
@PORT_HW_CFG_LANE_SWAP_CFG_MASTER_SHIFT = common dso_local global i32 0, align 4
@PORT_HW_CFG_XGXS_EXT_PHY_TYPE_DIRECT = common dso_local global i64 0, align 8
@ELINK_FLAGS_WC_DUAL_MODE = common dso_local global i32 0, align 4
@MDIO_REG_BANK_AER_BLOCK = common dso_local global i32 0, align 4
@MDIO_AER_BLOCK_AER_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elink_params*, %struct.elink_phy*)* @elink_set_aer_mmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elink_set_aer_mmd(%struct.elink_params* %0, %struct.elink_phy* %1) #0 {
  %3 = alloca %struct.elink_params*, align 8
  %4 = alloca %struct.elink_phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bxe_softc*, align 8
  store %struct.elink_params* %0, %struct.elink_params** %3, align 8
  store %struct.elink_phy* %1, %struct.elink_phy** %4, align 8
  %9 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %10 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %9, i32 0, i32 1
  %11 = load %struct.bxe_softc*, %struct.bxe_softc** %10, align 8
  store %struct.bxe_softc* %11, %struct.bxe_softc** %8, align 8
  %12 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %13 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @PORT_HW_CFG_LANE_SWAP_CFG_MASTER_MASK, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @PORT_HW_CFG_LANE_SWAP_CFG_MASTER_SHIFT, align 4
  %18 = ashr i32 %16, %17
  store i32 %18, i32* %5, align 4
  %19 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %20 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PORT_HW_CFG_XGXS_EXT_PHY_TYPE_DIRECT, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %26 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %27, %28
  br label %31

30:                                               ; preds = %2
  br label %31

31:                                               ; preds = %30, %24
  %32 = phi i32 [ %29, %24 ], [ 0, %30 ]
  store i32 %32, i32* %6, align 4
  %33 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %34 = call i64 @USES_WARPCORE(%struct.bxe_softc* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %31
  %37 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %38 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %39 = call i32 @elink_get_warpcore_lane(%struct.elink_phy* %37, %struct.elink_params* %38)
  store i32 %39, i32* %7, align 4
  %40 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %41 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @ELINK_FLAGS_WC_DUAL_MODE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %36
  %47 = load i32, i32* %7, align 4
  %48 = ashr i32 %47, 1
  %49 = or i32 %48, 512
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %46, %36
  br label %63

51:                                               ; preds = %31
  %52 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %53 = call i64 @CHIP_IS_E2(%struct.bxe_softc* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 14336, %56
  %58 = sub nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %62

59:                                               ; preds = %51
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 14336, %60
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %59, %55
  br label %63

63:                                               ; preds = %62, %50
  %64 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %65 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %66 = load i32, i32* @MDIO_REG_BANK_AER_BLOCK, align 4
  %67 = load i32, i32* @MDIO_AER_BLOCK_AER_REG, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @CL22_WR_OVER_CL45(%struct.bxe_softc* %64, %struct.elink_phy* %65, i32 %66, i32 %67, i32 %68)
  ret void
}

declare dso_local i64 @USES_WARPCORE(%struct.bxe_softc*) #1

declare dso_local i32 @elink_get_warpcore_lane(%struct.elink_phy*, %struct.elink_params*) #1

declare dso_local i64 @CHIP_IS_E2(%struct.bxe_softc*) #1

declare dso_local i32 @CL22_WR_OVER_CL45(%struct.bxe_softc*, %struct.elink_phy*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
