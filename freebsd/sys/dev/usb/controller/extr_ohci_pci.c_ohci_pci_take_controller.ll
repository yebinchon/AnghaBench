; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ohci_pci.c_ohci_pci_take_controller.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ohci_pci.c_ohci_pci_take_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PCI_POWERSTATE_D0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"chip is in D%d mode -- setting to D0\0A\00", align 1
@PCI_CBMEM = common dso_local global i32 0, align 4
@PCIR_INTLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ohci_pci_take_controller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ohci_pci_take_controller(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i64 @pci_get_powerstate(i32 %5)
  %7 = load i64, i64* @PCI_POWERSTATE_D0, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %31

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = call i64 @pci_get_powerstate(i32 %11)
  %13 = call i32 @device_printf(i32 %10, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @PCI_CBMEM, align 4
  %16 = call i32 @pci_read_config(i32 %14, i32 %15, i32 4)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @PCIR_INTLINE, align 4
  %19 = call i32 @pci_read_config(i32 %17, i32 %18, i32 4)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %2, align 4
  %21 = load i64, i64* @PCI_POWERSTATE_D0, align 8
  %22 = call i32 @pci_set_powerstate(i32 %20, i64 %21)
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* @PCI_CBMEM, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @pci_write_config(i32 %23, i32 %24, i32 %25, i32 4)
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @PCIR_INTLINE, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @pci_write_config(i32 %27, i32 %28, i32 %29, i32 4)
  br label %31

31:                                               ; preds = %9, %1
  ret i32 0
}

declare dso_local i64 @pci_get_powerstate(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i64) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @pci_set_powerstate(i32, i64) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
