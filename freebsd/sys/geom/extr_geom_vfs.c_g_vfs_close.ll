; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_vfs.c_g_vfs_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_vfs.c_g_vfs_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_consumer = type { i32*, i32, %struct.g_geom* }
%struct.g_geom = type { %struct.g_vfs_softc* }
%struct.g_vfs_softc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@V_SAVE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @g_vfs_close(%struct.g_consumer* %0) #0 {
  %2 = alloca %struct.g_consumer*, align 8
  %3 = alloca %struct.g_geom*, align 8
  %4 = alloca %struct.g_vfs_softc*, align 8
  store %struct.g_consumer* %0, %struct.g_consumer** %2, align 8
  %5 = call i32 (...) @g_topology_assert()
  %6 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %7 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %6, i32 0, i32 2
  %8 = load %struct.g_geom*, %struct.g_geom** %7, align 8
  store %struct.g_geom* %8, %struct.g_geom** %3, align 8
  %9 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %10 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %9, i32 0, i32 0
  %11 = load %struct.g_vfs_softc*, %struct.g_vfs_softc** %10, align 8
  store %struct.g_vfs_softc* %11, %struct.g_vfs_softc** %4, align 8
  %12 = load %struct.g_vfs_softc*, %struct.g_vfs_softc** %4, align 8
  %13 = getelementptr inbounds %struct.g_vfs_softc, %struct.g_vfs_softc* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i32, i32* @V_SAVE, align 4
  %16 = call i32 @bufobj_invalbuf(%struct.TYPE_2__* %14, i32 %15, i32 0, i32 0)
  %17 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %18 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.g_vfs_softc*, %struct.g_vfs_softc** %4, align 8
  %21 = getelementptr inbounds %struct.g_vfs_softc, %struct.g_vfs_softc* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %19, i32* %23, align 4
  %24 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %25 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %24, i32 0, i32 0
  store %struct.g_vfs_softc* null, %struct.g_vfs_softc** %25, align 8
  %26 = load %struct.g_vfs_softc*, %struct.g_vfs_softc** %4, align 8
  %27 = getelementptr inbounds %struct.g_vfs_softc, %struct.g_vfs_softc* %26, i32 0, i32 1
  %28 = call i32 @mtx_destroy(i32* %27)
  %29 = load %struct.g_vfs_softc*, %struct.g_vfs_softc** %4, align 8
  %30 = getelementptr inbounds %struct.g_vfs_softc, %struct.g_vfs_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %1
  %34 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %35 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %33, %1
  %39 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %40 = load i32, i32* @ENXIO, align 4
  %41 = call i32 @g_wither_geom_close(%struct.g_geom* %39, i32 %40)
  br label %42

42:                                               ; preds = %38, %33
  %43 = load %struct.g_vfs_softc*, %struct.g_vfs_softc** %4, align 8
  %44 = call i32 @g_free(%struct.g_vfs_softc* %43)
  ret void
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i32 @bufobj_invalbuf(%struct.TYPE_2__*, i32, i32, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @g_wither_geom_close(%struct.g_geom*, i32) #1

declare dso_local i32 @g_free(%struct.g_vfs_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
