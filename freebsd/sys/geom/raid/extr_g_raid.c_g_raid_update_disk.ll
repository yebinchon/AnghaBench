; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid.c_g_raid_update_disk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid.c_g_raid_update_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_disk = type { %struct.g_raid_softc* }
%struct.g_raid_softc = type { i64, i32 }

@SX_XLOCKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Event %s for disk %s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_raid_disk*, i32)* @g_raid_update_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_raid_update_disk(%struct.g_raid_disk* %0, i32 %1) #0 {
  %3 = alloca %struct.g_raid_disk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.g_raid_softc*, align 8
  store %struct.g_raid_disk* %0, %struct.g_raid_disk** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.g_raid_disk*, %struct.g_raid_disk** %3, align 8
  %7 = getelementptr inbounds %struct.g_raid_disk, %struct.g_raid_disk* %6, i32 0, i32 0
  %8 = load %struct.g_raid_softc*, %struct.g_raid_softc** %7, align 8
  store %struct.g_raid_softc* %8, %struct.g_raid_softc** %5, align 8
  %9 = load %struct.g_raid_softc*, %struct.g_raid_softc** %5, align 8
  %10 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %9, i32 0, i32 1
  %11 = load i32, i32* @SX_XLOCKED, align 4
  %12 = call i32 @sx_assert(i32* %10, i32 %11)
  %13 = load %struct.g_raid_softc*, %struct.g_raid_softc** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @g_raid_disk_event2str(i32 %14)
  %16 = load %struct.g_raid_disk*, %struct.g_raid_disk** %3, align 8
  %17 = call i32 @g_raid_get_diskname(%struct.g_raid_disk* %16)
  %18 = call i32 @G_RAID_DEBUG1(i32 2, %struct.g_raid_softc* %13, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %17)
  %19 = load %struct.g_raid_softc*, %struct.g_raid_softc** %5, align 8
  %20 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load %struct.g_raid_softc*, %struct.g_raid_softc** %5, align 8
  %25 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.g_raid_disk*, %struct.g_raid_disk** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @G_RAID_MD_EVENT(i64 %26, %struct.g_raid_disk* %27, i32 %28)
  br label %30

30:                                               ; preds = %23, %2
  ret i32 0
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @G_RAID_DEBUG1(i32, %struct.g_raid_softc*, i8*, i32, i32) #1

declare dso_local i32 @g_raid_disk_event2str(i32) #1

declare dso_local i32 @g_raid_get_diskname(%struct.g_raid_disk*) #1

declare dso_local i32 @G_RAID_MD_EVENT(i64, %struct.g_raid_disk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
