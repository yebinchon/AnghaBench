; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_hw_get_ppfid_bitmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_hw_get_ppfid_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.ecore_dev* }
%struct.ecore_dev = type { i32 }
%struct.ecore_ptt = type { i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_NOTIMPL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [94 x i8] c"Fix the PPFID bitmap to inculde the native PPFID [native_ppfid_idx %hhd, orig_bitmap 0x%hhx]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ptt*)* @ecore_hw_get_ppfid_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_hw_get_ppfid_bitmap(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_ptt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ecore_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %5, align 8
  %9 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %10 = call i32 @ECORE_PPFID_BY_PFID(%struct.ecore_hwfn* %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %12 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %11, i32 0, i32 0
  %13 = load %struct.ecore_dev*, %struct.ecore_dev** %12, align 8
  store %struct.ecore_dev* %13, %struct.ecore_dev** %7, align 8
  %14 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %15 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %16 = call i32 @ecore_mcp_get_ppfid_bitmap(%struct.ecore_hwfn* %14, %struct.ecore_ptt* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @ECORE_SUCCESS, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @ECORE_NOTIMPL, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %3, align 4
  br label %57

26:                                               ; preds = %20, %2
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @ECORE_NOTIMPL, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  %32 = shl i32 1, %31
  %33 = load %struct.ecore_dev*, %struct.ecore_dev** %7, align 8
  %34 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %30, %26
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.ecore_dev*, %struct.ecore_dev** %7, align 8
  %38 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %6, align 4
  %41 = shl i32 1, %40
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %36
  %45 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.ecore_dev*, %struct.ecore_dev** %7, align 8
  %48 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @DP_INFO(%struct.ecore_hwfn* %45, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %49)
  %51 = load i32, i32* %6, align 4
  %52 = shl i32 1, %51
  %53 = load %struct.ecore_dev*, %struct.ecore_dev** %7, align 8
  %54 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %44, %36
  %56 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %55, %24
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @ECORE_PPFID_BY_PFID(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_mcp_get_ppfid_bitmap(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i32 @DP_INFO(%struct.ecore_hwfn*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
