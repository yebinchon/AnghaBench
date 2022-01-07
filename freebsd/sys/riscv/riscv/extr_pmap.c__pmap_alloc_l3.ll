; ModuleID = '/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_pmap.c__pmap_alloc_l3.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_pmap.c__pmap_alloc_l3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32* }
%struct.rwlock = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@VM_ALLOC_NOOBJ = common dso_local global i32 0, align 4
@VM_ALLOC_WIRED = common dso_local global i32 0, align 4
@VM_ALLOC_ZERO = common dso_local global i32 0, align 4
@pvh_global_lock = common dso_local global i32 0, align 4
@PG_ZERO = common dso_local global i32 0, align 4
@NUL1E = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@PTE_V = common dso_local global i32 0, align 4
@PTE_PPN0_S = common dso_local global i32 0, align 4
@L1_SHIFT = common dso_local global i64 0, align 8
@L2_SHIFT = common dso_local global i64 0, align 8
@Ln_ADDR_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_16__* (%struct.TYPE_17__*, i64, %struct.rwlock**)* @_pmap_alloc_l3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_16__* @_pmap_alloc_l3(%struct.TYPE_17__* %0, i64 %1, %struct.rwlock** %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.rwlock**, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.rwlock** %2, %struct.rwlock*** %7, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %19 = load i32, i32* @MA_OWNED, align 4
  %20 = call i32 @PMAP_LOCK_ASSERT(%struct.TYPE_17__* %18, i32 %19)
  %21 = load i64, i64* %6, align 8
  %22 = load i32, i32* @VM_ALLOC_NOOBJ, align 4
  %23 = load i32, i32* @VM_ALLOC_WIRED, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @VM_ALLOC_ZERO, align 4
  %26 = or i32 %24, %25
  %27 = call %struct.TYPE_16__* @vm_page_alloc(i32* null, i64 %21, i32 %26)
  store %struct.TYPE_16__* %27, %struct.TYPE_16__** %8, align 8
  %28 = icmp eq %struct.TYPE_16__* %27, null
  br i1 %28, label %29, label %43

29:                                               ; preds = %3
  %30 = load %struct.rwlock**, %struct.rwlock*** %7, align 8
  %31 = icmp ne %struct.rwlock** %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  %33 = load %struct.rwlock**, %struct.rwlock*** %7, align 8
  %34 = call i32 @RELEASE_PV_LIST_LOCK(%struct.rwlock** %33)
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %36 = call i32 @PMAP_UNLOCK(%struct.TYPE_17__* %35)
  %37 = call i32 @rw_runlock(i32* @pvh_global_lock)
  %38 = call i32 @vm_wait(i32* null)
  %39 = call i32 @rw_rlock(i32* @pvh_global_lock)
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %41 = call i32 @PMAP_LOCK(%struct.TYPE_17__* %40)
  br label %42

42:                                               ; preds = %32, %29
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %4, align 8
  br label %150

43:                                               ; preds = %3
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @PG_ZERO, align 4
  %48 = and i32 %46, %47
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %52 = call i32 @pmap_zero_page(%struct.TYPE_16__* %51)
  br label %53

53:                                               ; preds = %50, %43
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* @NUL1E, align 8
  %56 = icmp uge i64 %54, %55
  br i1 %56, label %57, label %83

57:                                               ; preds = %53
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* @NUL1E, align 8
  %60 = sub i64 %58, %59
  store i64 %60, i64* %14, align 8
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* %14, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  store i32* %65, i32** %13, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %67 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_16__* %66)
  %68 = load i32, i32* @PAGE_SIZE, align 4
  %69 = sdiv i32 %67, %68
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* @PTE_V, align 4
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* @PTE_PPN0_S, align 4
  %73 = shl i32 %71, %72
  %74 = load i32, i32* %10, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %10, align 4
  %76 = load i32*, i32** %13, align 8
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @pmap_store(i32* %76, i32 %77)
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %80 = load i64, i64* %14, align 8
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @pmap_distribute_l1(%struct.TYPE_17__* %79, i64 %80, i32 %81)
  br label %146

83:                                               ; preds = %53
  %84 = load i64, i64* %6, align 8
  %85 = load i64, i64* @L1_SHIFT, align 8
  %86 = load i64, i64* @L2_SHIFT, align 8
  %87 = sub i64 %85, %86
  %88 = lshr i64 %84, %87
  store i64 %88, i64* %15, align 8
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* %15, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  store i32* %93, i32** %16, align 8
  %94 = load i32*, i32** %16, align 8
  %95 = call i64 @pmap_load(i32* %94)
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %111

