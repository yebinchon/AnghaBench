; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_pmap.c_pte_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_pmap.c_pte_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__, i64** }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"pte_remove: null ptbl\00", align 1
@PGA_REFERENCED = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global %struct.TYPE_16__* null, align 8
@tlbivax_mutex = common dso_local global i32 0, align 4
@PTBL_UNHOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_16__*, i32, i32)* @pte_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pte_remove(i32 %0, %struct.TYPE_16__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @PDIR_IDX(i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @PTBL_IDX(i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 1
  %21 = load i64**, i64*** %20, align 8
  %22 = load i32, i32* %10, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i64*, i64** %21, i64 %23
  %25 = load i64*, i64** %24, align 8
  store i64* %25, i64** %13, align 8
  %26 = load i64*, i64** %13, align 8
  %27 = call i32 @KASSERT(i64* %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %28 = load i64*, i64** %13, align 8
  %29 = load i32, i32* %11, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  store i64* %31, i64** %14, align 8
  %32 = load i64*, i64** %14, align 8
  %33 = icmp eq i64* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %4
  %35 = load i64*, i64** %14, align 8
  %36 = call i32 @PTE_ISVALID(i64* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34, %4
  store i32 0, i32* %5, align 4
  br label %128

39:                                               ; preds = %34
  %40 = load i64*, i64** %14, align 8
  %41 = call i64 @PTE_ISWIRED(i64* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %43, %39
  %50 = load i64*, i64** %14, align 8
  %51 = call i32 @PTE_PA(i64* %50)
  %52 = call %struct.TYPE_15__* @PHYS_TO_VM_PAGE(i32 %51)
  store %struct.TYPE_15__* %52, %struct.TYPE_15__** %12, align 8
  %53 = load i64*, i64** %14, align 8
  %54 = call i64 @PTE_ISMANAGED(i64* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %76

56:                                               ; preds = %49
  %57 = load i64*, i64** %14, align 8
  %58 = call i64 @PTE_ISMODIFIED(i64* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %62 = call i32 @vm_page_dirty(%struct.TYPE_15__* %61)
  br label %63

63:                                               ; preds = %60, %56
  %64 = load i64*, i64** %14, align 8
  %65 = call i64 @PTE_ISREFERENCED(i64* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %69 = load i32, i32* @PGA_REFERENCED, align 4
  %70 = call i32 @vm_page_aflag_set(%struct.TYPE_15__* %68, i32 %69)
  br label %71

71:                                               ; preds = %67, %63
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %75 = call i32 @pv_remove(%struct.TYPE_16__* %72, i32 %73, %struct.TYPE_15__* %74)
  br label %105

76:                                               ; preds = %49
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** @kernel_pmap, align 8
  %79 = icmp eq %struct.TYPE_16__* %77, %78
  br i1 %79, label %80, label %104

80:                                               ; preds = %76
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %82 = icmp ne %struct.TYPE_15__* %81, null
  br i1 %82, label %83, label %104

83:                                               ; preds = %80
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %104

89:                                               ; preds = %83
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %91 = load i32, i32* %8, align 4
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %93 = call i32 @pv_remove(%struct.TYPE_16__* %90, i32 %91, %struct.TYPE_15__* %92)
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 1
  %97 = call i64 @TAILQ_EMPTY(i32* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %89
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  store i32 0, i32* %102, align 4
  br label %103

103:                                              ; preds = %99, %89
  br label %104

104:                                              ; preds = %103, %83, %80, %76
  br label %105

105:                                              ; preds = %104, %71
  %106 = call i32 @mtx_lock_spin(i32* @tlbivax_mutex)
  %107 = call i32 (...) @tlb_miss_lock()
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @tlb0_flush_entry(i32 %108)
  %110 = load i64*, i64** %14, align 8
  store i64 0, i64* %110, align 8
  %111 = call i32 (...) @tlb_miss_unlock()
  %112 = call i32 @mtx_unlock_spin(i32* @tlbivax_mutex)
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %115, align 8
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* @PTBL_UNHOLD, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %105
  %123 = load i32, i32* %6, align 4
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %125 = load i32, i32* %10, align 4
  %126 = call i32 @ptbl_unhold(i32 %123, %struct.TYPE_16__* %124, i32 %125)
  store i32 %126, i32* %5, align 4
  br label %128

127:                                              ; preds = %105
  store i32 0, i32* %5, align 4
  br label %128

128:                                              ; preds = %127, %122, %38
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

declare dso_local i32 @PDIR_IDX(i32) #1

declare dso_local i32 @PTBL_IDX(i32) #1

declare dso_local i32 @KASSERT(i64*, i8*) #1

declare dso_local i32 @PTE_ISVALID(i64*) #1

declare dso_local i64 @PTE_ISWIRED(i64*) #1

declare dso_local %struct.TYPE_15__* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @PTE_PA(i64*) #1

declare dso_local i64 @PTE_ISMANAGED(i64*) #1

declare dso_local i64 @PTE_ISMODIFIED(i64*) #1

declare dso_local i32 @vm_page_dirty(%struct.TYPE_15__*) #1

declare dso_local i64 @PTE_ISREFERENCED(i64*) #1

declare dso_local i32 @vm_page_aflag_set(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @pv_remove(%struct.TYPE_16__*, i32, %struct.TYPE_15__*) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @tlb_miss_lock(...) #1

declare dso_local i32 @tlb0_flush_entry(i32) #1

declare dso_local i32 @tlb_miss_unlock(...) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local i32 @ptbl_unhold(i32, %struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
