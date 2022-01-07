; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_pmap.c_pmap_remove_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_pmap.c_pmap_remove_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.pmap = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.tte = type { i32 }

@VPO_UNMANAGED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"pmap_remove_all: page %p is not managed\00", align 1
@tte_list_global_lock = common dso_local global i32 0, align 4
@tte_link = common dso_local global i32 0, align 4
@TD_PV = common dso_local global i32 0, align 4
@TD_WIRED = common dso_local global i32 0, align 4
@TD_REF = common dso_local global i32 0, align 4
@PGA_REFERENCED = common dso_local global i32 0, align 4
@TD_W = common dso_local global i32 0, align 4
@TD_V = common dso_local global i32 0, align 4
@PGA_WRITEABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_remove_all(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.pmap*, align 8
  %4 = alloca %struct.tte*, align 8
  %5 = alloca %struct.tte*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @VPO_UNMANAGED, align 4
  %11 = and i32 %9, %10
  %12 = icmp eq i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %15 = bitcast %struct.TYPE_11__* %14 to i8*
  %16 = call i32 @KASSERT(i32 %13, i8* %15)
  %17 = call i32 @rw_wlock(i32* @tte_list_global_lock)
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = call %struct.tte* @TAILQ_FIRST(i32* %20)
  store %struct.tte* %21, %struct.tte** %5, align 8
  br label %22

22:                                               ; preds = %104, %1
  %23 = load %struct.tte*, %struct.tte** %5, align 8
  %24 = icmp ne %struct.tte* %23, null
  br i1 %24, label %25, label %106

25:                                               ; preds = %22
  %26 = load %struct.tte*, %struct.tte** %5, align 8
  %27 = load i32, i32* @tte_link, align 4
  %28 = call %struct.tte* @TAILQ_NEXT(%struct.tte* %26, i32 %27)
  store %struct.tte* %28, %struct.tte** %4, align 8
  %29 = load %struct.tte*, %struct.tte** %5, align 8
  %30 = getelementptr inbounds %struct.tte, %struct.tte* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @TD_PV, align 4
  %33 = and i32 %31, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %104

36:                                               ; preds = %25
  %37 = load %struct.tte*, %struct.tte** %5, align 8
  %38 = call %struct.pmap* @TTE_GET_PMAP(%struct.tte* %37)
  store %struct.pmap* %38, %struct.pmap** %3, align 8
  %39 = load %struct.tte*, %struct.tte** %5, align 8
  %40 = call i32 @TTE_GET_VA(%struct.tte* %39)
  store i32 %40, i32* %6, align 4
  %41 = load %struct.pmap*, %struct.pmap** %3, align 8
  %42 = call i32 @PMAP_LOCK(%struct.pmap* %41)
  %43 = load %struct.tte*, %struct.tte** %5, align 8
  %44 = getelementptr inbounds %struct.tte, %struct.tte* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @TD_WIRED, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %36
  %50 = load %struct.pmap*, %struct.pmap** %3, align 8
  %51 = getelementptr inbounds %struct.pmap, %struct.pmap* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %49, %36
  %56 = load %struct.tte*, %struct.tte** %5, align 8
  %57 = getelementptr inbounds %struct.tte, %struct.tte* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @TD_REF, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %64 = load i32, i32* @PGA_REFERENCED, align 4
  %65 = call i32 @vm_page_aflag_set(%struct.TYPE_11__* %63, i32 %64)
  br label %66

66:                                               ; preds = %62, %55
  %67 = load %struct.tte*, %struct.tte** %5, align 8
  %68 = getelementptr inbounds %struct.tte, %struct.tte* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @TD_W, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %75 = call i32 @vm_page_dirty(%struct.TYPE_11__* %74)
  br label %76

76:                                               ; preds = %73, %66
  %77 = load i32, i32* @TD_V, align 4
  %78 = xor i32 %77, -1
  %79 = load %struct.tte*, %struct.tte** %5, align 8
  %80 = getelementptr inbounds %struct.tte, %struct.tte* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, %78
  store i32 %82, i32* %80, align 4
  %83 = load %struct.pmap*, %struct.pmap** %3, align 8
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @tlb_page_demap(%struct.pmap* %83, i32 %84)
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load %struct.tte*, %struct.tte** %5, align 8
  %90 = load i32, i32* @tte_link, align 4
  %91 = call i32 @TAILQ_REMOVE(i32* %88, %struct.tte* %89, i32 %90)
  %92 = load %struct.pmap*, %struct.pmap** %3, align 8
  %93 = getelementptr inbounds %struct.pmap, %struct.pmap* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %94, align 4
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @pmap_cache_remove(%struct.TYPE_11__* %97, i32 %98)
  %100 = load %struct.tte*, %struct.tte** %5, align 8
  %101 = call i32 @TTE_ZERO(%struct.tte* %100)
  %102 = load %struct.pmap*, %struct.pmap** %3, align 8
  %103 = call i32 @PMAP_UNLOCK(%struct.pmap* %102)
  br label %104

104:                                              ; preds = %76, %35
  %105 = load %struct.tte*, %struct.tte** %4, align 8
  store %struct.tte* %105, %struct.tte** %5, align 8
  br label %22

106:                                              ; preds = %22
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %108 = load i32, i32* @PGA_WRITEABLE, align 4
  %109 = call i32 @vm_page_aflag_clear(%struct.TYPE_11__* %107, i32 %108)
  %110 = call i32 @rw_wunlock(i32* @tte_list_global_lock)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @rw_wlock(i32*) #1

declare dso_local %struct.tte* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.tte* @TAILQ_NEXT(%struct.tte*, i32) #1

declare dso_local %struct.pmap* @TTE_GET_PMAP(%struct.tte*) #1

declare dso_local i32 @TTE_GET_VA(%struct.tte*) #1

declare dso_local i32 @PMAP_LOCK(%struct.pmap*) #1

declare dso_local i32 @vm_page_aflag_set(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @vm_page_dirty(%struct.TYPE_11__*) #1

declare dso_local i32 @tlb_page_demap(%struct.pmap*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.tte*, i32) #1

declare dso_local i32 @pmap_cache_remove(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @TTE_ZERO(%struct.tte*) #1

declare dso_local i32 @PMAP_UNLOCK(%struct.pmap*) #1

declare dso_local i32 @vm_page_aflag_clear(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @rw_wunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
