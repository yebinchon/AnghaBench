; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_hmc.c_i40e_remove_pd_bp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_hmc.c_i40e_remove_pd_bp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_hmc_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.i40e_hmc_sd_entry* }
%struct.i40e_hmc_sd_entry = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.i40e_hmc_pd_table }
%struct.i40e_hmc_pd_table = type { i32, i32, %struct.TYPE_7__, %struct.i40e_hmc_pd_entry* }
%struct.TYPE_7__ = type { i64 }
%struct.i40e_hmc_pd_entry = type { %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i32, i64 }

@I40E_SUCCESS = common dso_local global i32 0, align 4
@I40E_HMC_PD_CNT_IN_SD = common dso_local global i64 0, align 8
@I40E_ERR_INVALID_PAGE_DESC_INDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"i40e_remove_pd_bp: bad idx\0A\00", align 1
@I40E_SD_TYPE_PAGED = common dso_local global i64 0, align 8
@I40E_ERR_INVALID_SD_TYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"i40e_remove_pd_bp: wrong sd_entry type\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@I40E_DMA_MEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_remove_pd_bp(%struct.i40e_hw* %0, %struct.i40e_hmc_info* %1, i64 %2) #0 {
  %4 = alloca %struct.i40e_hw*, align 8
  %5 = alloca %struct.i40e_hmc_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.i40e_hmc_pd_entry*, align 8
  %9 = alloca %struct.i40e_hmc_pd_table*, align 8
  %10 = alloca %struct.i40e_hmc_sd_entry*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store %struct.i40e_hw* %0, %struct.i40e_hw** %4, align 8
  store %struct.i40e_hmc_info* %1, %struct.i40e_hmc_info** %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load i32, i32* @I40E_SUCCESS, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @I40E_HMC_PD_CNT_IN_SD, align 8
  %17 = udiv i64 %15, %16
  store i64 %17, i64* %11, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @I40E_HMC_PD_CNT_IN_SD, align 8
  %20 = urem i64 %18, %19
  store i64 %20, i64* %12, align 8
  %21 = load i64, i64* %11, align 8
  %22 = load %struct.i40e_hmc_info*, %struct.i40e_hmc_info** %5, align 8
  %23 = getelementptr inbounds %struct.i40e_hmc_info, %struct.i40e_hmc_info* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp uge i64 %21, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @I40E_ERR_INVALID_PAGE_DESC_INDEX, align 4
  store i32 %28, i32* %7, align 4
  %29 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %115

30:                                               ; preds = %3
  %31 = load %struct.i40e_hmc_info*, %struct.i40e_hmc_info** %5, align 8
  %32 = getelementptr inbounds %struct.i40e_hmc_info, %struct.i40e_hmc_info* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load %struct.i40e_hmc_sd_entry*, %struct.i40e_hmc_sd_entry** %33, align 8
  %35 = load i64, i64* %11, align 8
  %36 = getelementptr inbounds %struct.i40e_hmc_sd_entry, %struct.i40e_hmc_sd_entry* %34, i64 %35
  store %struct.i40e_hmc_sd_entry* %36, %struct.i40e_hmc_sd_entry** %10, align 8
  %37 = load i64, i64* @I40E_SD_TYPE_PAGED, align 8
  %38 = load %struct.i40e_hmc_sd_entry*, %struct.i40e_hmc_sd_entry** %10, align 8
  %39 = getelementptr inbounds %struct.i40e_hmc_sd_entry, %struct.i40e_hmc_sd_entry* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %37, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %30
  %43 = load i32, i32* @I40E_ERR_INVALID_SD_TYPE, align 4
  store i32 %43, i32* %7, align 4
  %44 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %115

45:                                               ; preds = %30
  %46 = load %struct.i40e_hmc_info*, %struct.i40e_hmc_info** %5, align 8
  %47 = getelementptr inbounds %struct.i40e_hmc_info, %struct.i40e_hmc_info* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load %struct.i40e_hmc_sd_entry*, %struct.i40e_hmc_sd_entry** %48, align 8
  %50 = load i64, i64* %11, align 8
  %51 = getelementptr inbounds %struct.i40e_hmc_sd_entry, %struct.i40e_hmc_sd_entry* %49, i64 %50
  %52 = getelementptr inbounds %struct.i40e_hmc_sd_entry, %struct.i40e_hmc_sd_entry* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store %struct.i40e_hmc_pd_table* %53, %struct.i40e_hmc_pd_table** %9, align 8
  %54 = load %struct.i40e_hmc_pd_table*, %struct.i40e_hmc_pd_table** %9, align 8
  %55 = getelementptr inbounds %struct.i40e_hmc_pd_table, %struct.i40e_hmc_pd_table* %54, i32 0, i32 3
  %56 = load %struct.i40e_hmc_pd_entry*, %struct.i40e_hmc_pd_entry** %55, align 8
  %57 = load i64, i64* %12, align 8
  %58 = getelementptr inbounds %struct.i40e_hmc_pd_entry, %struct.i40e_hmc_pd_entry* %56, i64 %57
  store %struct.i40e_hmc_pd_entry* %58, %struct.i40e_hmc_pd_entry** %8, align 8
  %59 = load %struct.i40e_hmc_pd_entry*, %struct.i40e_hmc_pd_entry** %8, align 8
  %60 = getelementptr inbounds %struct.i40e_hmc_pd_entry, %struct.i40e_hmc_pd_entry* %59, i32 0, i32 0
  %61 = call i32 @I40E_DEC_BP_REFCNT(%struct.TYPE_8__* %60)
  %62 = load %struct.i40e_hmc_pd_entry*, %struct.i40e_hmc_pd_entry** %8, align 8
  %63 = getelementptr inbounds %struct.i40e_hmc_pd_entry, %struct.i40e_hmc_pd_entry* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %45
  br label %115

