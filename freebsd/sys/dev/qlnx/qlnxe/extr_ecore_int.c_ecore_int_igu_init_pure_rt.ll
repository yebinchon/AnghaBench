; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c_ecore_int_igu_init_pure_rt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c_ecore_int_igu_init_pure_rt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, %struct.ecore_igu_info* }
%struct.ecore_igu_info = type { i64, %struct.ecore_igu_block* }
%struct.ecore_igu_block = type { i32, i32 }
%struct.ecore_ptt = type { i32 }

@IGU_REG_BLOCK_CONFIGURATION = common dso_local global i32 0, align 4
@IGU_REG_BLOCK_CONFIGURATION_VF_CLEANUP_EN = common dso_local global i32 0, align 4
@IGU_REG_BLOCK_CONFIGURATION_PXP_TPH_INTERFACE_EN = common dso_local global i32 0, align 4
@ECORE_IGU_STATUS_VALID = common dso_local global i32 0, align 4
@ECORE_IGU_STATUS_DSB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecore_int_igu_init_pure_rt(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_ptt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ecore_igu_info*, align 8
  %10 = alloca %struct.ecore_igu_block*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %14 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load %struct.ecore_igu_info*, %struct.ecore_igu_info** %15, align 8
  store %struct.ecore_igu_info* %16, %struct.ecore_igu_info** %9, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %17 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %18 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %19 = load i32, i32* @IGU_REG_BLOCK_CONFIGURATION, align 4
  %20 = call i32 @ecore_rd(%struct.ecore_hwfn* %17, %struct.ecore_ptt* %18, i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* @IGU_REG_BLOCK_CONFIGURATION_VF_CLEANUP_EN, align 4
  %22 = load i32, i32* %12, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* @IGU_REG_BLOCK_CONFIGURATION_PXP_TPH_INTERFACE_EN, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %12, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %12, align 4
  %28 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %29 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %30 = load i32, i32* @IGU_REG_BLOCK_CONFIGURATION, align 4
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @ecore_wr(%struct.ecore_hwfn* %28, %struct.ecore_ptt* %29, i32 %30, i32 %31)
  store i64 0, i64* %11, align 8
  br label %33

33:                                               ; preds = %75, %4
  %34 = load i64, i64* %11, align 8
  %35 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %36 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @ECORE_MAPPING_MEMORY_SIZE(i32 %37)
  %39 = icmp ult i64 %34, %38
  br i1 %39, label %40, label %78

40:                                               ; preds = %33
  %41 = load %struct.ecore_igu_info*, %struct.ecore_igu_info** %9, align 8
  %42 = getelementptr inbounds %struct.ecore_igu_info, %struct.ecore_igu_info* %41, i32 0, i32 1
  %43 = load %struct.ecore_igu_block*, %struct.ecore_igu_block** %42, align 8
  %44 = load i64, i64* %11, align 8
  %45 = getelementptr inbounds %struct.ecore_igu_block, %struct.ecore_igu_block* %43, i64 %44
  store %struct.ecore_igu_block* %45, %struct.ecore_igu_block** %10, align 8
  %46 = load %struct.ecore_igu_block*, %struct.ecore_igu_block** %10, align 8
  %47 = getelementptr inbounds %struct.ecore_igu_block, %struct.ecore_igu_block* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @ECORE_IGU_STATUS_VALID, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %40
  %53 = load %struct.ecore_igu_block*, %struct.ecore_igu_block** %10, align 8
  %54 = getelementptr inbounds %struct.ecore_igu_block, %struct.ecore_igu_block* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load %struct.ecore_igu_block*, %struct.ecore_igu_block** %10, align 8
  %59 = getelementptr inbounds %struct.ecore_igu_block, %struct.ecore_igu_block* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @ECORE_IGU_STATUS_DSB, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57, %52, %40
  br label %75

65:                                               ; preds = %57
  %66 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %67 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %68 = load i64, i64* %11, align 8
  %69 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %70 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @ecore_int_igu_init_pure_rt_single(%struct.ecore_hwfn* %66, %struct.ecore_ptt* %67, i64 %68, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %65, %64
  %76 = load i64, i64* %11, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %11, align 8
  br label %33

78:                                               ; preds = %33
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %78
  %82 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %83 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %84 = load %struct.ecore_igu_info*, %struct.ecore_igu_info** %9, align 8
  %85 = getelementptr inbounds %struct.ecore_igu_info, %struct.ecore_igu_info* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %88 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @ecore_int_igu_init_pure_rt_single(%struct.ecore_hwfn* %82, %struct.ecore_ptt* %83, i64 %86, i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %81, %78
  ret void
}

declare dso_local i32 @ecore_rd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32) #1

declare dso_local i64 @ECORE_MAPPING_MEMORY_SIZE(i32) #1

declare dso_local i32 @ecore_int_igu_init_pure_rt_single(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
