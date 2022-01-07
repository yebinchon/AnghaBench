; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/mountver/extr_g_mountver.c_g_mountver_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/mountver/extr_g_mountver.c_g_mountver_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_geom = type { %struct.g_mountver_softc*, i32, i32 }
%struct.g_mountver_softc = type { %struct.g_mountver_softc* }
%struct.g_provider = type { i64, i64, i64, i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Device %s is still open, so it can't be definitely removed.\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Device %s is still open (r%dw%de%d).\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Device %s removed.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_geom*, i64)* @g_mountver_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_mountver_destroy(%struct.g_geom* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.g_geom*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.g_mountver_softc*, align 8
  %7 = alloca %struct.g_provider*, align 8
  store %struct.g_geom* %0, %struct.g_geom** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = call i32 (...) @g_topology_assert()
  %9 = load %struct.g_geom*, %struct.g_geom** %4, align 8
  %10 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %9, i32 0, i32 0
  %11 = load %struct.g_mountver_softc*, %struct.g_mountver_softc** %10, align 8
  %12 = icmp eq %struct.g_mountver_softc* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @ENXIO, align 4
  store i32 %14, i32* %3, align 4
  br label %91

15:                                               ; preds = %2
  %16 = load %struct.g_geom*, %struct.g_geom** %4, align 8
  %17 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %16, i32 0, i32 0
  %18 = load %struct.g_mountver_softc*, %struct.g_mountver_softc** %17, align 8
  store %struct.g_mountver_softc* %18, %struct.g_mountver_softc** %6, align 8
  %19 = load %struct.g_geom*, %struct.g_geom** %4, align 8
  %20 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %19, i32 0, i32 2
  %21 = call %struct.g_provider* @LIST_FIRST(i32* %20)
  store %struct.g_provider* %21, %struct.g_provider** %7, align 8
  %22 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %23 = icmp ne %struct.g_provider* %22, null
  br i1 %23, label %24, label %63

24:                                               ; preds = %15
  %25 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %26 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %24
  %30 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %31 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %36 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %63

39:                                               ; preds = %34, %29, %24
  %40 = load i64, i64* %5, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %44 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (i32, i8*, i32, ...) @G_MOUNTVER_DEBUG(i32 0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %62

47:                                               ; preds = %39
  %48 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %49 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %52 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %55 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %58 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = call i32 (i32, i8*, i32, ...) @G_MOUNTVER_DEBUG(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %50, i64 %53, i64 %56, i64 %59)
  %61 = load i32, i32* @EBUSY, align 4
  store i32 %61, i32* %3, align 4
  br label %91

62:                                               ; preds = %42
  br label %68

63:                                               ; preds = %34, %15
  %64 = load %struct.g_geom*, %struct.g_geom** %4, align 8
  %65 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 (i32, i8*, i32, ...) @G_MOUNTVER_DEBUG(i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %63, %62
  %69 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %70 = icmp ne %struct.g_provider* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %73 = load i32, i32* @ENXIO, align 4
  %74 = call i32 @g_wither_provider(%struct.g_provider* %72, i32 %73)
  br label %75

75:                                               ; preds = %71, %68
  %76 = load %struct.g_geom*, %struct.g_geom** %4, align 8
  %77 = call i32 @g_mountver_discard_queued(%struct.g_geom* %76)
  %78 = load %struct.g_mountver_softc*, %struct.g_mountver_softc** %6, align 8
  %79 = getelementptr inbounds %struct.g_mountver_softc, %struct.g_mountver_softc* %78, i32 0, i32 0
  %80 = load %struct.g_mountver_softc*, %struct.g_mountver_softc** %79, align 8
  %81 = call i32 @g_free(%struct.g_mountver_softc* %80)
  %82 = load %struct.g_geom*, %struct.g_geom** %4, align 8
  %83 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %82, i32 0, i32 0
  %84 = load %struct.g_mountver_softc*, %struct.g_mountver_softc** %83, align 8
  %85 = call i32 @g_free(%struct.g_mountver_softc* %84)
  %86 = load %struct.g_geom*, %struct.g_geom** %4, align 8
  %87 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %86, i32 0, i32 0
  store %struct.g_mountver_softc* null, %struct.g_mountver_softc** %87, align 8
  %88 = load %struct.g_geom*, %struct.g_geom** %4, align 8
  %89 = load i32, i32* @ENXIO, align 4
  %90 = call i32 @g_wither_geom(%struct.g_geom* %88, i32 %89)
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %75, %47, %13
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local %struct.g_provider* @LIST_FIRST(i32*) #1

declare dso_local i32 @G_MOUNTVER_DEBUG(i32, i8*, i32, ...) #1

declare dso_local i32 @g_wither_provider(%struct.g_provider*, i32) #1

declare dso_local i32 @g_mountver_discard_queued(%struct.g_geom*) #1

declare dso_local i32 @g_free(%struct.g_mountver_softc*) #1

declare dso_local i32 @g_wither_geom(%struct.g_geom*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
