; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_8726_common_init_phy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_8726_common_init_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.elink_phy = type { i32 }

@MISC_REG_GPIO_EVENT_EN = common dso_local global i32 0, align 4
@MISC_REGISTERS_GPIO_3 = common dso_local global i32 0, align 4
@MISC_REGISTERS_GPIO_PORT_SHIFT = common dso_local global i32 0, align 4
@PORT_MAX = common dso_local global i64 0, align 8
@ELINK_STATUS_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"populate phy failed\0A\00", align 1
@ELINK_STATUS_ERROR = common dso_local global i64 0, align 8
@MDIO_PMA_DEVAD = common dso_local global i32 0, align 4
@MDIO_PMA_REG_GEN_CTRL = common dso_local global i32 0, align 4
@MISC_REGISTERS_GPIO_0 = common dso_local global i32 0, align 4
@MISC_REGISTERS_GPIO_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bxe_softc*, i32*, i32*, i32, i32)* @elink_8726_common_init_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @elink_8726_common_init_phy(%struct.bxe_softc* %0, i32* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.bxe_softc*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.elink_phy, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %18 = load i32, i32* @MISC_REG_GPIO_EVENT_EN, align 4
  %19 = call i32 @REG_RD(%struct.bxe_softc* %17, i32 %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* @MISC_REGISTERS_GPIO_3, align 4
  %21 = shl i32 1, %20
  %22 = load i32, i32* @MISC_REGISTERS_GPIO_3, align 4
  %23 = load i32, i32* @MISC_REGISTERS_GPIO_PORT_SHIFT, align 4
  %24 = add nsw i32 %22, %23
  %25 = shl i32 1, %24
  %26 = or i32 %21, %25
  %27 = load i32, i32* %12, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %12, align 4
  %29 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %30 = load i32, i32* @MISC_REG_GPIO_EVENT_EN, align 4
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @REG_WR(%struct.bxe_softc* %29, i32 %30, i32 %31)
  %33 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %34 = call i32 @elink_ext_phy_hw_reset(%struct.bxe_softc* %33, i32 0)
  %35 = call i32 @DELAY(i32 5000)
  store i64 0, i64* %13, align 8
  br label %36

36:                                               ; preds = %83, %5
  %37 = load i64, i64* %13, align 8
  %38 = load i64, i64* @PORT_MAX, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %86

40:                                               ; preds = %36
  %41 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %42 = call i64 @CHIP_IS_E1x(%struct.bxe_softc* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = load i32*, i32** %8, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %15, align 4
  %48 = load i32*, i32** %9, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %16, align 4
  br label %60

51:                                               ; preds = %40
  %52 = load i32*, i32** %8, align 8
  %53 = load i64, i64* %13, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %15, align 4
  %56 = load i32*, i32** %9, align 8
  %57 = load i64, i64* %13, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %16, align 4
  br label %60

60:                                               ; preds = %51, %44
  %61 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* %16, align 4
  %65 = load i64, i64* %13, align 8
  %66 = call i64 @elink_populate_phy(%struct.bxe_softc* %61, i32 %62, i32 %63, i32 %64, i64 %65, %struct.elink_phy* %14)
  %67 = load i64, i64* @ELINK_STATUS_OK, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %60
  %70 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %71 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %70, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %72 = load i64, i64* @ELINK_STATUS_ERROR, align 8
  store i64 %72, i64* %6, align 8
  br label %88

73:                                               ; preds = %60
  %74 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %75 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %76 = load i32, i32* @MDIO_PMA_REG_GEN_CTRL, align 4
  %77 = call i32 @elink_cl45_write(%struct.bxe_softc* %74, %struct.elink_phy* %14, i32 %75, i32 %76, i32 1)
  %78 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %79 = load i32, i32* @MISC_REGISTERS_GPIO_0, align 4
  %80 = load i32, i32* @MISC_REGISTERS_GPIO_HIGH, align 4
  %81 = load i64, i64* %13, align 8
  %82 = call i32 @elink_cb_gpio_write(%struct.bxe_softc* %78, i32 %79, i32 %80, i64 %81)
  br label %83

83:                                               ; preds = %73
  %84 = load i64, i64* %13, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %13, align 8
  br label %36

86:                                               ; preds = %36
  %87 = load i64, i64* @ELINK_STATUS_OK, align 8
  store i64 %87, i64* %6, align 8
  br label %88

88:                                               ; preds = %86, %69
  %89 = load i64, i64* %6, align 8
  ret i64 %89
}

declare dso_local i32 @REG_RD(%struct.bxe_softc*, i32) #1

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i32, i32) #1

declare dso_local i32 @elink_ext_phy_hw_reset(%struct.bxe_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i64 @CHIP_IS_E1x(%struct.bxe_softc*) #1

declare dso_local i64 @elink_populate_phy(%struct.bxe_softc*, i32, i32, i32, i64, %struct.elink_phy*) #1

declare dso_local i32 @ELINK_DEBUG_P0(%struct.bxe_softc*, i8*) #1

declare dso_local i32 @elink_cl45_write(%struct.bxe_softc*, %struct.elink_phy*, i32, i32, i32) #1

declare dso_local i32 @elink_cb_gpio_write(%struct.bxe_softc*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
