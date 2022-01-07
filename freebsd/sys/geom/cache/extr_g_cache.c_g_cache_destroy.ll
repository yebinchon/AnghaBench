; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/cache/extr_g_cache.c_g_cache_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/cache/extr_g_cache.c_g_cache_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_cache_softc = type { i32, i32, i32*, i32, %struct.g_geom* }
%struct.g_geom = type { i32*, i32, i32 }
%struct.g_provider = type { i64, i64, i64, i32 }
%struct.g_cache_desc = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Device %s is still open, so it can't be definitely removed.\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Device %s is still open (r%dw%de%d).\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Device %s removed.\00", align 1
@G_CACHE_BUCKETS = common dso_local global i32 0, align 4
@d_next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_cache_softc*, i64)* @g_cache_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_cache_destroy(%struct.g_cache_softc* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.g_cache_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.g_geom*, align 8
  %7 = alloca %struct.g_provider*, align 8
  %8 = alloca %struct.g_cache_desc*, align 8
  %9 = alloca %struct.g_cache_desc*, align 8
  %10 = alloca i32, align 4
  store %struct.g_cache_softc* %0, %struct.g_cache_softc** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = call i32 (...) @g_topology_assert()
  %12 = load %struct.g_cache_softc*, %struct.g_cache_softc** %4, align 8
  %13 = icmp eq %struct.g_cache_softc* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @ENXIO, align 4
  store i32 %15, i32* %3, align 4
  br label %123

16:                                               ; preds = %2
  %17 = load %struct.g_cache_softc*, %struct.g_cache_softc** %4, align 8
  %18 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %17, i32 0, i32 4
  %19 = load %struct.g_geom*, %struct.g_geom** %18, align 8
  store %struct.g_geom* %19, %struct.g_geom** %6, align 8
  %20 = load %struct.g_geom*, %struct.g_geom** %6, align 8
  %21 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %20, i32 0, i32 2
  %22 = call i8* @LIST_FIRST(i32* %21)
  %23 = bitcast i8* %22 to %struct.g_provider*
  store %struct.g_provider* %23, %struct.g_provider** %7, align 8
  %24 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %25 = icmp ne %struct.g_provider* %24, null
  br i1 %25, label %26, label %65

26:                                               ; preds = %16
  %27 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %28 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %26
  %32 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %33 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %38 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %65

41:                                               ; preds = %36, %31, %26
  %42 = load i64, i64* %5, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %46 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (i32, i8*, i32, ...) @G_CACHE_DEBUG(i32 0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %64

49:                                               ; preds = %41
  %50 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %51 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %54 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %57 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %60 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = call i32 (i32, i8*, i32, ...) @G_CACHE_DEBUG(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %52, i64 %55, i64 %58, i64 %61)
  %63 = load i32, i32* @EBUSY, align 4
  store i32 %63, i32* %3, align 4
  br label %123

64:                                               ; preds = %44
  br label %70

65:                                               ; preds = %36, %16
  %66 = load %struct.g_geom*, %struct.g_geom** %6, align 8
  %67 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 (i32, i8*, i32, ...) @G_CACHE_DEBUG(i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %65, %64
  %71 = load %struct.g_cache_softc*, %struct.g_cache_softc** %4, align 8
  %72 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %71, i32 0, i32 3
  %73 = call i32 @callout_drain(i32* %72)
  %74 = load %struct.g_cache_softc*, %struct.g_cache_softc** %4, align 8
  %75 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %74, i32 0, i32 1
  %76 = call i32 @mtx_lock(i32* %75)
  store i32 0, i32* %10, align 4
  br label %77

77:                                               ; preds = %102, %70
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @G_CACHE_BUCKETS, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %105

81:                                               ; preds = %77
  %82 = load %struct.g_cache_softc*, %struct.g_cache_softc** %4, align 8
  %83 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = call i8* @LIST_FIRST(i32* %87)
  %89 = bitcast i8* %88 to %struct.g_cache_desc*
  store %struct.g_cache_desc* %89, %struct.g_cache_desc** %8, align 8
  br label %90

90:                                               ; preds = %93, %81
  %91 = load %struct.g_cache_desc*, %struct.g_cache_desc** %8, align 8
  %92 = icmp ne %struct.g_cache_desc* %91, null
  br i1 %92, label %93, label %101

93:                                               ; preds = %90
  %94 = load %struct.g_cache_desc*, %struct.g_cache_desc** %8, align 8
  %95 = load i32, i32* @d_next, align 4
  %96 = call %struct.g_cache_desc* @LIST_NEXT(%struct.g_cache_desc* %94, i32 %95)
  store %struct.g_cache_desc* %96, %struct.g_cache_desc** %9, align 8
  %97 = load %struct.g_cache_softc*, %struct.g_cache_softc** %4, align 8
  %98 = load %struct.g_cache_desc*, %struct.g_cache_desc** %8, align 8
  %99 = call i32 @g_cache_free(%struct.g_cache_softc* %97, %struct.g_cache_desc* %98)
  %100 = load %struct.g_cache_desc*, %struct.g_cache_desc** %9, align 8
  store %struct.g_cache_desc* %100, %struct.g_cache_desc** %8, align 8
  br label %90

101:                                              ; preds = %90
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %10, align 4
  br label %77

105:                                              ; preds = %77
  %106 = load %struct.g_cache_softc*, %struct.g_cache_softc** %4, align 8
  %107 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %106, i32 0, i32 1
  %108 = call i32 @mtx_unlock(i32* %107)
  %109 = load %struct.g_cache_softc*, %struct.g_cache_softc** %4, align 8
  %110 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %109, i32 0, i32 1
  %111 = call i32 @mtx_destroy(i32* %110)
  %112 = load %struct.g_cache_softc*, %struct.g_cache_softc** %4, align 8
  %113 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @uma_zdestroy(i32 %114)
  %116 = load %struct.g_cache_softc*, %struct.g_cache_softc** %4, align 8
  %117 = call i32 @g_free(%struct.g_cache_softc* %116)
  %118 = load %struct.g_geom*, %struct.g_geom** %6, align 8
  %119 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %118, i32 0, i32 0
  store i32* null, i32** %119, align 8
  %120 = load %struct.g_geom*, %struct.g_geom** %6, align 8
  %121 = load i32, i32* @ENXIO, align 4
  %122 = call i32 @g_wither_geom(%struct.g_geom* %120, i32 %121)
  store i32 0, i32* %3, align 4
  br label %123

123:                                              ; preds = %105, %49, %14
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i8* @LIST_FIRST(i32*) #1

declare dso_local i32 @G_CACHE_DEBUG(i32, i8*, i32, ...) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.g_cache_desc* @LIST_NEXT(%struct.g_cache_desc*, i32) #1

declare dso_local i32 @g_cache_free(%struct.g_cache_softc*, %struct.g_cache_desc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @uma_zdestroy(i32) #1

declare dso_local i32 @g_free(%struct.g_cache_softc*) #1

declare dso_local i32 @g_wither_geom(%struct.g_geom*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
