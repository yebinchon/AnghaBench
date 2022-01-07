; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_usb_phy.c_mtk_usb_phy_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_usb_phy.c_mtk_usb_phy_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_usb_phy_softc = type { i32, i32*, i32, i32, i32, i32 }

@SYSCTL_SYSCFG1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"mtk,usb-device\00", align 1
@SYSCFG1_USB_HOST_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"clocks\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"resets\00", align 1
@RESET_ASSERT_DELAY = common dso_local global i32 0, align 4
@RESET_DEASSERT_DELAY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"could not map memory\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@MT7628_FM_FEG_BASE = common dso_local global i32 0, align 4
@MT7628_U2_BASE = common dso_local global i32 0, align 4
@MT7628_SR_COEF = common dso_local global i32 0, align 4
@MT7621_FM_FEG_BASE = common dso_local global i32 0, align 4
@MT7621_U2_BASE = common dso_local global i32 0, align 4
@MT7621_SR_COEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mtk_usb_phy_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_usb_phy_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtk_usb_phy_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.mtk_usb_phy_softc* @device_get_softc(i32 %8)
  store %struct.mtk_usb_phy_softc* %9, %struct.mtk_usb_phy_softc** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.mtk_usb_phy_softc*, %struct.mtk_usb_phy_softc** %4, align 8
  %12 = getelementptr inbounds %struct.mtk_usb_phy_softc, %struct.mtk_usb_phy_softc* %11, i32 0, i32 5
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @ofw_bus_get_node(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @SYSCTL_SYSCFG1, align 4
  %16 = call i32 @mtk_sysctl_get(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @OF_hasprop(i32 %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load i32, i32* @SYSCFG1_USB_HOST_MODE, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %6, align 4
  br label %29

25:                                               ; preds = %1
  %26 = load i32, i32* @SYSCFG1_USB_HOST_MODE, align 4
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %25, %20
  %30 = load i32, i32* @SYSCTL_SYSCFG1, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @mtk_sysctl_set(i32 %30, i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = call i64 @OF_hasprop(i32 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @fdt_clock_enable_all(i32 %37)
  br label %39

39:                                               ; preds = %36, %29
  %40 = load i32, i32* %5, align 4
  %41 = call i64 @OF_hasprop(i32 %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %39
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @fdt_reset_assert_all(i32 %44)
  %46 = load i32, i32* @RESET_ASSERT_DELAY, align 4
  %47 = call i32 @DELAY(i32 %46)
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @fdt_reset_deassert_all(i32 %48)
  %50 = load i32, i32* @RESET_DEASSERT_DELAY, align 4
  %51 = call i32 @DELAY(i32 %50)
  br label %52

52:                                               ; preds = %43, %39
  %53 = load i32, i32* %5, align 4
  %54 = call i64 @OF_hasprop(i32 %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %52
  store i32 0, i32* %7, align 4
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @SYS_RES_MEMORY, align 4
  %59 = load i32, i32* @RF_ACTIVE, align 4
  %60 = call i32* @bus_alloc_resource_any(i32 %57, i32 %58, i32* %7, i32 %59)
  %61 = load %struct.mtk_usb_phy_softc*, %struct.mtk_usb_phy_softc** %4, align 8
  %62 = getelementptr inbounds %struct.mtk_usb_phy_softc, %struct.mtk_usb_phy_softc* %61, i32 0, i32 1
  store i32* %60, i32** %62, align 8
  %63 = load %struct.mtk_usb_phy_softc*, %struct.mtk_usb_phy_softc** %4, align 8
  %64 = getelementptr inbounds %struct.mtk_usb_phy_softc, %struct.mtk_usb_phy_softc* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %56
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @device_printf(i32 %68, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %70 = load i32, i32* @ENXIO, align 4
  store i32 %70, i32* %2, align 4
  br label %130

71:                                               ; preds = %56
  br label %75

72:                                               ; preds = %52
  %73 = load %struct.mtk_usb_phy_softc*, %struct.mtk_usb_phy_softc** %4, align 8
  %74 = getelementptr inbounds %struct.mtk_usb_phy_softc, %struct.mtk_usb_phy_softc* %73, i32 0, i32 1
  store i32* null, i32** %74, align 8
  br label %75

75:                                               ; preds = %72, %71
  %76 = load %struct.mtk_usb_phy_softc*, %struct.mtk_usb_phy_softc** %4, align 8
  %77 = getelementptr inbounds %struct.mtk_usb_phy_softc, %struct.mtk_usb_phy_softc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  switch i32 %78, label %117 [
    i32 129, label %79
    i32 128, label %79
    i32 130, label %98
  ]

79:                                               ; preds = %75, %75
  %80 = load %struct.mtk_usb_phy_softc*, %struct.mtk_usb_phy_softc** %4, align 8
  %81 = getelementptr inbounds %struct.mtk_usb_phy_softc, %struct.mtk_usb_phy_softc* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = load i32, i32* @ENXIO, align 4
  store i32 %85, i32* %2, align 4
  br label %130

86:                                               ; preds = %79
  %87 = load i32, i32* @MT7628_FM_FEG_BASE, align 4
  %88 = load %struct.mtk_usb_phy_softc*, %struct.mtk_usb_phy_softc** %4, align 8
  %89 = getelementptr inbounds %struct.mtk_usb_phy_softc, %struct.mtk_usb_phy_softc* %88, i32 0, i32 4
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* @MT7628_U2_BASE, align 4
  %91 = load %struct.mtk_usb_phy_softc*, %struct.mtk_usb_phy_softc** %4, align 8
  %92 = getelementptr inbounds %struct.mtk_usb_phy_softc, %struct.mtk_usb_phy_softc* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* @MT7628_SR_COEF, align 4
  %94 = load %struct.mtk_usb_phy_softc*, %struct.mtk_usb_phy_softc** %4, align 8
  %95 = getelementptr inbounds %struct.mtk_usb_phy_softc, %struct.mtk_usb_phy_softc* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* %3, align 4
  %97 = call i32 @mtk_usb_phy_mt7628_init(i32 %96)
  br label %117

98:                                               ; preds = %75
  %99 = load %struct.mtk_usb_phy_softc*, %struct.mtk_usb_phy_softc** %4, align 8
  %100 = getelementptr inbounds %struct.mtk_usb_phy_softc, %struct.mtk_usb_phy_softc* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = icmp eq i32* %101, null
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = load i32, i32* @ENXIO, align 4
  store i32 %104, i32* %2, align 4
  br label %130

105:                                              ; preds = %98
  %106 = load i32, i32* @MT7621_FM_FEG_BASE, align 4
  %107 = load %struct.mtk_usb_phy_softc*, %struct.mtk_usb_phy_softc** %4, align 8
  %108 = getelementptr inbounds %struct.mtk_usb_phy_softc, %struct.mtk_usb_phy_softc* %107, i32 0, i32 4
  store i32 %106, i32* %108, align 8
  %109 = load i32, i32* @MT7621_U2_BASE, align 4
  %110 = load %struct.mtk_usb_phy_softc*, %struct.mtk_usb_phy_softc** %4, align 8
  %111 = getelementptr inbounds %struct.mtk_usb_phy_softc, %struct.mtk_usb_phy_softc* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* @MT7621_SR_COEF, align 4
  %113 = load %struct.mtk_usb_phy_softc*, %struct.mtk_usb_phy_softc** %4, align 8
  %114 = getelementptr inbounds %struct.mtk_usb_phy_softc, %struct.mtk_usb_phy_softc* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 8
  %115 = load i32, i32* %3, align 4
  %116 = call i32 @mtk_usb_phy_mt7621_init(i32 %115)
  br label %117

117:                                              ; preds = %75, %105, %86
  %118 = load %struct.mtk_usb_phy_softc*, %struct.mtk_usb_phy_softc** %4, align 8
  %119 = getelementptr inbounds %struct.mtk_usb_phy_softc, %struct.mtk_usb_phy_softc* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %129

122:                                              ; preds = %117
  %123 = load i32, i32* %3, align 4
  %124 = load i32, i32* @SYS_RES_MEMORY, align 4
  %125 = load %struct.mtk_usb_phy_softc*, %struct.mtk_usb_phy_softc** %4, align 8
  %126 = getelementptr inbounds %struct.mtk_usb_phy_softc, %struct.mtk_usb_phy_softc* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = call i32 @bus_release_resource(i32 %123, i32 %124, i32 0, i32* %127)
  br label %129

129:                                              ; preds = %122, %117
  store i32 0, i32* %2, align 4
  br label %130

130:                                              ; preds = %129, %103, %84, %67
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local %struct.mtk_usb_phy_softc* @device_get_softc(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @mtk_sysctl_get(i32) #1

declare dso_local i64 @OF_hasprop(i32, i8*) #1

declare dso_local i32 @mtk_sysctl_set(i32, i32) #1

declare dso_local i32 @fdt_clock_enable_all(i32) #1

declare dso_local i32 @fdt_reset_assert_all(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @fdt_reset_deassert_all(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @mtk_usb_phy_mt7628_init(i32) #1

declare dso_local i32 @mtk_usb_phy_mt7621_init(i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
