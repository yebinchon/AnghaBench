; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx_osm.c_ahc_platform_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx_osm.c_ahc_platform_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { %struct.ahc_platform_data*, i32 }
%struct.ahc_platform_data = type { i32*, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32 }

@AC_LOST_DEVICE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@shutdown_final = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ahc_platform_free(%struct.ahc_softc* %0) #0 {
  %2 = alloca %struct.ahc_softc*, align 8
  %3 = alloca %struct.ahc_platform_data*, align 8
  store %struct.ahc_softc* %0, %struct.ahc_softc** %2, align 8
  %4 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %5 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %4, i32 0, i32 0
  %6 = load %struct.ahc_platform_data*, %struct.ahc_platform_data** %5, align 8
  store %struct.ahc_platform_data* %6, %struct.ahc_platform_data** %3, align 8
  %7 = load %struct.ahc_platform_data*, %struct.ahc_platform_data** %3, align 8
  %8 = icmp ne %struct.ahc_platform_data* %7, null
  br i1 %8, label %9, label %111

9:                                                ; preds = %1
  %10 = load %struct.ahc_platform_data*, %struct.ahc_platform_data** %3, align 8
  %11 = getelementptr inbounds %struct.ahc_platform_data, %struct.ahc_platform_data* %10, i32 0, i32 7
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %28

14:                                               ; preds = %9
  %15 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %16 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.ahc_platform_data*, %struct.ahc_platform_data** %3, align 8
  %19 = getelementptr inbounds %struct.ahc_platform_data, %struct.ahc_platform_data* %18, i32 0, i32 9
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ahc_platform_data*, %struct.ahc_platform_data** %3, align 8
  %22 = getelementptr inbounds %struct.ahc_platform_data, %struct.ahc_platform_data* %21, i32 0, i32 8
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.ahc_platform_data*, %struct.ahc_platform_data** %3, align 8
  %25 = getelementptr inbounds %struct.ahc_platform_data, %struct.ahc_platform_data* %24, i32 0, i32 7
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @bus_release_resource(i32 %17, i32 %20, i32 %23, i32* %26)
  br label %28

28:                                               ; preds = %14, %9
  %29 = load %struct.ahc_platform_data*, %struct.ahc_platform_data** %3, align 8
  %30 = getelementptr inbounds %struct.ahc_platform_data, %struct.ahc_platform_data* %29, i32 0, i32 5
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %44

33:                                               ; preds = %28
  %34 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %35 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.ahc_platform_data*, %struct.ahc_platform_data** %3, align 8
  %38 = getelementptr inbounds %struct.ahc_platform_data, %struct.ahc_platform_data* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.ahc_platform_data*, %struct.ahc_platform_data** %3, align 8
  %41 = getelementptr inbounds %struct.ahc_platform_data, %struct.ahc_platform_data* %40, i32 0, i32 5
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @bus_release_resource(i32 %36, i32 %39, i32 0, i32* %42)
  br label %44

44:                                               ; preds = %33, %28
  %45 = load %struct.ahc_platform_data*, %struct.ahc_platform_data** %3, align 8
  %46 = getelementptr inbounds %struct.ahc_platform_data, %struct.ahc_platform_data* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %69

49:                                               ; preds = %44
  %50 = load i32, i32* @AC_LOST_DEVICE, align 4
  %51 = load %struct.ahc_platform_data*, %struct.ahc_platform_data** %3, align 8
  %52 = getelementptr inbounds %struct.ahc_platform_data, %struct.ahc_platform_data* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @xpt_async(i32 %50, i32 %53, i32* null)
  %55 = load %struct.ahc_platform_data*, %struct.ahc_platform_data** %3, align 8
  %56 = getelementptr inbounds %struct.ahc_platform_data, %struct.ahc_platform_data* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @xpt_free_path(i32 %57)
  %59 = load %struct.ahc_platform_data*, %struct.ahc_platform_data** %3, align 8
  %60 = getelementptr inbounds %struct.ahc_platform_data, %struct.ahc_platform_data* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @cam_sim_path(i32* %61)
  %63 = call i32 @xpt_bus_deregister(i32 %62)
  %64 = load %struct.ahc_platform_data*, %struct.ahc_platform_data** %3, align 8
  %65 = getelementptr inbounds %struct.ahc_platform_data, %struct.ahc_platform_data* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* @TRUE, align 4
  %68 = call i32 @cam_sim_free(i32* %66, i32 %67)
  br label %69

69:                                               ; preds = %49, %44
  %70 = load %struct.ahc_platform_data*, %struct.ahc_platform_data** %3, align 8
  %71 = getelementptr inbounds %struct.ahc_platform_data, %struct.ahc_platform_data* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %94

74:                                               ; preds = %69
  %75 = load i32, i32* @AC_LOST_DEVICE, align 4
  %76 = load %struct.ahc_platform_data*, %struct.ahc_platform_data** %3, align 8
  %77 = getelementptr inbounds %struct.ahc_platform_data, %struct.ahc_platform_data* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @xpt_async(i32 %75, i32 %78, i32* null)
  %80 = load %struct.ahc_platform_data*, %struct.ahc_platform_data** %3, align 8
  %81 = getelementptr inbounds %struct.ahc_platform_data, %struct.ahc_platform_data* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @xpt_free_path(i32 %82)
  %84 = load %struct.ahc_platform_data*, %struct.ahc_platform_data** %3, align 8
  %85 = getelementptr inbounds %struct.ahc_platform_data, %struct.ahc_platform_data* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @cam_sim_path(i32* %86)
  %88 = call i32 @xpt_bus_deregister(i32 %87)
  %89 = load %struct.ahc_platform_data*, %struct.ahc_platform_data** %3, align 8
  %90 = getelementptr inbounds %struct.ahc_platform_data, %struct.ahc_platform_data* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* @TRUE, align 4
  %93 = call i32 @cam_sim_free(i32* %91, i32 %92)
  br label %94

94:                                               ; preds = %74, %69
  %95 = load %struct.ahc_platform_data*, %struct.ahc_platform_data** %3, align 8
  %96 = getelementptr inbounds %struct.ahc_platform_data, %struct.ahc_platform_data* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %105

99:                                               ; preds = %94
  %100 = load i32, i32* @shutdown_final, align 4
  %101 = load %struct.ahc_platform_data*, %struct.ahc_platform_data** %3, align 8
  %102 = getelementptr inbounds %struct.ahc_platform_data, %struct.ahc_platform_data* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 @EVENTHANDLER_DEREGISTER(i32 %100, i32* %103)
  br label %105

105:                                              ; preds = %99, %94
  %106 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %107 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %106, i32 0, i32 0
  %108 = load %struct.ahc_platform_data*, %struct.ahc_platform_data** %107, align 8
  %109 = load i32, i32* @M_DEVBUF, align 4
  %110 = call i32 @free(%struct.ahc_platform_data* %108, i32 %109)
  br label %111

111:                                              ; preds = %105, %1
  ret void
}

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @xpt_async(i32, i32, i32*) #1

declare dso_local i32 @xpt_free_path(i32) #1

declare dso_local i32 @xpt_bus_deregister(i32) #1

declare dso_local i32 @cam_sim_path(i32*) #1

declare dso_local i32 @cam_sim_free(i32*, i32) #1

declare dso_local i32 @EVENTHANDLER_DEREGISTER(i32, i32*) #1

declare dso_local i32 @free(%struct.ahc_platform_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
