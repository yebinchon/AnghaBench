; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx_osm.c_ahd_platform_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx_osm.c_ahd_platform_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { %struct.ahd_platform_data*, i32 }
%struct.ahd_platform_data = type { i32*, i32*, i32, i32*, i32, i32**, i32*, i32* }

@AC_LOST_DEVICE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@shutdown_final = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ahd_platform_free(%struct.ahd_softc* %0) #0 {
  %2 = alloca %struct.ahd_softc*, align 8
  %3 = alloca %struct.ahd_platform_data*, align 8
  store %struct.ahd_softc* %0, %struct.ahd_softc** %2, align 8
  %4 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %5 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %4, i32 0, i32 0
  %6 = load %struct.ahd_platform_data*, %struct.ahd_platform_data** %5, align 8
  store %struct.ahd_platform_data* %6, %struct.ahd_platform_data** %3, align 8
  %7 = load %struct.ahd_platform_data*, %struct.ahd_platform_data** %3, align 8
  %8 = icmp ne %struct.ahd_platform_data* %7, null
  br i1 %8, label %9, label %121

9:                                                ; preds = %1
  %10 = load %struct.ahd_platform_data*, %struct.ahd_platform_data** %3, align 8
  %11 = getelementptr inbounds %struct.ahd_platform_data, %struct.ahd_platform_data* %10, i32 0, i32 5
  %12 = load i32**, i32*** %11, align 8
  %13 = getelementptr inbounds i32*, i32** %12, i64 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %36

16:                                               ; preds = %9
  %17 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %18 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.ahd_platform_data*, %struct.ahd_platform_data** %3, align 8
  %21 = getelementptr inbounds %struct.ahd_platform_data, %struct.ahd_platform_data* %20, i32 0, i32 7
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ahd_platform_data*, %struct.ahd_platform_data** %3, align 8
  %26 = getelementptr inbounds %struct.ahd_platform_data, %struct.ahd_platform_data* %25, i32 0, i32 6
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ahd_platform_data*, %struct.ahd_platform_data** %3, align 8
  %31 = getelementptr inbounds %struct.ahd_platform_data, %struct.ahd_platform_data* %30, i32 0, i32 5
  %32 = load i32**, i32*** %31, align 8
  %33 = getelementptr inbounds i32*, i32** %32, i64 0
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @bus_release_resource(i32 %19, i32 %24, i32 %29, i32* %34)
  br label %36

36:                                               ; preds = %16, %9
  %37 = load %struct.ahd_platform_data*, %struct.ahd_platform_data** %3, align 8
  %38 = getelementptr inbounds %struct.ahd_platform_data, %struct.ahd_platform_data* %37, i32 0, i32 5
  %39 = load i32**, i32*** %38, align 8
  %40 = getelementptr inbounds i32*, i32** %39, i64 1
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %63

43:                                               ; preds = %36
  %44 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %45 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.ahd_platform_data*, %struct.ahd_platform_data** %3, align 8
  %48 = getelementptr inbounds %struct.ahd_platform_data, %struct.ahd_platform_data* %47, i32 0, i32 7
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ahd_platform_data*, %struct.ahd_platform_data** %3, align 8
  %53 = getelementptr inbounds %struct.ahd_platform_data, %struct.ahd_platform_data* %52, i32 0, i32 6
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ahd_platform_data*, %struct.ahd_platform_data** %3, align 8
  %58 = getelementptr inbounds %struct.ahd_platform_data, %struct.ahd_platform_data* %57, i32 0, i32 5
  %59 = load i32**, i32*** %58, align 8
  %60 = getelementptr inbounds i32*, i32** %59, i64 1
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @bus_release_resource(i32 %46, i32 %51, i32 %56, i32* %61)
  br label %63

63:                                               ; preds = %43, %36
  %64 = load %struct.ahd_platform_data*, %struct.ahd_platform_data** %3, align 8
  %65 = getelementptr inbounds %struct.ahd_platform_data, %struct.ahd_platform_data* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %79

68:                                               ; preds = %63
  %69 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %70 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.ahd_platform_data*, %struct.ahd_platform_data** %3, align 8
  %73 = getelementptr inbounds %struct.ahd_platform_data, %struct.ahd_platform_data* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.ahd_platform_data*, %struct.ahd_platform_data** %3, align 8
  %76 = getelementptr inbounds %struct.ahd_platform_data, %struct.ahd_platform_data* %75, i32 0, i32 3
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @bus_release_resource(i32 %71, i32 %74, i32 0, i32* %77)
  br label %79

79:                                               ; preds = %68, %63
  %80 = load %struct.ahd_platform_data*, %struct.ahd_platform_data** %3, align 8
  %81 = getelementptr inbounds %struct.ahd_platform_data, %struct.ahd_platform_data* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %104

84:                                               ; preds = %79
  %85 = load i32, i32* @AC_LOST_DEVICE, align 4
  %86 = load %struct.ahd_platform_data*, %struct.ahd_platform_data** %3, align 8
  %87 = getelementptr inbounds %struct.ahd_platform_data, %struct.ahd_platform_data* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @xpt_async(i32 %85, i32 %88, i32* null)
  %90 = load %struct.ahd_platform_data*, %struct.ahd_platform_data** %3, align 8
  %91 = getelementptr inbounds %struct.ahd_platform_data, %struct.ahd_platform_data* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @xpt_free_path(i32 %92)
  %94 = load %struct.ahd_platform_data*, %struct.ahd_platform_data** %3, align 8
  %95 = getelementptr inbounds %struct.ahd_platform_data, %struct.ahd_platform_data* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @cam_sim_path(i32* %96)
  %98 = call i32 @xpt_bus_deregister(i32 %97)
  %99 = load %struct.ahd_platform_data*, %struct.ahd_platform_data** %3, align 8
  %100 = getelementptr inbounds %struct.ahd_platform_data, %struct.ahd_platform_data* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* @TRUE, align 4
  %103 = call i32 @cam_sim_free(i32* %101, i32 %102)
  br label %104

104:                                              ; preds = %84, %79
  %105 = load %struct.ahd_platform_data*, %struct.ahd_platform_data** %3, align 8
  %106 = getelementptr inbounds %struct.ahd_platform_data, %struct.ahd_platform_data* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %115

109:                                              ; preds = %104
  %110 = load i32, i32* @shutdown_final, align 4
  %111 = load %struct.ahd_platform_data*, %struct.ahd_platform_data** %3, align 8
  %112 = getelementptr inbounds %struct.ahd_platform_data, %struct.ahd_platform_data* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @EVENTHANDLER_DEREGISTER(i32 %110, i32* %113)
  br label %115

115:                                              ; preds = %109, %104
  %116 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %117 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %116, i32 0, i32 0
  %118 = load %struct.ahd_platform_data*, %struct.ahd_platform_data** %117, align 8
  %119 = load i32, i32* @M_DEVBUF, align 4
  %120 = call i32 @free(%struct.ahd_platform_data* %118, i32 %119)
  br label %121

121:                                              ; preds = %115, %1
  ret void
}

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @xpt_async(i32, i32, i32*) #1

declare dso_local i32 @xpt_free_path(i32) #1

declare dso_local i32 @xpt_bus_deregister(i32) #1

declare dso_local i32 @cam_sim_path(i32*) #1

declare dso_local i32 @cam_sim_free(i32*, i32) #1

declare dso_local i32 @EVENTHANDLER_DEREGISTER(i32, i32*) #1

declare dso_local i32 @free(%struct.ahd_platform_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
