; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/multipath/extr_g_multipath.c_g_multipath_orphan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/multipath/extr_g_multipath.c_g_multipath_orphan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_consumer = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i8*, %struct.g_multipath_softc* }
%struct.g_multipath_softc = type { i32, i32 }
%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [43 x i8] c"GEOM_MULTIPATH: %s in %s was disconnected\0A\00", align 1
@MP_LOST = common dso_local global i32 0, align 4
@MP_POSTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_consumer*)* @g_multipath_orphan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_multipath_orphan(%struct.g_consumer* %0) #0 {
  %2 = alloca %struct.g_consumer*, align 8
  %3 = alloca %struct.g_multipath_softc*, align 8
  %4 = alloca i64*, align 8
  store %struct.g_consumer* %0, %struct.g_consumer** %2, align 8
  %5 = call i32 (...) @g_topology_assert()
  %6 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %7 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %6, i32 0, i32 3
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %12 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %11, i32 0, i32 2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %10, i8* %15)
  %17 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %18 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %17, i32 0, i32 2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load %struct.g_multipath_softc*, %struct.g_multipath_softc** %20, align 8
  store %struct.g_multipath_softc* %21, %struct.g_multipath_softc** %3, align 8
  %22 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %23 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %22, i32 0, i32 1
  %24 = bitcast i32* %23 to i64*
  store i64* %24, i64** %4, align 8
  %25 = load %struct.g_multipath_softc*, %struct.g_multipath_softc** %3, align 8
  %26 = getelementptr inbounds %struct.g_multipath_softc, %struct.g_multipath_softc* %25, i32 0, i32 0
  %27 = call i32 @mtx_lock(i32* %26)
  %28 = load %struct.g_multipath_softc*, %struct.g_multipath_softc** %3, align 8
  %29 = getelementptr inbounds %struct.g_multipath_softc, %struct.g_multipath_softc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %29, align 4
  %32 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %33 = load i32, i32* @MP_LOST, align 4
  %34 = call i32 @g_multipath_fault(%struct.g_consumer* %32, i32 %33)
  %35 = load i64*, i64** %4, align 8
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %1
  %39 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %40 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @MP_POSTED, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %38
  %46 = load i32, i32* @MP_POSTED, align 4
  %47 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %48 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  %51 = load %struct.g_multipath_softc*, %struct.g_multipath_softc** %3, align 8
  %52 = getelementptr inbounds %struct.g_multipath_softc, %struct.g_multipath_softc* %51, i32 0, i32 0
  %53 = call i32 @mtx_unlock(i32* %52)
  %54 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %55 = call i32 @g_mpd(%struct.g_consumer* %54, i32 0)
  br label %60

56:                                               ; preds = %38, %1
  %57 = load %struct.g_multipath_softc*, %struct.g_multipath_softc** %3, align 8
  %58 = getelementptr inbounds %struct.g_multipath_softc, %struct.g_multipath_softc* %57, i32 0, i32 0
  %59 = call i32 @mtx_unlock(i32* %58)
  br label %60

60:                                               ; preds = %56, %45
  ret void
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @g_multipath_fault(%struct.g_consumer*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @g_mpd(%struct.g_consumer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
