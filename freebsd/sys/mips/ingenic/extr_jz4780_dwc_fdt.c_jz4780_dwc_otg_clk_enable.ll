; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_dwc_fdt.c_jz4780_dwc_otg_clk_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_dwc_fdt.c_jz4780_dwc_otg_clk_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_dwc_otg_softc = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"otg_phy\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"unable to lookup %s clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"unable to set %s clock to 48 kHZ\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"unable to enable %s clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"otg1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @jz4780_dwc_otg_clk_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_dwc_otg_clk_enable(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.jz4780_dwc_otg_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.jz4780_dwc_otg_softc* @device_get_softc(i32 %6)
  store %struct.jz4780_dwc_otg_softc* %7, %struct.jz4780_dwc_otg_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.jz4780_dwc_otg_softc*, %struct.jz4780_dwc_otg_softc** %4, align 8
  %10 = getelementptr inbounds %struct.jz4780_dwc_otg_softc, %struct.jz4780_dwc_otg_softc* %9, i32 0, i32 0
  %11 = call i32 @clk_get_by_ofw_name(i32 %8, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @device_printf(i32 %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %63

18:                                               ; preds = %1
  %19 = load %struct.jz4780_dwc_otg_softc*, %struct.jz4780_dwc_otg_softc** %4, align 8
  %20 = getelementptr inbounds %struct.jz4780_dwc_otg_softc, %struct.jz4780_dwc_otg_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @clk_set_freq(i32 %21, i32 48000000, i32 0)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @device_printf(i32 %26, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %63

29:                                               ; preds = %18
  %30 = load %struct.jz4780_dwc_otg_softc*, %struct.jz4780_dwc_otg_softc** %4, align 8
  %31 = getelementptr inbounds %struct.jz4780_dwc_otg_softc, %struct.jz4780_dwc_otg_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @clk_enable(i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @device_printf(i32 %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %63

40:                                               ; preds = %29
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.jz4780_dwc_otg_softc*, %struct.jz4780_dwc_otg_softc** %4, align 8
  %43 = getelementptr inbounds %struct.jz4780_dwc_otg_softc, %struct.jz4780_dwc_otg_softc* %42, i32 0, i32 1
  %44 = call i32 @clk_get_by_ofw_name(i32 %41, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @device_printf(i32 %48, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %63

51:                                               ; preds = %40
  %52 = load %struct.jz4780_dwc_otg_softc*, %struct.jz4780_dwc_otg_softc** %4, align 8
  %53 = getelementptr inbounds %struct.jz4780_dwc_otg_softc, %struct.jz4780_dwc_otg_softc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @clk_enable(i32 %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @device_printf(i32 %59, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %61 = load i32, i32* %5, align 4
  store i32 %61, i32* %2, align 4
  br label %63

62:                                               ; preds = %51
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %58, %47, %36, %25, %14
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.jz4780_dwc_otg_softc* @device_get_softc(i32) #1

declare dso_local i32 @clk_get_by_ofw_name(i32, i32, i8*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i8*) #1

declare dso_local i32 @clk_set_freq(i32, i32, i32) #1

declare dso_local i32 @clk_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
