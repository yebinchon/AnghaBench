; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_soc.c_mtk_detect_cpuclk_mt7621.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_soc.c_mtk_detect_cpuclk_mt7621.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SYSCTL_CLKCFG0 = common dso_local global i32 0, align 4
@MT7621_USES_MEMDIV = common dso_local global i32 0, align 4
@MTK_MT7621_CLKDIV_REG = common dso_local global i32 0, align 4
@MT7621_MEMDIV_OFF = common dso_local global i32 0, align 4
@MT7621_MEMDIV_MSK = common dso_local global i32 0, align 4
@MT7621_MEMDIV_BASE = common dso_local global i64 0, align 8
@SYSCTL_SYSCFG = common dso_local global i32 0, align 4
@MT7621_CLKSEL_OFF = common dso_local global i32 0, align 4
@MT7621_CLKSEL_MSK = common dso_local global i32 0, align 4
@MT7621_CLKSEL_25MHZ_VAL = common dso_local global i32 0, align 4
@MT7621_CLKSEL_25MHZ = common dso_local global i32 0, align 4
@MT7621_CLKSEL_20MHZ_VAL = common dso_local global i32 0, align 4
@MT7621_CLKSEL_20MHZ = common dso_local global i32 0, align 4
@SYSCTL_CUR_CLK_STS = common dso_local global i32 0, align 4
@MT7621_CLK_STS_DIV_OFF = common dso_local global i32 0, align 4
@MT7621_CLK_STS_MSK = common dso_local global i32 0, align 4
@MT7621_CLK_STS_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @mtk_detect_cpuclk_mt7621 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_detect_cpuclk_mt7621(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @SYSCTL_CLKCFG0, align 4
  %11 = call i32 @bus_space_read_4(i32 %8, i32 %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @MT7621_USES_MEMDIV, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %62

16:                                               ; preds = %2
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @MTK_MT7621_CLKDIV_REG, align 4
  %20 = call i32 @bus_space_read_4(i32 %17, i32 %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* @MT7621_MEMDIV_OFF, align 4
  %22 = load i32, i32* %6, align 4
  %23 = ashr i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* @MT7621_MEMDIV_MSK, align 4
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %6, align 4
  %27 = load i64, i64* @MT7621_MEMDIV_BASE, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %27
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @SYSCTL_SYSCFG, align 4
  %35 = call i32 @bus_space_read_4(i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* @MT7621_CLKSEL_OFF, align 4
  %37 = load i32, i32* %5, align 4
  %38 = ashr i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* @MT7621_CLKSEL_MSK, align 4
  %40 = load i32, i32* %5, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @MT7621_CLKSEL_25MHZ_VAL, align 4
  %44 = icmp sge i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %16
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @MT7621_CLKSEL_25MHZ, align 4
  %48 = mul nsw i32 %46, %47
  store i32 %48, i32* %7, align 4
  br label %61

49:                                               ; preds = %16
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @MT7621_CLKSEL_20MHZ_VAL, align 4
  %52 = icmp sge i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @MT7621_CLKSEL_20MHZ, align 4
  %56 = mul nsw i32 %54, %55
  store i32 %56, i32* %7, align 4
  br label %60

57:                                               ; preds = %49
  %58 = load i32, i32* %6, align 4
  %59 = mul nsw i32 %58, 0
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %57, %53
  br label %61

61:                                               ; preds = %60, %45
  br label %80

62:                                               ; preds = %2
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @SYSCTL_CUR_CLK_STS, align 4
  %66 = call i32 @bus_space_read_4(i32 %63, i32 %64, i32 %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @MT7621_CLK_STS_DIV_OFF, align 4
  %69 = ashr i32 %67, %68
  %70 = load i32, i32* @MT7621_CLK_STS_MSK, align 4
  %71 = and i32 %69, %70
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* @MT7621_CLK_STS_MSK, align 4
  %73 = load i32, i32* %5, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* @MT7621_CLK_STS_BASE, align 4
  %76 = load i32, i32* %5, align 4
  %77 = mul nsw i32 %75, %76
  %78 = load i32, i32* %6, align 4
  %79 = sdiv i32 %77, %78
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %62, %61
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @MTK_MHZ(i32 %81)
  ret i32 %82
}

declare dso_local i32 @bus_space_read_4(i32, i32, i32) #1

declare dso_local i32 @MTK_MHZ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
