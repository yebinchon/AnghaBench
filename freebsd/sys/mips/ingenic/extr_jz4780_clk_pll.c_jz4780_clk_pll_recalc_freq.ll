; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_clk_pll.c_jz4780_clk_pll_recalc_freq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_clk_pll.c_jz4780_clk_pll_recalc_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clknode = type { i32 }
%struct.jz4780_clk_pll_sc = type { i32 }

@CGU_PLL_EN = common dso_local global i32 0, align 4
@CGU_PLL_BP = common dso_local global i32 0, align 4
@CGU_PLL_M = common dso_local global i32 0, align 4
@CGU_PLL_N = common dso_local global i32 0, align 4
@CGU_PLL_OD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clknode*, i32*)* @jz4780_clk_pll_recalc_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_clk_pll_recalc_freq(%struct.clknode* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clknode*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.jz4780_clk_pll_sc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.clknode* %0, %struct.clknode** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.clknode*, %struct.clknode** %4, align 8
  %12 = call %struct.jz4780_clk_pll_sc* @clknode_get_softc(%struct.clknode* %11)
  store %struct.jz4780_clk_pll_sc* %12, %struct.jz4780_clk_pll_sc** %6, align 8
  %13 = load %struct.jz4780_clk_pll_sc*, %struct.jz4780_clk_pll_sc** %6, align 8
  %14 = load %struct.jz4780_clk_pll_sc*, %struct.jz4780_clk_pll_sc** %6, align 8
  %15 = getelementptr inbounds %struct.jz4780_clk_pll_sc, %struct.jz4780_clk_pll_sc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @CLK_RD_4(%struct.jz4780_clk_pll_sc* %13, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @CGU_PLL_EN, align 4
  %20 = call i64 @REG_GET(i32 %18, i32 %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32*, i32** %5, align 8
  store i32 0, i32* %23, align 4
  store i32 0, i32* %3, align 4
  br label %67

24:                                               ; preds = %2
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @CGU_PLL_BP, align 4
  %27 = call i64 @REG_GET(i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %67

30:                                               ; preds = %24
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @CGU_PLL_M, align 4
  %33 = call i64 @REG_GET(i32 %31, i32 %32)
  %34 = add nsw i64 %33, 1
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @CGU_PLL_N, align 4
  %38 = call i64 @REG_GET(i32 %36, i32 %37)
  %39 = add nsw i64 %38, 1
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @CGU_PLL_OD, align 4
  %43 = call i64 @REG_GET(i32 %41, i32 %42)
  %44 = add nsw i64 %43, 1
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %30
  %49 = load i32, i32* %9, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %10, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51, %48, %30
  %55 = load i32*, i32** %5, align 8
  store i32 0, i32* %55, align 4
  %56 = load i32, i32* @EINVAL, align 4
  store i32 %56, i32* %3, align 4
  br label %67

57:                                               ; preds = %51
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %9, align 4
  %61 = sdiv i32 %59, %60
  %62 = load i32, i32* %8, align 4
  %63 = mul nsw i32 %61, %62
  %64 = load i32, i32* %10, align 4
  %65 = sdiv i32 %63, %64
  %66 = load i32*, i32** %5, align 8
  store i32 %65, i32* %66, align 4
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %57, %54, %29, %22
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.jz4780_clk_pll_sc* @clknode_get_softc(%struct.clknode*) #1

declare dso_local i32 @CLK_RD_4(%struct.jz4780_clk_pll_sc*, i32) #1

declare dso_local i64 @REG_GET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
