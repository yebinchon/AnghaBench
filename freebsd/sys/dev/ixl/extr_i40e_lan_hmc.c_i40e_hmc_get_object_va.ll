; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_lan_hmc.c_i40e_hmc_get_object_va.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_lan_hmc.c_i40e_hmc_get_object_va.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { %struct.i40e_hmc_info }
%struct.i40e_hmc_info = type { i64, %struct.TYPE_10__*, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i64, i32, i64 }
%struct.TYPE_9__ = type { %struct.i40e_hmc_sd_entry* }
%struct.i40e_hmc_sd_entry = type { i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_11__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_11__ = type { %struct.i40e_hmc_pd_entry* }
%struct.i40e_hmc_pd_entry = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }

@I40E_SUCCESS = common dso_local global i32 0, align 4
@I40E_ERR_BAD_PTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"i40e_hmc_get_object_va: bad hmc_info->hmc_obj ptr\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"i40e_hmc_get_object_va: bad object_base ptr\0A\00", align 1
@I40E_HMC_INFO_SIGNATURE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [49 x i8] c"i40e_hmc_get_object_va: bad hmc_info->signature\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"i40e_hmc_get_object_va: returns error %d\0A\00", align 1
@I40E_ERR_INVALID_HMC_OBJ_INDEX = common dso_local global i32 0, align 4
@I40E_SD_TYPE_PAGED = common dso_local global i64 0, align 8
@I40E_HMC_PD_CNT_IN_SD = common dso_local global i64 0, align 8
@I40E_HMC_PAGED_BP_SIZE = common dso_local global i32 0, align 4
@I40E_HMC_DIRECT_BP_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_hw*, i32**, i32, i64)* @i40e_hmc_get_object_va to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_hmc_get_object_va(%struct.i40e_hw* %0, i32** %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.i40e_hw*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.i40e_hmc_info*, align 8
  %12 = alloca %struct.i40e_hmc_sd_entry*, align 8
  %13 = alloca %struct.i40e_hmc_pd_entry*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.i40e_hw* %0, %struct.i40e_hw** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %21 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %22 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %21, i32 0, i32 0
  store %struct.i40e_hmc_info* %22, %struct.i40e_hmc_info** %11, align 8
  %23 = load i32, i32* @I40E_SUCCESS, align 4
  store i32 %23, i32* %17, align 4
  %24 = load %struct.i40e_hmc_info*, %struct.i40e_hmc_info** %11, align 8
  %25 = getelementptr inbounds %struct.i40e_hmc_info, %struct.i40e_hmc_info* %24, i32 0, i32 1
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = icmp eq %struct.TYPE_10__* null, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load i32, i32* @I40E_ERR_BAD_PTR, align 4
  store i32 %29, i32* %17, align 4
  %30 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %142

31:                                               ; preds = %4
  %32 = load i32**, i32*** %6, align 8
  %33 = icmp eq i32** null, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* @I40E_ERR_BAD_PTR, align 4
  store i32 %35, i32* %17, align 4
  %36 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %142

37:                                               ; preds = %31
  %38 = load i64, i64* @I40E_HMC_INFO_SIGNATURE, align 8
  %39 = load %struct.i40e_hmc_info*, %struct.i40e_hmc_info** %11, align 8
  %40 = getelementptr inbounds %struct.i40e_hmc_info, %struct.i40e_hmc_info* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* @I40E_ERR_BAD_PTR, align 4
  store i32 %44, i32* %17, align 4
  %45 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  br label %142

46:                                               ; preds = %37
  %47 = load i64, i64* %8, align 8
  %48 = load %struct.i40e_hmc_info*, %struct.i40e_hmc_info** %11, align 8
  %49 = getelementptr inbounds %struct.i40e_hmc_info, %struct.i40e_hmc_info* %48, i32 0, i32 1
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp uge i64 %47, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %46
  %58 = load i32, i32* %17, align 4
  %59 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @I40E_ERR_INVALID_HMC_OBJ_INDEX, align 4
  store i32 %60, i32* %17, align 4
  br label %142

61:                                               ; preds = %46
  %62 = load %struct.i40e_hmc_info*, %struct.i40e_hmc_info** %11, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @I40E_FIND_SD_INDEX_LIMIT(%struct.i40e_hmc_info* %62, i32 %63, i64 %64, i32 1, i64* %19, i64* %20)
  %66 = load %struct.i40e_hmc_info*, %struct.i40e_hmc_info** %11, align 8
  %67 = getelementptr inbounds %struct.i40e_hmc_info, %struct.i40e_hmc_info* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load %struct.i40e_hmc_sd_entry*, %struct.i40e_hmc_sd_entry** %68, align 8
  %70 = load i64, i64* %19, align 8
  %71 = getelementptr inbounds %struct.i40e_hmc_sd_entry, %struct.i40e_hmc_sd_entry* %69, i64 %70
  store %struct.i40e_hmc_sd_entry* %71, %struct.i40e_hmc_sd_entry** %12, align 8
  %72 = load %struct.i40e_hmc_info*, %struct.i40e_hmc_info** %11, align 8
  %73 = getelementptr inbounds %struct.i40e_hmc_info, %struct.i40e_hmc_info* %72, i32 0, i32 1
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = load %struct.i40e_hmc_info*, %struct.i40e_hmc_info** %11, align 8
  %82 = getelementptr inbounds %struct.i40e_hmc_info, %struct.i40e_hmc_info* %81, i32 0, i32 1
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %8, align 8
  %90 = mul i64 %88, %89
  %91 = add i64 %80, %90
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %18, align 4
  %93 = load i64, i64* @I40E_SD_TYPE_PAGED, align 8
  %94 = load %struct.i40e_hmc_sd_entry*, %struct.i40e_hmc_sd_entry** %12, align 8
  %95 = getelementptr inbounds %struct.i40e_hmc_sd_entry, %struct.i40e_hmc_sd_entry* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %93, %96
  br i1 %97, label %98, label %126

98:                                               ; preds = %61
  %99 = load %struct.i40e_hmc_info*, %struct.i40e_hmc_info** %11, align 8
  %100 = load i32, i32* %7, align 4
  %101 = load i64, i64* %8, align 8
  %102 = call i32 @I40E_FIND_PD_INDEX_LIMIT(%struct.i40e_hmc_info* %99, i32 %100, i64 %101, i32 1, i64* %14, i64* %15)
  %103 = load i64, i64* %14, align 8
  %104 = load i64, i64* @I40E_HMC_PD_CNT_IN_SD, align 8
  %105 = urem i64 %103, %104
  store i64 %105, i64* %16, align 8
  %106 = load %struct.i40e_hmc_sd_entry*, %struct.i40e_hmc_sd_entry** %12, align 8
  %107 = getelementptr inbounds %struct.i40e_hmc_sd_entry, %struct.i40e_hmc_sd_entry* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = load %struct.i40e_hmc_pd_entry*, %struct.i40e_hmc_pd_entry** %109, align 8
  %111 = load i64, i64* %16, align 8
  %112 = getelementptr inbounds %struct.i40e_hmc_pd_entry, %struct.i40e_hmc_pd_entry* %110, i64 %111
  store %struct.i40e_hmc_pd_entry* %112, %struct.i40e_hmc_pd_entry** %13, align 8
  %113 = load i32, i32* %18, align 4
  %114 = load i32, i32* @I40E_HMC_PAGED_BP_SIZE, align 4
  %115 = srem i32 %113, %114
  %116 = sext i32 %115 to i64
  store i64 %116, i64* %10, align 8
  %117 = load %struct.i40e_hmc_pd_entry*, %struct.i40e_hmc_pd_entry** %13, align 8
  %118 = getelementptr inbounds %struct.i40e_hmc_pd_entry, %struct.i40e_hmc_pd_entry* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = inttoptr i64 %121 to i32*
  %123 = load i64, i64* %10, align 8
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  %125 = load i32**, i32*** %6, align 8
  store i32* %124, i32** %125, align 8
  br label %141

126:                                              ; preds = %61
  %127 = load i32, i32* %18, align 4
  %128 = load i32, i32* @I40E_HMC_DIRECT_BP_SIZE, align 4
  %129 = srem i32 %127, %128
  %130 = sext i32 %129 to i64
  store i64 %130, i64* %9, align 8
  %131 = load %struct.i40e_hmc_sd_entry*, %struct.i40e_hmc_sd_entry** %12, align 8
  %132 = getelementptr inbounds %struct.i40e_hmc_sd_entry, %struct.i40e_hmc_sd_entry* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = inttoptr i64 %136 to i32*
  %138 = load i64, i64* %9, align 8
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  %140 = load i32**, i32*** %6, align 8
  store i32* %139, i32** %140, align 8
  br label %141

141:                                              ; preds = %126, %98
  br label %142

142:                                              ; preds = %141, %57, %43, %34, %28
  %143 = load i32, i32* %17, align 4
  ret i32 %143
}

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @DEBUGOUT1(i8*, i32) #1

declare dso_local i32 @I40E_FIND_SD_INDEX_LIMIT(%struct.i40e_hmc_info*, i32, i64, i32, i64*, i64*) #1

declare dso_local i32 @I40E_FIND_PD_INDEX_LIMIT(%struct.i40e_hmc_info*, i32, i64, i32, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
