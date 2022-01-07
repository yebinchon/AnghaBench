; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_iwarp.c_ecore_iwarp_wait_cid_map_cleared.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_iwarp.c_ecore_iwarp_wait_cid_map_cleared.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_bmap = type { i32, i32, i32 }

@ECORE_IWARP_MAX_CID_CLEAN_TIME = common dso_local global i32 0, align 4
@ECORE_IWARP_MAX_NO_PROGRESS_CNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"%s bitmap wait timed out (%d cids pending)\0A\00", align 1
@ECORE_TIMEOUT = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_bmap*)* @ecore_iwarp_wait_cid_map_cleared to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_iwarp_wait_cid_map_cleared(%struct.ecore_hwfn* %0, %struct.ecore_bmap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_bmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_bmap* %1, %struct.ecore_bmap** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.ecore_bmap*, %struct.ecore_bmap** %5, align 8
  %10 = getelementptr inbounds %struct.ecore_bmap, %struct.ecore_bmap* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ecore_bmap*, %struct.ecore_bmap** %5, align 8
  %13 = getelementptr inbounds %struct.ecore_bmap, %struct.ecore_bmap* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @OSAL_BITMAP_WEIGHT(i32 %11, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %6, align 4
  br label %17

17:                                               ; preds = %50, %2
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %51

20:                                               ; preds = %17
  %21 = load i32, i32* @ECORE_IWARP_MAX_CID_CLEAN_TIME, align 4
  %22 = call i32 @OSAL_MSLEEP(i32 %21)
  %23 = load %struct.ecore_bmap*, %struct.ecore_bmap** %5, align 8
  %24 = getelementptr inbounds %struct.ecore_bmap, %struct.ecore_bmap* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ecore_bmap*, %struct.ecore_bmap** %5, align 8
  %27 = getelementptr inbounds %struct.ecore_bmap, %struct.ecore_bmap* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @OSAL_BITMAP_WEIGHT(i32 %25, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %20
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %38

36:                                               ; preds = %20
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %36, %33
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @ECORE_IWARP_MAX_NO_PROGRESS_CNT, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %38
  %43 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %44 = load %struct.ecore_bmap*, %struct.ecore_bmap** %5, align 8
  %45 = getelementptr inbounds %struct.ecore_bmap, %struct.ecore_bmap* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %43, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %47)
  %49 = load i32, i32* @ECORE_TIMEOUT, align 4
  store i32 %49, i32* %3, align 4
  br label %53

50:                                               ; preds = %38
  br label %17

51:                                               ; preds = %17
  %52 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %51, %42
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @OSAL_BITMAP_WEIGHT(i32, i32) #1

declare dso_local i32 @OSAL_MSLEEP(i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
