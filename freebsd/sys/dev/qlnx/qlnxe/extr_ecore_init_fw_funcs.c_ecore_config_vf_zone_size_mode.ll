; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_init_fw_funcs.c_ecore_config_vf_zone_size_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_init_fw_funcs.c_ecore_config_vf_zone_size_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }

@MSTORM_VF_ZONE_DEFAULT_SIZE_LOG = common dso_local global i32 0, align 4
@VF_ZONE_SIZE_MODE_DOUBLE = common dso_local global i64 0, align 8
@VF_ZONE_SIZE_MODE_QUAD = common dso_local global i64 0, align 8
@PGLUE_REG_B_MSDM_VF_SHIFT_B_RT_OFFSET = common dso_local global i32 0, align 4
@PGLUE_REG_B_MSDM_OFFSET_MASK_B_RT_OFFSET = common dso_local global i32 0, align 4
@PGLUE_B_REG_MSDM_VF_SHIFT_B = common dso_local global i32 0, align 4
@PGLUE_B_REG_MSDM_OFFSET_MASK_B = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecore_config_vf_zone_size_mode(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_ptt*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @MSTORM_VF_ZONE_DEFAULT_SIZE_LOG, align 4
  store i32 %11, i32* %9, align 4
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @VF_ZONE_SIZE_MODE_DOUBLE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32, i32* %9, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %9, align 4
  br label %26

18:                                               ; preds = %4
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @VF_ZONE_SIZE_MODE_QUAD, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* %9, align 4
  %24 = add nsw i32 %23, 2
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %22, %18
  br label %26

26:                                               ; preds = %25, %15
  %27 = load i32, i32* %9, align 4
  %28 = shl i32 1, %27
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %34 = load i32, i32* @PGLUE_REG_B_MSDM_VF_SHIFT_B_RT_OFFSET, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @STORE_RT_REG(%struct.ecore_hwfn* %33, i32 %34, i32 %35)
  %37 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %38 = load i32, i32* @PGLUE_REG_B_MSDM_OFFSET_MASK_B_RT_OFFSET, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @STORE_RT_REG(%struct.ecore_hwfn* %37, i32 %38, i32 %39)
  br label %52

41:                                               ; preds = %26
  %42 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %43 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %44 = load i32, i32* @PGLUE_B_REG_MSDM_VF_SHIFT_B, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @ecore_wr(%struct.ecore_hwfn* %42, %struct.ecore_ptt* %43, i32 %44, i32 %45)
  %47 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %48 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %49 = load i32, i32* @PGLUE_B_REG_MSDM_OFFSET_MASK_B, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @ecore_wr(%struct.ecore_hwfn* %47, %struct.ecore_ptt* %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %41, %32
  ret void
}

declare dso_local i32 @STORE_RT_REG(%struct.ecore_hwfn*, i32, i32) #1

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
