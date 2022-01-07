; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum.c_gv_orphan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum.c_gv_orphan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_consumer = type { %struct.gv_drive*, %struct.g_geom* }
%struct.gv_drive = type { i32 }
%struct.g_geom = type { i32, %struct.gv_softc* }
%struct.gv_softc = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"gv_orphan: null cp\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"gv_orphan: null gp\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"gv_orphan: null sc\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"gv_orphan: null d\00", align 1
@G_T_TOPOLOGY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"gv_orphan(%s)\00", align 1
@GV_EVENT_DRIVE_LOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_consumer*)* @gv_orphan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gv_orphan(%struct.g_consumer* %0) #0 {
  %2 = alloca %struct.g_consumer*, align 8
  %3 = alloca %struct.g_geom*, align 8
  %4 = alloca %struct.gv_softc*, align 8
  %5 = alloca %struct.gv_drive*, align 8
  store %struct.g_consumer* %0, %struct.g_consumer** %2, align 8
  %6 = call i32 (...) @g_topology_assert()
  %7 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %8 = icmp ne %struct.g_consumer* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @KASSERT(i32 %9, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %12 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %11, i32 0, i32 1
  %13 = load %struct.g_geom*, %struct.g_geom** %12, align 8
  store %struct.g_geom* %13, %struct.g_geom** %3, align 8
  %14 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %15 = icmp ne %struct.g_geom* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @KASSERT(i32 %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %19 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %18, i32 0, i32 1
  %20 = load %struct.gv_softc*, %struct.gv_softc** %19, align 8
  store %struct.gv_softc* %20, %struct.gv_softc** %4, align 8
  %21 = load %struct.gv_softc*, %struct.gv_softc** %4, align 8
  %22 = icmp ne %struct.gv_softc* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @KASSERT(i32 %23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %25 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %26 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %25, i32 0, i32 0
  %27 = load %struct.gv_drive*, %struct.gv_drive** %26, align 8
  store %struct.gv_drive* %27, %struct.gv_drive** %5, align 8
  %28 = load %struct.gv_drive*, %struct.gv_drive** %5, align 8
  %29 = icmp ne %struct.gv_drive* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @KASSERT(i32 %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %32 = load i32, i32* @G_T_TOPOLOGY, align 4
  %33 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %34 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @g_trace(i32 %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %35)
  %37 = load %struct.gv_softc*, %struct.gv_softc** %4, align 8
  %38 = load i32, i32* @GV_EVENT_DRIVE_LOST, align 4
  %39 = load %struct.gv_drive*, %struct.gv_drive** %5, align 8
  %40 = call i32 @gv_post_event(%struct.gv_softc* %37, i32 %38, %struct.gv_drive* %39, i32* null, i32 0, i32 0)
  ret void
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @g_trace(i32, i8*, i32) #1

declare dso_local i32 @gv_post_event(%struct.gv_softc*, i32, %struct.gv_drive*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
