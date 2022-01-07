; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_smp_remote_device.c_scif_sas_smp_remote_device_decode_discover_phy_control_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_smp_remote_device.c_scif_sas_smp_remote_device_decode_discover_phy_control_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }

@SCI_SUCCESS = common dso_local global i32 0, align 4
@SCIF_LOG_OBJECT_REMOTE_DEVICE = common dso_local global i32 0, align 4
@SCIF_LOG_OBJECT_DOMAIN_DISCOVERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [83 x i8] c"scif_sas_smp_remote_device_decode_discover_phy_control_response(0x%x, 0x%x) enter\0A\00", align 1
@SMP_RESULT_FUNCTION_ACCEPTED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"Phy Control function unaccepted result(0x%x)\0A\00", align 1
@SCI_FAILURE_RETRY_REQUIRED = common dso_local global i32 0, align 4
@SMP_FUNCTION_DISCOVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scif_sas_smp_remote_device_decode_discover_phy_control_response(%struct.TYPE_13__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  store %struct.TYPE_12__* %9, %struct.TYPE_12__** %6, align 8
  %10 = load i32, i32* @SCI_SUCCESS, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %12 = call i32 @sci_base_object_get_logger(%struct.TYPE_13__* %11)
  %13 = load i32, i32* @SCIF_LOG_OBJECT_REMOTE_DEVICE, align 4
  %14 = load i32, i32* @SCIF_LOG_OBJECT_DOMAIN_DISCOVERY, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %18 = ptrtoint %struct.TYPE_11__* %17 to i32
  %19 = call i32 @SCIF_LOG_TRACE(i32 %18)
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SMP_RESULT_FUNCTION_ACCEPTED, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %2
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %27 = call i32 @sci_base_object_get_logger(%struct.TYPE_13__* %26)
  %28 = load i32, i32* @SCIF_LOG_OBJECT_REMOTE_DEVICE, align 4
  %29 = load i32, i32* @SCIF_LOG_OBJECT_DOMAIN_DISCOVERY, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 @SCIF_LOG_ERROR(i32 %34)
  %36 = load i32, i32* @SCI_FAILURE_RETRY_REQUIRED, align 4
  store i32 %36, i32* %3, align 4
  br label %44

37:                                               ; preds = %2
  %38 = load i32, i32* @SMP_FUNCTION_DISCOVER, align 4
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  store i32 %38, i32* %42, align 4
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %37, %25
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @SCIF_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_13__*) #1

declare dso_local i32 @SCIF_LOG_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
