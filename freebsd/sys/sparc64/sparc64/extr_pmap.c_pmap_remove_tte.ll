; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_pmap.c_pmap_remove_tte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_pmap.c_pmap_remove_tte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmap = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.tte = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@tte_list_global_lock = common dso_local global i32 0, align 4
@RA_WLOCKED = common dso_local global i32 0, align 4
@TD_FAKE = common dso_local global i32 0, align 4
@tte_link = common dso_local global i32 0, align 4
@TD_WIRED = common dso_local global i32 0, align 4
@TD_PV = common dso_local global i32 0, align 4
@TD_W = common dso_local global i32 0, align 4
@TD_REF = common dso_local global i32 0, align 4
@PGA_REFERENCED = common dso_local global i32 0, align 4
@PGA_WRITEABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmap_remove_tte(%struct.pmap* %0, %struct.pmap* %1, %struct.tte* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pmap*, align 8
  %7 = alloca %struct.pmap*, align 8
  %8 = alloca %struct.tte*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  store %struct.pmap* %0, %struct.pmap** %6, align 8
  store %struct.pmap* %1, %struct.pmap** %7, align 8
  store %struct.tte* %2, %struct.tte** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @RA_WLOCKED, align 4
  %13 = call i32 @rw_assert(i32* @tte_list_global_lock, i32 %12)
  %14 = load %struct.tte*, %struct.tte** %8, align 8
  %15 = getelementptr inbounds %struct.tte, %struct.tte* %14, i32 0, i32 0
  %16 = call i32 @atomic_readandclear_long(i32* %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* @TD_FAKE, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %83

21:                                               ; preds = %4
  %22 = load i32, i32* %11, align 4
  %23 = call i32 @TD_PA(i32 %22)
  %24 = call %struct.TYPE_11__* @PHYS_TO_VM_PAGE(i32 %23)
  store %struct.TYPE_11__* %24, %struct.TYPE_11__** %10, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load %struct.tte*, %struct.tte** %8, align 8
  %29 = load i32, i32* @tte_link, align 4
  %30 = call i32 @TAILQ_REMOVE(i32* %27, %struct.tte* %28, i32 %29)
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @TD_WIRED, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %21
  %36 = load %struct.pmap*, %struct.pmap** %6, align 8
  %37 = getelementptr inbounds %struct.pmap, %struct.pmap* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %35, %21
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @TD_PV, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %79

46:                                               ; preds = %41
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @TD_W, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %53 = call i32 @vm_page_dirty(%struct.TYPE_11__* %52)
  br label %54

54:                                               ; preds = %51, %46
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @TD_REF, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %61 = load i32, i32* @PGA_REFERENCED, align 4
  %62 = call i32 @vm_page_aflag_set(%struct.TYPE_11__* %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %54
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = call i64 @TAILQ_EMPTY(i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %71 = load i32, i32* @PGA_WRITEABLE, align 4
  %72 = call i32 @vm_page_aflag_clear(%struct.TYPE_11__* %70, i32 %71)
  br label %73

73:                                               ; preds = %69, %63
  %74 = load %struct.pmap*, %struct.pmap** %6, align 8
  %75 = getelementptr inbounds %struct.pmap, %struct.pmap* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %73, %41
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @pmap_cache_remove(%struct.TYPE_11__* %80, i32 %81)
  br label %83

83:                                               ; preds = %79, %4
  %84 = load %struct.tte*, %struct.tte** %8, align 8
  %85 = call i32 @TTE_ZERO(%struct.tte* %84)
  %86 = load %struct.pmap*, %struct.pmap** %6, align 8
  %87 = call i64 @PMAP_REMOVE_DONE(%struct.pmap* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  store i32 0, i32* %5, align 4
  br label %91

90:                                               ; preds = %83
  store i32 1, i32* %5, align 4
  br label %91

91:                                               ; preds = %90, %89
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @rw_assert(i32*, i32) #1

declare dso_local i32 @atomic_readandclear_long(i32*) #1

declare dso_local %struct.TYPE_11__* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @TD_PA(i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.tte*, i32) #1

declare dso_local i32 @vm_page_dirty(%struct.TYPE_11__*) #1

declare dso_local i32 @vm_page_aflag_set(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @vm_page_aflag_clear(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @pmap_cache_remove(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @TTE_ZERO(%struct.tte*) #1

declare dso_local i64 @PMAP_REMOVE_DONE(%struct.pmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
