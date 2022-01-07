; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_pmap.c_pmap_remove_pte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_pmap.c_pmap_remove_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.spglist = type { i32 }

@pvh_global_lock = common dso_local global i32 0, align 4
@RA_WLOCKED = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"pmap_remove_pte: pmap %p va %x zero pte\00", align 1
@PG_W = common dso_local global i32 0, align 4
@PG_G = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global i32 0, align 4
@PG_MANAGED = common dso_local global i32 0, align 4
@PG_FRAME = common dso_local global i32 0, align 4
@PG_M = common dso_local global i32 0, align 4
@PG_RW = common dso_local global i32 0, align 4
@PG_A = common dso_local global i32 0, align 4
@PGA_REFERENCED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, i32, %struct.spglist*)* @pmap_remove_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmap_remove_pte(%struct.TYPE_8__* %0, i32* %1, i32 %2, %struct.spglist* %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.spglist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.spglist* %3, %struct.spglist** %8, align 8
  %11 = load i32, i32* @RA_WLOCKED, align 4
  %12 = call i32 @rw_assert(i32* @pvh_global_lock, i32 %11)
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = load i32, i32* @MA_OWNED, align 4
  %15 = call i32 @PMAP_LOCK_ASSERT(%struct.TYPE_8__* %13, i32 %14)
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @pte_load_clear(i32* %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 @KASSERT(i32 %20, i8* %24)
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @PG_W, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %30, %4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @PG_G, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i32, i32* @kernel_pmap, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @pmap_invalidate_page_int(i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %41, %36
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @PG_MANAGED, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %86

55:                                               ; preds = %45
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @PG_FRAME, align 4
  %58 = and i32 %56, %57
  %59 = call i32 @PHYS_TO_VM_PAGE(i32 %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @PG_M, align 4
  %62 = load i32, i32* @PG_RW, align 4
  %63 = or i32 %61, %62
  %64 = and i32 %60, %63
  %65 = load i32, i32* @PG_M, align 4
  %66 = load i32, i32* @PG_RW, align 4
  %67 = or i32 %65, %66
  %68 = icmp eq i32 %64, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %55
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @vm_page_dirty(i32 %70)
  br label %72

72:                                               ; preds = %69, %55
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @PG_A, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @PGA_REFERENCED, align 4
  %80 = call i32 @vm_page_aflag_set(i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %77, %72
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @pmap_remove_entry(%struct.TYPE_8__* %82, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %81, %45
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.spglist*, %struct.spglist** %8, align 8
  %90 = call i32 @pmap_unuse_pt(%struct.TYPE_8__* %87, i32 %88, %struct.spglist* %89)
  ret i32 %90
}

declare dso_local i32 @rw_assert(i32*, i32) #1

declare dso_local i32 @PMAP_LOCK_ASSERT(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @pte_load_clear(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @pmap_invalidate_page_int(i32, i32) #1

declare dso_local i32 @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @vm_page_dirty(i32) #1

declare dso_local i32 @vm_page_aflag_set(i32, i32) #1

declare dso_local i32 @pmap_remove_entry(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @pmap_unuse_pt(%struct.TYPE_8__*, i32, %struct.spglist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
