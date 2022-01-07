; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_qca953x_chip.c_qca953x_chip_init_usb_peripheral.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_qca953x_chip.c_qca953x_chip_init_usb_peripheral.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@QCA953X_RESET_REG_BOOTSTRAP = common dso_local global i32 0, align 4
@QCA953X_RESET_USBSUS_OVERRIDE = common dso_local global i32 0, align 4
@QCA953X_RESET_USB_PHY = common dso_local global i32 0, align 4
@QCA953X_RESET_USB_PHY_ANALOG = common dso_local global i32 0, align 4
@QCA953X_RESET_USB_HOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @qca953x_chip_init_usb_peripheral to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qca953x_chip_init_usb_peripheral() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @QCA953X_RESET_REG_BOOTSTRAP, align 4
  %3 = call i32 @ATH_READ_REG(i32 %2)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* @QCA953X_RESET_USBSUS_OVERRIDE, align 4
  %5 = call i32 @ar71xx_device_stop(i32 %4)
  %6 = call i32 @DELAY(i32 1000)
  %7 = load i32, i32* @QCA953X_RESET_USB_PHY, align 4
  %8 = call i32 @ar71xx_device_start(i32 %7)
  %9 = call i32 @DELAY(i32 1000)
  %10 = load i32, i32* @QCA953X_RESET_USB_PHY_ANALOG, align 4
  %11 = call i32 @ar71xx_device_start(i32 %10)
  %12 = call i32 @DELAY(i32 1000)
  %13 = load i32, i32* @QCA953X_RESET_USB_HOST, align 4
  %14 = call i32 @ar71xx_device_start(i32 %13)
  %15 = call i32 @DELAY(i32 1000)
  ret void
}

declare dso_local i32 @ATH_READ_REG(i32) #1

declare dso_local i32 @ar71xx_device_stop(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @ar71xx_device_start(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
