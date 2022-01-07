; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/multipath/extr_g_multipath.c_g_multipath_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/multipath/extr_g_multipath.c_g_multipath_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.g_geom* }
%struct.g_geom = type { %struct.g_multipath_softc* }
%struct.g_multipath_softc = type { i64, i32 }
%struct.g_consumer = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"NULL sc\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@g_multipath_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @g_multipath_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_multipath_start(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.g_multipath_softc*, align 8
  %4 = alloca %struct.g_geom*, align 8
  %5 = alloca %struct.g_consumer*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca i64*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %8 = load %struct.bio*, %struct.bio** %2, align 8
  %9 = getelementptr inbounds %struct.bio, %struct.bio* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.g_geom*, %struct.g_geom** %11, align 8
  store %struct.g_geom* %12, %struct.g_geom** %4, align 8
  %13 = load %struct.g_geom*, %struct.g_geom** %4, align 8
  %14 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %13, i32 0, i32 0
  %15 = load %struct.g_multipath_softc*, %struct.g_multipath_softc** %14, align 8
  store %struct.g_multipath_softc* %15, %struct.g_multipath_softc** %3, align 8
  %16 = load %struct.g_multipath_softc*, %struct.g_multipath_softc** %3, align 8
  %17 = icmp ne %struct.g_multipath_softc* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @KASSERT(i32 %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.bio*, %struct.bio** %2, align 8
  %21 = call %struct.bio* @g_clone_bio(%struct.bio* %20)
  store %struct.bio* %21, %struct.bio** %6, align 8
  %22 = load %struct.bio*, %struct.bio** %6, align 8
  %23 = icmp eq %struct.bio* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load %struct.bio*, %struct.bio** %2, align 8
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = call i32 @g_io_deliver(%struct.bio* %25, i32 %26)
  br label %78

28:                                               ; preds = %1
  %29 = load %struct.g_multipath_softc*, %struct.g_multipath_softc** %3, align 8
  %30 = getelementptr inbounds %struct.g_multipath_softc, %struct.g_multipath_softc* %29, i32 0, i32 1
  %31 = call i32 @mtx_lock(i32* %30)
  %32 = load %struct.g_geom*, %struct.g_geom** %4, align 8
  %33 = load %struct.bio*, %struct.bio** %2, align 8
  %34 = call %struct.g_consumer* @g_multipath_choose(%struct.g_geom* %32, %struct.bio* %33)
  store %struct.g_consumer* %34, %struct.g_consumer** %5, align 8
  %35 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %36 = icmp eq %struct.g_consumer* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %28
  %38 = load %struct.g_multipath_softc*, %struct.g_multipath_softc** %3, align 8
  %39 = getelementptr inbounds %struct.g_multipath_softc, %struct.g_multipath_softc* %38, i32 0, i32 1
  %40 = call i32 @mtx_unlock(i32* %39)
  %41 = load %struct.bio*, %struct.bio** %6, align 8
  %42 = call i32 @g_destroy_bio(%struct.bio* %41)
  %43 = load %struct.bio*, %struct.bio** %2, align 8
  %44 = load i32, i32* @ENXIO, align 4
  %45 = call i32 @g_io_deliver(%struct.bio* %43, i32 %44)
  br label %78

46:                                               ; preds = %28
  %47 = load %struct.bio*, %struct.bio** %2, align 8
  %48 = getelementptr inbounds %struct.bio, %struct.bio* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = ptrtoint i8* %49 to i64
  %51 = load %struct.g_multipath_softc*, %struct.g_multipath_softc** %3, align 8
  %52 = getelementptr inbounds %struct.g_multipath_softc, %struct.g_multipath_softc* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ult i64 %50, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %46
  %56 = load %struct.g_multipath_softc*, %struct.g_multipath_softc** %3, align 8
  %57 = getelementptr inbounds %struct.g_multipath_softc, %struct.g_multipath_softc* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i8*
  %60 = load %struct.bio*, %struct.bio** %2, align 8
  %61 = getelementptr inbounds %struct.bio, %struct.bio* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  br label %62

62:                                               ; preds = %55, %46
  %63 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %64 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %63, i32 0, i32 0
  %65 = bitcast i32* %64 to i64*
  store i64* %65, i64** %7, align 8
  %66 = load i64*, i64** %7, align 8
  %67 = load i64, i64* %66, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %66, align 8
  %69 = load %struct.g_multipath_softc*, %struct.g_multipath_softc** %3, align 8
  %70 = getelementptr inbounds %struct.g_multipath_softc, %struct.g_multipath_softc* %69, i32 0, i32 1
  %71 = call i32 @mtx_unlock(i32* %70)
  %72 = load i32, i32* @g_multipath_done, align 4
  %73 = load %struct.bio*, %struct.bio** %6, align 8
  %74 = getelementptr inbounds %struct.bio, %struct.bio* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.bio*, %struct.bio** %6, align 8
  %76 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %77 = call i32 @g_io_request(%struct.bio* %75, %struct.g_consumer* %76)
  br label %78

78:                                               ; preds = %62, %37, %24
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.bio* @g_clone_bio(%struct.bio*) #1

declare dso_local i32 @g_io_deliver(%struct.bio*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.g_consumer* @g_multipath_choose(%struct.g_geom*, %struct.bio*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @g_destroy_bio(%struct.bio*) #1

declare dso_local i32 @g_io_request(%struct.bio*, %struct.g_consumer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
