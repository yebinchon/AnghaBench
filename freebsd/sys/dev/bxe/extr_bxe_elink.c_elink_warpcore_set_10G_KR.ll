; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_warpcore_set_10G_KR.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_warpcore_set_10G_KR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_reg_set = type { i32, i32, i32, i32, i32, i32 }
%struct.elink_phy = type { i32 }
%struct.elink_params = type { %struct.bxe_softc* }
%struct.bxe_softc = type { i32 }
%struct.elink_vars = type { i32 }

@elink_warpcore_set_10G_KR.reg_set = internal global [7 x %struct.elink_reg_set] [%struct.elink_reg_set { i32 135, i32 128, i32 7, i32 0, i32 0, i32 0 }, %struct.elink_reg_set { i32 135, i32 133, i32 16128, i32 0, i32 0, i32 0 }, %struct.elink_reg_set { i32 137, i32 134, i32 0, i32 0, i32 0, i32 0 }, %struct.elink_reg_set { i32 137, i32 130, i32 0, i32 0, i32 0, i32 0 }, %struct.elink_reg_set { i32 135, i32 132, i32 1, i32 0, i32 0, i32 0 }, %struct.elink_reg_set { i32 135, i32 131, i32 10, i32 0, i32 0, i32 0 }, %struct.elink_reg_set { i32 136, i32 129, i32 2, i32 0, i32 0, i32 0 }], align 16
@MDIO_REG_BANK_AER_BLOCK = common dso_local global i32 0, align 4
@MDIO_AER_BLOCK_AER_REG = common dso_local global i32 0, align 4
@MDIO_WC_REG_XGXSBLK1_LANECTRL0 = common dso_local global i32 0, align 4
@MDIO_WC_REG_XGXSBLK1_LANECTRL1 = common dso_local global i32 0, align 4
@MDIO_WC_REG_IEEE0BLK_AUTONEGNP = common dso_local global i32 0, align 4
@MDIO_WC_REG_SERDESDIGITAL_MISC2 = common dso_local global i32 0, align 4
@MDIO_WC_REG_TX66_CONTROL = common dso_local global i32 0, align 4
@MDIO_WC_REG_RX66_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elink_phy*, %struct.elink_params*, %struct.elink_vars*)* @elink_warpcore_set_10G_KR to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elink_warpcore_set_10G_KR(%struct.elink_phy* %0, %struct.elink_params* %1, %struct.elink_vars* %2) #0 {
  %4 = alloca %struct.elink_phy*, align 8
  %5 = alloca %struct.elink_params*, align 8
  %6 = alloca %struct.elink_vars*, align 8
  %7 = alloca %struct.bxe_softc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.elink_phy* %0, %struct.elink_phy** %4, align 8
  store %struct.elink_params* %1, %struct.elink_params** %5, align 8
  store %struct.elink_vars* %2, %struct.elink_vars** %6, align 8
  %11 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %12 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %11, i32 0, i32 0
  %13 = load %struct.bxe_softc*, %struct.bxe_softc** %12, align 8
  store %struct.bxe_softc* %13, %struct.bxe_softc** %7, align 8
  store i64 0, i64* %9, align 8
  br label %14

14:                                               ; preds = %34, %3
  %15 = load i64, i64* %9, align 8
  %16 = call i64 @ARRAY_SIZE(%struct.elink_reg_set* getelementptr inbounds ([7 x %struct.elink_reg_set], [7 x %struct.elink_reg_set]* @elink_warpcore_set_10G_KR.reg_set, i64 0, i64 0))
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %37

18:                                               ; preds = %14
  %19 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %20 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %21 = load i64, i64* %9, align 8
  %22 = getelementptr inbounds [7 x %struct.elink_reg_set], [7 x %struct.elink_reg_set]* @elink_warpcore_set_10G_KR.reg_set, i64 0, i64 %21
  %23 = getelementptr inbounds %struct.elink_reg_set, %struct.elink_reg_set* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* %9, align 8
  %26 = getelementptr inbounds [7 x %struct.elink_reg_set], [7 x %struct.elink_reg_set]* @elink_warpcore_set_10G_KR.reg_set, i64 0, i64 %25
  %27 = getelementptr inbounds %struct.elink_reg_set, %struct.elink_reg_set* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i64, i64* %9, align 8
  %30 = getelementptr inbounds [7 x %struct.elink_reg_set], [7 x %struct.elink_reg_set]* @elink_warpcore_set_10G_KR.reg_set, i64 0, i64 %29
  %31 = getelementptr inbounds %struct.elink_reg_set, %struct.elink_reg_set* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @elink_cl45_write(%struct.bxe_softc* %19, %struct.elink_phy* %20, i32 %24, i32 %28, i32 %32)
  br label %34

34:                                               ; preds = %18
  %35 = load i64, i64* %9, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %9, align 8
  br label %14

