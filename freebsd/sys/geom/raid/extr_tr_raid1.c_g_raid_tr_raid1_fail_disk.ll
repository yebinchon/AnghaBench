; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid1.c_g_raid_tr_raid1_fail_disk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid1.c_g_raid_tr_raid1_fail_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_softc = type { i32 }
%struct.g_raid_subdisk = type { i32 }
%struct.g_raid_disk = type { i32 }

@G_RAID_SUBDISK_S_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_raid_softc*, %struct.g_raid_subdisk*, %struct.g_raid_disk*)* @g_raid_tr_raid1_fail_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_raid_tr_raid1_fail_disk(%struct.g_raid_softc* %0, %struct.g_raid_subdisk* %1, %struct.g_raid_disk* %2) #0 {
  %4 = alloca %struct.g_raid_softc*, align 8
  %5 = alloca %struct.g_raid_subdisk*, align 8
  %6 = alloca %struct.g_raid_disk*, align 8
  store %struct.g_raid_softc* %0, %struct.g_raid_softc** %4, align 8
  store %struct.g_raid_subdisk* %1, %struct.g_raid_subdisk** %5, align 8
  store %struct.g_raid_disk* %2, %struct.g_raid_disk** %6, align 8
  %7 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  %8 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @G_RAID_SUBDISK_S_ACTIVE, align 4
  %11 = call i32 @g_raid_nsubdisks(i32 %9, i32 %10)
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %22

13:                                               ; preds = %3
  %14 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  %15 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @G_RAID_SUBDISK_S_ACTIVE, align 4
  %18 = call %struct.g_raid_subdisk* @g_raid_get_subdisk(i32 %16, i32 %17)
  %19 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  %20 = icmp eq %struct.g_raid_subdisk* %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %27

22:                                               ; preds = %13, %3
  %23 = load %struct.g_raid_softc*, %struct.g_raid_softc** %4, align 8
  %24 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  %25 = load %struct.g_raid_disk*, %struct.g_raid_disk** %6, align 8
  %26 = call i32 @g_raid_fail_disk(%struct.g_raid_softc* %23, %struct.g_raid_subdisk* %24, %struct.g_raid_disk* %25)
  br label %27

27:                                               ; preds = %22, %21
  ret void
}

declare dso_local i32 @g_raid_nsubdisks(i32, i32) #1

declare dso_local %struct.g_raid_subdisk* @g_raid_get_subdisk(i32, i32) #1

declare dso_local i32 @g_raid_fail_disk(%struct.g_raid_softc*, %struct.g_raid_subdisk*, %struct.g_raid_disk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
