; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/gntdev/extr_gntdev.c_gntdev_gmap_pg_fault.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/gntdev/extr_gntdev.c_gntdev_gmap_pg_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.gntdev_gmap* }
%struct.gntdev_gmap = type { i64, %struct.TYPE_16__*, %struct.TYPE_15__*, i64 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_17__ = type { i32 }

@VM_PAGER_FAIL = common dso_local global i32 0, align 4
@GNTST_okay = common dso_local global i64 0, align 8
@PG_FICTITIOUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"not fictitious %p\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"page %p is not wired\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"page %p is busy\00", align 1
@VM_PAGER_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, i64, i32, %struct.TYPE_17__**)* @gntdev_gmap_pg_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gntdev_gmap_pg_fault(%struct.TYPE_18__* %0, i64 %1, i32 %2, %struct.TYPE_17__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_17__**, align 8
  %10 = alloca %struct.gntdev_gmap*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_17__** %3, %struct.TYPE_17__*** %9, align 8
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 0
  %18 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %17, align 8
  store %struct.gntdev_gmap* %18, %struct.gntdev_gmap** %10, align 8
  %19 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %10, align 8
  %20 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %19, i32 0, i32 1
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %22 = icmp eq %struct.TYPE_16__* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* @VM_PAGER_FAIL, align 4
  store i32 %24, i32* %5, align 4
  br label %110

25:                                               ; preds = %4
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %10, align 8
  %28 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %26, %29
  store i64 %30, i64* %15, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i64 @OFF_TO_IDX(i64 %31)
  store i64 %32, i64* %11, align 8
  %33 = load i64, i64* %15, align 8
  %34 = call i64 @OFF_TO_IDX(i64 %33)
  store i64 %34, i64* %12, align 8
  %35 = load i64, i64* %12, align 8
  %36 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %10, align 8
  %37 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp uge i64 %35, %38
  br i1 %39, label %50, label %40

40:                                               ; preds = %25
  %41 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %10, align 8
  %42 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %41, i32 0, i32 2
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %42, align 8
  %44 = load i64, i64* %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @GNTST_okay, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %40, %25
  %51 = load i32, i32* @VM_PAGER_FAIL, align 4
  store i32 %51, i32* %5, align 4
  br label %110

52:                                               ; preds = %40
  %53 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %10, align 8
  %54 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %53, i32 0, i32 1
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %15, align 8
  %59 = add nsw i64 %57, %58
  %60 = call %struct.TYPE_17__* @PHYS_TO_VM_PAGE(i64 %59)
  store %struct.TYPE_17__* %60, %struct.TYPE_17__** %13, align 8
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %62 = icmp eq %struct.TYPE_17__* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %52
  %64 = load i32, i32* @VM_PAGER_FAIL, align 4
  store i32 %64, i32* %5, align 4
  br label %110

65:                                               ; preds = %52
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @PG_FICTITIOUS, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i32
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %74 = bitcast %struct.TYPE_17__* %73 to i8*
  %75 = call i32 @KASSERT(i32 %72, i8* %74)
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %77 = call i32 @vm_page_wired(%struct.TYPE_17__* %76)
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %79 = bitcast %struct.TYPE_17__* %78 to i8*
  %80 = call i32 @KASSERT(i32 %77, i8* %79)
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %82 = call i32 @vm_page_busied(%struct.TYPE_17__* %81)
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %87 = bitcast %struct.TYPE_17__* %86 to i8*
  %88 = call i32 @KASSERT(i32 %85, i8* %87)
  %89 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %89, align 8
  %91 = icmp ne %struct.TYPE_17__* %90, null
  br i1 %91, label %92, label %98

92:                                               ; preds = %65
  %93 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %93, align 8
  store %struct.TYPE_17__* %94, %struct.TYPE_17__** %14, align 8
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %96 = call i32 @vm_page_free(%struct.TYPE_17__* %95)
  %97 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %97, align 8
  br label %98

98:                                               ; preds = %92, %65
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %100 = call i32 @vm_page_busy_acquire(%struct.TYPE_17__* %99, i32 0)
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %102 = call i32 @vm_page_valid(%struct.TYPE_17__* %101)
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %105 = load i64, i64* %11, align 8
  %106 = call i32 @vm_page_insert(%struct.TYPE_17__* %103, %struct.TYPE_18__* %104, i64 %105)
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %108 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  store %struct.TYPE_17__* %107, %struct.TYPE_17__** %108, align 8
  %109 = load i32, i32* @VM_PAGER_OK, align 4
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %98, %63, %50, %23
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local i64 @OFF_TO_IDX(i64) #1

declare dso_local %struct.TYPE_17__* @PHYS_TO_VM_PAGE(i64) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vm_page_wired(%struct.TYPE_17__*) #1

declare dso_local i32 @vm_page_busied(%struct.TYPE_17__*) #1

declare dso_local i32 @vm_page_free(%struct.TYPE_17__*) #1

declare dso_local i32 @vm_page_busy_acquire(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @vm_page_valid(%struct.TYPE_17__*) #1

declare dso_local i32 @vm_page_insert(%struct.TYPE_17__*, %struct.TYPE_18__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
