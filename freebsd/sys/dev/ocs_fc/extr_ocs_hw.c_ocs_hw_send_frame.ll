; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_send_frame.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_send_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, %struct.TYPE_26__, %struct.TYPE_25__**, i32* }
%struct.TYPE_26__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_25__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_18__*, %struct.TYPE_22__*, %struct.TYPE_21__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_21__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"can't allocate request tag\0A\00", align 1
@OCS_HW_RTN_NO_RESOURCES = common dso_local global i32 0, align 4
@OCS_HW_SEND_FRAME_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"sli_send_frame_wqe failed: %d\0A\00", align 1
@OCS_HW_RTN_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"hw_wq_write failed: %d\0A\00", align 1
@OCS_HW_RTN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocs_hw_send_frame(%struct.TYPE_22__* %0, i32* %1, i32 %2, i32 %3, %struct.TYPE_24__* %4, %struct.TYPE_23__* %5, void (i8*, i32*, i64)* %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_24__*, align 8
  %15 = alloca %struct.TYPE_23__*, align 8
  %16 = alloca void (i8*, i32*, i64)*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_21__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store %struct.TYPE_24__* %4, %struct.TYPE_24__** %14, align 8
  store %struct.TYPE_23__* %5, %struct.TYPE_23__** %15, align 8
  store void (i8*, i32*, i64)* %6, void (i8*, i32*, i64)** %16, align 8
  store i8* %7, i8** %17, align 8
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 2
  store %struct.TYPE_21__* %23, %struct.TYPE_21__** %19, align 8
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %25, i32 0, i32 1
  store %struct.TYPE_22__* %24, %struct.TYPE_22__** %26, align 8
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %28 = load void (i8*, i32*, i64)*, void (i8*, i32*, i64)** %16, align 8
  %29 = load i8*, i8** %17, align 8
  %30 = call %struct.TYPE_18__* @ocs_hw_reqtag_alloc(%struct.TYPE_22__* %27, void (i8*, i32*, i64)* %28, i8* %29)
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 0
  store %struct.TYPE_18__* %30, %struct.TYPE_18__** %32, align 8
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %34, align 8
  %36 = icmp eq %struct.TYPE_18__* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %8
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @OCS_HW_RTN_NO_RESOURCES, align 4
  store i32 %42, i32* %9, align 4
  br label %118

43:                                               ; preds = %8
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.TYPE_25__* @ocs_varray_iter_next(i32 %48)
  store %struct.TYPE_25__* %49, %struct.TYPE_25__** %21, align 8
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %51 = icmp eq %struct.TYPE_25__* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %43
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %55, i64 0
  %57 = load %struct.TYPE_25__*, %struct.TYPE_25__** %56, align 8
  store %struct.TYPE_25__* %57, %struct.TYPE_25__** %21, align 8
  br label %58

58:                                               ; preds = %52, %43
  %59 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %60 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %20, align 4
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %13, align 4
  %76 = load i32*, i32** %11, align 8
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %79 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @OCS_HW_SEND_FRAME_TIMEOUT, align 4
  %82 = load i32, i32* %20, align 4
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @sli_send_frame_wqe(%struct.TYPE_26__* %65, i32 %68, i32 %73, i32 %74, i32 %75, i32* %76, %struct.TYPE_24__* %77, i32 %80, i32 %81, i32 %82, i32 %87)
  store i64 %88, i64* %18, align 8
  %89 = load i64, i64* %18, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %58
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i64, i64* %18, align 8
  %96 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %94, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %95)
  %97 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %97, i32* %9, align 4
  br label %118

98:                                               ; preds = %58
  %99 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %101 = call i64 @hw_wq_write(%struct.TYPE_25__* %99, %struct.TYPE_21__* %100)
  store i64 %101, i64* %18, align 8
  %102 = load i64, i64* %18, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %98
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i64, i64* %18, align 8
  %109 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %107, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %108)
  %110 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %110, i32* %9, align 4
  br label %118

111:                                              ; preds = %98
  %112 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %113 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 8
  %116 = call i32 @OCS_STAT(i32 %114)
  %117 = load i32, i32* @OCS_HW_RTN_SUCCESS, align 4
  store i32 %117, i32* %9, align 4
  br label %118

118:                                              ; preds = %111, %104, %91, %37
  %119 = load i32, i32* %9, align 4
  ret i32 %119
}

declare dso_local %struct.TYPE_18__* @ocs_hw_reqtag_alloc(%struct.TYPE_22__*, void (i8*, i32*, i64)*, i8*) #1

declare dso_local i32 @ocs_log_err(i32, i8*, ...) #1

declare dso_local %struct.TYPE_25__* @ocs_varray_iter_next(i32) #1

declare dso_local i64 @sli_send_frame_wqe(%struct.TYPE_26__*, i32, i32, i32, i32, i32*, %struct.TYPE_24__*, i32, i32, i32, i32) #1

declare dso_local i64 @hw_wq_write(%struct.TYPE_25__*, %struct.TYPE_21__*) #1

declare dso_local i32 @OCS_STAT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
