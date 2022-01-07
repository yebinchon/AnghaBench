; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_llh_shadow_get_free_idx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_llh_shadow_get_free_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_dev = type { %struct.ecore_llh_info* }
%struct.ecore_llh_info = type { %struct.ecore_llh_filter_info** }
%struct.ecore_llh_filter_info = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"get_free_idx\00", align 1
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_LLH_INVALID_FILTER_IDX = common dso_local global i64 0, align 8
@NIG_REG_LLH_FUNC_FILTER_EN_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_dev*, i64, i64*)* @ecore_llh_shadow_get_free_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_llh_shadow_get_free_idx(%struct.ecore_dev* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.ecore_llh_info*, align 8
  %9 = alloca %struct.ecore_llh_filter_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.ecore_dev* %0, %struct.ecore_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load %struct.ecore_dev*, %struct.ecore_dev** %5, align 8
  %13 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %12, i32 0, i32 0
  %14 = load %struct.ecore_llh_info*, %struct.ecore_llh_info** %13, align 8
  store %struct.ecore_llh_info* %14, %struct.ecore_llh_info** %8, align 8
  %15 = load %struct.ecore_dev*, %struct.ecore_dev** %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @ecore_llh_shadow_sanity(%struct.ecore_dev* %15, i64 %16, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @ECORE_SUCCESS, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %4, align 4
  br label %52

23:                                               ; preds = %3
  %24 = load i64, i64* @ECORE_LLH_INVALID_FILTER_IDX, align 8
  %25 = load i64*, i64** %7, align 8
  store i64 %24, i64* %25, align 8
  %26 = load %struct.ecore_llh_info*, %struct.ecore_llh_info** %8, align 8
  %27 = getelementptr inbounds %struct.ecore_llh_info, %struct.ecore_llh_info* %26, i32 0, i32 0
  %28 = load %struct.ecore_llh_filter_info**, %struct.ecore_llh_filter_info*** %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = getelementptr inbounds %struct.ecore_llh_filter_info*, %struct.ecore_llh_filter_info** %28, i64 %29
  %31 = load %struct.ecore_llh_filter_info*, %struct.ecore_llh_filter_info** %30, align 8
  store %struct.ecore_llh_filter_info* %31, %struct.ecore_llh_filter_info** %9, align 8
  store i64 0, i64* %11, align 8
  br label %32

32:                                               ; preds = %47, %23
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* @NIG_REG_LLH_FUNC_FILTER_EN_SIZE, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %32
  %37 = load %struct.ecore_llh_filter_info*, %struct.ecore_llh_filter_info** %9, align 8
  %38 = load i64, i64* %11, align 8
  %39 = getelementptr inbounds %struct.ecore_llh_filter_info, %struct.ecore_llh_filter_info* %37, i64 %38
  %40 = getelementptr inbounds %struct.ecore_llh_filter_info, %struct.ecore_llh_filter_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = load i64, i64* %11, align 8
  %45 = load i64*, i64** %7, align 8
  store i64 %44, i64* %45, align 8
  br label %50

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %11, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %11, align 8
  br label %32

50:                                               ; preds = %43, %32
  %51 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %50, %21
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @ecore_llh_shadow_sanity(%struct.ecore_dev*, i64, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
