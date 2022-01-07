; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum.c_gv_unload.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum.c_gv_unload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }
%struct.g_class = type { i32 }
%struct.g_geom = type { %struct.gv_softc* }
%struct.gv_softc = type { i32 }

@G_T_TOPOLOGY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"gv_unload(%p)\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gctl_req*, %struct.g_class*, %struct.g_geom*)* @gv_unload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gv_unload(%struct.gctl_req* %0, %struct.g_class* %1, %struct.g_geom* %2) #0 {
  %4 = alloca %struct.gctl_req*, align 8
  %5 = alloca %struct.g_class*, align 8
  %6 = alloca %struct.g_geom*, align 8
  %7 = alloca %struct.gv_softc*, align 8
  store %struct.gctl_req* %0, %struct.gctl_req** %4, align 8
  store %struct.g_class* %1, %struct.g_class** %5, align 8
  store %struct.g_geom* %2, %struct.g_geom** %6, align 8
  %8 = load i32, i32* @G_T_TOPOLOGY, align 4
  %9 = load %struct.g_class*, %struct.g_class** %5, align 8
  %10 = call i32 @g_trace(i32 %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.g_class* %9)
  %11 = call i32 (...) @g_topology_assert()
  %12 = load %struct.g_geom*, %struct.g_geom** %6, align 8
  %13 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %12, i32 0, i32 0
  %14 = load %struct.gv_softc*, %struct.gv_softc** %13, align 8
  store %struct.gv_softc* %14, %struct.gv_softc** %7, align 8
  %15 = load %struct.gv_softc*, %struct.gv_softc** %7, align 8
  %16 = icmp ne %struct.gv_softc* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %3
  %18 = load %struct.gv_softc*, %struct.gv_softc** %7, align 8
  %19 = call i32 @gv_worker_exit(%struct.gv_softc* %18)
  %20 = load %struct.g_geom*, %struct.g_geom** %6, align 8
  %21 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %20, i32 0, i32 0
  store %struct.gv_softc* null, %struct.gv_softc** %21, align 8
  %22 = load %struct.g_geom*, %struct.g_geom** %6, align 8
  %23 = load i32, i32* @ENXIO, align 4
  %24 = call i32 @g_wither_geom(%struct.g_geom* %22, i32 %23)
  br label %25

25:                                               ; preds = %17, %3
  ret i32 0
}

declare dso_local i32 @g_trace(i32, i8*, %struct.g_class*) #1

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i32 @gv_worker_exit(%struct.gv_softc*) #1

declare dso_local i32 @g_wither_geom(%struct.g_geom*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
