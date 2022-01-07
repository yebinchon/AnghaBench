; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_utils.c_dmar_pgalloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_utils.c_dmar_pgalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@DMAR_PGF_ZERO = common dso_local global i32 0, align 4
@VM_ALLOC_ZERO = common dso_local global i32 0, align 4
@VM_ALLOC_NOBUSY = common dso_local global i32 0, align 4
@VM_ALLOC_SYSTEM = common dso_local global i32 0, align 4
@VM_ALLOC_NODUMP = common dso_local global i32 0, align 4
@DMAR_PGF_WAITOK = common dso_local global i32 0, align 4
@VM_ALLOC_WAITFAIL = common dso_local global i32 0, align 4
@VM_ALLOC_NOWAIT = common dso_local global i32 0, align 4
@DMAR_PGF_OBJL = common dso_local global i32 0, align 4
@DMAR_PGF_NOALLOC = common dso_local global i32 0, align 4
@dmar_high = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@VM_MEMATTR_DEFAULT = common dso_local global i32 0, align 4
@PG_ZERO = common dso_local global i32 0, align 4
@dmar_tbl_pagecnt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @dmar_pgalloc(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @DMAR_PGF_ZERO, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @VM_ALLOC_ZERO, align 4
  br label %17

16:                                               ; preds = %3
  br label %17

17:                                               ; preds = %16, %14
  %18 = phi i32 [ %15, %14 ], [ 0, %16 ]
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @VM_ALLOC_NOBUSY, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @VM_ALLOC_SYSTEM, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @VM_ALLOC_NODUMP, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @DMAR_PGF_WAITOK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %17
  %31 = load i32, i32* @VM_ALLOC_WAITFAIL, align 4
  br label %34

32:                                               ; preds = %17
  %33 = load i32, i32* @VM_ALLOC_NOWAIT, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  %36 = or i32 %25, %35
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %104, %34
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @DMAR_PGF_OBJL, align 4
  %40 = and i32 %38, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @VM_OBJECT_WLOCK(i32 %43)
  br label %45

45:                                               ; preds = %42, %37
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call %struct.TYPE_6__* @vm_page_lookup(i32 %46, i32 %47)
  store %struct.TYPE_6__* %48, %struct.TYPE_6__** %7, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @DMAR_PGF_NOALLOC, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %45
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %55 = icmp ne %struct.TYPE_6__* %54, null
  br i1 %55, label %56, label %65

56:                                               ; preds = %53, %45
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @DMAR_PGF_OBJL, align 4
  %59 = and i32 %57, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @VM_OBJECT_WUNLOCK(i32 %62)
  br label %64

64:                                               ; preds = %61, %56
  br label %105

65:                                               ; preds = %53
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @dmar_high, align 4
  %70 = load i32, i32* @PAGE_SIZE, align 4
  %71 = load i32, i32* @VM_MEMATTR_DEFAULT, align 4
  %72 = call %struct.TYPE_6__* @vm_page_alloc_contig(i32 %66, i32 %67, i32 %68, i32 1, i32 0, i32 %69, i32 %70, i32 0, i32 %71)
  store %struct.TYPE_6__* %72, %struct.TYPE_6__** %7, align 8
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @DMAR_PGF_OBJL, align 4
  %75 = and i32 %73, %74
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %65
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @VM_OBJECT_WUNLOCK(i32 %78)
  br label %80

80:                                               ; preds = %77, %65
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %82 = icmp ne %struct.TYPE_6__* %81, null
  br i1 %82, label %83, label %98

83:                                               ; preds = %80
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %83
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @PG_ZERO, align 4
  %91 = and i32 %89, %90
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %86
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %95 = call i32 @pmap_zero_page(%struct.TYPE_6__* %94)
  br label %96

96:                                               ; preds = %93, %86, %83
  %97 = call i32 @atomic_add_int(i32* @dmar_tbl_pagecnt, i32 1)
  br label %105

98:                                               ; preds = %80
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @DMAR_PGF_WAITOK, align 4
  %101 = and i32 %99, %100
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  br label %105

104:                                              ; preds = %98
  br label %37

105:                                              ; preds = %103, %96, %64
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  ret %struct.TYPE_6__* %106
}

declare dso_local i32 @VM_OBJECT_WLOCK(i32) #1

declare dso_local %struct.TYPE_6__* @vm_page_lookup(i32, i32) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(i32) #1

declare dso_local %struct.TYPE_6__* @vm_page_alloc_contig(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pmap_zero_page(%struct.TYPE_6__*) #1

declare dso_local i32 @atomic_add_int(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
