; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_ar71xx_chip.c_ar71xx_chip_detect_sys_frequency.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_ar71xx_chip.c_ar71xx_chip_detect_sys_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AR71XX_BASE_FREQ = common dso_local global i32 0, align 4
@u_ar71xx_refclk = common dso_local global i32 0, align 4
@u_ar71xx_mdio_freq = common dso_local global i32 0, align 4
@AR71XX_PLL_REG_CPU_CONFIG = common dso_local global i32 0, align 4
@AR71XX_PLL_DIV_SHIFT = common dso_local global i32 0, align 4
@AR71XX_PLL_DIV_MASK = common dso_local global i32 0, align 4
@AR71XX_CPU_DIV_SHIFT = common dso_local global i32 0, align 4
@AR71XX_CPU_DIV_MASK = common dso_local global i32 0, align 4
@u_ar71xx_cpu_freq = common dso_local global i32 0, align 4
@AR71XX_DDR_DIV_SHIFT = common dso_local global i32 0, align 4
@AR71XX_DDR_DIV_MASK = common dso_local global i32 0, align 4
@u_ar71xx_ddr_freq = common dso_local global i32 0, align 4
@AR71XX_AHB_DIV_SHIFT = common dso_local global i32 0, align 4
@AR71XX_AHB_DIV_MASK = common dso_local global i32 0, align 4
@u_ar71xx_ahb_freq = common dso_local global i32 0, align 4
@u_ar71xx_wdt_freq = common dso_local global i32 0, align 4
@u_ar71xx_uart_freq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ar71xx_chip_detect_sys_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar71xx_chip_detect_sys_frequency() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @AR71XX_BASE_FREQ, align 4
  store i32 %4, i32* @u_ar71xx_refclk, align 4
  store i32 %4, i32* @u_ar71xx_mdio_freq, align 4
  %5 = load i32, i32* @AR71XX_PLL_REG_CPU_CONFIG, align 4
  %6 = call i32 @ATH_READ_REG(i32 %5)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @AR71XX_PLL_DIV_SHIFT, align 4
  %9 = ashr i32 %7, %8
  %10 = load i32, i32* @AR71XX_PLL_DIV_MASK, align 4
  %11 = and i32 %9, %10
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @AR71XX_BASE_FREQ, align 4
  %15 = mul nsw i32 %13, %14
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %1, align 4
  %17 = load i32, i32* @AR71XX_CPU_DIV_SHIFT, align 4
  %18 = ashr i32 %16, %17
  %19 = load i32, i32* @AR71XX_CPU_DIV_MASK, align 4
  %20 = and i32 %18, %19
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* %3, align 4
  %24 = sdiv i32 %22, %23
  store i32 %24, i32* @u_ar71xx_cpu_freq, align 4
  %25 = load i32, i32* %1, align 4
  %26 = load i32, i32* @AR71XX_DDR_DIV_SHIFT, align 4
  %27 = ashr i32 %25, %26
  %28 = load i32, i32* @AR71XX_DDR_DIV_MASK, align 4
  %29 = and i32 %27, %28
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* %3, align 4
  %33 = sdiv i32 %31, %32
  store i32 %33, i32* @u_ar71xx_ddr_freq, align 4
  %34 = load i32, i32* %1, align 4
  %35 = load i32, i32* @AR71XX_AHB_DIV_SHIFT, align 4
  %36 = ashr i32 %34, %35
  %37 = load i32, i32* @AR71XX_AHB_DIV_MASK, align 4
  %38 = and i32 %36, %37
  %39 = add nsw i32 %38, 1
  %40 = mul nsw i32 %39, 2
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* @u_ar71xx_cpu_freq, align 4
  %42 = load i32, i32* %3, align 4
  %43 = sdiv i32 %41, %42
  store i32 %43, i32* @u_ar71xx_ahb_freq, align 4
  %44 = load i32, i32* @u_ar71xx_cpu_freq, align 4
  %45 = load i32, i32* %3, align 4
  %46 = sdiv i32 %44, %45
  store i32 %46, i32* @u_ar71xx_wdt_freq, align 4
  %47 = load i32, i32* @u_ar71xx_cpu_freq, align 4
  %48 = load i32, i32* %3, align 4
  %49 = sdiv i32 %47, %48
  store i32 %49, i32* @u_ar71xx_uart_freq, align 4
  ret void
}

declare dso_local i32 @ATH_READ_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
