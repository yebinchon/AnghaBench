; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_hmc.c_i40e_add_sd_table_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_hmc.c_i40e_add_sd_table_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_hmc_info = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, %struct.i40e_hmc_sd_entry* }
%struct.i40e_hmc_sd_entry = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_10__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_8__, %struct.i40e_hmc_pd_entry* }
%struct.TYPE_8__ = type { i64 }
%struct.i40e_hmc_pd_entry = type { i32 }
%struct.i40e_dma_mem = type { i32 }

@I40E_SUCCESS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@I40E_ERR_BAD_PTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"i40e_add_sd_table_entry: bad sd_entry\0A\00", align 1
@I40E_ERR_INVALID_SD_INDEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"i40e_add_sd_table_entry: bad sd_index\0A\00", align 1
@I40E_SD_TYPE_PAGED = common dso_local global i32 0, align 4
@i40e_mem_pd = common dso_local global i32 0, align 4
@I40E_HMC_PAGED_BP_SIZE = common dso_local global i32 0, align 4
@i40e_mem_bp_jumbo = common dso_local global i32 0, align 4
@I40E_HMC_PD_BP_BUF_ALIGNMENT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@I40E_NONDMA_TO_NONDMA = common dso_local global i32 0, align 4
@I40E_SD_TYPE_DIRECT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_add_sd_table_entry(%struct.i40e_hw* %0, %struct.i40e_hmc_info* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.i40e_hw*, align 8
  %7 = alloca %struct.i40e_hmc_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.i40e_hmc_sd_entry*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.i40e_dma_mem, align 4
  %16 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %6, align 8
  store %struct.i40e_hmc_info* %1, %struct.i40e_hmc_info** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load i32, i32* @I40E_SUCCESS, align 4
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %14, align 4
  %19 = load %struct.i40e_hmc_info*, %struct.i40e_hmc_info** %7, align 8
  %20 = getelementptr inbounds %struct.i40e_hmc_info, %struct.i40e_hmc_info* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = load %struct.i40e_hmc_sd_entry*, %struct.i40e_hmc_sd_entry** %21, align 8
  %23 = icmp eq %struct.i40e_hmc_sd_entry* null, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load i32, i32* @I40E_ERR_BAD_PTR, align 4
  store i32 %25, i32* %11, align 4
  %26 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %137

27:                                               ; preds = %5
  %28 = load i64, i64* %8, align 8
  %29 = load %struct.i40e_hmc_info*, %struct.i40e_hmc_info** %7, align 8
  %30 = getelementptr inbounds %struct.i40e_hmc_info, %struct.i40e_hmc_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp uge i64 %28, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32, i32* @I40E_ERR_INVALID_SD_INDEX, align 4
  store i32 %35, i32* %11, align 4
  %36 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %137

37:                                               ; preds = %27
  %38 = load %struct.i40e_hmc_info*, %struct.i40e_hmc_info** %7, align 8
  %39 = getelementptr inbounds %struct.i40e_hmc_info, %struct.i40e_hmc_info* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = load %struct.i40e_hmc_sd_entry*, %struct.i40e_hmc_sd_entry** %40, align 8
  %42 = load i64, i64* %8, align 8
  %43 = getelementptr inbounds %struct.i40e_hmc_sd_entry, %struct.i40e_hmc_sd_entry* %41, i64 %42
  store %struct.i40e_hmc_sd_entry* %43, %struct.i40e_hmc_sd_entry** %12, align 8
  %44 = load %struct.i40e_hmc_sd_entry*, %struct.i40e_hmc_sd_entry** %12, align 8
  %45 = getelementptr inbounds %struct.i40e_hmc_sd_entry, %struct.i40e_hmc_sd_entry* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %124, label %48

48:                                               ; preds = %37
  %49 = load i32, i32* @I40E_SD_TYPE_PAGED, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32, i32* @i40e_mem_pd, align 4
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* @I40E_HMC_PAGED_BP_SIZE, align 4
  store i32 %54, i32* %16, align 4
  br label %58

55:                                               ; preds = %48
  %56 = load i32, i32* @i40e_mem_bp_jumbo, align 4
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %16, align 4
  br label %58

58:                                               ; preds = %55, %52
  %59 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %16, align 4
  %62 = load i32, i32* @I40E_HMC_PD_BP_BUF_ALIGNMENT, align 4
  %63 = call i32 @i40e_allocate_dma_mem(%struct.i40e_hw* %59, %struct.i40e_dma_mem* %15, i32 %60, i32 %61, i32 %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  br label %137

67:                                               ; preds = %58
  %68 = load i32, i32* @TRUE, align 4
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* @I40E_SD_TYPE_PAGED, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %100

72:                                               ; preds = %67
  %73 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %74 = load %struct.i40e_hmc_sd_entry*, %struct.i40e_hmc_sd_entry** %12, align 8
  %75 = getelementptr inbounds %struct.i40e_hmc_sd_entry, %struct.i40e_hmc_sd_entry* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = call i32 @i40e_allocate_virt_mem(%struct.i40e_hw* %73, %struct.TYPE_8__* %77, i32 2048)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  br label %137

82:                                               ; preds = %72
  %83 = load %struct.i40e_hmc_sd_entry*, %struct.i40e_hmc_sd_entry** %12, align 8
  %84 = getelementptr inbounds %struct.i40e_hmc_sd_entry, %struct.i40e_hmc_sd_entry* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = inttoptr i64 %88 to %struct.i40e_hmc_pd_entry*
  %90 = load %struct.i40e_hmc_sd_entry*, %struct.i40e_hmc_sd_entry** %12, align 8
  %91 = getelementptr inbounds %struct.i40e_hmc_sd_entry, %struct.i40e_hmc_sd_entry* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  store %struct.i40e_hmc_pd_entry* %89, %struct.i40e_hmc_pd_entry** %93, align 8
  %94 = load %struct.i40e_hmc_sd_entry*, %struct.i40e_hmc_sd_entry** %12, align 8
  %95 = getelementptr inbounds %struct.i40e_hmc_sd_entry, %struct.i40e_hmc_sd_entry* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* @I40E_NONDMA_TO_NONDMA, align 4
  %99 = call i32 @i40e_memcpy(i32* %97, %struct.i40e_dma_mem* %15, i32 4, i32 %98)
  br label %112

100:                                              ; preds = %67
  %101 = load %struct.i40e_hmc_sd_entry*, %struct.i40e_hmc_sd_entry** %12, align 8
  %102 = getelementptr inbounds %struct.i40e_hmc_sd_entry, %struct.i40e_hmc_sd_entry* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  %105 = load i32, i32* @I40E_NONDMA_TO_NONDMA, align 4
  %106 = call i32 @i40e_memcpy(i32* %104, %struct.i40e_dma_mem* %15, i32 4, i32 %105)
  %107 = load i64, i64* %8, align 8
  %108 = load %struct.i40e_hmc_sd_entry*, %struct.i40e_hmc_sd_entry** %12, align 8
  %109 = getelementptr inbounds %struct.i40e_hmc_sd_entry, %struct.i40e_hmc_sd_entry* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  store i64 %107, i64* %111, align 8
  br label %112

112:                                              ; preds = %100, %82
  %113 = load i32, i32* %9, align 4
  %114 = load %struct.i40e_hmc_info*, %struct.i40e_hmc_info** %7, align 8
  %115 = getelementptr inbounds %struct.i40e_hmc_info, %struct.i40e_hmc_info* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  %117 = load %struct.i40e_hmc_sd_entry*, %struct.i40e_hmc_sd_entry** %116, align 8
  %118 = load i64, i64* %8, align 8
  %119 = getelementptr inbounds %struct.i40e_hmc_sd_entry, %struct.i40e_hmc_sd_entry* %117, i64 %118
  %120 = getelementptr inbounds %struct.i40e_hmc_sd_entry, %struct.i40e_hmc_sd_entry* %119, i32 0, i32 0
  store i32 %113, i32* %120, align 8
  %121 = load %struct.i40e_hmc_info*, %struct.i40e_hmc_info** %7, align 8
  %122 = getelementptr inbounds %struct.i40e_hmc_info, %struct.i40e_hmc_info* %121, i32 0, i32 0
  %123 = call i32 @I40E_INC_SD_REFCNT(%struct.TYPE_9__* %122)
  br label %124

124:                                              ; preds = %112, %37
  %125 = load i64, i64* @I40E_SD_TYPE_DIRECT, align 8
  %126 = load %struct.i40e_hmc_sd_entry*, %struct.i40e_hmc_sd_entry** %12, align 8
  %127 = getelementptr inbounds %struct.i40e_hmc_sd_entry, %struct.i40e_hmc_sd_entry* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = sext i32 %128 to i64
  %130 = icmp eq i64 %125, %129
  br i1 %130, label %131, label %136

131:                                              ; preds = %124
  %132 = load %struct.i40e_hmc_sd_entry*, %struct.i40e_hmc_sd_entry** %12, align 8
  %133 = getelementptr inbounds %struct.i40e_hmc_sd_entry, %struct.i40e_hmc_sd_entry* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = call i32 @I40E_INC_BP_REFCNT(%struct.TYPE_10__* %134)
  br label %136

136:                                              ; preds = %131, %124
  br label %137

137:                                              ; preds = %136, %81, %66, %34, %24
  %138 = load i32, i32* @I40E_SUCCESS, align 4
  %139 = load i32, i32* %11, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %148

141:                                              ; preds = %137
  %142 = load i32, i32* %14, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %146 = call i32 @i40e_free_dma_mem(%struct.i40e_hw* %145, %struct.i40e_dma_mem* %15)
  br label %147

147:                                              ; preds = %144, %141
  br label %148

148:                                              ; preds = %147, %137
  %149 = load i32, i32* %11, align 4
  ret i32 %149
}

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @i40e_allocate_dma_mem(%struct.i40e_hw*, %struct.i40e_dma_mem*, i32, i32, i32) #1

declare dso_local i32 @i40e_allocate_virt_mem(%struct.i40e_hw*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @i40e_memcpy(i32*, %struct.i40e_dma_mem*, i32, i32) #1

declare dso_local i32 @I40E_INC_SD_REFCNT(%struct.TYPE_9__*) #1

declare dso_local i32 @I40E_INC_BP_REFCNT(%struct.TYPE_10__*) #1

declare dso_local i32 @i40e_free_dma_mem(%struct.i40e_hw*, %struct.i40e_dma_mem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
