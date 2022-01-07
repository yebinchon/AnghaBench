; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_controller_complete_task.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_controller_complete_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (i32*, i32*, i32*)* }

@SCI_FAILURE_INVALID_STATE = common dso_local global i32 0, align 4
@SCIC_LOG_OBJECT_CONTROLLER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"scic_controller_complete_task(0x%x, 0x%x, 0x%x) enter\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"SCIC Controller completing task from invalid state\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scic_controller_complete_task(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i32, i32* @SCI_FAILURE_INVALID_STATE, align 4
  store i32 %9, i32* %7, align 4
  %10 = load i64, i64* %4, align 8
  %11 = inttoptr i64 %10 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %8, align 8
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @sci_base_object_get_logger(i64 %12)
  %14 = load i32, i32* @SCIC_LOG_OBJECT_CONTROLLER, align 4
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = trunc i64 %17 to i32
  %19 = call i32 @SCIC_LOG_TRACE(i32 %18)
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32 (i32*, i32*, i32*)*, i32 (i32*, i32*, i32*)** %24, align 8
  %26 = icmp ne i32 (i32*, i32*, i32*)* %25, null
  br i1 %26, label %27, label %41

27:                                               ; preds = %3
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32 (i32*, i32*, i32*)*, i32 (i32*, i32*, i32*)** %32, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %5, align 8
  %37 = inttoptr i64 %36 to i32*
  %38 = load i64, i64* %6, align 8
  %39 = inttoptr i64 %38 to i32*
  %40 = call i32 %33(i32* %35, i32* %37, i32* %39)
  store i32 %40, i32* %7, align 4
  br label %46

41:                                               ; preds = %3
  %42 = load i64, i64* %4, align 8
  %43 = call i32 @sci_base_object_get_logger(i64 %42)
  %44 = load i32, i32* @SCIC_LOG_OBJECT_CONTROLLER, align 4
  %45 = call i32 @SCIC_LOG_INFO(i32 ptrtoint ([52 x i8]* @.str.1 to i32))
  br label %46

46:                                               ; preds = %41, %27
  %47 = load i32, i32* %7, align 4
  ret i32 %47
}

declare dso_local i32 @SCIC_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(i64) #1

declare dso_local i32 @SCIC_LOG_INFO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
