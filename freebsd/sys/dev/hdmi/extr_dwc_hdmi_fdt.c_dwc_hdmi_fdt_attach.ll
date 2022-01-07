; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hdmi/extr_dwc_hdmi_fdt.c_dwc_hdmi_fdt_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hdmi/extr_dwc_hdmi_fdt.c_dwc_hdmi_fdt_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc_hdmi_fdt_softc = type { i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i32*, i64, i32, i32 }

@dwc_hdmi_fdt_get_i2c_dev = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Cannot allocate memory resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"ddc\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"reg-shift\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"hdmi\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"ahb\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Cannot get clocks\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@CLK_SET_ROUND_DOWN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [42 x i8] c"Cannot set HDMI clock frequency to %u Hz\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"HDMI clock frequency not specified\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Cannot enable HDMI clock\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"Cannot enable AHB clock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @dwc_hdmi_fdt_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc_hdmi_fdt_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.dwc_hdmi_fdt_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.dwc_hdmi_fdt_softc* @device_get_softc(i32 %9)
  store %struct.dwc_hdmi_fdt_softc* %10, %struct.dwc_hdmi_fdt_softc** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.dwc_hdmi_fdt_softc*, %struct.dwc_hdmi_fdt_softc** %4, align 8
  %13 = getelementptr inbounds %struct.dwc_hdmi_fdt_softc, %struct.dwc_hdmi_fdt_softc* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 4
  store i32 %11, i32* %14, align 4
  %15 = load i32, i32* @dwc_hdmi_fdt_get_i2c_dev, align 4
  %16 = load %struct.dwc_hdmi_fdt_softc*, %struct.dwc_hdmi_fdt_softc** %4, align 8
  %17 = getelementptr inbounds %struct.dwc_hdmi_fdt_softc, %struct.dwc_hdmi_fdt_softc* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 3
  store i32 %15, i32* %18, align 8
  store i32 0, i32* %8, align 4
  %19 = load %struct.dwc_hdmi_fdt_softc*, %struct.dwc_hdmi_fdt_softc** %4, align 8
  %20 = getelementptr inbounds %struct.dwc_hdmi_fdt_softc, %struct.dwc_hdmi_fdt_softc* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @SYS_RES_MEMORY, align 4
  %24 = load %struct.dwc_hdmi_fdt_softc*, %struct.dwc_hdmi_fdt_softc** %4, align 8
  %25 = getelementptr inbounds %struct.dwc_hdmi_fdt_softc, %struct.dwc_hdmi_fdt_softc* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32, i32* @RF_ACTIVE, align 4
  %28 = call i32* @bus_alloc_resource_any(i32 %22, i32 %23, i64* %26, i32 %27)
  %29 = load %struct.dwc_hdmi_fdt_softc*, %struct.dwc_hdmi_fdt_softc** %4, align 8
  %30 = getelementptr inbounds %struct.dwc_hdmi_fdt_softc, %struct.dwc_hdmi_fdt_softc* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i32* %28, i32** %31, align 8
  %32 = load %struct.dwc_hdmi_fdt_softc*, %struct.dwc_hdmi_fdt_softc** %4, align 8
  %33 = getelementptr inbounds %struct.dwc_hdmi_fdt_softc, %struct.dwc_hdmi_fdt_softc* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %1
  %38 = load i32, i32* %3, align 4
  %39 = call i32 (i32, i8*, ...) @device_printf(i32 %38, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @ENXIO, align 4
  store i32 %40, i32* %8, align 4
  br label %125

41:                                               ; preds = %1
  %42 = load i32, i32* %3, align 4
  %43 = call i64 @ofw_bus_get_node(i32 %42)
  store i64 %43, i64* %5, align 8
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @OF_getencprop(i64 %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64* %6, i32 8)
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load %struct.dwc_hdmi_fdt_softc*, %struct.dwc_hdmi_fdt_softc** %4, align 8
  %49 = getelementptr inbounds %struct.dwc_hdmi_fdt_softc, %struct.dwc_hdmi_fdt_softc* %48, i32 0, i32 3
  store i64 0, i64* %49, align 8
  br label %54

50:                                               ; preds = %41
  %51 = load i64, i64* %6, align 8
  %52 = load %struct.dwc_hdmi_fdt_softc*, %struct.dwc_hdmi_fdt_softc** %4, align 8
  %53 = getelementptr inbounds %struct.dwc_hdmi_fdt_softc, %struct.dwc_hdmi_fdt_softc* %52, i32 0, i32 3
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %50, %47
  %55 = load i64, i64* %5, align 8
  %56 = load %struct.dwc_hdmi_fdt_softc*, %struct.dwc_hdmi_fdt_softc** %4, align 8
  %57 = getelementptr inbounds %struct.dwc_hdmi_fdt_softc, %struct.dwc_hdmi_fdt_softc* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = call i32 @OF_getencprop(i64 %55, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64* %58, i32 8)
  %60 = icmp sle i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = load %struct.dwc_hdmi_fdt_softc*, %struct.dwc_hdmi_fdt_softc** %4, align 8
  %63 = getelementptr inbounds %struct.dwc_hdmi_fdt_softc, %struct.dwc_hdmi_fdt_softc* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %61, %54
  %66 = load i32, i32* %3, align 4
  %67 = load %struct.dwc_hdmi_fdt_softc*, %struct.dwc_hdmi_fdt_softc** %4, align 8
  %68 = getelementptr inbounds %struct.dwc_hdmi_fdt_softc, %struct.dwc_hdmi_fdt_softc* %67, i32 0, i32 1
  %69 = call i64 @clk_get_by_ofw_name(i32 %66, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %65
  %72 = load i32, i32* %3, align 4
  %73 = load %struct.dwc_hdmi_fdt_softc*, %struct.dwc_hdmi_fdt_softc** %4, align 8
  %74 = getelementptr inbounds %struct.dwc_hdmi_fdt_softc, %struct.dwc_hdmi_fdt_softc* %73, i32 0, i32 0
  %75 = call i64 @clk_get_by_ofw_name(i32 %72, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %71, %65
  %78 = load i32, i32* %3, align 4
  %79 = call i32 (i32, i8*, ...) @device_printf(i32 %78, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %80 = load i32, i32* @ENXIO, align 4
  store i32 %80, i32* %8, align 4
  br label %125

81:                                               ; preds = %71
  %82 = load i64, i64* %5, align 8
  %83 = call i32 @OF_getencprop(i64 %82, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i64* %7, i32 8)
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %81
  %86 = load %struct.dwc_hdmi_fdt_softc*, %struct.dwc_hdmi_fdt_softc** %4, align 8
  %87 = getelementptr inbounds %struct.dwc_hdmi_fdt_softc, %struct.dwc_hdmi_fdt_softc* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i64, i64* %7, align 8
  %90 = load i32, i32* @CLK_SET_ROUND_DOWN, align 4
  %91 = call i32 @clk_set_freq(i32 %88, i64 %89, i32 %90)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %85
  %95 = load i32, i32* %3, align 4
  %96 = load i64, i64* %7, align 8
  %97 = call i32 (i32, i8*, ...) @device_printf(i32 %95, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i64 %96)
  br label %125

98:                                               ; preds = %85
  br label %102

99:                                               ; preds = %81
  %100 = load i32, i32* %3, align 4
  %101 = call i32 (i32, i8*, ...) @device_printf(i32 %100, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
  br label %102

102:                                              ; preds = %99, %98
  %103 = load %struct.dwc_hdmi_fdt_softc*, %struct.dwc_hdmi_fdt_softc** %4, align 8
  %104 = getelementptr inbounds %struct.dwc_hdmi_fdt_softc, %struct.dwc_hdmi_fdt_softc* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @clk_enable(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %102
  %109 = load i32, i32* %3, align 4
  %110 = call i32 (i32, i8*, ...) @device_printf(i32 %109, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  %111 = load i32, i32* @ENXIO, align 4
  store i32 %111, i32* %8, align 4
  br label %125

112:                                              ; preds = %102
  %113 = load %struct.dwc_hdmi_fdt_softc*, %struct.dwc_hdmi_fdt_softc** %4, align 8
  %114 = getelementptr inbounds %struct.dwc_hdmi_fdt_softc, %struct.dwc_hdmi_fdt_softc* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i64 @clk_enable(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %112
  %119 = load i32, i32* %3, align 4
  %120 = call i32 (i32, i8*, ...) @device_printf(i32 %119, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  %121 = load i32, i32* @ENXIO, align 4
  store i32 %121, i32* %8, align 4
  br label %125

122:                                              ; preds = %112
  %123 = load i32, i32* %3, align 4
  %124 = call i32 @dwc_hdmi_init(i32 %123)
  store i32 %124, i32* %2, align 4
  br label %129

125:                                              ; preds = %118, %108, %94, %77, %37
  %126 = load i32, i32* %3, align 4
  %127 = call i32 @dwc_hdmi_fdt_detach(i32 %126)
  %128 = load i32, i32* %8, align 4
  store i32 %128, i32* %2, align 4
  br label %129

129:                                              ; preds = %125, %122
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local %struct.dwc_hdmi_fdt_softc* @device_get_softc(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @ofw_bus_get_node(i32) #1

declare dso_local i32 @OF_getencprop(i64, i8*, i64*, i32) #1

declare dso_local i64 @clk_get_by_ofw_name(i32, i32, i8*, i32*) #1

declare dso_local i32 @clk_set_freq(i32, i64, i32) #1

declare dso_local i64 @clk_enable(i32) #1

declare dso_local i32 @dwc_hdmi_init(i32) #1

declare dso_local i32 @dwc_hdmi_fdt_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
