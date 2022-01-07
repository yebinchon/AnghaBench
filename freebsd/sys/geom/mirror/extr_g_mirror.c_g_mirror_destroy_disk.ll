; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/mirror/extr_g_mirror.c_g_mirror_destroy_disk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/mirror/extr_g_mirror.c_g_mirror_destroy_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_mirror_disk = type { i32, i32, %struct.g_mirror_softc* }
%struct.g_mirror_softc = type { %struct.g_mirror_disk*, i32 }

@SX_XLOCKED = common dso_local global i32 0, align 4
@d_next = common dso_local global i32 0, align 4
@M_MIRROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Wrong disk state (%s, %s).\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_mirror_disk*)* @g_mirror_destroy_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_mirror_destroy_disk(%struct.g_mirror_disk* %0) #0 {
  %2 = alloca %struct.g_mirror_disk*, align 8
  %3 = alloca %struct.g_mirror_softc*, align 8
  store %struct.g_mirror_disk* %0, %struct.g_mirror_disk** %2, align 8
  %4 = call i32 (...) @g_topology_assert_not()
  %5 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %2, align 8
  %6 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %5, i32 0, i32 2
  %7 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %6, align 8
  store %struct.g_mirror_softc* %7, %struct.g_mirror_softc** %3, align 8
  %8 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %9 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %8, i32 0, i32 1
  %10 = load i32, i32* @SX_XLOCKED, align 4
  %11 = call i32 @sx_assert(i32* %9, i32 %10)
  %12 = call i32 (...) @g_topology_lock()
  %13 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %2, align 8
  %14 = load i32, i32* @d_next, align 4
  %15 = call i32 @LIST_REMOVE(%struct.g_mirror_disk* %13, i32 %14)
  %16 = call i32 (...) @g_topology_unlock()
  %17 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %2, align 8
  %18 = call i32 @g_mirror_event_cancel(%struct.g_mirror_disk* %17)
  %19 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %20 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %19, i32 0, i32 0
  %21 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %20, align 8
  %22 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %2, align 8
  %23 = icmp eq %struct.g_mirror_disk* %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %26 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %25, i32 0, i32 0
  store %struct.g_mirror_disk* null, %struct.g_mirror_disk** %26, align 8
  br label %27

27:                                               ; preds = %24, %1
  %28 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %2, align 8
  %29 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %45 [
    i32 128, label %31
    i32 130, label %34
    i32 129, label %34
    i32 131, label %34
  ]

31:                                               ; preds = %27
  %32 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %2, align 8
  %33 = call i32 @g_mirror_sync_stop(%struct.g_mirror_disk* %32, i32 1)
  br label %34

34:                                               ; preds = %27, %27, %27, %31
  %35 = call i32 (...) @g_topology_lock()
  %36 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %37 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %2, align 8
  %38 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @g_mirror_disconnect_consumer(%struct.g_mirror_softc* %36, i32 %39)
  %41 = call i32 (...) @g_topology_unlock()
  %42 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %2, align 8
  %43 = load i32, i32* @M_MIRROR, align 4
  %44 = call i32 @free(%struct.g_mirror_disk* %42, i32 %43)
  br label %55

45:                                               ; preds = %27
  %46 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %2, align 8
  %47 = call i32 @g_mirror_get_diskname(%struct.g_mirror_disk* %46)
  %48 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %2, align 8
  %49 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @g_mirror_disk_state2str(i32 %50)
  %52 = sext i32 %51 to i64
  %53 = inttoptr i64 %52 to i8*
  %54 = call i32 @KASSERT(i32 0, i8* %53)
  br label %55

55:                                               ; preds = %45, %34
  ret void
}

declare dso_local i32 @g_topology_assert_not(...) #1

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @g_topology_lock(...) #1

declare dso_local i32 @LIST_REMOVE(%struct.g_mirror_disk*, i32) #1

declare dso_local i32 @g_topology_unlock(...) #1

declare dso_local i32 @g_mirror_event_cancel(%struct.g_mirror_disk*) #1

declare dso_local i32 @g_mirror_sync_stop(%struct.g_mirror_disk*, i32) #1

declare dso_local i32 @g_mirror_disconnect_consumer(%struct.g_mirror_softc*, i32) #1

declare dso_local i32 @free(%struct.g_mirror_disk*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @g_mirror_get_diskname(%struct.g_mirror_disk*) #1

declare dso_local i32 @g_mirror_disk_state2str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
