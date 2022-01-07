; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/mirror/extr_g_mirror.c_g_mirror_sync_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/mirror/extr_g_mirror.c_g_mirror_sync_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_mirror_disk = type { i64, i32, %struct.TYPE_3__, %struct.g_mirror_softc* }
%struct.TYPE_3__ = type { %struct.g_consumer*, i32* }
%struct.g_consumer = type { i32 }
%struct.g_mirror_softc = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@SX_LOCKED = common dso_local global i32 0, align 4
@G_MIRROR_DISK_STATE_SYNCHRONIZING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Wrong disk state (%s, %s).\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Device %s: rebuilding provider %s finished.\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Device %s: rebuilding provider %s stopped.\00", align 1
@M_MIRROR = common dso_local global i32 0, align 4
@G_MIRROR_DISK_FLAG_DIRTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_mirror_disk*, i32)* @g_mirror_sync_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_mirror_sync_stop(%struct.g_mirror_disk* %0, i32 %1) #0 {
  %3 = alloca %struct.g_mirror_disk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.g_mirror_softc*, align 8
  %6 = alloca %struct.g_consumer*, align 8
  store %struct.g_mirror_disk* %0, %struct.g_mirror_disk** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i32 (...) @g_topology_assert_not()
  %8 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %3, align 8
  %9 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %8, i32 0, i32 3
  %10 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %9, align 8
  store %struct.g_mirror_softc* %10, %struct.g_mirror_softc** %5, align 8
  %11 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %5, align 8
  %12 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %11, i32 0, i32 0
  %13 = load i32, i32* @SX_LOCKED, align 4
  %14 = call i32 @sx_assert(i32* %12, i32 %13)
  %15 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %3, align 8
  %16 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @G_MIRROR_DISK_STATE_SYNCHRONIZING, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %3, align 8
  %22 = call i32 @g_mirror_get_diskname(%struct.g_mirror_disk* %21)
  %23 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %3, align 8
  %24 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @g_mirror_disk_state2str(i64 %25)
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @KASSERT(i32 %20, i8* %28)
  %30 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %3, align 8
  %31 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load %struct.g_consumer*, %struct.g_consumer** %32, align 8
  %34 = icmp eq %struct.g_consumer* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %2
  br label %94

36:                                               ; preds = %2
  %37 = load i32, i32* %4, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %5, align 8
  %41 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %3, align 8
  %44 = call i32 @g_mirror_get_diskname(%struct.g_mirror_disk* %43)
  %45 = call i32 @G_MIRROR_DEBUG(i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %44)
  br label %53

46:                                               ; preds = %36
  %47 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %5, align 8
  %48 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %3, align 8
  %51 = call i32 @g_mirror_get_diskname(%struct.g_mirror_disk* %50)
  %52 = call i32 @G_MIRROR_DEBUG(i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %49, i32 %51)
  br label %53

53:                                               ; preds = %46, %39
  %54 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %5, align 8
  %55 = call i32 @g_mirror_regular_release(%struct.g_mirror_softc* %54)
  %56 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %3, align 8
  %57 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* @M_MIRROR, align 4
  %61 = call i32 @free(i32* %59, i32 %60)
  %62 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %3, align 8
  %63 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  store i32* null, i32** %64, align 8
  %65 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %3, align 8
  %66 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load %struct.g_consumer*, %struct.g_consumer** %67, align 8
  store %struct.g_consumer* %68, %struct.g_consumer** %6, align 8
  %69 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %3, align 8
  %70 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  store %struct.g_consumer* null, %struct.g_consumer** %71, align 8
  %72 = load i32, i32* @G_MIRROR_DISK_FLAG_DIRTY, align 4
  %73 = xor i32 %72, -1
  %74 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %3, align 8
  %75 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = and i32 %76, %73
  store i32 %77, i32* %75, align 8
  %78 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %5, align 8
  %79 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %80, align 4
  %83 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %5, align 8
  %84 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %83, i32 0, i32 0
  %85 = call i32 @sx_xunlock(i32* %84)
  %86 = call i32 (...) @g_topology_lock()
  %87 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %5, align 8
  %88 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %89 = call i32 @g_mirror_kill_consumer(%struct.g_mirror_softc* %87, %struct.g_consumer* %88)
  %90 = call i32 (...) @g_topology_unlock()
  %91 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %5, align 8
  %92 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %91, i32 0, i32 0
  %93 = call i32 @sx_xlock(i32* %92)
  br label %94

94:                                               ; preds = %53, %35
  ret void
}

declare dso_local i32 @g_topology_assert_not(...) #1

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @g_mirror_get_diskname(%struct.g_mirror_disk*) #1

declare dso_local i32 @g_mirror_disk_state2str(i64) #1

declare dso_local i32 @G_MIRROR_DEBUG(i32, i8*, i32, i32) #1

declare dso_local i32 @g_mirror_regular_release(%struct.g_mirror_softc*) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @g_topology_lock(...) #1

declare dso_local i32 @g_mirror_kill_consumer(%struct.g_mirror_softc*, %struct.g_consumer*) #1

declare dso_local i32 @g_topology_unlock(...) #1

declare dso_local i32 @sx_xlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
