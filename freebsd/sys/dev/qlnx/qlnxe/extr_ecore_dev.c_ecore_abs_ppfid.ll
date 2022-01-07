; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_abs_ppfid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_abs_ppfid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_dev = type { %struct.ecore_llh_info* }
%struct.ecore_llh_info = type { i64, i64* }

@.str = private unnamed_addr constant [58 x i8] c"rel_ppfid %d is not valid, available indices are 0..%hhd\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_dev*, i64, i64*)* @ecore_abs_ppfid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_abs_ppfid(%struct.ecore_dev* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.ecore_llh_info*, align 8
  store %struct.ecore_dev* %0, %struct.ecore_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load %struct.ecore_dev*, %struct.ecore_dev** %5, align 8
  %10 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %9, i32 0, i32 0
  %11 = load %struct.ecore_llh_info*, %struct.ecore_llh_info** %10, align 8
  store %struct.ecore_llh_info* %11, %struct.ecore_llh_info** %8, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load %struct.ecore_llh_info*, %struct.ecore_llh_info** %8, align 8
  %14 = getelementptr inbounds %struct.ecore_llh_info, %struct.ecore_llh_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp uge i64 %12, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = load %struct.ecore_dev*, %struct.ecore_dev** %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.ecore_llh_info*, %struct.ecore_llh_info** %8, align 8
  %21 = getelementptr inbounds %struct.ecore_llh_info, %struct.ecore_llh_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = sub i64 %22, 1
  %24 = call i32 @DP_NOTICE(%struct.ecore_dev* %18, i32 0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i64 %19, i64 %23)
  %25 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %25, i32* %4, align 4
  br label %35

26:                                               ; preds = %3
  %27 = load %struct.ecore_llh_info*, %struct.ecore_llh_info** %8, align 8
  %28 = getelementptr inbounds %struct.ecore_llh_info, %struct.ecore_llh_info* %27, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = load i64*, i64** %7, align 8
  store i64 %32, i64* %33, align 8
  %34 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %26, %17
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @DP_NOTICE(%struct.ecore_dev*, i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
