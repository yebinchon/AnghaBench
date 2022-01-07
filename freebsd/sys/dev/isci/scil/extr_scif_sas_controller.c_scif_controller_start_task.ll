; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_controller.c_scif_controller_start_task.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_controller.c_scif_controller_start_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32*, i32*, i32*, i32)* }

@SCI_INVALID_HANDLE = common dso_local global i64 0, align 8
@SCI_TASK_FAILURE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@SCIF_LOG_OBJECT_CONTROLLER = common dso_local global i32 0, align 4
@SCIF_LOG_OBJECT_TASK_MANAGEMENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"scif_controller_start_task(0x%x, 0x%x, 0x%x, 0x%x) enter\0A\00", align 1
@SCI_FAILURE_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scif_controller_start_task(i64 %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i64, i64* %6, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %10, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @SCI_INVALID_HANDLE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %25, label %17

17:                                               ; preds = %4
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @SCI_INVALID_HANDLE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* @SCI_INVALID_HANDLE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21, %17, %4
  %26 = load i32, i32* @SCI_TASK_FAILURE_INVALID_PARAMETER_VALUE, align 4
  store i32 %26, i32* %5, align 4
  br label %59

27:                                               ; preds = %21
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @sci_base_object_get_logger(i64 %28)
  %30 = load i32, i32* @SCIF_LOG_OBJECT_CONTROLLER, align 4
  %31 = load i32, i32* @SCIF_LOG_OBJECT_TASK_MANAGEMENT, align 4
  %32 = or i32 %30, %31
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @SCIF_LOG_TRACE(i32 %36)
  %38 = load i64, i64* %6, align 8
  %39 = call i64 @scif_sas_controller_sufficient_resource(i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %27
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32 (i32*, i32*, i32*, i32)*, i32 (i32*, i32*, i32*, i32)** %45, align 8
  %47 = load i64, i64* %6, align 8
  %48 = inttoptr i64 %47 to i32*
  %49 = load i64, i64* %7, align 8
  %50 = inttoptr i64 %49 to i32*
  %51 = load i64, i64* %8, align 8
  %52 = inttoptr i64 %51 to i32*
  %53 = load i32, i32* %9, align 4
  %54 = call i32 %46(i32* %48, i32* %50, i32* %52, i32 %53)
  store i32 %54, i32* %11, align 4
  br label %57

55:                                               ; preds = %27
  %56 = load i32, i32* @SCI_FAILURE_INSUFFICIENT_RESOURCES, align 4
  store i32 %56, i32* %11, align 4
  br label %57

57:                                               ; preds = %55, %41
  %58 = load i32, i32* %11, align 4
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %57, %25
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @SCIF_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(i64) #1

declare dso_local i64 @scif_sas_controller_sufficient_resource(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
