; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_clk_pll.c_jz4780_clk_pll_set_freq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_clk_pll.c_jz4780_clk_pll_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clknode = type { i32 }
%struct.jz4780_clk_pll_sc = type { i32 }

@MHZ = common dso_local global i32 0, align 4
@CGU_PLL_M_WIDTH = common dso_local global i32 0, align 4
@CGU_PLL_N_WIDTH = common dso_local global i32 0, align 4
@CLK_SET_DRYRUN = common dso_local global i32 0, align 4
@CLK_SET_ROUND_UP = common dso_local global i32 0, align 4
@CLK_SET_ROUND_DOWN = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@CGU_PLL_M = common dso_local global i32 0, align 4
@CGU_PLL_N = common dso_local global i32 0, align 4
@CGU_PLL_OD = common dso_local global i32 0, align 4
@CGU_PLL_EN = common dso_local global i32 0, align 4
@CGU_PLL_BP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clknode*, i32, i32*, i32, i32*)* @jz4780_clk_pll_set_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_clk_pll_set_freq(%struct.clknode* %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.clknode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.jz4780_clk_pll_sc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.clknode* %0, %struct.clknode** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %18 = load %struct.clknode*, %struct.clknode** %7, align 8
  %19 = call %struct.jz4780_clk_pll_sc* @clknode_get_softc(%struct.clknode* %18)
  store %struct.jz4780_clk_pll_sc* %19, %struct.jz4780_clk_pll_sc** %12, align 8
  store i32 1, i32* %16, align 4
  %20 = load i32*, i32** %9, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MHZ, align 4
  %23 = sdiv i32 %21, %22
  %24 = load i32, i32* @CGU_PLL_M_WIDTH, align 4
  %25 = shl i32 1, %24
  %26 = call i32 @MIN(i32 %23, i32 %25)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = call i32 @MIN(i32 %27, i32 1)
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @MHZ, align 4
  %31 = sdiv i32 %29, %30
  %32 = load i32, i32* @CGU_PLL_N_WIDTH, align 4
  %33 = shl i32 1, %32
  %34 = call i32 @MIN(i32 %31, i32 %33)
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %15, align 4
  %36 = call i32 @MIN(i32 %35, i32 1)
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @CLK_SET_DRYRUN, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %70

41:                                               ; preds = %5
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @CLK_SET_ROUND_UP, align 4
  %44 = load i32, i32* @CLK_SET_ROUND_DOWN, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %42, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %41
  %49 = load i32*, i32** %9, align 8
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %15, align 4
  %53 = sdiv i32 %51, %52
  %54 = load i32, i32* %14, align 4
  %55 = mul nsw i32 %53, %54
  %56 = load i32, i32* %16, align 4
  %57 = sdiv i32 %55, %56
  %58 = icmp ne i32 %50, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %48
  %60 = load i32, i32* @ERANGE, align 4
  store i32 %60, i32* %6, align 4
  br label %122

61:                                               ; preds = %48, %41
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %15, align 4
  %64 = sdiv i32 %62, %63
  %65 = load i32, i32* %14, align 4
  %66 = mul nsw i32 %64, %65
  %67 = load i32, i32* %16, align 4
  %68 = sdiv i32 %66, %67
  %69 = load i32*, i32** %9, align 8
  store i32 %68, i32* %69, align 4
  store i32 0, i32* %6, align 4
  br label %122

70:                                               ; preds = %5
  %71 = load %struct.jz4780_clk_pll_sc*, %struct.jz4780_clk_pll_sc** %12, align 8
  %72 = call i32 @CLK_LOCK(%struct.jz4780_clk_pll_sc* %71)
  %73 = load %struct.jz4780_clk_pll_sc*, %struct.jz4780_clk_pll_sc** %12, align 8
  %74 = load %struct.jz4780_clk_pll_sc*, %struct.jz4780_clk_pll_sc** %12, align 8
  %75 = getelementptr inbounds %struct.jz4780_clk_pll_sc, %struct.jz4780_clk_pll_sc* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @CLK_RD_4(%struct.jz4780_clk_pll_sc* %73, i32 %76)
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* @CGU_PLL_M, align 4
  %80 = load i32, i32* %14, align 4
  %81 = sub nsw i32 %80, 1
  %82 = call i32 @REG_SET(i32 %78, i32 %79, i32 %81)
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* @CGU_PLL_N, align 4
  %85 = load i32, i32* %15, align 4
  %86 = sub nsw i32 %85, 1
  %87 = call i32 @REG_SET(i32 %83, i32 %84, i32 %86)
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* @CGU_PLL_OD, align 4
  %90 = load i32, i32* %16, align 4
  %91 = sub nsw i32 %90, 1
  %92 = call i32 @REG_SET(i32 %88, i32 %89, i32 %91)
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* @CGU_PLL_EN, align 4
  %95 = call i32 @REG_SET(i32 %93, i32 %94, i32 1)
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* @CGU_PLL_BP, align 4
  %98 = call i32 @REG_SET(i32 %96, i32 %97, i32 0)
  store i32 %98, i32* %13, align 4
  %99 = load %struct.jz4780_clk_pll_sc*, %struct.jz4780_clk_pll_sc** %12, align 8
  %100 = load %struct.jz4780_clk_pll_sc*, %struct.jz4780_clk_pll_sc** %12, align 8
  %101 = getelementptr inbounds %struct.jz4780_clk_pll_sc, %struct.jz4780_clk_pll_sc* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %13, align 4
  %104 = call i32 @CLK_WR_4(%struct.jz4780_clk_pll_sc* %99, i32 %102, i32 %103)
  %105 = load %struct.jz4780_clk_pll_sc*, %struct.jz4780_clk_pll_sc** %12, align 8
  %106 = call i32 @jz4780_clk_pll_wait_lock(%struct.jz4780_clk_pll_sc* %105)
  store i32 %106, i32* %17, align 4
  %107 = load %struct.jz4780_clk_pll_sc*, %struct.jz4780_clk_pll_sc** %12, align 8
  %108 = call i32 @CLK_UNLOCK(%struct.jz4780_clk_pll_sc* %107)
  %109 = load i32, i32* %17, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %70
  %112 = load i32, i32* %17, align 4
  store i32 %112, i32* %6, align 4
  br label %122

113:                                              ; preds = %70
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* %15, align 4
  %116 = sdiv i32 %114, %115
  %117 = load i32, i32* %14, align 4
  %118 = mul nsw i32 %116, %117
  %119 = load i32, i32* %16, align 4
  %120 = sdiv i32 %118, %119
  %121 = load i32*, i32** %9, align 8
  store i32 %120, i32* %121, align 4
  store i32 0, i32* %6, align 4
  br label %122

122:                                              ; preds = %113, %111, %61, %59
  %123 = load i32, i32* %6, align 4
  ret i32 %123
}

declare dso_local %struct.jz4780_clk_pll_sc* @clknode_get_softc(%struct.clknode*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @CLK_LOCK(%struct.jz4780_clk_pll_sc*) #1

declare dso_local i32 @CLK_RD_4(%struct.jz4780_clk_pll_sc*, i32) #1

declare dso_local i32 @REG_SET(i32, i32, i32) #1

declare dso_local i32 @CLK_WR_4(%struct.jz4780_clk_pll_sc*, i32, i32) #1

declare dso_local i32 @jz4780_clk_pll_wait_lock(%struct.jz4780_clk_pll_sc*) #1

declare dso_local i32 @CLK_UNLOCK(%struct.jz4780_clk_pll_sc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
