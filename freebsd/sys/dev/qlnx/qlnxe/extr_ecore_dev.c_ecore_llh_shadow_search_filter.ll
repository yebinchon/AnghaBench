; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_llh_shadow_search_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_llh_shadow_search_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_dev = type { %struct.ecore_llh_info* }
%struct.ecore_llh_info = type { %struct.ecore_llh_filter_info** }
%struct.ecore_llh_filter_info = type { i32 }
%union.ecore_llh_filter = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"search\00", align 1
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_LLH_INVALID_FILTER_IDX = common dso_local global i64 0, align 8
@NIG_REG_LLH_FUNC_FILTER_EN_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_dev*, i64, %union.ecore_llh_filter*, i64*)* @ecore_llh_shadow_search_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_llh_shadow_search_filter(%struct.ecore_dev* %0, i64 %1, %union.ecore_llh_filter* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ecore_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %union.ecore_llh_filter*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.ecore_llh_info*, align 8
  %11 = alloca %struct.ecore_llh_filter_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.ecore_dev* %0, %struct.ecore_dev** %6, align 8
  store i64 %1, i64* %7, align 8
  store %union.ecore_llh_filter* %2, %union.ecore_llh_filter** %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %15 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %14, i32 0, i32 0
  %16 = load %struct.ecore_llh_info*, %struct.ecore_llh_info** %15, align 8
  store %struct.ecore_llh_info* %16, %struct.ecore_llh_info** %10, align 8
  %17 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @ecore_llh_shadow_sanity(%struct.ecore_dev* %17, i64 %18, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* @ECORE_SUCCESS, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %5, align 4
  br label %55

25:                                               ; preds = %4
  %26 = load i64, i64* @ECORE_LLH_INVALID_FILTER_IDX, align 8
  %27 = load i64*, i64** %9, align 8
  store i64 %26, i64* %27, align 8
  %28 = load %struct.ecore_llh_info*, %struct.ecore_llh_info** %10, align 8
  %29 = getelementptr inbounds %struct.ecore_llh_info, %struct.ecore_llh_info* %28, i32 0, i32 0
  %30 = load %struct.ecore_llh_filter_info**, %struct.ecore_llh_filter_info*** %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds %struct.ecore_llh_filter_info*, %struct.ecore_llh_filter_info** %30, i64 %31
  %33 = load %struct.ecore_llh_filter_info*, %struct.ecore_llh_filter_info** %32, align 8
  store %struct.ecore_llh_filter_info* %33, %struct.ecore_llh_filter_info** %11, align 8
  store i64 0, i64* %13, align 8
  br label %34

34:                                               ; preds = %50, %25
  %35 = load i64, i64* %13, align 8
  %36 = load i64, i64* @NIG_REG_LLH_FUNC_FILTER_EN_SIZE, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %34
  %39 = load %union.ecore_llh_filter*, %union.ecore_llh_filter** %8, align 8
  %40 = load %struct.ecore_llh_filter_info*, %struct.ecore_llh_filter_info** %11, align 8
  %41 = load i64, i64* %13, align 8
  %42 = getelementptr inbounds %struct.ecore_llh_filter_info, %struct.ecore_llh_filter_info* %40, i64 %41
  %43 = getelementptr inbounds %struct.ecore_llh_filter_info, %struct.ecore_llh_filter_info* %42, i32 0, i32 0
  %44 = call i32 @OSAL_MEMCMP(%union.ecore_llh_filter* %39, i32* %43, i32 4)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %38
  %47 = load i64, i64* %13, align 8
  %48 = load i64*, i64** %9, align 8
  store i64 %47, i64* %48, align 8
  br label %53

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %49
  %51 = load i64, i64* %13, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %13, align 8
  br label %34

53:                                               ; preds = %46, %34
  %54 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %53, %23
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @ecore_llh_shadow_sanity(%struct.ecore_dev*, i64, i32, i8*) #1

declare dso_local i32 @OSAL_MEMCMP(%union.ecore_llh_filter*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