97:                                               ; preds = %83
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %99 = load i64, i64* @NUL1E, align 8
  %100 = load i64, i64* %15, align 8
  %101 = add i64 %99, %100
  %102 = load %struct.rwlock**, %struct.rwlock*** %7, align 8
  %103 = call %struct.TYPE_16__* @_pmap_alloc_l3(%struct.TYPE_17__* %98, i64 %101, %struct.rwlock** %102)
  %104 = icmp eq %struct.TYPE_16__* %103, null
  br i1 %104, label %105, label %110

105:                                              ; preds = %97
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %107 = call i32 @vm_page_unwire_noq(%struct.TYPE_16__* %106)
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %109 = call i32 @vm_page_free_zero(%struct.TYPE_16__* %108)
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %4, align 8
  br label %150

110:                                              ; preds = %97
  br label %121

111:                                              ; preds = %83
  %112 = load i32*, i32** %16, align 8
  %113 = call i64 @pmap_load(i32* %112)
  %114 = call i32 @PTE_TO_PHYS(i64 %113)
  store i32 %114, i32* %11, align 4
  %115 = load i32, i32* %11, align 4
  %116 = call %struct.TYPE_16__* @PHYS_TO_VM_PAGE(i32 %115)
  store %struct.TYPE_16__* %116, %struct.TYPE_16__** %9, align 8
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %111, %110
  %122 = load i32*, i32** %16, align 8
  %123 = call i64 @pmap_load(i32* %122)
  %124 = call i32 @PTE_TO_PHYS(i64 %123)
  store i32 %124, i32* %11, align 4
  %125 = load i32, i32* %11, align 4
  %126 = call i64 @PHYS_TO_DMAP(i32 %125)
  %127 = inttoptr i64 %126 to i32*
  store i32* %127, i32** %17, align 8
  %128 = load i32*, i32** %17, align 8
  %129 = load i64, i64* %6, align 8
  %130 = load i64, i64* @Ln_ADDR_MASK, align 8
  %131 = and i64 %129, %130
  %132 = getelementptr inbounds i32, i32* %128, i64 %131
  store i32* %132, i32** %17, align 8
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %134 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_16__* %133)
  %135 = load i32, i32* @PAGE_SIZE, align 4
  %136 = sdiv i32 %134, %135
  store i32 %136, i32* %12, align 4
  %137 = load i32, i32* @PTE_V, align 4
  store i32 %137, i32* %10, align 4
  %138 = load i32, i32* %12, align 4
  %139 = load i32, i32* @PTE_PPN0_S, align 4
  %140 = shl i32 %138, %139
  %141 = load i32, i32* %10, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %10, align 4
  %143 = load i32*, i32** %17, align 8
  %144 = load i32, i32* %10, align 4
  %145 = call i32 @pmap_store(i32* %143, i32 %144)
  br label %146

146:                                              ; preds = %121, %57
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %148 = call i32 @pmap_resident_count_inc(%struct.TYPE_17__* %147, i32 1)
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_16__* %149, %struct.TYPE_16__** %4, align 8
  br label %150

150:                                              ; preds = %146, %105, %42
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  ret %struct.TYPE_16__* %151
}

declare dso_local i32 @PMAP_LOCK_ASSERT(%struct.TYPE_17__*, i32) #1

declare dso_local %struct.TYPE_16__* @vm_page_alloc(i32*, i64, i32) #1

declare dso_local i32 @RELEASE_PV_LIST_LOCK(%struct.rwlock**) #1

declare dso_local i32 @PMAP_UNLOCK(%struct.TYPE_17__*) #1

declare dso_local i32 @rw_runlock(i32*) #1

declare dso_local i32 @vm_wait(i32*) #1

declare dso_local i32 @rw_rlock(i32*) #1

declare dso_local i32 @PMAP_LOCK(%struct.TYPE_17__*) #1

declare dso_local i32 @pmap_zero_page(%struct.TYPE_16__*) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(%struct.TYPE_16__*) #1

declare dso_local i32 @pmap_store(i32*, i32) #1

declare dso_local i32 @pmap_distribute_l1(%struct.TYPE_17__*, i64, i32) #1

declare dso_local i64 @pmap_load(i32*) #1

declare dso_local i32 @vm_page_unwire_noq(%struct.TYPE_16__*) #1

declare dso_local i32 @vm_page_free_zero(%struct.TYPE_16__*) #1

declare dso_local i32 @PTE_TO_PHYS(i64) #1

declare dso_local %struct.TYPE_16__* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i64 @PHYS_TO_DMAP(i32) #1

declare dso_local i32 @pmap_resident_count_inc(%struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
