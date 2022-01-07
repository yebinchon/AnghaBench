; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_iov.c_pci_vf_alloc_mem_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_iov.c_pci_vf_alloc_mem_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.pci_devinfo = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.pcicfg_iov* }
%struct.pcicfg_iov = type { i32 }
%struct.pci_map = type { i32, i64 }
%struct.resource_list_entry = type { %struct.resource* }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.resource* @pci_vf_alloc_mem_resource(i32 %0, i32 %1, i32* %2, i64 %3, i64 %4, i64 %5, i32 %6) #0 {
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.pci_devinfo*, align 8
  %17 = alloca %struct.pcicfg_iov*, align 8
  %18 = alloca %struct.pci_map*, align 8
  %19 = alloca %struct.resource*, align 8
  %20 = alloca %struct.resource_list_entry*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call %struct.pci_devinfo* @device_get_ivars(i32 %25)
  store %struct.pci_devinfo* %26, %struct.pci_devinfo** %16, align 8
  %27 = load %struct.pci_devinfo*, %struct.pci_devinfo** %16, align 8
  %28 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %29, align 8
  store %struct.pcicfg_iov* %30, %struct.pcicfg_iov** %17, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load i32*, i32** %11, align 8
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.pci_map* @pci_find_bar(i32 %31, i32 %33)
  store %struct.pci_map* %34, %struct.pci_map** %18, align 8
  %35 = load %struct.pci_map*, %struct.pci_map** %18, align 8
  %36 = icmp eq %struct.pci_map* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %7
  store %struct.resource* null, %struct.resource** %8, align 8
  br label %138

38:                                               ; preds = %7
  %39 = load %struct.pci_map*, %struct.pci_map** %18, align 8
  %40 = getelementptr inbounds %struct.pci_map, %struct.pci_map* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = shl i32 1, %41
  store i32 %42, i32* %23, align 4
  %43 = load %struct.pci_map*, %struct.pci_map** %18, align 8
  %44 = getelementptr inbounds %struct.pci_map, %struct.pci_map* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %21, align 8
  %46 = load i64, i64* %21, align 8
  %47 = load i32, i32* %23, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %46, %48
  %50 = sub nsw i64 %49, 1
  store i64 %50, i64* %22, align 8
  %51 = load i64, i64* %21, align 8
  %52 = load i64, i64* %13, align 8
  %53 = icmp sge i64 %51, %52
  br i1 %53, label %61, label %54

54:                                               ; preds = %38
  %55 = load i64, i64* %22, align 8
  %56 = load i64, i64* %21, align 8
  %57 = icmp sle i64 %55, %56
  br i1 %57, label %61, label %58

58:                                               ; preds = %54
  %59 = load i64, i64* %14, align 8
  %60 = icmp ne i64 %59, 1
  br i1 %60, label %61, label %62

61:                                               ; preds = %58, %54, %38
  store %struct.resource* null, %struct.resource** %8, align 8
  br label %138

62:                                               ; preds = %58
  %63 = load i64, i64* %21, align 8
  %64 = load i64, i64* %12, align 8
  %65 = icmp slt i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load i64, i64* %12, align 8
  store i64 %67, i64* %21, align 8
  br label %68

68:                                               ; preds = %66, %62
  %69 = load i64, i64* %22, align 8
  %70 = load i64, i64* %13, align 8
  %71 = icmp sgt i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i64, i64* %13, align 8
  store i64 %73, i64* %22, align 8
  br label %74

74:                                               ; preds = %72, %68
  %75 = load i64, i64* %22, align 8
  %76 = load i64, i64* %21, align 8
  %77 = sub nsw i64 %75, %76
  %78 = add nsw i64 %77, 1
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %23, align 4
  %80 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %17, align 8
  %81 = getelementptr inbounds %struct.pcicfg_iov, %struct.pcicfg_iov* %80, i32 0, i32 0
  %82 = load i64, i64* %21, align 8
  %83 = load i64, i64* %22, align 8
  %84 = load i32, i32* %23, align 4
  %85 = load i32, i32* %15, align 4
  %86 = load i32, i32* %10, align 4
  %87 = call %struct.resource* @rman_reserve_resource(i32* %81, i64 %82, i64 %83, i32 %84, i32 %85, i32 %86)
  store %struct.resource* %87, %struct.resource** %19, align 8
  %88 = load %struct.resource*, %struct.resource** %19, align 8
  %89 = icmp eq %struct.resource* %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %74
  store %struct.resource* null, %struct.resource** %8, align 8
  br label %138

