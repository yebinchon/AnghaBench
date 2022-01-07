; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_sync_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_sync_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid3_softc = type { i64, i32, i32, %struct.g_raid3_disk* }
%struct.g_raid3_disk = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.g_consumer*, i32* }
%struct.g_consumer = type { i32 }

@SX_LOCKED = common dso_local global i32 0, align 4
@G_RAID3_DEVICE_STATE_DEGRADED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"Device not in DEGRADED state (%s, %u).\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"No disk was synchronized (%s).\00", align 1
@G_RAID3_DISK_STATE_SYNCHRONIZING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"Wrong disk state (%s, %s).\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Device %s: rebuilding provider %s finished.\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Device %s: rebuilding provider %s stopped.\00", align 1
@M_RAID3 = common dso_local global i32 0, align 4
@G_RAID3_DISK_FLAG_DIRTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_raid3_softc*, i32)* @g_raid3_sync_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_raid3_sync_stop(%struct.g_raid3_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.g_raid3_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.g_raid3_disk*, align 8
  %6 = alloca %struct.g_consumer*, align 8
  store %struct.g_raid3_softc* %0, %struct.g_raid3_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i32 (...) @g_topology_assert_not()
  %8 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %3, align 8
  %9 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %8, i32 0, i32 1
  %10 = load i32, i32* @SX_LOCKED, align 4
  %11 = call i32 @sx_assert(i32* %9, i32 %10)
  %12 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %3, align 8
  %13 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @G_RAID3_DEVICE_STATE_DEGRADED, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %3, align 8
  %19 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %3, align 8
  %22 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 @KASSERT(i32 %17, i8* %24)
  %26 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %3, align 8
  %27 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %26, i32 0, i32 3
  %28 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %27, align 8
  store %struct.g_raid3_disk* %28, %struct.g_raid3_disk** %5, align 8
  %29 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %3, align 8
  %30 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %29, i32 0, i32 3
  store %struct.g_raid3_disk* null, %struct.g_raid3_disk** %30, align 8
  %31 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %5, align 8
  %32 = icmp ne %struct.g_raid3_disk* %31, null
  %33 = zext i1 %32 to i32
  %34 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %3, align 8
  %35 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i8*
  %39 = call i32 @KASSERT(i32 %33, i8* %38)
  %40 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %5, align 8
  %41 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @G_RAID3_DISK_STATE_SYNCHRONIZING, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %5, align 8
  %47 = call i32 @g_raid3_get_diskname(%struct.g_raid3_disk* %46)
  %48 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %5, align 8
  %49 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @g_raid3_disk_state2str(i64 %50)
  %52 = sext i32 %51 to i64
  %53 = inttoptr i64 %52 to i8*
  %54 = call i32 @KASSERT(i32 %45, i8* %53)
  %55 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %5, align 8
  %56 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load %struct.g_consumer*, %struct.g_consumer** %57, align 8
  %59 = icmp eq %struct.g_consumer* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %2
  br label %112

61:                                               ; preds = %2
  %62 = load i32, i32* %4, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %3, align 8
  %66 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %5, align 8
  %69 = call i32 @g_raid3_get_diskname(%struct.g_raid3_disk* %68)
  %70 = call i32 @G_RAID3_DEBUG(i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %67, i32 %69)
  br label %78

71:                                               ; preds = %61
  %72 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %3, align 8
  %73 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %5, align 8
  %76 = call i32 @g_raid3_get_diskname(%struct.g_raid3_disk* %75)
  %77 = call i32 @G_RAID3_DEBUG(i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %74, i32 %76)
  br label %78

78:                                               ; preds = %71, %64
  %79 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %5, align 8
  %80 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* @M_RAID3, align 4
  %84 = call i32 @free(i32* %82, i32 %83)
  %85 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %5, align 8
  %86 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  store i32* null, i32** %87, align 8
  %88 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %5, align 8
  %89 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load %struct.g_consumer*, %struct.g_consumer** %90, align 8
  store %struct.g_consumer* %91, %struct.g_consumer** %6, align 8
  %92 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %5, align 8
  %93 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  store %struct.g_consumer* null, %struct.g_consumer** %94, align 8
  %95 = load i32, i32* @G_RAID3_DISK_FLAG_DIRTY, align 4
  %96 = xor i32 %95, -1
  %97 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %5, align 8
  %98 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = and i32 %99, %96
  store i32 %100, i32* %98, align 8
  %101 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %3, align 8
  %102 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %101, i32 0, i32 1
  %103 = call i32 @sx_xunlock(i32* %102)
  %104 = call i32 (...) @g_topology_lock()
  %105 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %3, align 8
  %106 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %107 = call i32 @g_raid3_kill_consumer(%struct.g_raid3_softc* %105, %struct.g_consumer* %106)
  %108 = call i32 (...) @g_topology_unlock()
  %109 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %3, align 8
  %110 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %109, i32 0, i32 1
  %111 = call i32 @sx_xlock(i32* %110)
  br label %112

112:                                              ; preds = %78, %60
  ret void
}

declare dso_local i32 @g_topology_assert_not(...) #1

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @g_raid3_get_diskname(%struct.g_raid3_disk*) #1

declare dso_local i32 @g_raid3_disk_state2str(i64) #1

declare dso_local i32 @G_RAID3_DEBUG(i32, i8*, i32, i32) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @g_topology_lock(...) #1

declare dso_local i32 @g_raid3_kill_consumer(%struct.g_raid3_softc*, %struct.g_consumer*) #1

declare dso_local i32 @g_topology_unlock(...) #1

declare dso_local i32 @sx_xlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
