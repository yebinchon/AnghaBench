; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/privcmd/extr_privcmd.c_privcmd_pg_dtor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/privcmd/extr_privcmd.c_privcmd_pg_dtor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_remove_from_physmap = type { i64, i32 }
%struct.privcmd_map = type { i32, i64, i32, i32, %struct.privcmd_map*, i32, i32 }

@DOMID_SELF = common dso_local global i32 0, align 4
@VM_ALLOC_WAITFAIL = common dso_local global i32 0, align 4
@XENMEM_remove_from_physmap = common dso_local global i32 0, align 4
@M_PRIVCMD = common dso_local global i32 0, align 4
@privcmd_dev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Unable to release memory resource: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @privcmd_pg_dtor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @privcmd_pg_dtor(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.xen_remove_from_physmap, align 8
  %4 = alloca %struct.privcmd_map*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %8 = getelementptr inbounds %struct.xen_remove_from_physmap, %struct.xen_remove_from_physmap* %3, i32 0, i32 0
  store i64 0, i64* %8, align 8
  %9 = getelementptr inbounds %struct.xen_remove_from_physmap, %struct.xen_remove_from_physmap* %3, i32 0, i32 1
  %10 = load i32, i32* @DOMID_SELF, align 4
  store i32 %10, i32* %9, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to %struct.privcmd_map*
  store %struct.privcmd_map* %12, %struct.privcmd_map** %4, align 8
  %13 = load %struct.privcmd_map*, %struct.privcmd_map** %4, align 8
  %14 = getelementptr inbounds %struct.privcmd_map, %struct.privcmd_map* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %83

17:                                               ; preds = %1
  %18 = load %struct.privcmd_map*, %struct.privcmd_map** %4, align 8
  %19 = getelementptr inbounds %struct.privcmd_map, %struct.privcmd_map* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @VM_OBJECT_WLOCK(i32 %20)
  br label %22

22:                                               ; preds = %43, %17
  store i64 0, i64* %6, align 8
  br label %23

23:                                               ; preds = %50, %22
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.privcmd_map*, %struct.privcmd_map** %4, align 8
  %26 = getelementptr inbounds %struct.privcmd_map, %struct.privcmd_map* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %24, %27
  br i1 %28, label %29, label %53

29:                                               ; preds = %23
  %30 = load %struct.privcmd_map*, %struct.privcmd_map** %4, align 8
  %31 = getelementptr inbounds %struct.privcmd_map, %struct.privcmd_map* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %6, align 8
  %34 = call i32* @vm_page_lookup(i32 %32, i64 %33)
  store i32* %34, i32** %7, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %50

38:                                               ; preds = %29
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* @VM_ALLOC_WAITFAIL, align 4
  %41 = call i64 @vm_page_busy_acquire(i32* %39, i32 %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %22

44:                                               ; preds = %38
  %45 = load %struct.privcmd_map*, %struct.privcmd_map** %4, align 8
  %46 = getelementptr inbounds %struct.privcmd_map, %struct.privcmd_map* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @cdev_pager_free_page(i32 %47, i32* %48)
  br label %50

50:                                               ; preds = %44, %37
  %51 = load i64, i64* %6, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %6, align 8
  br label %23

53:                                               ; preds = %23
  %54 = load %struct.privcmd_map*, %struct.privcmd_map** %4, align 8
  %55 = getelementptr inbounds %struct.privcmd_map, %struct.privcmd_map* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @VM_OBJECT_WUNLOCK(i32 %56)
  store i64 0, i64* %6, align 8
  br label %58

58:                                               ; preds = %74, %53
  %59 = load i64, i64* %6, align 8
  %60 = load %struct.privcmd_map*, %struct.privcmd_map** %4, align 8
  %61 = getelementptr inbounds %struct.privcmd_map, %struct.privcmd_map* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp slt i64 %59, %62
  br i1 %63, label %64, label %77

64:                                               ; preds = %58
  %65 = load %struct.privcmd_map*, %struct.privcmd_map** %4, align 8
  %66 = getelementptr inbounds %struct.privcmd_map, %struct.privcmd_map* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @atop(i32 %67)
  %69 = load i64, i64* %6, align 8
  %70 = add nsw i64 %68, %69
  %71 = getelementptr inbounds %struct.xen_remove_from_physmap, %struct.xen_remove_from_physmap* %3, i32 0, i32 0
  store i64 %70, i64* %71, align 8
  %72 = load i32, i32* @XENMEM_remove_from_physmap, align 4
  %73 = call i32 @HYPERVISOR_memory_op(i32 %72, %struct.xen_remove_from_physmap* %3)
  br label %74

74:                                               ; preds = %64
  %75 = load i64, i64* %6, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %6, align 8
  br label %58

77:                                               ; preds = %58
  %78 = load %struct.privcmd_map*, %struct.privcmd_map** %4, align 8
  %79 = getelementptr inbounds %struct.privcmd_map, %struct.privcmd_map* %78, i32 0, i32 4
  %80 = load %struct.privcmd_map*, %struct.privcmd_map** %79, align 8
  %81 = load i32, i32* @M_PRIVCMD, align 4
  %82 = call i32 @free(%struct.privcmd_map* %80, i32 %81)
  br label %83

83:                                               ; preds = %77, %1
  %84 = load i32, i32* @privcmd_dev, align 4
  %85 = load %struct.privcmd_map*, %struct.privcmd_map** %4, align 8
  %86 = getelementptr inbounds %struct.privcmd_map, %struct.privcmd_map* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.privcmd_map*, %struct.privcmd_map** %4, align 8
  %89 = getelementptr inbounds %struct.privcmd_map, %struct.privcmd_map* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @xenmem_free(i32 %84, i32 %87, i32 %90)
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %5, align 4
  %93 = icmp eq i32 %92, 0
  %94 = zext i1 %93 to i32
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = inttoptr i64 %96 to i8*
  %98 = call i32 @KASSERT(i32 %94, i8* %97)
  %99 = load %struct.privcmd_map*, %struct.privcmd_map** %4, align 8
  %100 = load i32, i32* @M_PRIVCMD, align 4
  %101 = call i32 @free(%struct.privcmd_map* %99, i32 %100)
  ret void
}

declare dso_local i32 @VM_OBJECT_WLOCK(i32) #1

declare dso_local i32* @vm_page_lookup(i32, i64) #1

declare dso_local i64 @vm_page_busy_acquire(i32*, i32) #1

declare dso_local i32 @cdev_pager_free_page(i32, i32*) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(i32) #1

declare dso_local i64 @atop(i32) #1

declare dso_local i32 @HYPERVISOR_memory_op(i32, %struct.xen_remove_from_physmap*) #1

declare dso_local i32 @free(%struct.privcmd_map*, i32) #1

declare dso_local i32 @xenmem_free(i32, i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
