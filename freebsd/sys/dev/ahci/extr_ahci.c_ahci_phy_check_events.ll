; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_phy_check_events.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_phy_check_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_channel = type { i64, i32, i32, i32, i64 }
%union.ccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ATA_SE_PHY_CHANGED = common dso_local global i32 0, align 4
@ATA_SE_EXCHANGED = common dso_local global i32 0, align 4
@AHCI_P_SSTS = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@ATA_SS_DET_MASK = common dso_local global i32 0, align 4
@ATA_SS_DET_NO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"CONNECT requested\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"DISCONNECT requested\0A\00", align 1
@CAM_TARGET_WILDCARD = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahci_channel*, i32)* @ahci_phy_check_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahci_phy_check_events(%struct.ahci_channel* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ahci_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.ccb*, align 8
  store %struct.ahci_channel* %0, %struct.ahci_channel** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ahci_channel*, %struct.ahci_channel** %4, align 8
  %9 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @ATA_SE_PHY_CHANGED, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %32, label %17

17:                                               ; preds = %12, %2
  %18 = load %struct.ahci_channel*, %struct.ahci_channel** %4, align 8
  %19 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load %struct.ahci_channel*, %struct.ahci_channel** %4, align 8
  %24 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %82

27:                                               ; preds = %22, %17
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @ATA_SE_EXCHANGED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %82

32:                                               ; preds = %27, %12
  %33 = load %struct.ahci_channel*, %struct.ahci_channel** %4, align 8
  %34 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @AHCI_P_SSTS, align 4
  %37 = call i32 @ATA_INL(i32 %35, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i64, i64* @bootverbose, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %32
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @ATA_SS_DET_MASK, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* @ATA_SS_DET_NO_DEVICE, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load %struct.ahci_channel*, %struct.ahci_channel** %4, align 8
  %48 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @device_printf(i32 %49, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %56

51:                                               ; preds = %40
  %52 = load %struct.ahci_channel*, %struct.ahci_channel** %4, align 8
  %53 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @device_printf(i32 %54, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %51, %46
  br label %57

57:                                               ; preds = %56, %32
  %58 = load %struct.ahci_channel*, %struct.ahci_channel** %4, align 8
  %59 = call i32 @ahci_reset(%struct.ahci_channel* %58)
  %60 = call %union.ccb* (...) @xpt_alloc_ccb_nowait()
  store %union.ccb* %60, %union.ccb** %7, align 8
  %61 = icmp eq %union.ccb* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %83

63:                                               ; preds = %57
  %64 = load %union.ccb*, %union.ccb** %7, align 8
  %65 = bitcast %union.ccb* %64 to %struct.TYPE_2__*
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load %struct.ahci_channel*, %struct.ahci_channel** %4, align 8
  %68 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @cam_sim_path(i32 %69)
  %71 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %72 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %73 = call i64 @xpt_create_path(i32* %66, i32* null, i32 %70, i32 %71, i32 %72)
  %74 = load i64, i64* @CAM_REQ_CMP, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %63
  %77 = load %union.ccb*, %union.ccb** %7, align 8
  %78 = call i32 @xpt_free_ccb(%union.ccb* %77)
  store i32 0, i32* %3, align 4
  br label %83

79:                                               ; preds = %63
  %80 = load %union.ccb*, %union.ccb** %7, align 8
  %81 = call i32 @xpt_rescan(%union.ccb* %80)
  store i32 1, i32* %3, align 4
  br label %83

82:                                               ; preds = %27, %22
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %79, %76, %62
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @ATA_INL(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ahci_reset(%struct.ahci_channel*) #1

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
