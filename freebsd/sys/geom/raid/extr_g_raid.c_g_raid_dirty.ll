; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid.c_g_raid_dirty.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid.c_g_raid_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_volume = type { i32, i32, %struct.g_raid_softc* }
%struct.g_raid_softc = type { i32 }

@SX_XLOCKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Volume %s marked as dirty.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_raid_volume*)* @g_raid_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_raid_dirty(%struct.g_raid_volume* %0) #0 {
  %2 = alloca %struct.g_raid_volume*, align 8
  %3 = alloca %struct.g_raid_softc*, align 8
  store %struct.g_raid_volume* %0, %struct.g_raid_volume** %2, align 8
  %4 = load %struct.g_raid_volume*, %struct.g_raid_volume** %2, align 8
  %5 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %4, i32 0, i32 2
  %6 = load %struct.g_raid_softc*, %struct.g_raid_softc** %5, align 8
  store %struct.g_raid_softc* %6, %struct.g_raid_softc** %3, align 8
  %7 = call i32 (...) @g_topology_assert_not()
  %8 = load %struct.g_raid_softc*, %struct.g_raid_softc** %3, align 8
  %9 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %8, i32 0, i32 0
  %10 = load i32, i32* @SX_XLOCKED, align 4
  %11 = call i32 @sx_assert(i32* %9, i32 %10)
  %12 = load %struct.g_raid_volume*, %struct.g_raid_volume** %2, align 8
  %13 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load %struct.g_raid_softc*, %struct.g_raid_softc** %3, align 8
  %15 = load %struct.g_raid_volume*, %struct.g_raid_volume** %2, align 8
  %16 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @G_RAID_DEBUG1(i32 1, %struct.g_raid_softc* %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.g_raid_softc*, %struct.g_raid_softc** %3, align 8
  %20 = load %struct.g_raid_volume*, %struct.g_raid_volume** %2, align 8
  %21 = call i32 @g_raid_write_metadata(%struct.g_raid_softc* %19, %struct.g_raid_volume* %20, i32* null, i32* null)
  ret void
}

declare dso_local i32 @g_topology_assert_not(...) #1

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @G_RAID_DEBUG1(i32, %struct.g_raid_softc*, i8*, i32) #1

declare dso_local i32 @g_raid_write_metadata(%struct.g_raid_softc*, %struct.g_raid_volume*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
