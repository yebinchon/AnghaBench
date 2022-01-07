; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/cache/extr_g_cache.c_g_cache_invalidate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/cache/extr_g_cache.c_g_cache_invalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_cache_softc = type { i32, i32, i32, i32 }
%struct.bio = type { i64, i64 }
%struct.g_cache_desc = type { i32, i32* }

@d_next = common dso_local global i32 0, align 4
@D_FLAG_USED = common dso_local global i32 0, align 4
@d_used = common dso_local global i32 0, align 4
@D_FLAG_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_cache_softc*, %struct.bio*)* @g_cache_invalidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_cache_invalidate(%struct.g_cache_softc* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.g_cache_softc*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.g_cache_desc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.g_cache_softc* %0, %struct.g_cache_softc** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %8 = load %struct.g_cache_softc*, %struct.g_cache_softc** %3, align 8
  %9 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %8, i32 0, i32 0
  %10 = call i32 @mtx_lock(i32* %9)
  %11 = load %struct.bio*, %struct.bio** %4, align 8
  %12 = getelementptr inbounds %struct.bio, %struct.bio* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.g_cache_softc*, %struct.g_cache_softc** %3, align 8
  %15 = call i64 @OFF2BNO(i64 %13, %struct.g_cache_softc* %14)
  store i64 %15, i64* %6, align 8
  %16 = load %struct.bio*, %struct.bio** %4, align 8
  %17 = getelementptr inbounds %struct.bio, %struct.bio* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.bio*, %struct.bio** %4, align 8
  %20 = getelementptr inbounds %struct.bio, %struct.bio* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %18, %21
  %23 = sub nsw i64 %22, 1
  %24 = load %struct.g_cache_softc*, %struct.g_cache_softc** %3, align 8
  %25 = call i64 @OFF2BNO(i64 %23, %struct.g_cache_softc* %24)
  store i64 %25, i64* %7, align 8
  br label %26

26:                                               ; preds = %72, %2
  %27 = load %struct.g_cache_softc*, %struct.g_cache_softc** %3, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call %struct.g_cache_desc* @g_cache_lookup(%struct.g_cache_softc* %27, i64 %28)
  store %struct.g_cache_desc* %29, %struct.g_cache_desc** %5, align 8
  %30 = icmp ne %struct.g_cache_desc* %29, null
  br i1 %30, label %31, label %69

31:                                               ; preds = %26
  %32 = load %struct.g_cache_desc*, %struct.g_cache_desc** %5, align 8
  %33 = load i32, i32* @d_next, align 4
  %34 = call i32 @LIST_REMOVE(%struct.g_cache_desc* %32, i32 %33)
  %35 = load %struct.g_cache_desc*, %struct.g_cache_desc** %5, align 8
  %36 = getelementptr inbounds %struct.g_cache_desc, %struct.g_cache_desc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @D_FLAG_USED, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %31
  %42 = load %struct.g_cache_softc*, %struct.g_cache_softc** %3, align 8
  %43 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %42, i32 0, i32 3
  %44 = load %struct.g_cache_desc*, %struct.g_cache_desc** %5, align 8
  %45 = load i32, i32* @d_used, align 4
  %46 = call i32 @TAILQ_REMOVE(i32* %43, %struct.g_cache_desc* %44, i32 %45)
  %47 = load %struct.g_cache_softc*, %struct.g_cache_softc** %3, align 8
  %48 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %41, %31
  %52 = load %struct.g_cache_desc*, %struct.g_cache_desc** %5, align 8
  %53 = getelementptr inbounds %struct.g_cache_desc, %struct.g_cache_desc* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load %struct.g_cache_softc*, %struct.g_cache_softc** %3, align 8
  %58 = load %struct.g_cache_desc*, %struct.g_cache_desc** %5, align 8
  %59 = call i32 @g_cache_free(%struct.g_cache_softc* %57, %struct.g_cache_desc* %58)
  br label %68

60:                                               ; preds = %51
  %61 = load i32, i32* @D_FLAG_INVALID, align 4
  %62 = load %struct.g_cache_desc*, %struct.g_cache_desc** %5, align 8
  %63 = getelementptr inbounds %struct.g_cache_desc, %struct.g_cache_desc* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.g_cache_softc*, %struct.g_cache_softc** %3, align 8
  %65 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %60, %56
  br label %69

69:                                               ; preds = %68, %26
  %70 = load i64, i64* %6, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %6, align 8
  br label %72

72:                                               ; preds = %69
  %73 = load i64, i64* %6, align 8
  %74 = load i64, i64* %7, align 8
  %75 = icmp sle i64 %73, %74
  br i1 %75, label %26, label %76

76:                                               ; preds = %72
  %77 = load %struct.g_cache_softc*, %struct.g_cache_softc** %3, align 8
  %78 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %77, i32 0, i32 0
  %79 = call i32 @mtx_unlock(i32* %78)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @OFF2BNO(i64, %struct.g_cache_softc*) #1

declare dso_local %struct.g_cache_desc* @g_cache_lookup(%struct.g_cache_softc*, i64) #1

declare dso_local i32 @LIST_REMOVE(%struct.g_cache_desc*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.g_cache_desc*, i32) #1

declare dso_local i32 @g_cache_free(%struct.g_cache_softc*, %struct.g_cache_desc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
