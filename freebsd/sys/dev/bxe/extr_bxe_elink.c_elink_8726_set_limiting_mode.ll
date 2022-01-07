; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_8726_set_limiting_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_8726_set_limiting_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.elink_phy = type { i32 }

@MDIO_PMA_DEVAD = common dso_local global i32 0, align 4
@MDIO_PMA_REG_ROM_VER2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Current Limiting mode is 0x%x\0A\00", align 1
@ELINK_EDC_MODE_LIMITING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Setting LIMITING MODE\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Setting LRM MODE\0A\00", align 1
@ELINK_STATUS_OK = common dso_local global i32 0, align 4
@MDIO_PMA_REG_LRM_MODE = common dso_local global i32 0, align 4
@MDIO_PMA_REG_MISC_CTRL0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, %struct.elink_phy*, i64)* @elink_8726_set_limiting_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elink_8726_set_limiting_mode(%struct.bxe_softc* %0, %struct.elink_phy* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bxe_softc*, align 8
  %6 = alloca %struct.elink_phy*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %5, align 8
  store %struct.elink_phy* %1, %struct.elink_phy** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %10 = load %struct.elink_phy*, %struct.elink_phy** %6, align 8
  %11 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %12 = load i32, i32* @MDIO_PMA_REG_ROM_VER2, align 4
  %13 = call i32 @elink_cl45_read(%struct.bxe_softc* %9, %struct.elink_phy* %10, i32 %11, i32 %12, i64* %8)
  %14 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @ELINK_DEBUG_P1(%struct.bxe_softc* %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @ELINK_EDC_MODE_LIMITING, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %3
  %21 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %22 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %24 = load %struct.elink_phy*, %struct.elink_phy** %6, align 8
  %25 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %26 = load i32, i32* @MDIO_PMA_REG_ROM_VER2, align 4
  %27 = load i64, i64* @ELINK_EDC_MODE_LIMITING, align 8
  %28 = trunc i64 %27 to i32
  %29 = call i32 @elink_cl45_write(%struct.bxe_softc* %23, %struct.elink_phy* %24, i32 %25, i32 %26, i32 %28)
  br label %59

30:                                               ; preds = %3
  %31 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %32 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* @ELINK_EDC_MODE_LIMITING, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @ELINK_STATUS_OK, align 4
  store i32 %37, i32* %4, align 4
  br label %61

38:                                               ; preds = %30
  %39 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %40 = load %struct.elink_phy*, %struct.elink_phy** %6, align 8
  %41 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %42 = load i32, i32* @MDIO_PMA_REG_LRM_MODE, align 4
  %43 = call i32 @elink_cl45_write(%struct.bxe_softc* %39, %struct.elink_phy* %40, i32 %41, i32 %42, i32 0)
  %44 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %45 = load %struct.elink_phy*, %struct.elink_phy** %6, align 8
  %46 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %47 = load i32, i32* @MDIO_PMA_REG_ROM_VER2, align 4
  %48 = call i32 @elink_cl45_write(%struct.bxe_softc* %44, %struct.elink_phy* %45, i32 %46, i32 %47, i32 296)
  %49 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %50 = load %struct.elink_phy*, %struct.elink_phy** %6, align 8
  %51 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %52 = load i32, i32* @MDIO_PMA_REG_MISC_CTRL0, align 4
  %53 = call i32 @elink_cl45_write(%struct.bxe_softc* %49, %struct.elink_phy* %50, i32 %51, i32 %52, i32 16392)
  %54 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %55 = load %struct.elink_phy*, %struct.elink_phy** %6, align 8
  %56 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %57 = load i32, i32* @MDIO_PMA_REG_LRM_MODE, align 4
  %58 = call i32 @elink_cl45_write(%struct.bxe_softc* %54, %struct.elink_phy* %55, i32 %56, i32 %57, i32 43690)
  br label %59

59:                                               ; preds = %38, %20
  %60 = load i32, i32* @ELINK_STATUS_OK, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %59, %36
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @elink_cl45_read(%struct.bxe_softc*, %struct.elink_phy*, i32, i32, i64*) #1

declare dso_local i32 @ELINK_DEBUG_P1(%struct.bxe_softc*, i8*, i64) #1

declare dso_local i32 @ELINK_DEBUG_P0(%struct.bxe_softc*, i8*) #1

declare dso_local i32 @elink_cl45_write(%struct.bxe_softc*, %struct.elink_phy*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
