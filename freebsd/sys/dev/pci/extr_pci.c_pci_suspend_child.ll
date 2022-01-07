; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_suspend_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_suspend_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinfo = type { i32 }
%struct.resource_list_entry = type { i32* }

@pci_do_power_suspend = common dso_local global i64 0, align 8
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@PCI_POWERSTATE_D3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_suspend_child(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_devinfo*, align 8
  %7 = alloca %struct.resource_list_entry*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.pci_devinfo* @device_get_ivars(i32 %9)
  store %struct.pci_devinfo* %10, %struct.pci_devinfo** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.pci_devinfo*, %struct.pci_devinfo** %6, align 8
  %13 = call i32 @pci_cfg_save(i32 %11, %struct.pci_devinfo* %12, i32 0)
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @bus_generic_suspend_child(i32 %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %3, align 4
  br label %48

21:                                               ; preds = %2
  %22 = load i64, i64* @pci_do_power_suspend, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %47

24:                                               ; preds = %21
  %25 = load %struct.pci_devinfo*, %struct.pci_devinfo** %6, align 8
  %26 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %25, i32 0, i32 0
  %27 = load i32, i32* @SYS_RES_IRQ, align 4
  %28 = call %struct.resource_list_entry* @resource_list_find(i32* %26, i32 %27, i32 0)
  store %struct.resource_list_entry* %28, %struct.resource_list_entry** %7, align 8
  %29 = load %struct.resource_list_entry*, %struct.resource_list_entry** %7, align 8
  %30 = icmp ne %struct.resource_list_entry* %29, null
  br i1 %30, label %31, label %42

31:                                               ; preds = %24
  %32 = load %struct.resource_list_entry*, %struct.resource_list_entry** %7, align 8
  %33 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.resource_list_entry*, %struct.resource_list_entry** %7, align 8
  %39 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @bus_suspend_intr(i32 %37, i32* %40)
  br label %42

42:                                               ; preds = %36, %31, %24
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @PCI_POWERSTATE_D3, align 4
  %46 = call i32 @pci_set_power_child(i32 %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %42, %21
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %19
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.pci_devinfo* @device_get_ivars(i32) #1

declare dso_local i32 @pci_cfg_save(i32, %struct.pci_devinfo*, i32) #1

declare dso_local i32 @bus_generic_suspend_child(i32, i32) #1

declare dso_local %struct.resource_list_entry* @resource_list_find(i32*, i32, i32) #1

declare dso_local i32 @bus_suspend_intr(i32, i32*) #1

declare dso_local i32 @pci_set_power_child(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
