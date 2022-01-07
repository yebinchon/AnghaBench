; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_cam.c_ocs_scsi_new_initiator.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_cam.c_ocs_scsi_new_initiator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_10__, %struct.TYPE_9__*, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.ac_contract = type { i64, i32 }
%struct.ac_device_changed = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"FCP is NULL \0A\00", align 1
@OCS_RSVD_INI_IO = common dso_local global i32 0, align 4
@AC_CONTRACT_DEV_CHG = common dso_local global i32 0, align 4
@AC_CONTRACT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocs_scsi_new_initiator(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.ac_contract, align 8
  %6 = alloca %struct.ac_device_changed*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 3
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  store %struct.TYPE_11__* %10, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %7, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %7, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %17 = icmp eq %struct.TYPE_13__* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %20 = call i32 @ocs_log_err(%struct.TYPE_11__* %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %53

21:                                               ; preds = %1
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i32, i32* @OCS_RSVD_INI_IO, align 4
  %25 = call i32 @atomic_subtract_acq_32(i32* %23, i32 %24)
  %26 = load i32, i32* @AC_CONTRACT_DEV_CHG, align 4
  %27 = getelementptr inbounds %struct.ac_contract, %struct.ac_contract* %5, i32 0, i32 1
  store i32 %26, i32* %27, align 8
  %28 = getelementptr inbounds %struct.ac_contract, %struct.ac_contract* %5, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.ac_device_changed*
  store %struct.ac_device_changed* %30, %struct.ac_device_changed** %6, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %32 = call i32 @ocs_node_get_wwpn(%struct.TYPE_12__* %31)
  %33 = load %struct.ac_device_changed*, %struct.ac_device_changed** %6, align 8
  %34 = getelementptr inbounds %struct.ac_device_changed, %struct.ac_device_changed* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ac_device_changed*, %struct.ac_device_changed** %6, align 8
  %40 = getelementptr inbounds %struct.ac_device_changed, %struct.ac_device_changed* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.ac_device_changed*, %struct.ac_device_changed** %6, align 8
  %45 = getelementptr inbounds %struct.ac_device_changed, %struct.ac_device_changed* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.ac_device_changed*, %struct.ac_device_changed** %6, align 8
  %47 = getelementptr inbounds %struct.ac_device_changed, %struct.ac_device_changed* %46, i32 0, i32 0
  store i32 1, i32* %47, align 4
  %48 = load i32, i32* @AC_CONTRACT, align 4
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @xpt_async(i32 %48, i32 %51, %struct.ac_contract* %5)
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %21, %18
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @ocs_log_err(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @atomic_subtract_acq_32(i32*, i32) #1

declare dso_local i32 @ocs_node_get_wwpn(%struct.TYPE_12__*) #1

declare dso_local i32 @xpt_async(i32, i32, %struct.ac_contract*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
