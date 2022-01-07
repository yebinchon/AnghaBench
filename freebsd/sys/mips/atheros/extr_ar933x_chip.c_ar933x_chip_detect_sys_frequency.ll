; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_ar933x_chip.c_ar933x_chip_detect_sys_frequency.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_ar933x_chip.c_ar933x_chip_detect_sys_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AR933X_RESET_REG_BOOTSTRAP = common dso_local global i32 0, align 4
@AR933X_BOOTSTRAP_REF_CLK_40 = common dso_local global i32 0, align 4
@u_ar71xx_refclk = common dso_local global i32 0, align 4
@AR933X_PLL_CLOCK_CTRL_REG = common dso_local global i32 0, align 4
@AR933X_PLL_CLOCK_CTRL_BYPASS = common dso_local global i32 0, align 4
@u_ar71xx_cpu_freq = common dso_local global i32 0, align 4
@u_ar71xx_ahb_freq = common dso_local global i32 0, align 4
@u_ar71xx_ddr_freq = common dso_local global i32 0, align 4
@AR933X_PLL_CPU_CONFIG_REG = common dso_local global i32 0, align 4
@AR933X_PLL_CPU_CONFIG_REFDIV_SHIFT = common dso_local global i32 0, align 4
@AR933X_PLL_CPU_CONFIG_REFDIV_MASK = common dso_local global i32 0, align 4
@AR933X_PLL_CPU_CONFIG_NINT_SHIFT = common dso_local global i32 0, align 4
@AR933X_PLL_CPU_CONFIG_NINT_MASK = common dso_local global i32 0, align 4
@AR933X_PLL_CPU_CONFIG_OUTDIV_SHIFT = common dso_local global i32 0, align 4
@AR933X_PLL_CPU_CONFIG_OUTDIV_MASK = common dso_local global i32 0, align 4
@AR933X_PLL_CLOCK_CTRL_CPU_DIV_SHIFT = common dso_local global i32 0, align 4
@AR933X_PLL_CLOCK_CTRL_CPU_DIV_MASK = common dso_local global i32 0, align 4
@AR933X_PLL_CLOCK_CTRL_DDR_DIV_SHIFT = common dso_local global i32 0, align 4
@AR933X_PLL_CLOCK_CTRL_DDR_DIV_MASK = common dso_local global i32 0, align 4
@AR933X_PLL_CLOCK_CTRL_AHB_DIV_SHIFT = common dso_local global i32 0, align 4
@AR933X_PLL_CLOCK_CTRL_AHB_DIV_MASK = common dso_local global i32 0, align 4
@u_ar71xx_uart_freq = common dso_local global i32 0, align 4
@u_ar71xx_mdio_freq = common dso_local global i32 0, align 4
@u_ar71xx_wdt_freq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ar933x_chip_detect_sys_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar933x_chip_detect_sys_frequency() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @AR933X_RESET_REG_BOOTSTRAP, align 4
  %6 = call i32 @ATH_READ_REG(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @AR933X_BOOTSTRAP_REF_CLK_40, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  store i32 40000000, i32* @u_ar71xx_refclk, align 4
  br label %13

12:                                               ; preds = %0
  store i32 25000000, i32* @u_ar71xx_refclk, align 4
  br label %13

13:                                               ; preds = %12, %11
  %14 = load i32, i32* @AR933X_PLL_CLOCK_CTRL_REG, align 4
  %15 = call i32 @ATH_READ_REG(i32 %14)
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* %1, align 4
  %17 = load i32, i32* @AR933X_PLL_CLOCK_CTRL_BYPASS, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load i32, i32* @u_ar71xx_refclk, align 4
  store i32 %21, i32* @u_ar71xx_cpu_freq, align 4
  %22 = load i32, i32* @u_ar71xx_refclk, align 4
  store i32 %22, i32* @u_ar71xx_ahb_freq, align 4
  %23 = load i32, i32* @u_ar71xx_refclk, align 4
  store i32 %23, i32* @u_ar71xx_ddr_freq, align 4
  br label %82

24:                                               ; preds = %13
  %25 = load i32, i32* @AR933X_PLL_CPU_CONFIG_REG, align 4
  %26 = call i32 @ATH_READ_REG(i32 %25)
  store i32 %26, i32* %2, align 4
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @AR933X_PLL_CPU_CONFIG_REFDIV_SHIFT, align 4
  %29 = ashr i32 %27, %28
  %30 = load i32, i32* @AR933X_PLL_CPU_CONFIG_REFDIV_MASK, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* @u_ar71xx_refclk, align 4
  %33 = load i32, i32* %4, align 4
  %34 = sdiv i32 %32, %33
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* @AR933X_PLL_CPU_CONFIG_NINT_SHIFT, align 4
  %37 = ashr i32 %35, %36
  %38 = load i32, i32* @AR933X_PLL_CPU_CONFIG_NINT_MASK, align 4
  %39 = and i32 %37, %38
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %3, align 4
  %42 = mul nsw i32 %41, %40
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %2, align 4
  %44 = load i32, i32* @AR933X_PLL_CPU_CONFIG_OUTDIV_SHIFT, align 4
  %45 = ashr i32 %43, %44
  %46 = load i32, i32* @AR933X_PLL_CPU_CONFIG_OUTDIV_MASK, align 4
  %47 = and i32 %45, %46
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %24
  store i32 1, i32* %4, align 4
  br label %51

51:                                               ; preds = %50, %24
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* %3, align 4
  %54 = ashr i32 %53, %52
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* %1, align 4
  %56 = load i32, i32* @AR933X_PLL_CLOCK_CTRL_CPU_DIV_SHIFT, align 4
  %57 = ashr i32 %55, %56
  %58 = load i32, i32* @AR933X_PLL_CLOCK_CTRL_CPU_DIV_MASK, align 4
  %59 = and i32 %57, %58
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* %4, align 4
  %63 = sdiv i32 %61, %62
  store i32 %63, i32* @u_ar71xx_cpu_freq, align 4
  %64 = load i32, i32* %1, align 4
  %65 = load i32, i32* @AR933X_PLL_CLOCK_CTRL_DDR_DIV_SHIFT, align 4
  %66 = ashr i32 %64, %65
  %67 = load i32, i32* @AR933X_PLL_CLOCK_CTRL_DDR_DIV_MASK, align 4
  %68 = and i32 %66, %67
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* %4, align 4
  %72 = sdiv i32 %70, %71
  store i32 %72, i32* @u_ar71xx_ddr_freq, align 4
  %73 = load i32, i32* %1, align 4
  %74 = load i32, i32* @AR933X_PLL_CLOCK_CTRL_AHB_DIV_SHIFT, align 4
  %75 = ashr i32 %73, %74
  %76 = load i32, i32* @AR933X_PLL_CLOCK_CTRL_AHB_DIV_MASK, align 4
  %77 = and i32 %75, %76
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* %4, align 4
  %81 = sdiv i32 %79, %80
  store i32 %81, i32* @u_ar71xx_ahb_freq, align 4
  br label %82

82:                                               ; preds = %51, %20
  %83 = load i32, i32* @u_ar71xx_refclk, align 4
  store i32 %83, i32* @u_ar71xx_uart_freq, align 4
  %84 = load i32, i32* @u_ar71xx_refclk, align 4
  store i32 %84, i32* @u_ar71xx_mdio_freq, align 4
  %85 = load i32, i32* @u_ar71xx_ahb_freq, align 4
  store i32 %85, i32* @u_ar71xx_wdt_freq, align 4
  ret void
}

declare dso_local i32 @ATH_READ_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
