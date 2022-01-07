; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_activate_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_activate_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.pci_devinfo = type { i32 }

@PCIM_BIOS_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_activate_resource(i64 %0, i64 %1, i32 %2, i32 %3, %struct.resource* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.resource*, align 8
  %12 = alloca %struct.pci_devinfo*, align 8
  %13 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.resource* %4, %struct.resource** %11, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load %struct.resource*, %struct.resource** %11, align 8
  %19 = call i32 @bus_generic_activate_resource(i64 %14, i64 %15, i32 %16, i32 %17, %struct.resource* %18)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* %13, align 4
  store i32 %23, i32* %6, align 4
  br label %60

24:                                               ; preds = %5
  %25 = load i64, i64* %8, align 8
  %26 = call i64 @device_get_parent(i64 %25)
  %27 = load i64, i64* %7, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %58

29:                                               ; preds = %24
  %30 = load i64, i64* %8, align 8
  %31 = call %struct.pci_devinfo* @device_get_ivars(i64 %30)
  store %struct.pci_devinfo* %31, %struct.pci_devinfo** %12, align 8
  %32 = load i32, i32* %9, align 4
  %33 = icmp eq i32 %32, 128
  br i1 %33, label %34, label %50

34:                                               ; preds = %29
  %35 = load %struct.pci_devinfo*, %struct.pci_devinfo** %12, align 8
  %36 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %35, i32 0, i32 0
  %37 = load i32, i32* %10, align 4
  %38 = call i64 @PCIR_IS_BIOS(i32* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %34
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @pci_find_bar(i64 %42, i32 %43)
  %45 = load %struct.resource*, %struct.resource** %11, align 8
  %46 = call i32 @rman_get_start(%struct.resource* %45)
  %47 = load i32, i32* @PCIM_BIOS_ENABLE, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @pci_write_bar(i64 %41, i32 %44, i32 %48)
  br label %50

50:                                               ; preds = %40, %34, %29
  %51 = load i32, i32* %9, align 4
  switch i32 %51, label %57 [
    i32 129, label %52
    i32 128, label %52
  ]

52:                                               ; preds = %50, %50
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* %8, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @PCI_ENABLE_IO(i64 %53, i64 %54, i32 %55)
  store i32 %56, i32* %13, align 4
  br label %57

57:                                               ; preds = %50, %52
  br label %58

58:                                               ; preds = %57, %24
  %59 = load i32, i32* %13, align 4
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %58, %22
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i32 @bus_generic_activate_resource(i64, i64, i32, i32, %struct.resource*) #1

declare dso_local i64 @device_get_parent(i64) #1

declare dso_local %struct.pci_devinfo* @device_get_ivars(i64) #1

declare dso_local i64 @PCIR_IS_BIOS(i32*, i32) #1

declare dso_local i32 @pci_write_bar(i64, i32, i32) #1

declare dso_local i32 @pci_find_bar(i64, i32) #1

declare dso_local i32 @rman_get_start(%struct.resource*) #1

declare dso_local i32 @PCI_ENABLE_IO(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
