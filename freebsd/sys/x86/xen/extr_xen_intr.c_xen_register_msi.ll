; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_xen_intr.c_xen_register_msi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_xen_intr.c_xen_register_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.physdev_map_pirq = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.xenisrc = type { i32, i32 }

@DOMID_SELF = common dso_local global i32 0, align 4
@MAP_PIRQ_TYPE_MSI_SEG = common dso_local global i32 0, align 4
@MAP_PIRQ_TYPE_MULTI_MSI = common dso_local global i32 0, align 4
@PHYSDEVOP_map_pirq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"unable to setup all requested MSI vectors (expected %d got %d)\00", align 1
@xen_intr_isrc_lock = common dso_local global i32 0, align 4
@EVTCHN_TYPE_PIRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"xen: unable to allocate isrc for interrupt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xen_register_msi(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.physdev_map_pirq, align 4
  %9 = alloca %struct.xenisrc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = call i32 @memset(%struct.physdev_map_pirq* %8, i32 0, i32 28)
  %13 = load i32, i32* @DOMID_SELF, align 4
  %14 = getelementptr inbounds %struct.physdev_map_pirq, %struct.physdev_map_pirq* %8, i32 0, i32 6
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @MAP_PIRQ_TYPE_MSI_SEG, align 4
  br label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @MAP_PIRQ_TYPE_MULTI_MSI, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  %23 = getelementptr inbounds %struct.physdev_map_pirq, %struct.physdev_map_pirq* %8, i32 0, i32 5
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.physdev_map_pirq, %struct.physdev_map_pirq* %8, i32 0, i32 0
  store i32 -1, i32* %24, align 4
  %25 = getelementptr inbounds %struct.physdev_map_pirq, %struct.physdev_map_pirq* %8, i32 0, i32 1
  store i32 -1, i32* %25, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @pci_get_bus(i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @pci_get_domain(i32 %28)
  %30 = shl i32 %29, 16
  %31 = or i32 %27, %30
  %32 = getelementptr inbounds %struct.physdev_map_pirq, %struct.physdev_map_pirq* %8, i32 0, i32 2
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @pci_get_slot(i32 %33)
  %35 = shl i32 %34, 3
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @pci_get_function(i32 %36)
  %38 = or i32 %35, %37
  %39 = getelementptr inbounds %struct.physdev_map_pirq, %struct.physdev_map_pirq* %8, i32 0, i32 3
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %7, align 4
  %41 = getelementptr inbounds %struct.physdev_map_pirq, %struct.physdev_map_pirq* %8, i32 0, i32 4
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @PHYSDEVOP_map_pirq, align 4
  %43 = call i32 @HYPERVISOR_physdev_op(i32 %42, %struct.physdev_map_pirq* %8)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %21
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %4, align 4
  br label %87

48:                                               ; preds = %21
  %49 = load i32, i32* %7, align 4
  %50 = getelementptr inbounds %struct.physdev_map_pirq, %struct.physdev_map_pirq* %8, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %49, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load i32, i32* %7, align 4
  %55 = getelementptr inbounds %struct.physdev_map_pirq, %struct.physdev_map_pirq* %8, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @panic(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %56)
  br label %58

58:                                               ; preds = %53, %48
  %59 = call i32 @mtx_lock(i32* @xen_intr_isrc_lock)
  store i32 0, i32* %11, align 4
  br label %60

60:                                               ; preds = %82, %58
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %85

64:                                               ; preds = %60
  %65 = load i32, i32* @EVTCHN_TYPE_PIRQ, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %66, %67
  %69 = call %struct.xenisrc* @xen_intr_alloc_isrc(i32 %65, i32 %68)
  store %struct.xenisrc* %69, %struct.xenisrc** %9, align 8
  %70 = load %struct.xenisrc*, %struct.xenisrc** %9, align 8
  %71 = icmp ne %struct.xenisrc* %70, null
  %72 = zext i1 %71 to i32
  %73 = call i32 @KASSERT(i32 %72, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %74 = getelementptr inbounds %struct.physdev_map_pirq, %struct.physdev_map_pirq* %8, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %75, %76
  %78 = load %struct.xenisrc*, %struct.xenisrc** %9, align 8
  %79 = getelementptr inbounds %struct.xenisrc, %struct.xenisrc* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  %80 = load %struct.xenisrc*, %struct.xenisrc** %9, align 8
  %81 = getelementptr inbounds %struct.xenisrc, %struct.xenisrc* %80, i32 0, i32 1
  store i32 1, i32* %81, align 4
  br label %82

82:                                               ; preds = %64
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %11, align 4
  br label %60

85:                                               ; preds = %60
  %86 = call i32 @mtx_unlock(i32* @xen_intr_isrc_lock)
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %85, %46
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @memset(%struct.physdev_map_pirq*, i32, i32) #1

declare dso_local i32 @pci_get_bus(i32) #1

declare dso_local i32 @pci_get_domain(i32) #1

declare dso_local i32 @pci_get_slot(i32) #1

declare dso_local i32 @pci_get_function(i32) #1

declare dso_local i32 @HYPERVISOR_physdev_op(i32, %struct.physdev_map_pirq*) #1

declare dso_local i32 @panic(i8*, i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.xenisrc* @xen_intr_alloc_isrc(i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
