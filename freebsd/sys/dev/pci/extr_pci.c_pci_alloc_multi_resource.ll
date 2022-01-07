; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_alloc_multi_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_alloc_multi_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.pci_devinfo = type { %struct.TYPE_6__, %struct.resource_list }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.resource_list = type { i32 }
%struct.resource_list_entry = type { i32 }

@PCIM_HDRTYPE_BRIDGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.resource* @pci_alloc_multi_resource(i32 %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.resource*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.pci_devinfo*, align 8
  %21 = alloca %struct.resource_list*, align 8
  %22 = alloca %struct.resource_list_entry*, align 8
  %23 = alloca %struct.resource*, align 8
  %24 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32* %3, i32** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %25 = load i32, i32* %12, align 4
  %26 = call %struct.pci_devinfo* @device_get_ivars(i32 %25)
  store %struct.pci_devinfo* %26, %struct.pci_devinfo** %20, align 8
  %27 = load %struct.pci_devinfo*, %struct.pci_devinfo** %20, align 8
  %28 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %27, i32 0, i32 1
  store %struct.resource_list* %28, %struct.resource_list** %21, align 8
  %29 = load %struct.pci_devinfo*, %struct.pci_devinfo** %20, align 8
  %30 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %29, i32 0, i32 0
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %24, align 8
  %31 = load i32, i32* %13, align 4
  switch i32 %31, label %93 [
    i32 129, label %32
    i32 130, label %69
    i32 128, label %69
  ]

32:                                               ; preds = %9
  %33 = load i32*, i32** %14, align 8
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %32
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42, %36
  store %struct.resource* null, %struct.resource** %10, align 8
  br label %104

49:                                               ; preds = %42, %32
  %50 = load i32*, i32** %14, align 8
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %49
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @PCI_INTERRUPT_VALID(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %53
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @pci_assign_interrupt(i32 %65, i32 %66, i32 0)
  br label %68

68:                                               ; preds = %64, %59, %53, %49
  br label %93

69:                                               ; preds = %9, %9
  %70 = load %struct.resource_list*, %struct.resource_list** %21, align 8
  %71 = load i32, i32* %13, align 4
  %72 = load i32*, i32** %14, align 8
  %73 = load i32, i32* %72, align 4
  %74 = call %struct.resource_list_entry* @resource_list_find(%struct.resource_list* %70, i32 %71, i32 %73)
  store %struct.resource_list_entry* %74, %struct.resource_list_entry** %22, align 8
  %75 = load %struct.resource_list_entry*, %struct.resource_list_entry** %22, align 8
  %76 = icmp eq %struct.resource_list_entry* %75, null
  br i1 %76, label %77, label %92

77:                                               ; preds = %69
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %13, align 4
  %81 = load i32*, i32** %14, align 8
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* %16, align 4
  %84 = load i32, i32* %17, align 4
  %85 = load i32, i32* %18, align 4
  %86 = load i32, i32* %19, align 4
  %87 = call %struct.resource* @pci_reserve_map(i32 %78, i32 %79, i32 %80, i32* %81, i32 %82, i32 %83, i32 %84, i32 %85, i32 %86)
  store %struct.resource* %87, %struct.resource** %23, align 8
  %88 = load %struct.resource*, %struct.resource** %23, align 8
  %89 = icmp eq %struct.resource* %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %77
  store %struct.resource* null, %struct.resource** %10, align 8
  br label %104

91:                                               ; preds = %77
  br label %92

92:                                               ; preds = %91, %69
  br label %93

93:                                               ; preds = %92, %9, %68
  %94 = load %struct.resource_list*, %struct.resource_list** %21, align 8
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %13, align 4
  %98 = load i32*, i32** %14, align 8
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* %16, align 4
  %101 = load i32, i32* %17, align 4
  %102 = load i32, i32* %19, align 4
  %103 = call %struct.resource* @resource_list_alloc(%struct.resource_list* %94, i32 %95, i32 %96, i32 %97, i32* %98, i32 %99, i32 %100, i32 %101, i32 %102)
  store %struct.resource* %103, %struct.resource** %10, align 8
  br label %104

104:                                              ; preds = %93, %90, %48
  %105 = load %struct.resource*, %struct.resource** %10, align 8
  ret %struct.resource* %105
}

declare dso_local %struct.pci_devinfo* @device_get_ivars(i32) #1

declare dso_local i32 @PCI_INTERRUPT_VALID(i32) #1

declare dso_local i32 @pci_assign_interrupt(i32, i32, i32) #1

declare dso_local %struct.resource_list_entry* @resource_list_find(%struct.resource_list*, i32, i32) #1

declare dso_local %struct.resource* @pci_reserve_map(i32, i32, i32, i32*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.resource* @resource_list_alloc(%struct.resource_list*, i32, i32, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
