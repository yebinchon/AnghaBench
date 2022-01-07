; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_controller.c_scif_controller_complete_task.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_controller.c_scif_controller_complete_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32*, i32*, i32*)* }

@SCI_INVALID_HANDLE = common dso_local global i64 0, align 8
@SCI_FAILURE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@SCIF_LOG_OBJECT_CONTROLLER = common dso_local global i32 0, align 4
@SCIF_LOG_OBJECT_TASK_MANAGEMENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"scif_controller_complete_task(0x%x, 0x%x, 0x%x) enter\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scif_controller_complete_task(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %5, align 8
  %10 = inttoptr i64 %9 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %8, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @SCI_INVALID_HANDLE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %22, label %14

14:                                               ; preds = %3
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @SCI_INVALID_HANDLE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @SCI_INVALID_HANDLE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18, %14, %3
  %23 = load i32, i32* @SCI_FAILURE_INVALID_PARAMETER_VALUE, align 4
  store i32 %23, i32* %4, align 4
  br label %47

24:                                               ; preds = %18
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @sci_base_object_get_logger(i64 %25)
  %27 = load i32, i32* @SCIF_LOG_OBJECT_CONTROLLER, align 4
  %28 = load i32, i32* @SCIF_LOG_OBJECT_TASK_MANAGEMENT, align 4
  %29 = or i32 %27, %28
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = trunc i64 %32 to i32
  %34 = call i32 @SCIF_LOG_TRACE(i32 %33)
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32 (i32*, i32*, i32*)*, i32 (i32*, i32*, i32*)** %38, align 8
  %40 = load i64, i64* %5, align 8
  %41 = inttoptr i64 %40 to i32*
  %42 = load i64, i64* %6, align 8
  %43 = inttoptr i64 %42 to i32*
  %44 = load i64, i64* %7, align 8
  %45 = inttoptr i64 %44 to i32*
  %46 = call i32 %39(i32* %41, i32* %43, i32* %45)
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %24, %22
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @SCIF_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
