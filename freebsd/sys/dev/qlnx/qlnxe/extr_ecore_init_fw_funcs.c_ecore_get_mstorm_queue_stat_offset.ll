; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_init_fw_funcs.c_ecore_get_mstorm_queue_stat_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_init_fw_funcs.c_ecore_get_mstorm_queue_stat_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }

@VF_ZONE_SIZE_MODE_DEFAULT = common dso_local global i64 0, align 8
@MAX_NUM_PFS = common dso_local global i64 0, align 8
@VF_ZONE_SIZE_MODE_DOUBLE = common dso_local global i64 0, align 8
@MSTORM_VF_ZONE_DEFAULT_SIZE_LOG = common dso_local global i32 0, align 4
@VF_ZONE_SIZE_MODE_QUAD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_get_mstorm_queue_stat_offset(%struct.ecore_hwfn* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @MSTORM_QUEUE_STAT_OFFSET(i64 %8)
  store i32 %9, i32* %7, align 4
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @VF_ZONE_SIZE_MODE_DEFAULT, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %52

13:                                               ; preds = %3
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @MAX_NUM_PFS, align 8
  %16 = icmp sgt i64 %14, %15
  br i1 %16, label %17, label %52

17:                                               ; preds = %13
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @VF_ZONE_SIZE_MODE_DOUBLE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %17
  %22 = load i32, i32* @MSTORM_VF_ZONE_DEFAULT_SIZE_LOG, align 4
  %23 = shl i32 1, %22
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @MAX_NUM_PFS, align 8
  %27 = sub nsw i64 %25, %26
  %28 = mul nsw i64 %24, %27
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %28
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %7, align 4
  br label %51

33:                                               ; preds = %17
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @VF_ZONE_SIZE_MODE_QUAD, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = load i32, i32* @MSTORM_VF_ZONE_DEFAULT_SIZE_LOG, align 4
  %39 = shl i32 1, %38
  %40 = mul nsw i32 3, %39
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* @MAX_NUM_PFS, align 8
  %44 = sub nsw i64 %42, %43
  %45 = mul nsw i64 %41, %44
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %37, %33
  br label %51

51:                                               ; preds = %50, %21
  br label %52

52:                                               ; preds = %51, %13, %3
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local i32 @MSTORM_QUEUE_STAT_OFFSET(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
