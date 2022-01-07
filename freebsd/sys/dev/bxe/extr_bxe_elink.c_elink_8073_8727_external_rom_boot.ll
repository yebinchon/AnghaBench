; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_8073_8727_external_rom_boot.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_8073_8727_external_rom_boot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.elink_phy = type { i64 }

@ELINK_STATUS_OK = common dso_local global i32 0, align 4
@MDIO_PMA_DEVAD = common dso_local global i32 0, align 4
@MDIO_PMA_REG_GEN_CTRL = common dso_local global i32 0, align 4
@MDIO_PMA_REG_MISC_CTRL1 = common dso_local global i32 0, align 4
@MDIO_PMA_REG_GEN_CTRL_ROM_MICRO_RESET = common dso_local global i32 0, align 4
@MDIO_PMA_REG_GEN_CTRL_ROM_RESET_INTERNAL_MP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"elink_8073_8727_external_rom_boot port %x:Download failed. fw version = 0x%x\0A\00", align 1
@ELINK_STATUS_ERROR = common dso_local global i32 0, align 4
@MDIO_PMA_REG_ROM_VER1 = common dso_local global i32 0, align 4
@MDIO_PMA_REG_M8051_MSGOUT_REG = common dso_local global i32 0, align 4
@PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM8073 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [80 x i8] c"elink_8073_8727_external_rom_boot port %x:Download complete. fw version = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, %struct.elink_phy*, i32)* @elink_8073_8727_external_rom_boot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elink_8073_8727_external_rom_boot(%struct.bxe_softc* %0, %struct.elink_phy* %1, i32 %2) #0 {
  %4 = alloca %struct.bxe_softc*, align 8
  %5 = alloca %struct.elink_phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %4, align 8
  store %struct.elink_phy* %1, %struct.elink_phy** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* @ELINK_STATUS_OK, align 4
  store i32 %11, i32* %10, align 4
  %12 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %13 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %14 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %15 = load i32, i32* @MDIO_PMA_REG_GEN_CTRL, align 4
  %16 = call i32 @elink_cl45_write(%struct.bxe_softc* %12, %struct.elink_phy* %13, i32 %14, i32 %15, i32 1)
  %17 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %18 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %19 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %20 = load i32, i32* @MDIO_PMA_REG_GEN_CTRL, align 4
  %21 = call i32 @elink_cl45_write(%struct.bxe_softc* %17, %struct.elink_phy* %18, i32 %19, i32 %20, i32 140)
  %22 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %23 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %24 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %25 = load i32, i32* @MDIO_PMA_REG_MISC_CTRL1, align 4
  %26 = call i32 @elink_cl45_write(%struct.bxe_softc* %22, %struct.elink_phy* %23, i32 %24, i32 %25, i32 1)
  %27 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %28 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %29 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %30 = load i32, i32* @MDIO_PMA_REG_GEN_CTRL, align 4
  %31 = load i32, i32* @MDIO_PMA_REG_GEN_CTRL_ROM_MICRO_RESET, align 4
  %32 = call i32 @elink_cl45_write(%struct.bxe_softc* %27, %struct.elink_phy* %28, i32 %29, i32 %30, i32 %31)
  %33 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %34 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %35 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %36 = load i32, i32* @MDIO_PMA_REG_GEN_CTRL, align 4
  %37 = load i32, i32* @MDIO_PMA_REG_GEN_CTRL_ROM_RESET_INTERNAL_MP, align 4
  %38 = call i32 @elink_cl45_write(%struct.bxe_softc* %33, %struct.elink_phy* %34, i32 %35, i32 %36, i32 %37)
  %39 = call i32 @DELAY(i32 100000)
  br label %40

40:                                               ; preds = %81, %3
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp sgt i32 %43, 300
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @ELINK_DEBUG_P2(%struct.bxe_softc* %46, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %48)
  %50 = load i32, i32* @ELINK_STATUS_ERROR, align 4
  store i32 %50, i32* %10, align 4
  br label %83

51:                                               ; preds = %40
  %52 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %53 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %54 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %55 = load i32, i32* @MDIO_PMA_REG_ROM_VER1, align 4
  %56 = call i32 @elink_cl45_read(%struct.bxe_softc* %52, %struct.elink_phy* %53, i32 %54, i32 %55, i32* %8)
  %57 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %58 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %59 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %60 = load i32, i32* @MDIO_PMA_REG_M8051_MSGOUT_REG, align 4
  %61 = call i32 @elink_cl45_read(%struct.bxe_softc* %57, %struct.elink_phy* %58, i32 %59, i32 %60, i32* %9)
  %62 = call i32 @DELAY(i32 1000)
  br label %63

63:                                               ; preds = %51
  %64 = load i32, i32* %8, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %81, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %8, align 4
  %68 = icmp eq i32 %67, 17185
  br i1 %68, label %81, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %9, align 4
  %71 = and i32 %70, 255
  %72 = icmp ne i32 %71, 3
  br i1 %72, label %73, label %79

73:                                               ; preds = %69
  %74 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %75 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM8073, align 8
  %78 = icmp eq i64 %76, %77
  br label %79

79:                                               ; preds = %73, %69
  %80 = phi i1 [ false, %69 ], [ %78, %73 ]
  br label %81

81:                                               ; preds = %79, %66, %63
  %82 = phi i1 [ true, %66 ], [ true, %63 ], [ %80, %79 ]
  br i1 %82, label %40, label %83

83:                                               ; preds = %81, %45
  %84 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %85 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %86 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %87 = load i32, i32* @MDIO_PMA_REG_MISC_CTRL1, align 4
  %88 = call i32 @elink_cl45_write(%struct.bxe_softc* %84, %struct.elink_phy* %85, i32 %86, i32 %87, i32 0)
  %89 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %90 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @elink_save_bcm_spirom_ver(%struct.bxe_softc* %89, %struct.elink_phy* %90, i32 %91)
  %93 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @ELINK_DEBUG_P2(%struct.bxe_softc* %93, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 %94, i32 %95)
  %97 = load i32, i32* %10, align 4
  ret i32 %97
}

declare dso_local i32 @elink_cl45_write(%struct.bxe_softc*, %struct.elink_phy*, i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @ELINK_DEBUG_P2(%struct.bxe_softc*, i8*, i32, i32) #1

declare dso_local i32 @elink_cl45_read(%struct.bxe_softc*, %struct.elink_phy*, i32, i32, i32*) #1

declare dso_local i32 @elink_save_bcm_spirom_ver(%struct.bxe_softc*, %struct.elink_phy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
