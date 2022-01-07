; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_uhci_early_takeover.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_uhci_early_takeover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }

@PCI_LEGSUP = common dso_local global i32 0, align 4
@PCI_LEGSUP_USBPIRQDEN = common dso_local global i32 0, align 4
@PCI_UHCI_BASE_REG = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@UHCI_INTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @uhci_early_takeover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uhci_early_takeover(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.resource*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @PCI_LEGSUP, align 4
  %7 = load i32, i32* @PCI_LEGSUP_USBPIRQDEN, align 4
  %8 = call i32 @pci_write_config(i32 %5, i32 %6, i32 %7, i32 2)
  %9 = load i32, i32* @PCI_UHCI_BASE_REG, align 4
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @SYS_RES_IOPORT, align 4
  %12 = load i32, i32* @RF_ACTIVE, align 4
  %13 = call %struct.resource* @bus_alloc_resource_any(i32 %10, i32 %11, i32* %4, i32 %12)
  store %struct.resource* %13, %struct.resource** %3, align 8
  %14 = load %struct.resource*, %struct.resource** %3, align 8
  %15 = icmp ne %struct.resource* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %1
  %17 = load %struct.resource*, %struct.resource** %3, align 8
  %18 = load i32, i32* @UHCI_INTR, align 4
  %19 = call i32 @bus_write_2(%struct.resource* %17, i32 %18, i32 0)
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @SYS_RES_IOPORT, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.resource*, %struct.resource** %3, align 8
  %24 = call i32 @bus_release_resource(i32 %20, i32 %21, i32 %22, %struct.resource* %23)
  br label %25

25:                                               ; preds = %16, %1
  ret void
}

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local %struct.resource* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @bus_write_2(%struct.resource*, i32, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
