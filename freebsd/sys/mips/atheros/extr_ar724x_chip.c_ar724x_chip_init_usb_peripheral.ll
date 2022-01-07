; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_ar724x_chip.c_ar724x_chip_init_usb_peripheral.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_ar724x_chip.c_ar724x_chip_init_usb_peripheral.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ar71xx_soc = common dso_local global i32 0, align 4
@AR724X_RESET_MODULE_USB_OHCI_DLL = common dso_local global i32 0, align 4
@AR724X_RESET_USB_HOST = common dso_local global i32 0, align 4
@AR71XX_USB_CTRL_FLADJ = common dso_local global i32 0, align 4
@USB_CTRL_FLADJ_A0_SHIFT = common dso_local global i32 0, align 4
@AR724X_RESET_USB_PHY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ar724x_chip_init_usb_peripheral to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar724x_chip_init_usb_peripheral() #0 {
  %1 = load i32, i32* @ar71xx_soc, align 4
  switch i32 %1, label %27 [
    i32 130, label %2
    i32 129, label %17
    i32 128, label %17
  ]

2:                                                ; preds = %0
  %3 = load i32, i32* @AR724X_RESET_MODULE_USB_OHCI_DLL, align 4
  %4 = load i32, i32* @AR724X_RESET_USB_HOST, align 4
  %5 = or i32 %3, %4
  %6 = call i32 @ar71xx_device_stop(i32 %5)
  %7 = call i32 @DELAY(i32 1000)
  %8 = load i32, i32* @AR724X_RESET_MODULE_USB_OHCI_DLL, align 4
  %9 = load i32, i32* @AR724X_RESET_USB_HOST, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @ar71xx_device_start(i32 %10)
  %12 = call i32 @DELAY(i32 1000)
  %13 = load i32, i32* @AR71XX_USB_CTRL_FLADJ, align 4
  %14 = load i32, i32* @USB_CTRL_FLADJ_A0_SHIFT, align 4
  %15 = shl i32 3, %14
  %16 = call i32 @ATH_WRITE_REG(i32 %13, i32 %15)
  br label %28

17:                                               ; preds = %0, %0
  %18 = load i32, i32* @AR724X_RESET_MODULE_USB_OHCI_DLL, align 4
  %19 = call i32 @ar71xx_device_start(i32 %18)
  %20 = call i32 @DELAY(i32 100)
  %21 = load i32, i32* @AR724X_RESET_USB_HOST, align 4
  %22 = call i32 @ar71xx_device_start(i32 %21)
  %23 = call i32 @DELAY(i32 100)
  %24 = load i32, i32* @AR724X_RESET_USB_PHY, align 4
  %25 = call i32 @ar71xx_device_start(i32 %24)
  %26 = call i32 @DELAY(i32 100)
  br label %28

27:                                               ; preds = %0
  br label %28

28:                                               ; preds = %27, %17, %2
  ret void
}

declare dso_local i32 @ar71xx_device_stop(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @ar71xx_device_start(i32) #1

declare dso_local i32 @ATH_WRITE_REG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
