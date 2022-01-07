; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_release_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_release_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.pci_devinfo = type { %struct.resource_list, %struct.TYPE_2__ }
%struct.resource_list = type { i32 }
%struct.TYPE_2__ = type { i32, i64 }

@EDOOFUS = common dso_local global i32 0, align 4
@PCICFG_VF = common dso_local global i32 0, align 4
@PCIM_HDRTYPE_BRIDGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_release_resource(i32 %0, i32 %1, i32 %2, i32 %3, %struct.resource* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.resource*, align 8
  %12 = alloca %struct.pci_devinfo*, align 8
  %13 = alloca %struct.resource_list*, align 8
  %14 = alloca %struct.TYPE_2__*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.resource* %4, %struct.resource** %11, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @device_get_parent(i32 %15)
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %5
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @device_get_parent(i32 %20)
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.resource*, %struct.resource** %11, align 8
  %26 = call i32 @BUS_RELEASE_RESOURCE(i32 %21, i32 %22, i32 %23, i32 %24, %struct.resource* %25)
  store i32 %26, i32* %6, align 4
  br label %41

27:                                               ; preds = %5
  %28 = load i32, i32* %8, align 4
  %29 = call %struct.pci_devinfo* @device_get_ivars(i32 %28)
  store %struct.pci_devinfo* %29, %struct.pci_devinfo** %12, align 8
  %30 = load %struct.pci_devinfo*, %struct.pci_devinfo** %12, align 8
  %31 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %30, i32 0, i32 1
  store %struct.TYPE_2__* %31, %struct.TYPE_2__** %14, align 8
  %32 = load %struct.pci_devinfo*, %struct.pci_devinfo** %12, align 8
  %33 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %32, i32 0, i32 0
  store %struct.resource_list* %33, %struct.resource_list** %13, align 8
  %34 = load %struct.resource_list*, %struct.resource_list** %13, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.resource*, %struct.resource** %11, align 8
  %40 = call i32 @resource_list_release(%struct.resource_list* %34, i32 %35, i32 %36, i32 %37, i32 %38, %struct.resource* %39)
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %27, %19
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @BUS_RELEASE_RESOURCE(i32, i32, i32, i32, %struct.resource*) #1

declare dso_local %struct.pci_devinfo* @device_get_ivars(i32) #1

declare dso_local i32 @resource_list_release(%struct.resource_list*, i32, i32, i32, i32, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
