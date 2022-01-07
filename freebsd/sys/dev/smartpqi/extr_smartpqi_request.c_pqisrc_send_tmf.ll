; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_request.c_pqisrc_send_tmf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_request.c_pqisrc_send_tmf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_20__ = type { i32, i64, i32, i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32 }

@PQI_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"IN\00", align 1
@PQI_REQUEST_IU_TASK_MANAGEMENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Unable to submit command rval=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Task Management tmf_type : %d timeout\0A\00", align 1
@REQUEST_FAILED = common dso_local global i64 0, align 8
@REQUEST_SUCCESS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [46 x i8] c"Task Management failed tmf_type:%d stat:0x%x\0A\00", align 1
@PQI_STATUS_FAILURE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"OUT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pqisrc_send_tmf(%struct.TYPE_21__* %0, %struct.TYPE_23__* %1, %struct.TYPE_20__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_22__, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %7, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %8, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* @PQI_STATUS_SUCCESS, align 4
  store i32 %14, i32* %12, align 4
  %15 = call i32 @memset(%struct.TYPE_22__* %13, i32 0, i32 32)
  %16 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @PQI_REQUEST_IU_TASK_MANAGEMENT, align 4
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 6
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 6
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  store i32 28, i32* %21, align 4
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 5
  store i32 %24, i32* %25, align 4
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @memcpy(i32 %27, i32 %30, i32 4)
  %32 = load i32, i32* %11, align 4
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %10, align 4
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 1
  store i32 %34, i32* %35, align 4
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %38 = call i32 @OS_GET_TMF_RESP_QID(%struct.TYPE_21__* %36, %struct.TYPE_20__* %37)
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 3
  store i32 %38, i32* %39, align 4
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 2
  store i32 %42, i32* %43, align 4
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %52 = call i64 @OS_GET_TMF_REQ_QINDEX(%struct.TYPE_21__* %50, %struct.TYPE_20__* %51)
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = call i32 @pqisrc_submit_cmnd(%struct.TYPE_21__* %46, i32* %53, %struct.TYPE_22__* %13)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* @PQI_STATUS_SUCCESS, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %5
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @DBG_ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %12, align 4
  store i32 %61, i32* %6, align 4
  br label %92

62:                                               ; preds = %5
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %65 = call i32 @pqisrc_wait_on_condition(%struct.TYPE_21__* %63, %struct.TYPE_20__* %64)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @PQI_STATUS_SUCCESS, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %62
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @DBG_ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = load i64, i64* @REQUEST_FAILED, align 8
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  br label %75

75:                                               ; preds = %69, %62
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @REQUEST_SUCCESS, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %75
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %83 = load i32, i32* %11, align 4
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @DBG_ERR_BTL(%struct.TYPE_23__* %82, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %83, i64 %86)
  %88 = load i32, i32* @PQI_STATUS_FAILURE, align 4
  store i32 %88, i32* %12, align 4
  br label %89

89:                                               ; preds = %81, %75
  %90 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %91 = load i32, i32* %12, align 4
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %89, %58
  %93 = load i32, i32* %6, align 4
  ret i32 %93
}

declare dso_local i32 @memset(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @DBG_FUNC(i8*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @OS_GET_TMF_RESP_QID(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

declare dso_local i32 @pqisrc_submit_cmnd(%struct.TYPE_21__*, i32*, %struct.TYPE_22__*) #1

declare dso_local i64 @OS_GET_TMF_REQ_QINDEX(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

declare dso_local i32 @DBG_ERR(i8*, i32) #1

declare dso_local i32 @pqisrc_wait_on_condition(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

declare dso_local i32 @DBG_ERR_BTL(%struct.TYPE_23__*, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
