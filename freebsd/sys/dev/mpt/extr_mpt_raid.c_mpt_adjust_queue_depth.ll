; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_raid.c_mpt_adjust_queue_depth.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_raid.c_mpt_adjust_queue_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32 }
%struct.mpt_raid_volume = type { i32 }
%struct.cam_path = type { i32 }
%struct.ccb_relsim = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64, i32, i32 }
%union.ccb = type { i32 }

@XPT_REL_SIMQ = common dso_local global i32 0, align 4
@CAM_DEV_QFREEZE = common dso_local global i32 0, align 4
@RELSIM_ADJUST_OPENINGS = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"mpt_adjust_queue_depth failed with CAM status %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpt_softc*, %struct.mpt_raid_volume*, %struct.cam_path*)* @mpt_adjust_queue_depth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpt_adjust_queue_depth(%struct.mpt_softc* %0, %struct.mpt_raid_volume* %1, %struct.cam_path* %2) #0 {
  %4 = alloca %struct.mpt_softc*, align 8
  %5 = alloca %struct.mpt_raid_volume*, align 8
  %6 = alloca %struct.cam_path*, align 8
  %7 = alloca %struct.ccb_relsim, align 8
  store %struct.mpt_softc* %0, %struct.mpt_softc** %4, align 8
  store %struct.mpt_raid_volume* %1, %struct.mpt_raid_volume** %5, align 8
  store %struct.cam_path* %2, %struct.cam_path** %6, align 8
  %8 = getelementptr inbounds %struct.ccb_relsim, %struct.ccb_relsim* %7, i32 0, i32 0
  %9 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %10 = call i32 @xpt_setup_ccb(%struct.TYPE_2__* %8, %struct.cam_path* %9, i32 5)
  %11 = load i32, i32* @XPT_REL_SIMQ, align 4
  %12 = getelementptr inbounds %struct.ccb_relsim, %struct.ccb_relsim* %7, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @CAM_DEV_QFREEZE, align 4
  %15 = getelementptr inbounds %struct.ccb_relsim, %struct.ccb_relsim* %7, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* @RELSIM_ADJUST_OPENINGS, align 4
  %18 = getelementptr inbounds %struct.ccb_relsim, %struct.ccb_relsim* %7, i32 0, i32 2
  store i32 %17, i32* %18, align 4
  %19 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %20 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.ccb_relsim, %struct.ccb_relsim* %7, i32 0, i32 1
  store i32 %21, i32* %22, align 8
  %23 = bitcast %struct.ccb_relsim* %7 to %union.ccb*
  %24 = call i32 @xpt_action(%union.ccb* %23)
  %25 = getelementptr inbounds %struct.ccb_relsim, %struct.ccb_relsim* %7, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @CAM_REQ_CMP, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %3
  %31 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %32 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %5, align 8
  %33 = getelementptr inbounds %struct.ccb_relsim, %struct.ccb_relsim* %7, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @mpt_vol_prt(%struct.mpt_softc* %31, %struct.mpt_raid_volume* %32, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %35)
  br label %37

37:                                               ; preds = %30, %3
  ret void
}

declare dso_local i32 @xpt_setup_ccb(%struct.TYPE_2__*, %struct.cam_path*, i32) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

declare dso_local i32 @mpt_vol_prt(%struct.mpt_softc*, %struct.mpt_raid_volume*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
