; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_smp_remote_device.c_scif_sas_smp_remote_device_decode_target_reset_phy_control_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_smp_remote_device.c_scif_sas_smp_remote_device_decode_target_reset_phy_control_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@SCI_SUCCESS = common dso_local global i32 0, align 4
@SCIF_LOG_OBJECT_REMOTE_DEVICE = common dso_local global i32 0, align 4
@SCIF_LOG_OBJECT_DOMAIN_DISCOVERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [87 x i8] c"scif_sas_smp_remote_device_decode_target_reset_phy_control_response(0x%x, 0x%x) enter\0A\00", align 1
@SMP_RESULT_FUNCTION_ACCEPTED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"Phy Control function unaccepted result(0x%x)\0A\00", align 1
@SCI_FAILURE_RETRY_REQUIRED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scif_sas_smp_remote_device_decode_target_reset_phy_control_response(i32* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %5, align 8
  %9 = load i32, i32* @SCI_SUCCESS, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @sci_base_object_get_logger(i32* %10)
  %12 = load i32, i32* @SCIF_LOG_OBJECT_REMOTE_DEVICE, align 4
  %13 = load i32, i32* @SCIF_LOG_OBJECT_DOMAIN_DISCOVERY, align 4
  %14 = or i32 %12, %13
  %15 = load i32*, i32** %3, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = ptrtoint %struct.TYPE_4__* %16 to i32
  %18 = call i32 @SCIF_LOG_TRACE(i32 %17)
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SMP_RESULT_FUNCTION_ACCEPTED, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %2
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @sci_base_object_get_logger(i32* %25)
  %27 = load i32, i32* @SCIF_LOG_OBJECT_REMOTE_DEVICE, align 4
  %28 = load i32, i32* @SCIF_LOG_OBJECT_DOMAIN_DISCOVERY, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = call i32 @SCIF_LOG_ERROR(i32 %33)
  %35 = load i32, i32* @SCI_FAILURE_RETRY_REQUIRED, align 4
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %24, %2
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local i32 @SCIF_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(i32*) #1

declare dso_local i32 @SCIF_LOG_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
