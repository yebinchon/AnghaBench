; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_cam.c_ocs_scsi_del_initiator.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_cam.c_ocs_scsi_del_initiator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_10__, %struct.TYPE_9__*, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.ac_contract = type { i64, i32 }
%struct.ac_device_changed = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"FCP is NULL \0A\00", align 1
@AC_CONTRACT_DEV_CHG = common dso_local global i32 0, align 4
@AC_CONTRACT = common dso_local global i32 0, align 4
@OCS_SCSI_INITIATOR_MISSING = common dso_local global i64 0, align 8
@OCS_SCSI_CALL_COMPLETE = common dso_local global i32 0, align 4
@OCS_RSVD_INI_IO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocs_scsi_del_initiator(%struct.TYPE_12__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.ac_contract, align 8
  %8 = alloca %struct.ac_device_changed*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 3
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %9, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %9, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %19 = icmp eq %struct.TYPE_13__* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %22 = call i32 @ocs_log_err(%struct.TYPE_11__* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %62

23:                                               ; preds = %2
  %24 = load i32, i32* @AC_CONTRACT_DEV_CHG, align 4
  %25 = getelementptr inbounds %struct.ac_contract, %struct.ac_contract* %7, i32 0, i32 1
  store i32 %24, i32* %25, align 8
  %26 = getelementptr inbounds %struct.ac_contract, %struct.ac_contract* %7, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.ac_device_changed*
  store %struct.ac_device_changed* %28, %struct.ac_device_changed** %8, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %30 = call i32 @ocs_node_get_wwpn(%struct.TYPE_12__* %29)
  %31 = load %struct.ac_device_changed*, %struct.ac_device_changed** %8, align 8
  %32 = getelementptr inbounds %struct.ac_device_changed, %struct.ac_device_changed* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ac_device_changed*, %struct.ac_device_changed** %8, align 8
  %38 = getelementptr inbounds %struct.ac_device_changed, %struct.ac_device_changed* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.ac_device_changed*, %struct.ac_device_changed** %8, align 8
  %43 = getelementptr inbounds %struct.ac_device_changed, %struct.ac_device_changed* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  %44 = load %struct.ac_device_changed*, %struct.ac_device_changed** %8, align 8
  %45 = getelementptr inbounds %struct.ac_device_changed, %struct.ac_device_changed* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* @AC_CONTRACT, align 4
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @xpt_async(i32 %46, i32 %49, %struct.ac_contract* %7)
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* @OCS_SCSI_INITIATOR_MISSING, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %23
  %55 = load i32, i32* @OCS_SCSI_CALL_COMPLETE, align 4
  store i32 %55, i32* %3, align 4
  br label %62

56:                                               ; preds = %23
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i32, i32* @OCS_RSVD_INI_IO, align 4
  %60 = call i32 @atomic_add_acq_32(i32* %58, i32 %59)
  %61 = load i32, i32* @OCS_SCSI_CALL_COMPLETE, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %56, %54, %20
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @ocs_log_err(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @ocs_node_get_wwpn(%struct.TYPE_12__*) #1

declare dso_local i32 @xpt_async(i32, i32, %struct.ac_contract*) #1

declare dso_local i32 @atomic_add_acq_32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
