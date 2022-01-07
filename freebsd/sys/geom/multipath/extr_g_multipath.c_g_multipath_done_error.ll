; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/multipath/extr_g_multipath.c_g_multipath_done_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/multipath/extr_g_multipath.c_g_multipath_done_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, i64, i32, i64, %struct.g_consumer*, %struct.TYPE_2__*, %struct.bio* }
%struct.g_consumer = type { i32, i32, %struct.g_provider* }
%struct.g_provider = type { i8* }
%struct.TYPE_2__ = type { %struct.g_geom* }
%struct.g_geom = type { %struct.g_multipath_softc* }
%struct.g_multipath_softc = type { i8*, i32 }

@MP_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"GEOM_MULTIPATH: Error %d, %s in %s marked FAIL\0A\00", align 1
@MP_LOST = common dso_local global i32 0, align 4
@MP_POSTED = common dso_local global i32 0, align 4
@g_mpd = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @g_multipath_done_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_multipath_done_error(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.bio*, align 8
  %4 = alloca %struct.g_geom*, align 8
  %5 = alloca %struct.g_multipath_softc*, align 8
  %6 = alloca %struct.g_consumer*, align 8
  %7 = alloca %struct.g_provider*, align 8
  %8 = alloca i64*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %9 = load %struct.bio*, %struct.bio** %2, align 8
  %10 = getelementptr inbounds %struct.bio, %struct.bio* %9, i32 0, i32 6
  %11 = load %struct.bio*, %struct.bio** %10, align 8
  store %struct.bio* %11, %struct.bio** %3, align 8
  %12 = load %struct.bio*, %struct.bio** %3, align 8
  %13 = getelementptr inbounds %struct.bio, %struct.bio* %12, i32 0, i32 5
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.g_geom*, %struct.g_geom** %15, align 8
  store %struct.g_geom* %16, %struct.g_geom** %4, align 8
  %17 = load %struct.g_geom*, %struct.g_geom** %4, align 8
  %18 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %17, i32 0, i32 0
  %19 = load %struct.g_multipath_softc*, %struct.g_multipath_softc** %18, align 8
  store %struct.g_multipath_softc* %19, %struct.g_multipath_softc** %5, align 8
  %20 = load %struct.bio*, %struct.bio** %2, align 8
  %21 = getelementptr inbounds %struct.bio, %struct.bio* %20, i32 0, i32 4
  %22 = load %struct.g_consumer*, %struct.g_consumer** %21, align 8
  store %struct.g_consumer* %22, %struct.g_consumer** %6, align 8
  %23 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %24 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %23, i32 0, i32 2
  %25 = load %struct.g_provider*, %struct.g_provider** %24, align 8
  store %struct.g_provider* %25, %struct.g_provider** %7, align 8
  %26 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %27 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %26, i32 0, i32 1
  %28 = bitcast i32* %27 to i64*
  store i64* %28, i64** %8, align 8
  %29 = load %struct.g_multipath_softc*, %struct.g_multipath_softc** %5, align 8
  %30 = getelementptr inbounds %struct.g_multipath_softc, %struct.g_multipath_softc* %29, i32 0, i32 1
  %31 = call i32 @mtx_lock(i32* %30)
  %32 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %33 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @MP_FAIL, align 4
  %36 = and i32 %34, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %1
  %39 = load %struct.bio*, %struct.bio** %2, align 8
  %40 = getelementptr inbounds %struct.bio, %struct.bio* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %43 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.g_multipath_softc*, %struct.g_multipath_softc** %5, align 8
  %46 = getelementptr inbounds %struct.g_multipath_softc, %struct.g_multipath_softc* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %41, i8* %44, i8* %47)
  %49 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %50 = load i32, i32* @MP_FAIL, align 4
  %51 = call i32 @g_multipath_fault(%struct.g_consumer* %49, i32 %50)
  br label %52

52:                                               ; preds = %38, %1
  %53 = load i64*, i64** %8, align 8
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %54, -1
  store i64 %55, i64* %53, align 8
  %56 = load i64*, i64** %8, align 8
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %82

59:                                               ; preds = %52
  %60 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %61 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @MP_LOST, align 4
  %64 = load i32, i32* @MP_POSTED, align 4
  %65 = or i32 %63, %64
  %66 = and i32 %62, %65
  %67 = load i32, i32* @MP_LOST, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %82

69:                                               ; preds = %59
  %70 = load i32, i32* @MP_POSTED, align 4
  %71 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %72 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 8
  %75 = load %struct.g_multipath_softc*, %struct.g_multipath_softc** %5, align 8
  %76 = getelementptr inbounds %struct.g_multipath_softc, %struct.g_multipath_softc* %75, i32 0, i32 1
  %77 = call i32 @mtx_unlock(i32* %76)
  %78 = load i32, i32* @g_mpd, align 4
  %79 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %80 = load i32, i32* @M_WAITOK, align 4
  %81 = call i32 @g_post_event(i32 %78, %struct.g_consumer* %79, i32 %80, i32* null)
  br label %86

82:                                               ; preds = %59, %52
  %83 = load %struct.g_multipath_softc*, %struct.g_multipath_softc** %5, align 8
  %84 = getelementptr inbounds %struct.g_multipath_softc, %struct.g_multipath_softc* %83, i32 0, i32 1
  %85 = call i32 @mtx_unlock(i32* %84)
  br label %86

86:                                               ; preds = %82, %69
  %87 = load %struct.bio*, %struct.bio** %3, align 8
  %88 = getelementptr inbounds %struct.bio, %struct.bio* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.bio*, %struct.bio** %3, align 8
  %91 = getelementptr inbounds %struct.bio, %struct.bio* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = icmp ult i64 %89, %92
  br i1 %93, label %94, label %103

94:                                               ; preds = %86
  %95 = load %struct.bio*, %struct.bio** %3, align 8
  %96 = getelementptr inbounds %struct.bio, %struct.bio* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 8
  %99 = load %struct.bio*, %struct.bio** %2, align 8
  %100 = call i32 @g_destroy_bio(%struct.bio* %99)
  %101 = load %struct.bio*, %struct.bio** %3, align 8
  %102 = call i32 @g_multipath_start(%struct.bio* %101)
  br label %106

103:                                              ; preds = %86
  %104 = load %struct.bio*, %struct.bio** %2, align 8
  %105 = call i32 @g_std_done(%struct.bio* %104)
  br label %106

106:                                              ; preds = %103, %94
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @printf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @g_multipath_fault(%struct.g_consumer*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @g_post_event(i32, %struct.g_consumer*, i32, i32*) #1

declare dso_local i32 @g_destroy_bio(%struct.bio*) #1

declare dso_local i32 @g_multipath_start(%struct.bio*) #1

declare dso_local i32 @g_std_done(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
