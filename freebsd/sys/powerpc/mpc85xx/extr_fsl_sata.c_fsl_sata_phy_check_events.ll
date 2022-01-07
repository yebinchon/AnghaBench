; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_sata.c_fsl_sata_phy_check_events.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_sata.c_fsl_sata_phy_check_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_sata_channel = type { i64, i32, i32, i32, i32 }
%union.ccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ATA_SE_PHY_CHANGED = common dso_local global i32 0, align 4
@ATA_SE_EXCHANGED = common dso_local global i32 0, align 4
@FSL_SATA_P_SSTS = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@ATA_SS_DET_MASK = common dso_local global i32 0, align 4
@ATA_SS_DET_NO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"CONNECT requested\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"DISCONNECT requested\0A\00", align 1
@AC_BUS_RESET = common dso_local global i32 0, align 4
@CAM_TARGET_WILDCARD = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_sata_channel*, i32)* @fsl_sata_phy_check_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_sata_phy_check_events(%struct.fsl_sata_channel* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsl_sata_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.ccb*, align 8
  store %struct.fsl_sata_channel* %0, %struct.fsl_sata_channel** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %4, align 8
  %9 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @ATA_SE_PHY_CHANGED, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %12, %2
  %18 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %4, align 8
  %19 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %80

22:                                               ; preds = %17
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @ATA_SE_EXCHANGED, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %80

27:                                               ; preds = %22, %12
  %28 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %4, align 8
  %29 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @FSL_SATA_P_SSTS, align 4
  %32 = call i32 @ATA_INL(i32 %30, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i64, i64* @bootverbose, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %27
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @ATA_SS_DET_MASK, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @ATA_SS_DET_NO_DEVICE, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %4, align 8
  %43 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @device_printf(i32 %44, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %51

46:                                               ; preds = %35
  %47 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %4, align 8
  %48 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @device_printf(i32 %49, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %46, %41
  br label %52

52:                                               ; preds = %51, %27
  %53 = load i32, i32* @AC_BUS_RESET, align 4
  %54 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %4, align 8
  %55 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @xpt_async(i32 %53, i32 %56, i32* null)
  %58 = call %union.ccb* (...) @xpt_alloc_ccb_nowait()
  store %union.ccb* %58, %union.ccb** %7, align 8
  %59 = icmp eq %union.ccb* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %81

61:                                               ; preds = %52
  %62 = load %union.ccb*, %union.ccb** %7, align 8
  %63 = bitcast %union.ccb* %62 to %struct.TYPE_2__*
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %4, align 8
  %66 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @cam_sim_path(i32 %67)
  %69 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %70 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %71 = call i64 @xpt_create_path(i32* %64, i32* null, i32 %68, i32 %69, i32 %70)
  %72 = load i64, i64* @CAM_REQ_CMP, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %61
  %75 = load %union.ccb*, %union.ccb** %7, align 8
  %76 = call i32 @xpt_free_ccb(%union.ccb* %75)
  store i32 0, i32* %3, align 4
  br label %81

77:                                               ; preds = %61
  %78 = load %union.ccb*, %union.ccb** %7, align 8
  %79 = call i32 @xpt_rescan(%union.ccb* %78)
  store i32 1, i32* %3, align 4
  br label %81

80:                                               ; preds = %22, %17
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %77, %74, %60
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @ATA_INL(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @xpt_async(i32, i32, i32*) #1

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
