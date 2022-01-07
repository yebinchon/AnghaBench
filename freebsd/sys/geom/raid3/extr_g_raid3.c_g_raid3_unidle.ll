; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_unidle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_unidle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid3_softc = type { i32, i64, i32, %struct.g_raid3_disk*, i32, i64, i32 }
%struct.g_raid3_disk = type { i64, i32 }

@SX_XLOCKED = common dso_local global i32 0, align 4
@G_RAID3_DEVICE_FLAG_NOFAILSYNC = common dso_local global i32 0, align 4
@time_uptime = common dso_local global i32 0, align 4
@G_RAID3_DISK_STATE_ACTIVE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Disk %s (device %s) marked as dirty.\00", align 1
@G_RAID3_DISK_FLAG_DIRTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_raid3_softc*)* @g_raid3_unidle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_raid3_unidle(%struct.g_raid3_softc* %0) #0 {
  %2 = alloca %struct.g_raid3_softc*, align 8
  %3 = alloca %struct.g_raid3_disk*, align 8
  %4 = alloca i64, align 8
  store %struct.g_raid3_softc* %0, %struct.g_raid3_softc** %2, align 8
  %5 = call i32 (...) @g_topology_assert_not()
  %6 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %2, align 8
  %7 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %6, i32 0, i32 6
  %8 = load i32, i32* @SX_XLOCKED, align 4
  %9 = call i32 @sx_assert(i32* %7, i32 %8)
  %10 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %2, align 8
  %11 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @G_RAID3_DEVICE_FLAG_NOFAILSYNC, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %58

17:                                               ; preds = %1
  %18 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %2, align 8
  %19 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %18, i32 0, i32 5
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* @time_uptime, align 4
  %21 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %2, align 8
  %22 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 8
  store i64 0, i64* %4, align 8
  br label %23

23:                                               ; preds = %55, %17
  %24 = load i64, i64* %4, align 8
  %25 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %2, align 8
  %26 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ult i64 %24, %27
  br i1 %28, label %29, label %58

29:                                               ; preds = %23
  %30 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %2, align 8
  %31 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %30, i32 0, i32 3
  %32 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %31, align 8
  %33 = load i64, i64* %4, align 8
  %34 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %32, i64 %33
  store %struct.g_raid3_disk* %34, %struct.g_raid3_disk** %3, align 8
  %35 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %36 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @G_RAID3_DISK_STATE_ACTIVE, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  br label %55

41:                                               ; preds = %29
  %42 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %43 = call i32 @g_raid3_get_diskname(%struct.g_raid3_disk* %42)
  %44 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %2, align 8
  %45 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @G_RAID3_DEBUG(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %46)
  %48 = load i32, i32* @G_RAID3_DISK_FLAG_DIRTY, align 4
  %49 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %50 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %54 = call i32 @g_raid3_update_metadata(%struct.g_raid3_disk* %53)
  br label %55

55:                                               ; preds = %41, %40
  %56 = load i64, i64* %4, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %4, align 8
  br label %23

58:                                               ; preds = %16, %23
  ret void
}

declare dso_local i32 @g_topology_assert_not(...) #1

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @G_RAID3_DEBUG(i32, i8*, i32, i32) #1

declare dso_local i32 @g_raid3_get_diskname(%struct.g_raid3_disk*) #1

declare dso_local i32 @g_raid3_update_metadata(%struct.g_raid3_disk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
