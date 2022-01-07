; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/extr_usb_init.c_nlm_usb_hw_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/extr_usb_init.c_nlm_usb_hw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@USB_PHY_0 = common dso_local global i32 0, align 4
@USB_PHY_RESET = common dso_local global i32 0, align 4
@USB_PHY_PORT_RESET_0 = common dso_local global i32 0, align 4
@USB_PHY_PORT_RESET_1 = common dso_local global i32 0, align 4
@USB_CTL_0 = common dso_local global i32 0, align 4
@USB_CONTROLLER_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @nlm_usb_hw_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nlm_usb_hw_reset(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @nlm_get_usb_regbase(i32 %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @USB_PHY_0, align 4
  %12 = call i32 @nlm_read_usb_reg(i32 %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @USB_PHY_RESET, align 4
  %14 = load i32, i32* @USB_PHY_PORT_RESET_0, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @USB_PHY_PORT_RESET_1, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @USB_PHY_0, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @nlm_write_usb_reg(i32 %21, i32 %22, i32 %23)
  %25 = call i32 @DELAY(i32 100)
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @USB_CTL_0, align 4
  %28 = call i32 @nlm_read_usb_reg(i32 %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* @USB_CONTROLLER_RESET, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, 4
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @USB_CTL_0, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @nlm_write_usb_reg(i32 %35, i32 %36, i32 %37)
  ret void
}

declare dso_local i32 @nlm_get_usb_regbase(i32, i32) #1

declare dso_local i32 @nlm_read_usb_reg(i32, i32) #1

declare dso_local i32 @nlm_write_usb_reg(i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
