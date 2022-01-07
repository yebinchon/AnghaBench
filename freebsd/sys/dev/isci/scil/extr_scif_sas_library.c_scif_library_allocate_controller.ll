; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_library.c_scif_library_allocate_controller.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_library.c_scif_library_allocate_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@SCI_INVALID_HANDLE = common dso_local global i64 0, align 8
@SCI_SUCCESS = common dso_local global i64 0, align 8
@SCIF_LOG_OBJECT_LIBRARY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Library:0x%x Status:0x%x controller allocation failed\0A\00", align 1
@SCI_FAILURE_INVALID_PARAMETER_VALUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @scif_library_allocate_controller(i64 %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  store i64 %0, i64* %3, align 8
  store i64* %1, i64** %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @SCI_INVALID_HANDLE, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %53

11:                                               ; preds = %2
  %12 = load i64, i64* %3, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %6, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %15 = load i64*, i64** %4, align 8
  %16 = call i32 @SCI_BASE_LIBRARY_ALLOCATE_CONTROLLER(%struct.TYPE_7__* %14, i64* %15, i64* %5)
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @SCI_SUCCESS, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %40

20:                                               ; preds = %11
  %21 = load i64*, i64** %4, align 8
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %7, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %25 = call i32 @memset(%struct.TYPE_8__* %24, i32 0, i32 4)
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = call i64 @scic_library_allocate_controller(i32 %28, i32* %30)
  store i64 %31, i64* %5, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @SCI_SUCCESS, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %20
  %36 = load i64, i64* %3, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %38 = call i32 @scif_library_free_controller(i64 %36, %struct.TYPE_8__* %37)
  br label %39

39:                                               ; preds = %35, %20
  br label %40

40:                                               ; preds = %39, %11
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* @SCI_SUCCESS, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %46 = call i32 @sci_base_object_get_logger(%struct.TYPE_7__* %45)
  %47 = load i32, i32* @SCIF_LOG_OBJECT_LIBRARY, align 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %49 = load i64, i64* %5, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i32 @SCIF_LOG_WARNING(i32 %50)
  br label %52

52:                                               ; preds = %44, %40
  br label %55

53:                                               ; preds = %2
  %54 = load i64, i64* @SCI_FAILURE_INVALID_PARAMETER_VALUE, align 8
  store i64 %54, i64* %5, align 8
  br label %55

55:                                               ; preds = %53, %52
  %56 = load i64, i64* %5, align 8
  ret i64 %56
}

declare dso_local i32 @SCI_BASE_LIBRARY_ALLOCATE_CONTROLLER(%struct.TYPE_7__*, i64*, i64*) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i64 @scic_library_allocate_controller(i32, i32*) #1

declare dso_local i32 @scif_library_free_controller(i64, %struct.TYPE_8__*) #1

declare dso_local i32 @SCIF_LOG_WARNING(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