91:                                               ; preds = %74
  %92 = load %struct.pci_devinfo*, %struct.pci_devinfo** %16, align 8
  %93 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %92, i32 0, i32 0
  %94 = load i32, i32* @SYS_RES_MEMORY, align 4
  %95 = load i32*, i32** %11, align 8
  %96 = load i32, i32* %95, align 4
  %97 = load i64, i64* %21, align 8
  %98 = load i64, i64* %22, align 8
  %99 = call %struct.resource_list_entry* @resource_list_add(i32* %93, i32 %94, i32 %96, i64 %97, i64 %98, i32 1)
  store %struct.resource_list_entry* %99, %struct.resource_list_entry** %20, align 8
  %100 = load %struct.resource_list_entry*, %struct.resource_list_entry** %20, align 8
  %101 = icmp eq %struct.resource_list_entry* %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %91
  %103 = load %struct.resource*, %struct.resource** %19, align 8
  %104 = call i32 @rman_release_resource(%struct.resource* %103)
  store %struct.resource* null, %struct.resource** %8, align 8
  br label %138

105:                                              ; preds = %91
  %106 = load %struct.resource*, %struct.resource** %19, align 8
  %107 = load i32*, i32** %11, align 8
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @rman_set_rid(%struct.resource* %106, i32 %108)
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* @RF_ACTIVE, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %133

114:                                              ; preds = %105
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* @SYS_RES_MEMORY, align 4
  %117 = load i32*, i32** %11, align 8
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.resource*, %struct.resource** %19, align 8
  %120 = call i32 @bus_activate_resource(i32 %115, i32 %116, i32 %118, %struct.resource* %119)
  store i32 %120, i32* %24, align 4
  %121 = load i32, i32* %24, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %114
  %124 = load %struct.pci_devinfo*, %struct.pci_devinfo** %16, align 8
  %125 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %124, i32 0, i32 0
  %126 = load i32, i32* @SYS_RES_MEMORY, align 4
  %127 = load i32*, i32** %11, align 8
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @resource_list_delete(i32* %125, i32 %126, i32 %128)
  %130 = load %struct.resource*, %struct.resource** %19, align 8
  %131 = call i32 @rman_release_resource(%struct.resource* %130)
  store %struct.resource* null, %struct.resource** %8, align 8
  br label %138

132:                                              ; preds = %114
  br label %133

133:                                              ; preds = %132, %105
  %134 = load %struct.resource*, %struct.resource** %19, align 8
  %135 = load %struct.resource_list_entry*, %struct.resource_list_entry** %20, align 8
  %136 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %135, i32 0, i32 0
  store %struct.resource* %134, %struct.resource** %136, align 8
  %137 = load %struct.resource*, %struct.resource** %19, align 8
  store %struct.resource* %137, %struct.resource** %8, align 8
  br label %138

138:                                              ; preds = %133, %123, %102, %90, %61, %37
  %139 = load %struct.resource*, %struct.resource** %8, align 8
  ret %struct.resource* %139
}

declare dso_local %struct.pci_devinfo* @device_get_ivars(i32) #1

declare dso_local %struct.pci_map* @pci_find_bar(i32, i32) #1

declare dso_local %struct.resource* @rman_reserve_resource(i32*, i64, i64, i32, i32, i32) #1

declare dso_local %struct.resource_list_entry* @resource_list_add(i32*, i32, i32, i64, i64, i32) #1

declare dso_local i32 @rman_release_resource(%struct.resource*) #1

declare dso_local i32 @rman_set_rid(%struct.resource*, i32) #1

declare dso_local i32 @bus_activate_resource(i32, i32, i32, %struct.resource*) #1

declare dso_local i32 @resource_list_delete(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
