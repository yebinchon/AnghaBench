; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/eli/extr_g_eli.c_g_eli_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/eli/extr_g_eli.c_g_eli_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_eli_softc = type { i32, i32, i32, %struct.g_geom* }
%struct.g_geom = type { i32, i32*, i32, i32 }
%struct.g_provider = type { i64, i64, i64, i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Device %s is still open, so it cannot be definitely removed.\00", align 1
@G_ELI_FLAG_RW_DETACH = common dso_local global i32 0, align 4
@g_eli_access = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Device %s is still open (r%dw%de%d).\00", align 1
@G_ELI_FLAG_DESTROY = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"geli:destroy\00", align 1
@M_ELI = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Device %s destroyed.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @g_eli_destroy(%struct.g_eli_softc* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.g_eli_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.g_geom*, align 8
  %7 = alloca %struct.g_provider*, align 8
  store %struct.g_eli_softc* %0, %struct.g_eli_softc** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = call i32 (...) @g_topology_assert()
  %9 = load %struct.g_eli_softc*, %struct.g_eli_softc** %4, align 8
  %10 = icmp eq %struct.g_eli_softc* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @ENXIO, align 4
  store i32 %12, i32* %3, align 4
  br label %135

13:                                               ; preds = %2
  %14 = load %struct.g_eli_softc*, %struct.g_eli_softc** %4, align 8
  %15 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %14, i32 0, i32 3
  %16 = load %struct.g_geom*, %struct.g_geom** %15, align 8
  store %struct.g_geom* %16, %struct.g_geom** %6, align 8
  %17 = load %struct.g_geom*, %struct.g_geom** %6, align 8
  %18 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %17, i32 0, i32 3
  %19 = call %struct.g_provider* @LIST_FIRST(i32* %18)
  store %struct.g_provider* %19, %struct.g_provider** %7, align 8
  %20 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %21 = icmp ne %struct.g_provider* %20, null
  br i1 %21, label %22, label %72

22:                                               ; preds = %13
  %23 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %24 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %22
  %28 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %29 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %34 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %72

37:                                               ; preds = %32, %27, %22
  %38 = load i64, i64* %5, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %37
  %41 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %42 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32 (i32, i8*, i32, ...) @G_ELI_DEBUG(i32 1, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @G_ELI_FLAG_RW_DETACH, align 4
  %46 = load %struct.g_eli_softc*, %struct.g_eli_softc** %4, align 8
  %47 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load i32, i32* @g_eli_access, align 4
  %51 = load %struct.g_geom*, %struct.g_geom** %6, align 8
  %52 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %54 = load i32, i32* @ENXIO, align 4
  %55 = call i32 @g_wither_provider(%struct.g_provider* %53, i32 %54)
  %56 = load i32, i32* @EBUSY, align 4
  store i32 %56, i32* %3, align 4
  br label %135

57:                                               ; preds = %37
  %58 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %59 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %62 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %65 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %68 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = call i32 (i32, i8*, i32, ...) @G_ELI_DEBUG(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %60, i64 %63, i64 %66, i64 %69)
  %71 = load i32, i32* @EBUSY, align 4
  store i32 %71, i32* %3, align 4
  br label %135

72:                                               ; preds = %32, %13
  %73 = load %struct.g_eli_softc*, %struct.g_eli_softc** %4, align 8
  %74 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %73, i32 0, i32 0
  %75 = call i32 @mtx_lock(i32* %74)
  %76 = load i32, i32* @G_ELI_FLAG_DESTROY, align 4
  %77 = load %struct.g_eli_softc*, %struct.g_eli_softc** %4, align 8
  %78 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  %81 = load %struct.g_eli_softc*, %struct.g_eli_softc** %4, align 8
  %82 = call i32 @wakeup(%struct.g_eli_softc* %81)
  br label %83

83:                                               ; preds = %89, %72
  %84 = load %struct.g_eli_softc*, %struct.g_eli_softc** %4, align 8
  %85 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %84, i32 0, i32 1
  %86 = call i32 @LIST_EMPTY(i32* %85)
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  br i1 %88, label %89, label %96

89:                                               ; preds = %83
  %90 = load %struct.g_eli_softc*, %struct.g_eli_softc** %4, align 8
  %91 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %90, i32 0, i32 1
  %92 = load %struct.g_eli_softc*, %struct.g_eli_softc** %4, align 8
  %93 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %92, i32 0, i32 0
  %94 = load i32, i32* @PRIBIO, align 4
  %95 = call i32 @msleep(i32* %91, i32* %93, i32 %94, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 0)
  br label %83

96:                                               ; preds = %83
  %97 = load %struct.g_eli_softc*, %struct.g_eli_softc** %4, align 8
  %98 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %97, i32 0, i32 0
  %99 = call i32 @mtx_destroy(i32* %98)
  %100 = load %struct.g_geom*, %struct.g_geom** %6, align 8
  %101 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %100, i32 0, i32 1
  store i32* null, i32** %101, align 8
  %102 = load %struct.g_eli_softc*, %struct.g_eli_softc** %4, align 8
  %103 = call i32 @g_eli_key_destroy(%struct.g_eli_softc* %102)
  %104 = load %struct.g_eli_softc*, %struct.g_eli_softc** %4, align 8
  %105 = call i32 @bzero(%struct.g_eli_softc* %104, i32 24)
  %106 = load %struct.g_eli_softc*, %struct.g_eli_softc** %4, align 8
  %107 = load i32, i32* @M_ELI, align 4
  %108 = call i32 @free(%struct.g_eli_softc* %106, i32 %107)
  %109 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %110 = icmp eq %struct.g_provider* %109, null
  br i1 %110, label %126, label %111

111:                                              ; preds = %96
  %112 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %113 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %131

116:                                              ; preds = %111
  %117 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %118 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %131

121:                                              ; preds = %116
  %122 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %123 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %121, %96
  %127 = load %struct.g_geom*, %struct.g_geom** %6, align 8
  %128 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 (i32, i8*, i32, ...) @G_ELI_DEBUG(i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %129)
  br label %131

131:                                              ; preds = %126, %121, %116, %111
  %132 = load %struct.g_geom*, %struct.g_geom** %6, align 8
  %133 = load i32, i32* @ENXIO, align 4
  %134 = call i32 @g_wither_geom_close(%struct.g_geom* %132, i32 %133)
  store i32 0, i32* %3, align 4
  br label %135

135:                                              ; preds = %131, %57, %40, %11
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local %struct.g_provider* @LIST_FIRST(i32*) #1

declare dso_local i32 @G_ELI_DEBUG(i32, i8*, i32, ...) #1

declare dso_local i32 @g_wither_provider(%struct.g_provider*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @wakeup(%struct.g_eli_softc*) #1

declare dso_local i32 @LIST_EMPTY(i32*) #1

declare dso_local i32 @msleep(i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @g_eli_key_destroy(%struct.g_eli_softc*) #1

declare dso_local i32 @bzero(%struct.g_eli_softc*, i32) #1

declare dso_local i32 @free(%struct.g_eli_softc*, i32) #1

declare dso_local i32 @g_wither_geom_close(%struct.g_geom*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
