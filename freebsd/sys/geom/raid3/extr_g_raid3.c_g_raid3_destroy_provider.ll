; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_destroy_provider.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_destroy_provider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid3_softc = type { i32*, %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.bio = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"NULL provider (device=%s).\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Device %s: provider %s destroyed.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_raid3_softc*)* @g_raid3_destroy_provider to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_raid3_destroy_provider(%struct.g_raid3_softc* %0) #0 {
  %2 = alloca %struct.g_raid3_softc*, align 8
  %3 = alloca %struct.bio*, align 8
  store %struct.g_raid3_softc* %0, %struct.g_raid3_softc** %2, align 8
  %4 = call i32 (...) @g_topology_assert_not()
  %5 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %2, align 8
  %6 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %5, i32 0, i32 1
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = icmp ne %struct.TYPE_3__* %7, null
  %9 = zext i1 %8 to i32
  %10 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %2, align 8
  %11 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to i8*
  %15 = call i32 @KASSERT(i32 %9, i8* %14)
  %16 = call i32 (...) @g_topology_lock()
  %17 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %2, align 8
  %18 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = load i32, i32* @ENXIO, align 4
  %21 = call i32 @g_error_provider(%struct.TYPE_3__* %19, i32 %20)
  %22 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %2, align 8
  %23 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %22, i32 0, i32 3
  %24 = call i32 @mtx_lock(i32* %23)
  br label %25

25:                                               ; preds = %30, %1
  %26 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %2, align 8
  %27 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %26, i32 0, i32 4
  %28 = call %struct.bio* @bioq_first(i32* %27)
  store %struct.bio* %28, %struct.bio** %3, align 8
  %29 = icmp ne %struct.bio* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %2, align 8
  %32 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %31, i32 0, i32 4
  %33 = load %struct.bio*, %struct.bio** %3, align 8
  %34 = call i32 @bioq_remove(i32* %32, %struct.bio* %33)
  %35 = load %struct.bio*, %struct.bio** %3, align 8
  %36 = load i32, i32* @ENXIO, align 4
  %37 = call i32 @g_io_deliver(%struct.bio* %35, i32 %36)
  br label %25

38:                                               ; preds = %25
  %39 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %2, align 8
  %40 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %39, i32 0, i32 3
  %41 = call i32 @mtx_unlock(i32* %40)
  %42 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %2, align 8
  %43 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %2, align 8
  %46 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @G_RAID3_DEBUG(i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %49)
  %51 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %2, align 8
  %52 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load i32, i32* @ENXIO, align 4
  %55 = call i32 @g_wither_provider(%struct.TYPE_3__* %53, i32 %54)
  %56 = call i32 (...) @g_topology_unlock()
  %57 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %2, align 8
  %58 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %57, i32 0, i32 1
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %58, align 8
  %59 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %2, align 8
  %60 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %38
  %64 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %2, align 8
  %65 = call i32 @g_raid3_sync_stop(%struct.g_raid3_softc* %64, i32 1)
  br label %66

66:                                               ; preds = %63, %38
  ret void
}

declare dso_local i32 @g_topology_assert_not(...) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @g_topology_lock(...) #1

declare dso_local i32 @g_error_provider(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.bio* @bioq_first(i32*) #1

declare dso_local i32 @bioq_remove(i32*, %struct.bio*) #1

declare dso_local i32 @g_io_deliver(%struct.bio*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @G_RAID3_DEBUG(i32, i8*, i32, i32) #1

declare dso_local i32 @g_wither_provider(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @g_topology_unlock(...) #1

declare dso_local i32 @g_raid3_sync_stop(%struct.g_raid3_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
