; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_sysctl.c_isci_sysctl_initialize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_sysctl.c_isci_sysctl_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_softc = type { i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"coalesce_timeout\00", align 1
@CTLTYPE_UINT = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@isci_sysctl_coalesce_timeout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"IU\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Interrupt coalescing timeout (in microseconds)\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"coalesce_number\00", align 1
@isci_sysctl_coalesce_number = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Interrupt coalescing number\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"reset_remote_device_on_controller0\00", align 1
@isci_sysctl_reset_remote_device_on_controller0 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"Reset remote device on controller 0\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"reset_remote_device_on_controller1\00", align 1
@isci_sysctl_reset_remote_device_on_controller1 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [36 x i8] c"Reset remote device on controller 1\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"stop_phy\00", align 1
@isci_sysctl_stop_phy = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [25 x i8] c"Stop PHY on a controller\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"start_phy\00", align 1
@isci_sysctl_start_phy = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [26 x i8] c"Start PHY on a controller\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"log_frozen_lun_masks\00", align 1
@isci_sysctl_log_frozen_lun_masks = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [35 x i8] c"Log frozen lun masks to kernel log\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"fail_on_task_timeout\00", align 1
@isci_sysctl_fail_on_task_timeout = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [62 x i8] c"Fail a command that has encountered a task management timeout\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isci_sysctl_initialize(%struct.isci_softc* %0) #0 {
  %2 = alloca %struct.isci_softc*, align 8
  %3 = alloca %struct.sysctl_ctx_list*, align 8
  %4 = alloca %struct.sysctl_oid*, align 8
  store %struct.isci_softc* %0, %struct.isci_softc** %2, align 8
  %5 = load %struct.isci_softc*, %struct.isci_softc** %2, align 8
  %6 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %7)
  store %struct.sysctl_ctx_list* %8, %struct.sysctl_ctx_list** %3, align 8
  %9 = load %struct.isci_softc*, %struct.isci_softc** %2, align 8
  %10 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %11)
  store %struct.sysctl_oid* %12, %struct.sysctl_oid** %4, align 8
  %13 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %14 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %15 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %14)
  %16 = load i32, i32* @OID_AUTO, align 4
  %17 = load i32, i32* @CTLTYPE_UINT, align 4
  %18 = load i32, i32* @CTLFLAG_RW, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.isci_softc*, %struct.isci_softc** %2, align 8
  %21 = load i32, i32* @isci_sysctl_coalesce_timeout, align 4
  %22 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %13, i32 %15, i32 %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %19, %struct.isci_softc* %20, i32 0, i32 %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %23 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %24 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %25 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %24)
  %26 = load i32, i32* @OID_AUTO, align 4
  %27 = load i32, i32* @CTLTYPE_UINT, align 4
  %28 = load i32, i32* @CTLFLAG_RW, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.isci_softc*, %struct.isci_softc** %2, align 8
  %31 = load i32, i32* @isci_sysctl_coalesce_number, align 4
  %32 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %23, i32 %25, i32 %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %29, %struct.isci_softc* %30, i32 0, i32 %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %33 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %34 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %35 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %34)
  %36 = load i32, i32* @OID_AUTO, align 4
  %37 = load i32, i32* @CTLTYPE_UINT, align 4
  %38 = load i32, i32* @CTLFLAG_RW, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.isci_softc*, %struct.isci_softc** %2, align 8
  %41 = load i32, i32* @isci_sysctl_reset_remote_device_on_controller0, align 4
  %42 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %33, i32 %35, i32 %36, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %39, %struct.isci_softc* %40, i32 0, i32 %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %43 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %44 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %45 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %44)
  %46 = load i32, i32* @OID_AUTO, align 4
  %47 = load i32, i32* @CTLTYPE_UINT, align 4
  %48 = load i32, i32* @CTLFLAG_RW, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.isci_softc*, %struct.isci_softc** %2, align 8
  %51 = load i32, i32* @isci_sysctl_reset_remote_device_on_controller1, align 4
  %52 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %43, i32 %45, i32 %46, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %49, %struct.isci_softc* %50, i32 0, i32 %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
  %53 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %54 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %55 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %54)
  %56 = load i32, i32* @OID_AUTO, align 4
  %57 = load i32, i32* @CTLTYPE_UINT, align 4
  %58 = load i32, i32* @CTLFLAG_RW, align 4
  %59 = or i32 %57, %58
  %60 = load %struct.isci_softc*, %struct.isci_softc** %2, align 8
  %61 = load i32, i32* @isci_sysctl_stop_phy, align 4
  %62 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %53, i32 %55, i32 %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %59, %struct.isci_softc* %60, i32 0, i32 %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  %63 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %64 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %65 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %64)
  %66 = load i32, i32* @OID_AUTO, align 4
  %67 = load i32, i32* @CTLTYPE_UINT, align 4
  %68 = load i32, i32* @CTLFLAG_RW, align 4
  %69 = or i32 %67, %68
  %70 = load %struct.isci_softc*, %struct.isci_softc** %2, align 8
  %71 = load i32, i32* @isci_sysctl_start_phy, align 4
  %72 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %63, i32 %65, i32 %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32 %69, %struct.isci_softc* %70, i32 0, i32 %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0))
  %73 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %74 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %75 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %74)
  %76 = load i32, i32* @OID_AUTO, align 4
  %77 = load i32, i32* @CTLTYPE_UINT, align 4
  %78 = load i32, i32* @CTLFLAG_RW, align 4
  %79 = or i32 %77, %78
  %80 = load %struct.isci_softc*, %struct.isci_softc** %2, align 8
  %81 = load i32, i32* @isci_sysctl_log_frozen_lun_masks, align 4
  %82 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %73, i32 %75, i32 %76, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i32 %79, %struct.isci_softc* %80, i32 0, i32 %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0))
  %83 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %84 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %85 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %84)
  %86 = load i32, i32* @OID_AUTO, align 4
  %87 = load i32, i32* @CTLTYPE_UINT, align 4
  %88 = load i32, i32* @CTLFLAG_RW, align 4
  %89 = or i32 %87, %88
  %90 = load %struct.isci_softc*, %struct.isci_softc** %2, align 8
  %91 = load i32, i32* @isci_sysctl_fail_on_task_timeout, align 4
  %92 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %83, i32 %85, i32 %86, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i32 %89, %struct.isci_softc* %90, i32 0, i32 %91, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.16, i64 0, i64 0))
  ret void
}

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, %struct.isci_softc*, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
