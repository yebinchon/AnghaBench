; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_pmap.c_pmap_ts_referenced.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_pmap.c_pmap_ts_referenced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.tte = type { i32 }

@VPO_UNMANAGED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"pmap_ts_referenced: page %p is not managed\00", align 1
@tte_list_global_lock = common dso_local global i32 0, align 4
@tte_link = common dso_local global i32 0, align 4
@TD_PV = common dso_local global i32 0, align 4
@TD_REF = common dso_local global i32 0, align 4
@TD_W = common dso_local global i32 0, align 4
@PMAP_TS_REFERENCED_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmap_ts_referenced(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.tte*, align 8
  %4 = alloca %struct.tte*, align 8
  %5 = alloca %struct.tte*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @VPO_UNMANAGED, align 4
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %16 = bitcast %struct.TYPE_6__* %15 to i8*
  %17 = call i32 @KASSERT(i32 %14, i8* %16)
  store i32 0, i32* %7, align 4
  %18 = call i32 @rw_wlock(i32* @tte_list_global_lock)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = call %struct.tte* @TAILQ_FIRST(i32* %21)
  store %struct.tte* %22, %struct.tte** %5, align 8
  %23 = icmp ne %struct.tte* %22, null
  br i1 %23, label %24, label %83

24:                                               ; preds = %1
  %25 = load %struct.tte*, %struct.tte** %5, align 8
  store %struct.tte* %25, %struct.tte** %3, align 8
  br label %26

26:                                               ; preds = %80, %24
  %27 = load %struct.tte*, %struct.tte** %5, align 8
  %28 = load i32, i32* @tte_link, align 4
  %29 = call %struct.tte* @TAILQ_NEXT(%struct.tte* %27, i32 %28)
  store %struct.tte* %29, %struct.tte** %4, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.tte*, %struct.tte** %5, align 8
  %34 = load i32, i32* @tte_link, align 4
  %35 = call i32 @TAILQ_REMOVE(i32* %32, %struct.tte* %33, i32 %34)
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load %struct.tte*, %struct.tte** %5, align 8
  %40 = load i32, i32* @tte_link, align 4
  %41 = call i32 @TAILQ_INSERT_TAIL(i32* %38, %struct.tte* %39, i32 %40)
  %42 = load %struct.tte*, %struct.tte** %5, align 8
  %43 = getelementptr inbounds %struct.tte, %struct.tte* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @TD_PV, align 4
  %46 = and i32 %44, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %26
  br label %73

49:                                               ; preds = %26
  %50 = load %struct.tte*, %struct.tte** %5, align 8
  %51 = getelementptr inbounds %struct.tte, %struct.tte* %50, i32 0, i32 0
  %52 = load i32, i32* @TD_REF, align 4
  %53 = call i32 @atomic_clear_long(i32* %51, i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @TD_W, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %49
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %60 = call i32 @vm_page_dirty(%struct.TYPE_6__* %59)
  br label %61

61:                                               ; preds = %58, %49
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @TD_REF, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* @PMAP_TS_REFERENCED_MAX, align 4
  %70 = icmp sge i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %82

72:                                               ; preds = %66, %61
  br label %73

73:                                               ; preds = %72, %48
  %74 = load %struct.tte*, %struct.tte** %4, align 8
  store %struct.tte* %74, %struct.tte** %5, align 8
  %75 = icmp ne %struct.tte* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load %struct.tte*, %struct.tte** %5, align 8
  %78 = load %struct.tte*, %struct.tte** %3, align 8
  %79 = icmp ne %struct.tte* %77, %78
  br label %80

80:                                               ; preds = %76, %73
  %81 = phi i1 [ false, %73 ], [ %79, %76 ]
  br i1 %81, label %26, label %82

82:                                               ; preds = %80, %71
  br label %83

83:                                               ; preds = %82, %1
  %84 = call i32 @rw_wunlock(i32* @tte_list_global_lock)
  %85 = load i32, i32* %7, align 4
  ret i32 %85
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @rw_wlock(i32*) #1

declare dso_local %struct.tte* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.tte* @TAILQ_NEXT(%struct.tte*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.tte*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.tte*, i32) #1

declare dso_local i32 @atomic_clear_long(i32*, i32) #1

declare dso_local i32 @vm_page_dirty(%struct.TYPE_6__*) #1

declare dso_local i32 @rw_wunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
