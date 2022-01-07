; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs.c_mvs_phy_check_events.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs.c_mvs_phy_check_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvs_channel = type { i64, i32, i32 }
%union.ccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SATA_SS = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@SATA_SS_DET_MASK = common dso_local global i32 0, align 4
@SATA_SS_DET_PHY_ONLINE = common dso_local global i32 0, align 4
@SATA_SS_SPD_MASK = common dso_local global i32 0, align 4
@SATA_SS_SPD_NO_SPEED = common dso_local global i32 0, align 4
@SATA_SS_IPM_MASK = common dso_local global i32 0, align 4
@SATA_SS_IPM_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"CONNECT requested\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"DISCONNECT requested\0A\00", align 1
@CAM_TARGET_WILDCARD = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @mvs_phy_check_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvs_phy_check_events(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.mvs_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.ccb*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.mvs_channel* @device_get_softc(i32 %8)
  store %struct.mvs_channel* %9, %struct.mvs_channel** %5, align 8
  %10 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %11 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %72

14:                                               ; preds = %2
  %15 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %16 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SATA_SS, align 4
  %19 = call i32 @ATA_INL(i32 %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i64, i64* @bootverbose, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %47

22:                                               ; preds = %14
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @SATA_SS_DET_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @SATA_SS_DET_PHY_ONLINE, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %22
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @SATA_SS_SPD_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @SATA_SS_SPD_NO_SPEED, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %28
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @SATA_SS_IPM_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* @SATA_SS_IPM_ACTIVE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @device_printf(i32 %41, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %46

43:                                               ; preds = %34, %28, %22
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @device_printf(i32 %44, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %40
  br label %47

47:                                               ; preds = %46, %14
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @mvs_reset(i32 %48)
  %50 = call %union.ccb* (...) @xpt_alloc_ccb_nowait()
  store %union.ccb* %50, %union.ccb** %7, align 8
  %51 = icmp eq %union.ccb* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %72

53:                                               ; preds = %47
  %54 = load %union.ccb*, %union.ccb** %7, align 8
  %55 = bitcast %union.ccb* %54 to %struct.TYPE_2__*
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %58 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @cam_sim_path(i32 %59)
  %61 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %62 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %63 = call i64 @xpt_create_path(i32* %56, i32* null, i32 %60, i32 %61, i32 %62)
  %64 = load i64, i64* @CAM_REQ_CMP, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %53
  %67 = load %union.ccb*, %union.ccb** %7, align 8
  %68 = call i32 @xpt_free_ccb(%union.ccb* %67)
  br label %72

69:                                               ; preds = %53
  %70 = load %union.ccb*, %union.ccb** %7, align 8
  %71 = call i32 @xpt_rescan(%union.ccb* %70)
  br label %72

72:                                               ; preds = %52, %66, %69, %2
  ret void
}

declare dso_local %struct.mvs_channel* @device_get_softc(i32) #1

declare dso_local i32 @ATA_INL(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @mvs_reset(i32) #1

declare dso_local %union.ccb* @xpt_alloc_ccb_nowait(...) #1

declare dso_local i64 @xpt_create_path(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @cam_sim_path(i32) #1

declare dso_local i32 @xpt_free_ccb(%union.ccb*) #1

declare dso_local i32 @xpt_rescan(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
