; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_request.c_scic_sds_general_request_construct.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_request.c_scic_sds_general_request_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32*, i32*, i8*, i8*, i64, i32, i32, i32, i32, i8*, i32*, i8*, i64, i32 }

@scic_sds_request_state_table = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@SCIC_NO_PROTOCOL = common dso_local global i32 0, align 4
@SCU_INVALID_FRAME_INDEX = common dso_local global i32 0, align 4
@SCI_SUCCESS = common dso_local global i32 0, align 4
@SCI_CONTROLLER_INVALID_IO_TAG = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i64, i8*, %struct.TYPE_3__*)* @scic_sds_general_request_construct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scic_sds_general_request_construct(i32* %0, i32* %1, i64 %2, i8* %3, %struct.TYPE_3__* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %10, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 15
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @sci_base_object_get_logger(i32* %13)
  %15 = load i32, i32* @scic_sds_request_state_table, align 4
  %16 = call i32 @sci_base_request_construct(i32* %12, i32 %14, i32 %15)
  %17 = load i64, i64* %8, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 14
  store i64 %17, i64* %19, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 13
  store i8* %20, i8** %22, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  store i32* %23, i32** %25, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 12
  store i32* %26, i32** %28, align 8
  %29 = load i8*, i8** @FALSE, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 11
  store i8* %29, i8** %31, align 8
  %32 = load i32, i32* @SCIC_NO_PROTOCOL, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 10
  store i32 %32, i32* %34, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i32 255, i32* %36, align 8
  %37 = load i32, i32* @SCU_INVALID_FRAME_INDEX, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 9
  store i32 %37, i32* %39, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @scic_sds_remote_device_get_sequence(i32* %40)
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 8
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @SCI_SUCCESS, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 7
  store i32 %44, i32* %46, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 6
  store i64 0, i64* %48, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  store i32 -1, i32* %50, align 4
  %51 = load i8*, i8** @FALSE, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 5
  store i8* %51, i8** %53, align 8
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* @SCI_CONTROLLER_INVALID_IO_TAG, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %5
  %58 = load i8*, i8** @FALSE, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 4
  store i8* %58, i8** %60, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 3
  store i32* null, i32** %62, align 8
  br label %74

63:                                               ; preds = %5
  %64 = load i8*, i8** @TRUE, align 8
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 4
  store i8* %64, i8** %66, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* %8, align 8
  %71 = call i32* @scic_sds_controller_get_task_context_buffer(i32* %69, i64 %70)
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 3
  store i32* %71, i32** %73, align 8
  br label %74

74:                                               ; preds = %63, %57
  ret void
}

declare dso_local i32 @sci_base_request_construct(i32*, i32, i32) #1

declare dso_local i32 @sci_base_object_get_logger(i32*) #1

declare dso_local i32 @scic_sds_remote_device_get_sequence(i32*) #1

declare dso_local i32* @scic_sds_controller_get_task_context_buffer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
