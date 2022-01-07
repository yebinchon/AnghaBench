; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid.c_g_raid_create_disk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid.c_g_raid_create_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_disk = type { i32, i32, %struct.g_raid_softc* }
%struct.g_raid_softc = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"Creating disk.\00", align 1
@M_RAID = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@G_RAID_DISK_S_NONE = common dso_local global i32 0, align 4
@d_next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.g_raid_disk* @g_raid_create_disk(%struct.g_raid_softc* %0) #0 {
  %2 = alloca %struct.g_raid_softc*, align 8
  %3 = alloca %struct.g_raid_disk*, align 8
  store %struct.g_raid_softc* %0, %struct.g_raid_softc** %2, align 8
  %4 = load %struct.g_raid_softc*, %struct.g_raid_softc** %2, align 8
  %5 = call i32 @G_RAID_DEBUG1(i32 1, %struct.g_raid_softc* %4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @M_RAID, align 4
  %7 = load i32, i32* @M_WAITOK, align 4
  %8 = load i32, i32* @M_ZERO, align 4
  %9 = or i32 %7, %8
  %10 = call %struct.g_raid_disk* @malloc(i32 16, i32 %6, i32 %9)
  store %struct.g_raid_disk* %10, %struct.g_raid_disk** %3, align 8
  %11 = load %struct.g_raid_softc*, %struct.g_raid_softc** %2, align 8
  %12 = load %struct.g_raid_disk*, %struct.g_raid_disk** %3, align 8
  %13 = getelementptr inbounds %struct.g_raid_disk, %struct.g_raid_disk* %12, i32 0, i32 2
  store %struct.g_raid_softc* %11, %struct.g_raid_softc** %13, align 8
  %14 = load i32, i32* @G_RAID_DISK_S_NONE, align 4
  %15 = load %struct.g_raid_disk*, %struct.g_raid_disk** %3, align 8
  %16 = getelementptr inbounds %struct.g_raid_disk, %struct.g_raid_disk* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.g_raid_disk*, %struct.g_raid_disk** %3, align 8
  %18 = getelementptr inbounds %struct.g_raid_disk, %struct.g_raid_disk* %17, i32 0, i32 0
  %19 = call i32 @TAILQ_INIT(i32* %18)
  %20 = load %struct.g_raid_softc*, %struct.g_raid_softc** %2, align 8
  %21 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %20, i32 0, i32 0
  %22 = load %struct.g_raid_disk*, %struct.g_raid_disk** %3, align 8
  %23 = load i32, i32* @d_next, align 4
  %24 = call i32 @TAILQ_INSERT_TAIL(i32* %21, %struct.g_raid_disk* %22, i32 %23)
  %25 = load %struct.g_raid_disk*, %struct.g_raid_disk** %3, align 8
  ret %struct.g_raid_disk* %25
}

declare dso_local i32 @G_RAID_DEBUG1(i32, %struct.g_raid_softc*, i8*) #1

declare dso_local %struct.g_raid_disk* @malloc(i32, i32, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.g_raid_disk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
