; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_destroy_disk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_destroy_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid3_disk = type { i32, i32*, %struct.g_raid3_softc* }
%struct.g_raid3_softc = type { i32*, i32 }

@SX_XLOCKED = common dso_local global i32 0, align 4
@G_RAID3_DISK_STATE_NODISK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Wrong disk state (%s, %s).\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_raid3_disk*)* @g_raid3_destroy_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_raid3_destroy_disk(%struct.g_raid3_disk* %0) #0 {
  %2 = alloca %struct.g_raid3_disk*, align 8
  %3 = alloca %struct.g_raid3_softc*, align 8
  store %struct.g_raid3_disk* %0, %struct.g_raid3_disk** %2, align 8
  %4 = call i32 (...) @g_topology_assert_not()
  %5 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %2, align 8
  %6 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %5, i32 0, i32 2
  %7 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  store %struct.g_raid3_softc* %7, %struct.g_raid3_softc** %3, align 8
  %8 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %3, align 8
  %9 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %8, i32 0, i32 1
  %10 = load i32, i32* @SX_XLOCKED, align 4
  %11 = call i32 @sx_assert(i32* %9, i32 %10)
  %12 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %2, align 8
  %13 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @G_RAID3_DISK_STATE_NODISK, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %57

18:                                               ; preds = %1
  %19 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %2, align 8
  %20 = call i32 @g_raid3_event_cancel(%struct.g_raid3_disk* %19)
  %21 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %2, align 8
  %22 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %43 [
    i32 128, label %24
    i32 130, label %33
    i32 129, label %33
    i32 131, label %33
  ]

24:                                               ; preds = %18
  %25 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %3, align 8
  %26 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %3, align 8
  %31 = call i32 @g_raid3_sync_stop(%struct.g_raid3_softc* %30, i32 1)
  br label %32

32:                                               ; preds = %29, %24
  br label %33

33:                                               ; preds = %18, %18, %18, %32
  %34 = call i32 (...) @g_topology_lock()
  %35 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %3, align 8
  %36 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %2, align 8
  %37 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @g_raid3_disconnect_consumer(%struct.g_raid3_softc* %35, i32* %38)
  %40 = call i32 (...) @g_topology_unlock()
  %41 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %2, align 8
  %42 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %41, i32 0, i32 1
  store i32* null, i32** %42, align 8
  br label %53

43:                                               ; preds = %18
  %44 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %2, align 8
  %45 = call i32 @g_raid3_get_diskname(%struct.g_raid3_disk* %44)
  %46 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %2, align 8
  %47 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @g_raid3_disk_state2str(i32 %48)
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to i8*
  %52 = call i32 @KASSERT(i32 0, i8* %51)
  br label %53

53:                                               ; preds = %43, %33
  %54 = load i32, i32* @G_RAID3_DISK_STATE_NODISK, align 4
  %55 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %2, align 8
  %56 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %53, %17
  ret void
}

declare dso_local i32 @g_topology_assert_not(...) #1

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @g_raid3_event_cancel(%struct.g_raid3_disk*) #1

declare dso_local i32 @g_raid3_sync_stop(%struct.g_raid3_softc*, i32) #1

declare dso_local i32 @g_topology_lock(...) #1

declare dso_local i32 @g_raid3_disconnect_consumer(%struct.g_raid3_softc*, i32*) #1

declare dso_local i32 @g_topology_unlock(...) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @g_raid3_get_diskname(%struct.g_raid3_disk*) #1

declare dso_local i32 @g_raid3_disk_state2str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
