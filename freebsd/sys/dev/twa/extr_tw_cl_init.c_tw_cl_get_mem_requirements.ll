; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_cl_init.c_tw_cl_get_mem_requirements.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_cl_init.c_tw_cl_get_mem_requirements.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw_cl_ctlr_handle = type { i32 }

@TW_CL_DEVICE_ID_9K = common dso_local global i64 0, align 8
@TW_CL_MAX_SIMULTANEOUS_REQUESTS = common dso_local global i64 0, align 8
@TW_CL_FALSE = common dso_local global i32 0, align 4
@TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR = common dso_local global i32 0, align 4
@TW_CL_SEVERITY_ERROR_STRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Too many simultaneous requests to support!\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"requested = %d, supported = %d, error = %d\0A\00", align 1
@TW_OSL_EBIG = common dso_local global i64 0, align 8
@TW_CLI_SECTOR_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tw_cl_get_mem_requirements(%struct.tw_cl_ctlr_handle* %0, i32 %1, i64 %2, i64 %3, i64 %4, i32* %5, i32* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i64, align 8
  %11 = alloca %struct.tw_cl_ctlr_handle*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store %struct.tw_cl_ctlr_handle* %0, %struct.tw_cl_ctlr_handle** %11, align 8
  store i32 %1, i32* %12, align 4
  store i64 %2, i64* %13, align 8
  store i64 %3, i64* %14, align 8
  store i64 %4, i64* %15, align 8
  store i32* %5, i32** %16, align 8
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  %20 = load i64, i64* %13, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %9
  %23 = load i64, i64* @TW_CL_DEVICE_ID_9K, align 8
  store i64 %23, i64* %13, align 8
  br label %24

24:                                               ; preds = %22, %9
  %25 = load i64, i64* %14, align 8
  %26 = load i64, i64* @TW_CL_MAX_SIMULTANEOUS_REQUESTS, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %24
  %29 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %11, align 8
  %30 = load i32, i32* @TW_CL_FALSE, align 4
  %31 = load i32, i32* @TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR, align 4
  %32 = load i32, i32* @TW_CL_SEVERITY_ERROR_STRING, align 4
  %33 = load i64, i64* %14, align 8
  %34 = load i64, i64* @TW_CL_MAX_SIMULTANEOUS_REQUESTS, align 8
  %35 = load i64, i64* @TW_OSL_EBIG, align 8
  %36 = call i32 @tw_cl_create_event(%struct.tw_cl_ctlr_handle* %29, i32 %30, i32 %31, i32 4096, i32 1, i32 %32, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %33, i64 %34, i64 %35)
  %37 = load i64, i64* @TW_OSL_EBIG, align 8
  store i64 %37, i64* %10, align 8
  br label %60

38:                                               ; preds = %24
  %39 = load i64, i64* %13, align 8
  %40 = call i32 @TWA_ALIGNMENT(i64 %39)
  %41 = load i32*, i32** %16, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i64, i64* %13, align 8
  %43 = call i32 @TWA_SG_ELEMENT_SIZE_FACTOR(i64 %42)
  %44 = load i32*, i32** %17, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i64, i64* %14, align 8
  %46 = mul i64 4, %45
  %47 = add i64 4, %46
  %48 = load i64, i64* %15, align 8
  %49 = mul i64 4, %48
  %50 = add i64 %47, %49
  %51 = trunc i64 %50 to i32
  %52 = load i32*, i32** %18, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i64, i64* %14, align 8
  %54 = mul i64 4, %53
  %55 = load i32, i32* @TW_CLI_SECTOR_SIZE, align 4
  %56 = sext i32 %55 to i64
  %57 = add i64 %54, %56
  %58 = trunc i64 %57 to i32
  %59 = load i32*, i32** %19, align 8
  store i32 %58, i32* %59, align 4
  store i64 0, i64* %10, align 8
  br label %60

60:                                               ; preds = %38, %28
  %61 = load i64, i64* %10, align 8
  ret i64 %61
}

declare dso_local i32 @tw_cl_create_event(%struct.tw_cl_ctlr_handle*, i32, i32, i32, i32, i32, i8*, i8*, i64, i64, i64) #1

declare dso_local i32 @TWA_ALIGNMENT(i64) #1

declare dso_local i32 @TWA_SG_ELEMENT_SIZE_FACTOR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
