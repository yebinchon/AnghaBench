; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/ar531x/extr_ar5312_chip.c_ar5312_chip_soc_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/ar531x/extr_ar5312_chip.c_ar5312_chip_soc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AR5312_UART0_BASE = common dso_local global i32 0, align 4
@u_ar531x_uart_addr = common dso_local global i32 0, align 4
@AR5312_GPIO_DI = common dso_local global i32 0, align 4
@u_ar531x_gpio_di = common dso_local global i32 0, align 4
@AR5312_GPIO_DO = common dso_local global i32 0, align 4
@u_ar531x_gpio_do = common dso_local global i32 0, align 4
@AR5312_GPIO_CR = common dso_local global i32 0, align 4
@u_ar531x_gpio_cr = common dso_local global i32 0, align 4
@AR5312_GPIO_PINS = common dso_local global i32 0, align 4
@u_ar531x_gpio_pins = common dso_local global i32 0, align 4
@AR5312_SYSREG_WDOG_CTL = common dso_local global i32 0, align 4
@u_ar531x_wdog_ctl = common dso_local global i32 0, align 4
@AR5312_SYSREG_WDOG_TIMER = common dso_local global i32 0, align 4
@u_ar531x_wdog_timer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ar5312_chip_soc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5312_chip_soc_init() #0 {
  %1 = load i32, i32* @AR5312_UART0_BASE, align 4
  %2 = call i32 @MIPS_PHYS_TO_KSEG1(i32 %1)
  store i32 %2, i32* @u_ar531x_uart_addr, align 4
  %3 = load i32, i32* @AR5312_GPIO_DI, align 4
  store i32 %3, i32* @u_ar531x_gpio_di, align 4
  %4 = load i32, i32* @AR5312_GPIO_DO, align 4
  store i32 %4, i32* @u_ar531x_gpio_do, align 4
  %5 = load i32, i32* @AR5312_GPIO_CR, align 4
  store i32 %5, i32* @u_ar531x_gpio_cr, align 4
  %6 = load i32, i32* @AR5312_GPIO_PINS, align 4
  store i32 %6, i32* @u_ar531x_gpio_pins, align 4
  %7 = load i32, i32* @AR5312_SYSREG_WDOG_CTL, align 4
  store i32 %7, i32* @u_ar531x_wdog_ctl, align 4
  %8 = load i32, i32* @AR5312_SYSREG_WDOG_TIMER, align 4
  store i32 %8, i32* @u_ar531x_wdog_timer, align 4
  ret void
}

declare dso_local i32 @MIPS_PHYS_TO_KSEG1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
