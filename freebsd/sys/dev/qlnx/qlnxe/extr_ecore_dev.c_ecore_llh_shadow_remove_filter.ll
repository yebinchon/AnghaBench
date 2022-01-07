; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_llh_shadow_remove_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_llh_shadow_remove_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_dev = type { i32 }
%union.ecore_llh_filter = type { i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_LLH_INVALID_FILTER_IDX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"Failed to find a filter in the LLH shadow\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_dev*, i64, %union.ecore_llh_filter*, i64*, i32*)* @ecore_llh_shadow_remove_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_llh_shadow_remove_filter(%struct.ecore_dev* %0, i64 %1, %union.ecore_llh_filter* %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ecore_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %union.ecore_llh_filter*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.ecore_dev* %0, %struct.ecore_dev** %7, align 8
  store i64 %1, i64* %8, align 8
  store %union.ecore_llh_filter* %2, %union.ecore_llh_filter** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load %struct.ecore_dev*, %struct.ecore_dev** %7, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load %union.ecore_llh_filter*, %union.ecore_llh_filter** %9, align 8
  %16 = load i64*, i64** %10, align 8
  %17 = call i32 @ecore_llh_shadow_search_filter(%struct.ecore_dev* %13, i64 %14, %union.ecore_llh_filter* %15, i64* %16)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* @ECORE_SUCCESS, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* %12, align 4
  store i32 %22, i32* %6, align 4
  br label %39

23:                                               ; preds = %5
  %24 = load i64*, i64** %10, align 8
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ECORE_LLH_INVALID_FILTER_IDX, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load %struct.ecore_dev*, %struct.ecore_dev** %7, align 8
  %30 = call i32 @DP_NOTICE(%struct.ecore_dev* %29, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %31, i32* %6, align 4
  br label %39

32:                                               ; preds = %23
  %33 = load %struct.ecore_dev*, %struct.ecore_dev** %7, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load i64*, i64** %10, align 8
  %36 = load i64, i64* %35, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = call i32 @__ecore_llh_shadow_remove_filter(%struct.ecore_dev* %33, i64 %34, i64 %36, i32* %37)
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %32, %28, %21
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local i32 @ecore_llh_shadow_search_filter(%struct.ecore_dev*, i64, %union.ecore_llh_filter*, i64*) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_dev*, i32, i8*) #1

declare dso_local i32 @__ecore_llh_shadow_remove_filter(%struct.ecore_dev*, i64, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
