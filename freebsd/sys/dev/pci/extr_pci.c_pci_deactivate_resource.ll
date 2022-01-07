; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_deactivate_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_deactivate_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.pci_devinfo = type { i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_deactivate_resource(i64 %0, i64 %1, i32 %2, i32 %3, %struct.resource* %4) #0 {
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
  %19 = call i32 @bus_generic_deactivate_resource(i64 %14, i64 %15, i32 %16, i32 %17, %struct.resource* %18)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* %13, align 4
  store i32 %23, i32* %6, align 4
  br label %51

24:                                               ; preds = %5
  %25 = load i64, i64* %8, align 8
  %26 = call i64 @device_get_parent(i64 %25)
  %27 = load i64, i64* %7, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %50

29:                                               ; preds = %24
  %30 = load i64, i64* %8, align 8
  %31 = call %struct.pci_devinfo* @device_get_ivars(i64 %30)
  store %struct.pci_devinfo* %31, %struct.pci_devinfo** %12, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @SYS_RES_MEMORY, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %29
  %36 = load %struct.pci_devinfo*, %struct.pci_devinfo** %12, align 8
  %37 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %36, i32 0, i32 0
  %38 = load i32, i32* %10, align 4
  %39 = call i64 @PCIR_IS_BIOS(i32* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %35
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @pci_find_bar(i64 %43, i32 %44)
  %46 = load %struct.resource*, %struct.resource** %11, align 8
  %47 = call i32 @rman_get_start(%struct.resource* %46)
  %48 = call i32 @pci_write_bar(i64 %42, i32 %45, i32 %47)
  br label %49

49:                                               ; preds = %41, %35, %29
  br label %50

50:                                               ; preds = %49, %24
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %50, %22
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local i32 @bus_generic_deactivate_resource(i64, i64, i32, i32, %struct.resource*) #1

declare dso_local i64 @device_get_parent(i64) #1

declare dso_local %struct.pci_devinfo* @device_get_ivars(i64) #1

declare dso_local i64 @PCIR_IS_BIOS(i32*, i32) #1

declare dso_local i32 @pci_write_bar(i64, i32, i32) #1

declare dso_local i32 @pci_find_bar(i64, i32) #1

declare dso_local i32 @rman_get_start(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
