; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_raid.c_mpt_refresh_raid_disk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_raid.c_mpt_refresh_raid_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32 }
%struct.mpt_raid_disk = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@MPI_CONFIG_PAGETYPE_RAID_PHYSDISK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"mpt_refresh_raid_disk: Failed to read RAID Disk Hdr(%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"mpt_refresh_raid_disk: Failed to read RAID Disk Page(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpt_softc*, %struct.mpt_raid_disk*, %struct.TYPE_4__*)* @mpt_refresh_raid_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpt_refresh_raid_disk(%struct.mpt_softc* %0, %struct.mpt_raid_disk* %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca %struct.mpt_softc*, align 8
  %5 = alloca %struct.mpt_raid_disk*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  store %struct.mpt_softc* %0, %struct.mpt_softc** %4, align 8
  store %struct.mpt_raid_disk* %1, %struct.mpt_raid_disk** %5, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %6, align 8
  %8 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %9 = load i32, i32* @MPI_CONFIG_PAGETYPE_RAID_PHYSDISK, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.mpt_raid_disk*, %struct.mpt_raid_disk** %5, align 8
  %14 = getelementptr inbounds %struct.mpt_raid_disk, %struct.mpt_raid_disk* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* @TRUE, align 4
  %17 = call i32 @mpt_read_cfg_header(%struct.mpt_softc* %8, i32 %9, i32 0, i32 %12, i32* %15, i32 %16, i32 5000)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @mpt_prt(%struct.mpt_softc* %21, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %48

26:                                               ; preds = %3
  %27 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mpt_raid_disk*, %struct.mpt_raid_disk** %5, align 8
  %32 = getelementptr inbounds %struct.mpt_raid_disk, %struct.mpt_raid_disk* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* @TRUE, align 4
  %35 = call i32 @mpt_read_cur_cfg_page(%struct.mpt_softc* %27, i32 %30, i32* %33, i32 4, i32 %34, i32 5000)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %26
  %39 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @mpt_prt(%struct.mpt_softc* %39, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %38, %26
  %45 = load %struct.mpt_raid_disk*, %struct.mpt_raid_disk** %5, align 8
  %46 = getelementptr inbounds %struct.mpt_raid_disk, %struct.mpt_raid_disk* %45, i32 0, i32 0
  %47 = call i32 @mpt2host_config_page_raid_phys_disk_0(%struct.TYPE_5__* %46)
  br label %48

48:                                               ; preds = %44, %20
  ret void
}

declare dso_local i32 @mpt_read_cfg_header(%struct.mpt_softc*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @mpt_prt(%struct.mpt_softc*, i8*, i32) #1

declare dso_local i32 @mpt_read_cur_cfg_page(%struct.mpt_softc*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @mpt2host_config_page_raid_phys_disk_0(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
