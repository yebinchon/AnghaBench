; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_cpd_check_events.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_cpd_check_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_channel = type { i64, i32, i32, i32 }
%union.ccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AHCI_P_CMD = common dso_local global i32 0, align 4
@AHCI_P_CMD_CPD = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@AHCI_P_CMD_CPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"COLD CONNECT requested\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"COLD DISCONNECT requested\0A\00", align 1
@CAM_TARGET_WILDCARD = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahci_channel*)* @ahci_cpd_check_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahci_cpd_check_events(%struct.ahci_channel* %0) #0 {
  %2 = alloca %struct.ahci_channel*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %union.ccb*, align 8
  %5 = alloca i32, align 4
  store %struct.ahci_channel* %0, %struct.ahci_channel** %2, align 8
  %6 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %7 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %65

11:                                               ; preds = %1
  %12 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %13 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @AHCI_P_CMD, align 4
  %16 = call i32 @ATA_INL(i32 %14, i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @AHCI_P_CMD_CPD, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %11
  br label %65

22:                                               ; preds = %11
  %23 = load i64, i64* @bootverbose, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %22
  %26 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %27 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @AHCI_P_CMD_CPS, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @device_printf(i32 %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %39

36:                                               ; preds = %25
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @device_printf(i32 %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %33
  br label %40

40:                                               ; preds = %39, %22
  %41 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %42 = call i32 @ahci_reset(%struct.ahci_channel* %41)
  %43 = call %union.ccb* (...) @xpt_alloc_ccb_nowait()
  store %union.ccb* %43, %union.ccb** %4, align 8
  %44 = icmp eq %union.ccb* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %65

46:                                               ; preds = %40
  %47 = load %union.ccb*, %union.ccb** %4, align 8
  %48 = bitcast %union.ccb* %47 to %struct.TYPE_2__*
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %51 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @cam_sim_path(i32 %52)
  %54 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %55 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %56 = call i64 @xpt_create_path(i32* %49, i32* null, i32 %53, i32 %54, i32 %55)
  %57 = load i64, i64* @CAM_REQ_CMP, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %46
  %60 = load %union.ccb*, %union.ccb** %4, align 8
  %61 = call i32 @xpt_free_ccb(%union.ccb* %60)
  br label %65

62:                                               ; preds = %46
  %63 = load %union.ccb*, %union.ccb** %4, align 8
  %64 = call i32 @xpt_rescan(%union.ccb* %63)
  br label %65

65:                                               ; preds = %62, %59, %45, %21, %10
  ret void
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
