; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_iov.c_pci_iov_alloc_bar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_iov.c_pci_iov_alloc_bar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinfo = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.pcicfg_iov* }
%struct.pcicfg_iov = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.resource* }
%struct.resource = type { i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_devinfo*, i32, i32)* @pci_iov_alloc_bar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_iov_alloc_bar(%struct.pci_devinfo* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_devinfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.resource*, align 8
  %9 = alloca %struct.pcicfg_iov*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.pci_devinfo* %0, %struct.pci_devinfo** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load %struct.pci_devinfo*, %struct.pci_devinfo** %5, align 8
  %17 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %18, align 8
  store %struct.pcicfg_iov* %19, %struct.pcicfg_iov** %9, align 8
  %20 = load %struct.pci_devinfo*, %struct.pci_devinfo** %5, align 8
  %21 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @device_get_parent(i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %9, align 8
  %27 = getelementptr inbounds %struct.pcicfg_iov, %struct.pcicfg_iov* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @PCIR_SRIOV_BAR(i32 %29)
  %31 = add nsw i32 %28, %30
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %7, align 4
  %33 = shl i32 1, %32
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @SYS_RES_MEMORY, align 4
  %37 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %9, align 8
  %38 = getelementptr inbounds %struct.pcicfg_iov, %struct.pcicfg_iov* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @RF_ACTIVE, align 4
  %41 = call %struct.resource* @pci_alloc_multi_resource(i32 %34, i32 %35, i32 %36, i32* %15, i32 0, i32 -1, i32 1, i32 %39, i32 %40)
  store %struct.resource* %41, %struct.resource** %8, align 8
  %42 = load %struct.resource*, %struct.resource** %8, align 8
  %43 = icmp eq %struct.resource* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %3
  %45 = load i32, i32* @ENXIO, align 4
  store i32 %45, i32* %4, align 4
  br label %80

46:                                               ; preds = %3
  %47 = load %struct.resource*, %struct.resource** %8, align 8
  %48 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %9, align 8
  %49 = getelementptr inbounds %struct.pcicfg_iov, %struct.pcicfg_iov* %48, i32 0, i32 2
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  store %struct.resource* %47, %struct.resource** %54, align 8
  %55 = load i32, i32* %14, align 4
  %56 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %9, align 8
  %57 = getelementptr inbounds %struct.pcicfg_iov, %struct.pcicfg_iov* %56, i32 0, i32 2
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i32 %55, i32* %62, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %9, align 8
  %65 = getelementptr inbounds %struct.pcicfg_iov, %struct.pcicfg_iov* %64, i32 0, i32 2
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  store i32 %63, i32* %70, align 4
  %71 = load %struct.resource*, %struct.resource** %8, align 8
  %72 = call i32 @rman_get_start(%struct.resource* %71)
  store i32 %72, i32* %12, align 4
  %73 = load %struct.resource*, %struct.resource** %8, align 8
  %74 = call i32 @rman_get_end(%struct.resource* %73)
  store i32 %74, i32* %13, align 4
  %75 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %9, align 8
  %76 = getelementptr inbounds %struct.pcicfg_iov, %struct.pcicfg_iov* %75, i32 0, i32 1
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %13, align 4
  %79 = call i32 @rman_manage_region(i32* %76, i32 %77, i32 %78)
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %46, %44
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @PCIR_SRIOV_BAR(i32) #1

declare dso_local %struct.resource* @pci_alloc_multi_resource(i32, i32, i32, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @rman_get_start(%struct.resource*) #1

declare dso_local i32 @rman_get_end(%struct.resource*) #1

declare dso_local i32 @rman_manage_region(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
