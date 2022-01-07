; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_resume_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_resume_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinfo = type { i32 }
%struct.resource_list_entry = type { i32* }

@pci_do_power_resume = common dso_local global i64 0, align 8
@PCI_POWERSTATE_D0 = common dso_local global i32 0, align 4
@pci_do_power_suspend = common dso_local global i64 0, align 8
@SYS_RES_IRQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_resume_child(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_devinfo*, align 8
  %6 = alloca %struct.resource_list_entry*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* @pci_do_power_resume, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @PCI_POWERSTATE_D0, align 4
  %13 = call i32 @pci_set_power_child(i32 %10, i32 %11, i32 %12)
  br label %14

14:                                               ; preds = %9, %2
  %15 = load i32, i32* %4, align 4
  %16 = call %struct.pci_devinfo* @device_get_ivars(i32 %15)
  store %struct.pci_devinfo* %16, %struct.pci_devinfo** %5, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.pci_devinfo*, %struct.pci_devinfo** %5, align 8
  %19 = call i32 @pci_cfg_restore(i32 %17, %struct.pci_devinfo* %18)
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @device_is_attached(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %14
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.pci_devinfo*, %struct.pci_devinfo** %5, align 8
  %26 = call i32 @pci_cfg_save(i32 %24, %struct.pci_devinfo* %25, i32 1)
  br label %27

27:                                               ; preds = %23, %14
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @bus_generic_resume_child(i32 %28, i32 %29)
  %31 = load i64, i64* @pci_do_power_suspend, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %27
  %34 = load %struct.pci_devinfo*, %struct.pci_devinfo** %5, align 8
  %35 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %34, i32 0, i32 0
  %36 = load i32, i32* @SYS_RES_IRQ, align 4
  %37 = call %struct.resource_list_entry* @resource_list_find(i32* %35, i32 %36, i32 0)
  store %struct.resource_list_entry* %37, %struct.resource_list_entry** %6, align 8
  %38 = load %struct.resource_list_entry*, %struct.resource_list_entry** %6, align 8
  %39 = icmp ne %struct.resource_list_entry* %38, null
  br i1 %39, label %40, label %51

40:                                               ; preds = %33
  %41 = load %struct.resource_list_entry*, %struct.resource_list_entry** %6, align 8
  %42 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.resource_list_entry*, %struct.resource_list_entry** %6, align 8
  %48 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @bus_resume_intr(i32 %46, i32* %49)
  br label %51

51:                                               ; preds = %45, %40, %33
  br label %52

52:                                               ; preds = %51, %27
  ret i32 0
}

declare dso_local i32 @pci_set_power_child(i32, i32, i32) #1

declare dso_local %struct.pci_devinfo* @device_get_ivars(i32) #1

declare dso_local i32 @pci_cfg_restore(i32, %struct.pci_devinfo*) #1

declare dso_local i32 @device_is_attached(i32) #1

declare dso_local i32 @pci_cfg_save(i32, %struct.pci_devinfo*, i32) #1

declare dso_local i32 @bus_generic_resume_child(i32, i32) #1

declare dso_local %struct.resource_list_entry* @resource_list_find(i32*, i32, i32) #1

declare dso_local i32 @bus_resume_intr(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
