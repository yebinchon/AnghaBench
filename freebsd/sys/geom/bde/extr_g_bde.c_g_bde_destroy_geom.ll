; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/bde/extr_g_bde.c_g_bde_destroy_geom.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/bde/extr_g_bde.c_g_bde_destroy_geom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }
%struct.g_class = type { i32 }
%struct.g_geom = type { i32, %struct.g_bde_softc*, i32, i32 }
%struct.g_bde_softc = type { i32, i32, i32 }
%struct.g_consumer = type { i32 }
%struct.g_provider = type { i64, i64, i64, i32 }

@G_T_TOPOLOGY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"g_bde_destroy_geom(%s, %s)\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"NULL geom\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"NULL provider\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"NULL consumer\00", align 1
@PRIBIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"g_bdedie\00", align 1
@hz = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gctl_req*, %struct.g_class*, %struct.g_geom*)* @g_bde_destroy_geom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_bde_destroy_geom(%struct.gctl_req* %0, %struct.g_class* %1, %struct.g_geom* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gctl_req*, align 8
  %6 = alloca %struct.g_class*, align 8
  %7 = alloca %struct.g_geom*, align 8
  %8 = alloca %struct.g_consumer*, align 8
  %9 = alloca %struct.g_provider*, align 8
  %10 = alloca %struct.g_bde_softc*, align 8
  store %struct.gctl_req* %0, %struct.gctl_req** %5, align 8
  store %struct.g_class* %1, %struct.g_class** %6, align 8
  store %struct.g_geom* %2, %struct.g_geom** %7, align 8
  %11 = load i32, i32* @G_T_TOPOLOGY, align 4
  %12 = load %struct.g_class*, %struct.g_class** %6, align 8
  %13 = getelementptr inbounds %struct.g_class, %struct.g_class* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.g_geom*, %struct.g_geom** %7, align 8
  %16 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @g_trace(i32 %11, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17)
  %19 = call i32 (...) @g_topology_assert()
  %20 = load %struct.g_geom*, %struct.g_geom** %7, align 8
  %21 = icmp ne %struct.g_geom* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @KASSERT(i32 %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.g_geom*, %struct.g_geom** %7, align 8
  %25 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %24, i32 0, i32 2
  %26 = call i8* @LIST_FIRST(i32* %25)
  %27 = bitcast i8* %26 to %struct.g_provider*
  store %struct.g_provider* %27, %struct.g_provider** %9, align 8
  %28 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %29 = icmp ne %struct.g_provider* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @KASSERT(i32 %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %32 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %33 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %3
  %37 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %38 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %43 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41, %36, %3
  %47 = load i32, i32* @EBUSY, align 4
  store i32 %47, i32* %4, align 4
  br label %100

48:                                               ; preds = %41
  %49 = load %struct.g_geom*, %struct.g_geom** %7, align 8
  %50 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %49, i32 0, i32 1
  %51 = load %struct.g_bde_softc*, %struct.g_bde_softc** %50, align 8
  store %struct.g_bde_softc* %51, %struct.g_bde_softc** %10, align 8
  %52 = load %struct.g_geom*, %struct.g_geom** %7, align 8
  %53 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %52, i32 0, i32 0
  %54 = call i8* @LIST_FIRST(i32* %53)
  %55 = bitcast i8* %54 to %struct.g_consumer*
  store %struct.g_consumer* %55, %struct.g_consumer** %8, align 8
  %56 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  %57 = icmp ne %struct.g_consumer* %56, null
  %58 = zext i1 %57 to i32
  %59 = call i32 @KASSERT(i32 %58, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %60 = load %struct.g_bde_softc*, %struct.g_bde_softc** %10, align 8
  %61 = getelementptr inbounds %struct.g_bde_softc, %struct.g_bde_softc* %60, i32 0, i32 0
  store i32 1, i32* %61, align 4
  %62 = load %struct.g_bde_softc*, %struct.g_bde_softc** %10, align 8
  %63 = call i32 @wakeup(%struct.g_bde_softc* %62)
  %64 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  %65 = call i32 @g_access(%struct.g_consumer* %64, i32 -1, i32 -1, i32 -1)
  %66 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  %67 = call i32 @g_detach(%struct.g_consumer* %66)
  %68 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  %69 = call i32 @g_destroy_consumer(%struct.g_consumer* %68)
  br label %70

70:                                               ; preds = %83, %48
  %71 = load %struct.g_bde_softc*, %struct.g_bde_softc** %10, align 8
  %72 = getelementptr inbounds %struct.g_bde_softc, %struct.g_bde_softc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 2
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %77 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %76, i32 0, i32 3
  %78 = call i32 @LIST_EMPTY(i32* %77)
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  br label %81

81:                                               ; preds = %75, %70
  %82 = phi i1 [ false, %70 ], [ %80, %75 ]
  br i1 %82, label %83, label %88

83:                                               ; preds = %81
  %84 = load %struct.g_bde_softc*, %struct.g_bde_softc** %10, align 8
  %85 = load i32, i32* @PRIBIO, align 4
  %86 = load i32, i32* @hz, align 4
  %87 = call i32 @tsleep(%struct.g_bde_softc* %84, i32 %85, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %86)
  br label %70

88:                                               ; preds = %81
  %89 = load %struct.g_bde_softc*, %struct.g_bde_softc** %10, align 8
  %90 = getelementptr inbounds %struct.g_bde_softc, %struct.g_bde_softc* %89, i32 0, i32 2
  %91 = call i32 @mtx_destroy(i32* %90)
  %92 = load %struct.g_bde_softc*, %struct.g_bde_softc** %10, align 8
  %93 = getelementptr inbounds %struct.g_bde_softc, %struct.g_bde_softc* %92, i32 0, i32 1
  %94 = call i32 @bzero(i32* %93, i32 4)
  %95 = load %struct.g_bde_softc*, %struct.g_bde_softc** %10, align 8
  %96 = call i32 @g_free(%struct.g_bde_softc* %95)
  %97 = load %struct.g_geom*, %struct.g_geom** %7, align 8
  %98 = load i32, i32* @ENXIO, align 4
  %99 = call i32 @g_wither_geom(%struct.g_geom* %97, i32 %98)
  store i32 0, i32* %4, align 4
  br label %100

100:                                              ; preds = %88, %46
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @g_trace(i32, i8*, i32, i32) #1

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i8* @LIST_FIRST(i32*) #1

declare dso_local i32 @wakeup(%struct.g_bde_softc*) #1

declare dso_local i32 @g_access(%struct.g_consumer*, i32, i32, i32) #1

declare dso_local i32 @g_detach(%struct.g_consumer*) #1

declare dso_local i32 @g_destroy_consumer(%struct.g_consumer*) #1

declare dso_local i32 @LIST_EMPTY(i32*) #1

declare dso_local i32 @tsleep(%struct.g_bde_softc*, i32, i8*, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @g_free(%struct.g_bde_softc*) #1

declare dso_local i32 @g_wither_geom(%struct.g_geom*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