68:                                               ; preds = %45
  %69 = load i32, i32* @FALSE, align 4
  %70 = load %struct.i40e_hmc_pd_entry*, %struct.i40e_hmc_pd_entry** %8, align 8
  %71 = getelementptr inbounds %struct.i40e_hmc_pd_entry, %struct.i40e_hmc_pd_entry* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  %72 = load %struct.i40e_hmc_pd_table*, %struct.i40e_hmc_pd_table** %9, align 8
  %73 = call i32 @I40E_DEC_PD_REFCNT(%struct.i40e_hmc_pd_table* %72)
  %74 = load %struct.i40e_hmc_pd_table*, %struct.i40e_hmc_pd_table** %9, align 8
  %75 = getelementptr inbounds %struct.i40e_hmc_pd_table, %struct.i40e_hmc_pd_table* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to i32*
  store i32* %78, i32** %13, align 8
  %79 = load i64, i64* %12, align 8
  %80 = load i32*, i32** %13, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 %79
  store i32* %81, i32** %13, align 8
  %82 = load i32*, i32** %13, align 8
  %83 = load i32, i32* @I40E_DMA_MEM, align 4
  %84 = call i32 @i40e_memset(i32* %82, i32 0, i32 4, i32 %83)
  %85 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %86 = load i64, i64* %11, align 8
  %87 = load i64, i64* %6, align 8
  %88 = call i32 @I40E_INVALIDATE_PF_HMC_PD(%struct.i40e_hw* %85, i64 %86, i64 %87)
  %89 = load %struct.i40e_hmc_pd_entry*, %struct.i40e_hmc_pd_entry** %8, align 8
  %90 = getelementptr inbounds %struct.i40e_hmc_pd_entry, %struct.i40e_hmc_pd_entry* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %68
  %94 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %95 = load %struct.i40e_hmc_pd_entry*, %struct.i40e_hmc_pd_entry** %8, align 8
  %96 = getelementptr inbounds %struct.i40e_hmc_pd_entry, %struct.i40e_hmc_pd_entry* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = call i32 @i40e_free_dma_mem(%struct.i40e_hw* %94, i32* %97)
  store i32 %98, i32* %7, align 4
  br label %99

99:                                               ; preds = %93, %68
  %100 = load i32, i32* @I40E_SUCCESS, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  br label %115

104:                                              ; preds = %99
  %105 = load %struct.i40e_hmc_pd_table*, %struct.i40e_hmc_pd_table** %9, align 8
  %106 = getelementptr inbounds %struct.i40e_hmc_pd_table, %struct.i40e_hmc_pd_table* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %104
  %110 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %111 = load %struct.i40e_hmc_pd_table*, %struct.i40e_hmc_pd_table** %9, align 8
  %112 = getelementptr inbounds %struct.i40e_hmc_pd_table, %struct.i40e_hmc_pd_table* %111, i32 0, i32 0
  %113 = call i32 @i40e_free_virt_mem(%struct.i40e_hw* %110, i32* %112)
  br label %114

114:                                              ; preds = %109, %104
  br label %115

115:                                              ; preds = %114, %103, %67, %42, %27
  %116 = load i32, i32* %7, align 4
  ret i32 %116
}

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @I40E_DEC_BP_REFCNT(%struct.TYPE_8__*) #1

declare dso_local i32 @I40E_DEC_PD_REFCNT(%struct.i40e_hmc_pd_table*) #1

declare dso_local i32 @i40e_memset(i32*, i32, i32, i32) #1

declare dso_local i32 @I40E_INVALIDATE_PF_HMC_PD(%struct.i40e_hw*, i64, i64) #1

declare dso_local i32 @i40e_free_dma_mem(%struct.i40e_hw*, i32*) #1

declare dso_local i32 @i40e_free_virt_mem(%struct.i40e_hw*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
