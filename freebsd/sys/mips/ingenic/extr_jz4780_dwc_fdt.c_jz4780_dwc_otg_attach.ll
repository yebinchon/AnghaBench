; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_dwc_fdt.c_jz4780_dwc_otg_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_dwc_fdt.c_jz4780_dwc_otg_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_dwc_otg_softc = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"CGU failed to enable OTG\0A\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@JZ_DWC2_GUSBCFG = common dso_local global i32 0, align 4
@DWC_OTG_PHY_UTMI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @jz4780_dwc_otg_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_dwc_otg_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.jz4780_dwc_otg_softc*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.jz4780_dwc_otg_softc* @device_get_softc(i32 %9)
  store %struct.jz4780_dwc_otg_softc* %10, %struct.jz4780_dwc_otg_softc** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @jz4780_dwc_otg_clk_enable(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %61

16:                                               ; preds = %1
  %17 = call i32 (...) @jz4780_otg_enable()
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @device_printf(i32 %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %61

23:                                               ; preds = %16
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @SYS_RES_MEMORY, align 4
  %26 = load i32, i32* @RF_ACTIVE, align 4
  %27 = call %struct.resource* @bus_alloc_resource_any(i32 %24, i32 %25, i32* %7, i32 %26)
  store %struct.resource* %27, %struct.resource** %5, align 8
  %28 = load %struct.resource*, %struct.resource** %5, align 8
  %29 = icmp ne %struct.resource* %28, null
  br i1 %29, label %30, label %45

30:                                               ; preds = %23
  %31 = load %struct.resource*, %struct.resource** %5, align 8
  %32 = load i32, i32* @JZ_DWC2_GUSBCFG, align 4
  %33 = call i32 @bus_read_4(%struct.resource* %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = or i32 %34, 12
  store i32 %35, i32* %8, align 4
  %36 = load %struct.resource*, %struct.resource** %5, align 8
  %37 = load i32, i32* @JZ_DWC2_GUSBCFG, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @bus_write_4(%struct.resource* %36, i32 %37, i32 %38)
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @SYS_RES_MEMORY, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.resource*, %struct.resource** %5, align 8
  %44 = call i32 @bus_release_resource(i32 %40, i32 %41, i32 %42, %struct.resource* %43)
  br label %45

45:                                               ; preds = %30, %23
  %46 = load i32, i32* @DWC_OTG_PHY_UTMI, align 4
  %47 = load %struct.jz4780_dwc_otg_softc*, %struct.jz4780_dwc_otg_softc** %4, align 8
  %48 = getelementptr inbounds %struct.jz4780_dwc_otg_softc, %struct.jz4780_dwc_otg_softc* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  store i32 %46, i32* %50, align 4
  %51 = load %struct.jz4780_dwc_otg_softc*, %struct.jz4780_dwc_otg_softc** %4, align 8
  %52 = getelementptr inbounds %struct.jz4780_dwc_otg_softc, %struct.jz4780_dwc_otg_softc* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i32 16, i32* %54, align 8
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @dwc_otg_attach(i32 %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %45
  br label %61

60:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %83

61:                                               ; preds = %59, %20, %15
  %62 = load %struct.jz4780_dwc_otg_softc*, %struct.jz4780_dwc_otg_softc** %4, align 8
  %63 = getelementptr inbounds %struct.jz4780_dwc_otg_softc, %struct.jz4780_dwc_otg_softc* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load %struct.jz4780_dwc_otg_softc*, %struct.jz4780_dwc_otg_softc** %4, align 8
  %68 = getelementptr inbounds %struct.jz4780_dwc_otg_softc, %struct.jz4780_dwc_otg_softc* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @clk_release(i64 %69)
  br label %71

71:                                               ; preds = %66, %61
  %72 = load %struct.jz4780_dwc_otg_softc*, %struct.jz4780_dwc_otg_softc** %4, align 8
  %73 = getelementptr inbounds %struct.jz4780_dwc_otg_softc, %struct.jz4780_dwc_otg_softc* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load %struct.jz4780_dwc_otg_softc*, %struct.jz4780_dwc_otg_softc** %4, align 8
  %78 = getelementptr inbounds %struct.jz4780_dwc_otg_softc, %struct.jz4780_dwc_otg_softc* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @clk_release(i64 %79)
  br label %81

81:                                               ; preds = %76, %71
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %81, %60
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.jz4780_dwc_otg_softc* @device_get_softc(i32) #1

declare dso_local i32 @jz4780_dwc_otg_clk_enable(i32) #1

declare dso_local i32 @jz4780_otg_enable(...) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local %struct.resource* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @bus_read_4(%struct.resource*, i32) #1

declare dso_local i32 @bus_write_4(%struct.resource*, i32, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, %struct.resource*) #1

declare dso_local i32 @dwc_otg_attach(i32) #1

declare dso_local i32 @clk_release(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
