; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid.c_g_raid_write_metadata.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid.c_g_raid_write_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_softc = type { i64, i64 }
%struct.g_raid_volume = type { i32 }
%struct.g_raid_subdisk = type { i32 }
%struct.g_raid_disk = type { i32 }

@G_RAID_DESTROY_HARD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @g_raid_write_metadata(%struct.g_raid_softc* %0, %struct.g_raid_volume* %1, %struct.g_raid_subdisk* %2, %struct.g_raid_disk* %3) #0 {
  %5 = alloca %struct.g_raid_softc*, align 8
  %6 = alloca %struct.g_raid_volume*, align 8
  %7 = alloca %struct.g_raid_subdisk*, align 8
  %8 = alloca %struct.g_raid_disk*, align 8
  store %struct.g_raid_softc* %0, %struct.g_raid_softc** %5, align 8
  store %struct.g_raid_volume* %1, %struct.g_raid_volume** %6, align 8
  store %struct.g_raid_subdisk* %2, %struct.g_raid_subdisk** %7, align 8
  store %struct.g_raid_disk* %3, %struct.g_raid_disk** %8, align 8
  %9 = load %struct.g_raid_softc*, %struct.g_raid_softc** %5, align 8
  %10 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @G_RAID_DESTROY_HARD, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  br label %28

15:                                               ; preds = %4
  %16 = load %struct.g_raid_softc*, %struct.g_raid_softc** %5, align 8
  %17 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load %struct.g_raid_softc*, %struct.g_raid_softc** %5, align 8
  %22 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.g_raid_volume*, %struct.g_raid_volume** %6, align 8
  %25 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %7, align 8
  %26 = load %struct.g_raid_disk*, %struct.g_raid_disk** %8, align 8
  %27 = call i32 @G_RAID_MD_WRITE(i64 %23, %struct.g_raid_volume* %24, %struct.g_raid_subdisk* %25, %struct.g_raid_disk* %26)
  br label %28

28:                                               ; preds = %14, %20, %15
  ret void
}

declare dso_local i32 @G_RAID_MD_WRITE(i64, %struct.g_raid_volume*, %struct.g_raid_subdisk*, %struct.g_raid_disk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
