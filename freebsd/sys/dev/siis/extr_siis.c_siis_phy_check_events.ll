; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/siis/extr_siis.c_siis_phy_check_events.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/siis/extr_siis.c_siis_phy_check_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siis_channel = type { i64, i32, i32 }
%union.ccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SIIS_P_SSTS = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@ATA_SS_DET_MASK = common dso_local global i32 0, align 4
@ATA_SS_DET_PHY_ONLINE = common dso_local global i32 0, align 4
@ATA_SS_SPD_MASK = common dso_local global i32 0, align 4
@ATA_SS_SPD_NO_SPEED = common dso_local global i32 0, align 4
@ATA_SS_IPM_MASK = common dso_local global i32 0, align 4
@ATA_SS_IPM_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"CONNECT requested\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"DISCONNECT requested\0A\00", align 1
@CAM_TARGET_WILDCARD = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @siis_phy_check_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @siis_phy_check_events(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.siis_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.ccb*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.siis_channel* @device_get_softc(i32 %6)
  store %struct.siis_channel* %7, %struct.siis_channel** %3, align 8
  %8 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %9 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %70

12:                                               ; preds = %1
  %13 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %14 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SIIS_P_SSTS, align 4
  %17 = call i32 @ATA_INL(i32 %15, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i64, i64* @bootverbose, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %45

20:                                               ; preds = %12
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @ATA_SS_DET_MASK, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @ATA_SS_DET_PHY_ONLINE, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %20
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @ATA_SS_SPD_MASK, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @ATA_SS_SPD_NO_SPEED, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @ATA_SS_IPM_MASK, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @ATA_SS_IPM_ACTIVE, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* %2, align 4
  %40 = call i32 @device_printf(i32 %39, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %44

41:                                               ; preds = %32, %26, %20
  %42 = load i32, i32* %2, align 4
  %43 = call i32 @device_printf(i32 %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %38
  br label %45

45:                                               ; preds = %44, %12
  %46 = load i32, i32* %2, align 4
  %47 = call i32 @siis_reset(i32 %46)
  %48 = call %union.ccb* (...) @xpt_alloc_ccb_nowait()
  store %union.ccb* %48, %union.ccb** %5, align 8
  %49 = icmp eq %union.ccb* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %70

51:                                               ; preds = %45
  %52 = load %union.ccb*, %union.ccb** %5, align 8
  %53 = bitcast %union.ccb* %52 to %struct.TYPE_2__*
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %56 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @cam_sim_path(i32 %57)
  %59 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %60 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %61 = call i64 @xpt_create_path(i32* %54, i32* null, i32 %58, i32 %59, i32 %60)
  %62 = load i64, i64* @CAM_REQ_CMP, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %51
  %65 = load %union.ccb*, %union.ccb** %5, align 8
  %66 = call i32 @xpt_free_ccb(%union.ccb* %65)
  br label %70

67:                                               ; preds = %51
  %68 = load %union.ccb*, %union.ccb** %5, align 8
  %69 = call i32 @xpt_rescan(%union.ccb* %68)
  br label %70

70:                                               ; preds = %50, %64, %67, %1
  ret void
}

declare dso_local %struct.siis_channel* @device_get_softc(i32) #1

declare dso_local i32 @ATA_INL(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @siis_reset(i32) #1

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
