; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_controller_free_io_tag.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_controller_free_io_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64*, i32 }

@SCI_CONTROLLER_INVALID_IO_TAG = common dso_local global i64 0, align 8
@SCIC_LOG_OBJECT_CONTROLLER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"scic_controller_free_io_tag(0x%x, 0x%x) enter\0A\00", align 1
@SCI_SUCCESS = common dso_local global i32 0, align 4
@SCI_FAILURE_INVALID_IO_TAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scic_controller_free_io_tag(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = inttoptr i64 %9 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %8, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @SCI_CONTROLLER_INVALID_IO_TAG, align 8
  %13 = icmp ne i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @ASSERT(i32 %14)
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @sci_base_object_get_logger(i64 %16)
  %18 = load i32, i32* @SCIC_LOG_OBJECT_CONTROLLER, align 4
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* %5, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i32 @SCIC_LOG_TRACE(i32 %21)
  %23 = load i64, i64* %5, align 8
  %24 = call i64 @scic_sds_io_tag_get_sequence(i64 %23)
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call i64 @scic_sds_io_tag_get_index(i64 %25)
  store i64 %26, i64* %7, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @sci_pool_full(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %56, label %32

32:                                               ; preds = %2
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %33, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %32
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = load i64, i64* %7, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @scic_sds_io_sequence_increment(i64 %47)
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @sci_pool_put(i32 %51, i64 %52)
  %54 = load i32, i32* @SCI_SUCCESS, align 4
  store i32 %54, i32* %3, align 4
  br label %58

55:                                               ; preds = %32
  br label %56

56:                                               ; preds = %55, %2
  %57 = load i32, i32* @SCI_FAILURE_INVALID_IO_TAG, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %41
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @SCIC_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(i64) #1

declare dso_local i64 @scic_sds_io_tag_get_sequence(i64) #1

declare dso_local i64 @scic_sds_io_tag_get_index(i64) #1

declare dso_local i32 @sci_pool_full(i32) #1

declare dso_local i32 @scic_sds_io_sequence_increment(i64) #1

declare dso_local i32 @sci_pool_put(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
