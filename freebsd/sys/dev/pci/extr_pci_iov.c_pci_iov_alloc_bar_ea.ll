; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_iov.c_pci_iov_alloc_bar_ea.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_iov.c_pci_iov_alloc_bar_ea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinfo = type { %struct.TYPE_3__, %struct.resource_list }
%struct.TYPE_3__ = type { %struct.pcicfg_iov* }
%struct.pcicfg_iov = type { i32, i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32, i32, %struct.resource* }
%struct.resource = type { i32 }
%struct.resource_list = type { i32 }
%struct.resource_list_entry = type { %struct.resource* }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_devinfo*, i32)* @pci_iov_alloc_bar_ea to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_iov_alloc_bar_ea(%struct.pci_devinfo* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_devinfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pcicfg_iov*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.resource*, align 8
  %10 = alloca %struct.resource_list*, align 8
  %11 = alloca %struct.resource_list_entry*, align 8
  store %struct.pci_devinfo* %0, %struct.pci_devinfo** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.pci_devinfo*, %struct.pci_devinfo** %4, align 8
  %13 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %12, i32 0, i32 1
  store %struct.resource_list* %13, %struct.resource_list** %10, align 8
  %14 = load %struct.pci_devinfo*, %struct.pci_devinfo** %4, align 8
  %15 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %16, align 8
  store %struct.pcicfg_iov* %17, %struct.pcicfg_iov** %6, align 8
  %18 = load %struct.resource_list*, %struct.resource_list** %10, align 8
  %19 = load i32, i32* @SYS_RES_MEMORY, align 4
  %20 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %6, align 8
  %21 = getelementptr inbounds %struct.pcicfg_iov, %struct.pcicfg_iov* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @PCIR_SRIOV_BAR(i32 %23)
  %25 = add nsw i64 %22, %24
  %26 = call %struct.resource_list_entry* @resource_list_find(%struct.resource_list* %18, i32 %19, i64 %25)
  store %struct.resource_list_entry* %26, %struct.resource_list_entry** %11, align 8
  %27 = load %struct.resource_list_entry*, %struct.resource_list_entry** %11, align 8
  %28 = icmp eq %struct.resource_list_entry* %27, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %2
  %30 = load %struct.resource_list*, %struct.resource_list** %10, align 8
  %31 = load i32, i32* @SYS_RES_IOPORT, align 4
  %32 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %6, align 8
  %33 = getelementptr inbounds %struct.pcicfg_iov, %struct.pcicfg_iov* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i64 @PCIR_SRIOV_BAR(i32 %35)
  %37 = add nsw i64 %34, %36
  %38 = call %struct.resource_list_entry* @resource_list_find(%struct.resource_list* %30, i32 %31, i64 %37)
  store %struct.resource_list_entry* %38, %struct.resource_list_entry** %11, align 8
  br label %39

39:                                               ; preds = %29, %2
  %40 = load %struct.resource_list_entry*, %struct.resource_list_entry** %11, align 8
  %41 = icmp eq %struct.resource_list_entry* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* @ENXIO, align 4
  store i32 %43, i32* %3, align 4
  br label %94

44:                                               ; preds = %39
  %45 = load %struct.resource_list_entry*, %struct.resource_list_entry** %11, align 8
  %46 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %45, i32 0, i32 0
  %47 = load %struct.resource*, %struct.resource** %46, align 8
  store %struct.resource* %47, %struct.resource** %9, align 8
  %48 = load %struct.resource*, %struct.resource** %9, align 8
  %49 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %6, align 8
  %50 = getelementptr inbounds %struct.pcicfg_iov, %struct.pcicfg_iov* %49, i32 0, i32 2
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  store %struct.resource* %48, %struct.resource** %55, align 8
  %56 = load %struct.resource*, %struct.resource** %9, align 8
  %57 = call i32 @rman_get_size(%struct.resource* %56)
  %58 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %6, align 8
  %59 = getelementptr inbounds %struct.pcicfg_iov, %struct.pcicfg_iov* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sdiv i32 %57, %60
  %62 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %6, align 8
  %63 = getelementptr inbounds %struct.pcicfg_iov, %struct.pcicfg_iov* %62, i32 0, i32 2
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  store i32 %61, i32* %68, align 8
  %69 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %6, align 8
  %70 = getelementptr inbounds %struct.pcicfg_iov, %struct.pcicfg_iov* %69, i32 0, i32 2
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @pci_mapsize(i32 %76)
  %78 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %6, align 8
  %79 = getelementptr inbounds %struct.pcicfg_iov, %struct.pcicfg_iov* %78, i32 0, i32 2
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  store i32 %77, i32* %84, align 4
  %85 = load %struct.resource*, %struct.resource** %9, align 8
  %86 = call i32 @rman_get_start(%struct.resource* %85)
  store i32 %86, i32* %7, align 4
  %87 = load %struct.resource*, %struct.resource** %9, align 8
  %88 = call i32 @rman_get_end(%struct.resource* %87)
  store i32 %88, i32* %8, align 4
  %89 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %6, align 8
  %90 = getelementptr inbounds %struct.pcicfg_iov, %struct.pcicfg_iov* %89, i32 0, i32 1
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @rman_manage_region(i32* %90, i32 %91, i32 %92)
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %44, %42
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local %struct.resource_list_entry* @resource_list_find(%struct.resource_list*, i32, i64) #1

declare dso_local i64 @PCIR_SRIOV_BAR(i32) #1

declare dso_local i32 @rman_get_size(%struct.resource*) #1

declare dso_local i32 @pci_mapsize(i32) #1

declare dso_local i32 @rman_get_start(%struct.resource*) #1

declare dso_local i32 @rman_get_end(%struct.resource*) #1

declare dso_local i32 @rman_manage_region(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
