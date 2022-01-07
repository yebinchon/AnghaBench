; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_request.c_scic_io_request_construct_sata_pass_through.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_request.c_scic_io_request_construct_sata_pass_through.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__, i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*, i32**)* }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)* }
%struct.TYPE_12__ = type { i32, i64 }

@SCI_SUCCESS = common dso_local global i64 0, align 8
@SCIC_LOG_OBJECT_STP_IO_REQUEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"scic_io_request_construct_sata_pass_through(0x%x) enter\0A\00", align 1
@SCI_FAILURE_INVALID_PARAMETER_VALUE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@SCIC_STP_PROTOCOL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @scic_io_request_construct_sata_pass_through(i64 %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %11 = load i64, i64* @SCI_SUCCESS, align 8
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %3, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %13, %struct.TYPE_12__** %6, align 8
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @sci_base_object_get_logger(i64 %14)
  %16 = load i32, i32* @SCIC_LOG_OBJECT_STP_IO_REQUEST, align 4
  %17 = load i64, i64* %3, align 8
  %18 = trunc i64 %17 to i32
  %19 = call i32 @SCIC_LOG_TRACE(i32 %18)
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 2
  %22 = load i32 (%struct.TYPE_12__*, i32**)*, i32 (%struct.TYPE_12__*, i32**)** %21, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %24 = call i32 %22(%struct.TYPE_12__* %23, i32** %8)
  %25 = load i32*, i32** %8, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i64, i64* @SCI_FAILURE_INVALID_PARAMETER_VALUE, align 8
  store i64 %28, i64* %5, align 8
  br label %29

29:                                               ; preds = %27, %2
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @SCI_SUCCESS, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %67

33:                                               ; preds = %29
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i32*
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @memcpy(i32* %37, i32* %38, i32 4)
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %41, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %44 = call i32 %42(%struct.TYPE_12__* %43)
  store i32 %44, i32* %7, align 4
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %47, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %50 = call i32 %48(%struct.TYPE_12__* %49)
  store i32 %50, i32* %9, align 4
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %53, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %56 = call i32 %54(%struct.TYPE_12__* %55)
  store i32 %56, i32* %10, align 4
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @TRUE, align 4
  %62 = load i32, i32* @TRUE, align 4
  %63 = call i64 @scic_sds_io_request_construct_sata(%struct.TYPE_12__* %57, i32 %58, i32 %59, i32 %60, i32 %61, i32 %62)
  store i64 %63, i64* %5, align 8
  %64 = load i32, i32* @SCIC_STP_PROTOCOL, align 4
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  br label %67

67:                                               ; preds = %33, %29
  %68 = load i64, i64* %5, align 8
  ret i64 %68
}

declare dso_local i32 @SCIC_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @scic_sds_io_request_construct_sata(%struct.TYPE_12__*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
