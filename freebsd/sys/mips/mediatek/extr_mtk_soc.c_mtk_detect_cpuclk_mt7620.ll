; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_soc.c_mtk_detect_cpuclk_mt7620.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_soc.c_mtk_detect_cpuclk_mt7620.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SYSCTL_MT7620_CPLL_CFG1 = common dso_local global i32 0, align 4
@MT7620_CPU_CLK_AUX0 = common dso_local global i32 0, align 4
@MTK_CPU_CLK_480MHZ = common dso_local global i32 0, align 4
@SYSCTL_MT7620_CPLL_CFG0 = common dso_local global i32 0, align 4
@MT7620_CPLL_SW_CFG = common dso_local global i32 0, align 4
@MTK_CPU_CLK_600MHZ = common dso_local global i32 0, align 4
@MT7620_PLL_MULT_RATIO_BASE = common dso_local global i32 0, align 4
@MT7620_PLL_MULT_RATIO_OFF = common dso_local global i32 0, align 4
@MT7620_PLL_MULT_RATIO_MSK = common dso_local global i32 0, align 4
@MT7620_PLL_DIV_RATIO_OFF = common dso_local global i32 0, align 4
@MT7620_PLL_DIV_RATIO_MSK = common dso_local global i32 0, align 4
@MT7620_PLL_DIV_RATIO_BASE = common dso_local global i64 0, align 8
@MT7620_PLL_DIV_RATIO_MAX = common dso_local global i32 0, align 4
@MT7620_XTAL_40 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @mtk_detect_cpuclk_mt7620 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_detect_cpuclk_mt7620(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @SYSCTL_MT7620_CPLL_CFG1, align 4
  %13 = call i32 @bus_space_read_4(i32 %10, i32 %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @MT7620_CPU_CLK_AUX0, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @MTK_CPU_CLK_480MHZ, align 4
  store i32 %19, i32* %3, align 4
  br label %63

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @SYSCTL_MT7620_CPLL_CFG0, align 4
  %24 = call i32 @bus_space_read_4(i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @MT7620_CPLL_SW_CFG, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %20
  %30 = load i32, i32* @MTK_CPU_CLK_600MHZ, align 4
  store i32 %30, i32* %3, align 4
  br label %63

31:                                               ; preds = %20
  %32 = load i32, i32* @MT7620_PLL_MULT_RATIO_BASE, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @MT7620_PLL_MULT_RATIO_OFF, align 4
  %35 = ashr i32 %33, %34
  %36 = load i32, i32* @MT7620_PLL_MULT_RATIO_MSK, align 4
  %37 = and i32 %35, %36
  %38 = add nsw i32 %32, %37
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @MT7620_PLL_DIV_RATIO_OFF, align 4
  %41 = ashr i32 %39, %40
  %42 = load i32, i32* @MT7620_PLL_DIV_RATIO_MSK, align 4
  %43 = and i32 %41, %42
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @MT7620_PLL_DIV_RATIO_MSK, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %31
  %48 = load i64, i64* @MT7620_PLL_DIV_RATIO_BASE, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %48
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %8, align 4
  br label %55

53:                                               ; preds = %31
  %54 = load i32, i32* @MT7620_PLL_DIV_RATIO_MAX, align 4
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %53, %47
  %56 = load i32, i32* @MT7620_XTAL_40, align 4
  %57 = load i32, i32* %7, align 4
  %58 = mul nsw i32 %56, %57
  %59 = load i32, i32* %8, align 4
  %60 = sdiv i32 %58, %59
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @MTK_MHZ(i32 %61)
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %55, %29, %18
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @bus_space_read_4(i32, i32, i32) #1

declare dso_local i32 @MTK_MHZ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
