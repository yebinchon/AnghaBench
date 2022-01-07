; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_remote_device.c_scic_remote_device_set_port_width.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_remote_device.c_scic_remote_device_set_port_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@SCIC_LOG_OBJECT_SSP_REMOTE_TARGET = common dso_local global i32 0, align 4
@SCIC_LOG_OBJECT_STP_REMOTE_TARGET = common dso_local global i32 0, align 4
@SCIC_LOG_OBJECT_SMP_REMOTE_TARGET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"scic_remote_device_set_port_width(0x%x, 0x%x) enter\0A\00", align 1
@SCI_SUCCESS = common dso_local global i32 0, align 4
@SCI_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scic_remote_device_set_port_width(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = inttoptr i64 %7 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** %6, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %10 = call i32 @sci_base_object_get_logger(%struct.TYPE_3__* %9)
  %11 = load i32, i32* @SCIC_LOG_OBJECT_SSP_REMOTE_TARGET, align 4
  %12 = load i32, i32* @SCIC_LOG_OBJECT_STP_REMOTE_TARGET, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @SCIC_LOG_OBJECT_SMP_REMOTE_TARGET, align 4
  %15 = or i32 %13, %14
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = trunc i64 %17 to i32
  %19 = call i32 @SCIC_LOG_TRACE(i32 %18)
  %20 = load i64, i64* %5, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load i64, i64* %5, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load i32, i32* @SCI_SUCCESS, align 4
  store i32 %26, i32* %3, align 4
  br label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @SCI_FAILURE, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %27, %22
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @SCIC_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
