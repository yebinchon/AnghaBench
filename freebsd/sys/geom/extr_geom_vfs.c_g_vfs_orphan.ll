; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_vfs.c_g_vfs_orphan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_vfs.c_g_vfs_orphan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_consumer = type { %struct.g_geom* }
%struct.g_geom = type { %struct.g_vfs_softc*, i32 }
%struct.g_vfs_softc = type { i32, i64, i32 }

@G_T_TOPOLOGY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"g_vfs_orphan(%p(%s))\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_consumer*)* @g_vfs_orphan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_vfs_orphan(%struct.g_consumer* %0) #0 {
  %2 = alloca %struct.g_consumer*, align 8
  %3 = alloca %struct.g_geom*, align 8
  %4 = alloca %struct.g_vfs_softc*, align 8
  %5 = alloca i32, align 4
  store %struct.g_consumer* %0, %struct.g_consumer** %2, align 8
  %6 = call i32 (...) @g_topology_assert()
  %7 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %8 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %7, i32 0, i32 0
  %9 = load %struct.g_geom*, %struct.g_geom** %8, align 8
  store %struct.g_geom* %9, %struct.g_geom** %3, align 8
  %10 = load i32, i32* @G_T_TOPOLOGY, align 4
  %11 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %12 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %13 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @g_trace(i32 %10, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.g_consumer* %11, i32 %14)
  %16 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %17 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %16, i32 0, i32 0
  %18 = load %struct.g_vfs_softc*, %struct.g_vfs_softc** %17, align 8
  store %struct.g_vfs_softc* %18, %struct.g_vfs_softc** %4, align 8
  %19 = load %struct.g_vfs_softc*, %struct.g_vfs_softc** %4, align 8
  %20 = icmp eq %struct.g_vfs_softc* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %41

22:                                               ; preds = %1
  %23 = load %struct.g_vfs_softc*, %struct.g_vfs_softc** %4, align 8
  %24 = getelementptr inbounds %struct.g_vfs_softc, %struct.g_vfs_softc* %23, i32 0, i32 2
  %25 = call i32 @mtx_lock(i32* %24)
  %26 = load %struct.g_vfs_softc*, %struct.g_vfs_softc** %4, align 8
  %27 = getelementptr inbounds %struct.g_vfs_softc, %struct.g_vfs_softc* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load %struct.g_vfs_softc*, %struct.g_vfs_softc** %4, align 8
  %29 = getelementptr inbounds %struct.g_vfs_softc, %struct.g_vfs_softc* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %5, align 4
  %33 = load %struct.g_vfs_softc*, %struct.g_vfs_softc** %4, align 8
  %34 = getelementptr inbounds %struct.g_vfs_softc, %struct.g_vfs_softc* %33, i32 0, i32 2
  %35 = call i32 @mtx_unlock(i32* %34)
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %22
  %39 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %40 = call i32 @g_vfs_destroy(%struct.g_consumer* %39, i32 0)
  br label %41

41:                                               ; preds = %21, %38, %22
  ret void
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i32 @g_trace(i32, i8*, %struct.g_consumer*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @g_vfs_destroy(%struct.g_consumer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