37:                                               ; preds = %14
  %38 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %39 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %40 = call i64 @elink_get_warpcore_lane(%struct.elink_phy* %38, %struct.elink_params* %39)
  store i64 %40, i64* %10, align 8
  %41 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %42 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %43 = load i32, i32* @MDIO_REG_BANK_AER_BLOCK, align 4
  %44 = load i32, i32* @MDIO_AER_BLOCK_AER_REG, align 4
  %45 = call i32 @CL22_WR_OVER_CL45(%struct.bxe_softc* %41, %struct.elink_phy* %42, i32 %43, i32 %44, i32 0)
  %46 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %47 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %48 = load i32, i32* @MDIO_WC_REG_XGXSBLK1_LANECTRL0, align 4
  %49 = call i32 @elink_cl45_read(%struct.bxe_softc* %46, %struct.elink_phy* %47, i32 135, i32 %48, i64* %8)
  %50 = load i64, i64* %10, align 8
  %51 = trunc i64 %50 to i32
  %52 = shl i32 17, %51
  %53 = xor i32 %52, -1
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* %8, align 8
  %56 = and i64 %55, %54
  store i64 %56, i64* %8, align 8
  %57 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %58 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %59 = load i32, i32* @MDIO_WC_REG_XGXSBLK1_LANECTRL0, align 4
  %60 = load i64, i64* %8, align 8
  %61 = trunc i64 %60 to i32
  %62 = call i32 @elink_cl45_write(%struct.bxe_softc* %57, %struct.elink_phy* %58, i32 135, i32 %59, i32 %61)
  %63 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %64 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %65 = load i32, i32* @MDIO_WC_REG_XGXSBLK1_LANECTRL1, align 4
  %66 = call i32 @elink_cl45_read(%struct.bxe_softc* %63, %struct.elink_phy* %64, i32 135, i32 %65, i64* %8)
  %67 = load i64, i64* %10, align 8
  %68 = shl i64 %67, 1
  %69 = trunc i64 %68 to i32
  %70 = shl i32 771, %69
  %71 = sext i32 %70 to i64
  %72 = load i64, i64* %8, align 8
  %73 = or i64 %72, %71
  store i64 %73, i64* %8, align 8
  %74 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %75 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %76 = load i32, i32* @MDIO_WC_REG_XGXSBLK1_LANECTRL1, align 4
  %77 = load i64, i64* %8, align 8
  %78 = trunc i64 %77 to i32
  %79 = call i32 @elink_cl45_write(%struct.bxe_softc* %74, %struct.elink_phy* %75, i32 135, i32 %76, i32 %78)
  %80 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %81 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %82 = call i32 @elink_set_aer_mmd(%struct.elink_params* %80, %struct.elink_phy* %81)
  %83 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %84 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %85 = call i32 @elink_cl45_write(%struct.bxe_softc* %83, %struct.elink_phy* %84, i32 136, i32 130, i32 8256)
  %86 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %87 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %88 = load i32, i32* @MDIO_WC_REG_IEEE0BLK_AUTONEGNP, align 4
  %89 = call i32 @elink_cl45_write(%struct.bxe_softc* %86, %struct.elink_phy* %87, i32 136, i32 %88, i32 11)
  %90 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %91 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %92 = load i32, i32* @MDIO_WC_REG_SERDESDIGITAL_MISC2, align 4
  %93 = call i32 @elink_cl45_write(%struct.bxe_softc* %90, %struct.elink_phy* %91, i32 135, i32 %92, i32 48)
  %94 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %95 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %96 = load i32, i32* @MDIO_WC_REG_TX66_CONTROL, align 4
  %97 = call i32 @elink_cl45_write(%struct.bxe_softc* %94, %struct.elink_phy* %95, i32 135, i32 %96, i32 9)
  %98 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %99 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %100 = load i32, i32* @MDIO_WC_REG_RX66_CONTROL, align 4
  %101 = call i32 @elink_cl45_read_or_write(%struct.bxe_softc* %98, %struct.elink_phy* %99, i32 135, i32 %100, i32 249)
  %102 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %103 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %104 = call i32 @elink_cl45_write(%struct.bxe_softc* %102, %struct.elink_phy* %103, i32 135, i32 130, i32 16384)
  %105 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %106 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %107 = call i32 @elink_cl45_write(%struct.bxe_softc* %105, %struct.elink_phy* %106, i32 135, i32 130, i32 0)
  ret void
}

declare dso_local i64 @ARRAY_SIZE(%struct.elink_reg_set*) #1

declare dso_local i32 @elink_cl45_write(%struct.bxe_softc*, %struct.elink_phy*, i32, i32, i32) #1

declare dso_local i64 @elink_get_warpcore_lane(%struct.elink_phy*, %struct.elink_params*) #1

declare dso_local i32 @CL22_WR_OVER_CL45(%struct.bxe_softc*, %struct.elink_phy*, i32, i32, i32) #1

declare dso_local i32 @elink_cl45_read(%struct.bxe_softc*, %struct.elink_phy*, i32, i32, i64*) #1

declare dso_local i32 @elink_set_aer_mmd(%struct.elink_params*, %struct.elink_phy*) #1

declare dso_local i32 @elink_cl45_read_or_write(%struct.bxe_softc*, %struct.elink_phy*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
