; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_lan_hmc.c_i40e_create_lan_hmc_object.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_lan_hmc.c_i40e_create_lan_hmc_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_hmc_lan_create_obj_info = type { i64, i64, i64, i64, %struct.TYPE_22__*, i32 }
%struct.TYPE_22__ = type { i64, %struct.TYPE_21__, %struct.TYPE_15__* }
%struct.TYPE_21__ = type { i64, %struct.i40e_hmc_sd_entry* }
%struct.i40e_hmc_sd_entry = type { i32, %struct.TYPE_20__, i8* }
%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.TYPE_17__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i64 }

@I40E_SUCCESS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@I40E_ERR_BAD_PTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"i40e_create_lan_hmc_object: bad info ptr\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"i40e_create_lan_hmc_object: bad hmc_info ptr\0A\00", align 1
@I40E_HMC_INFO_SIGNATURE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"i40e_create_lan_hmc_object: bad signature\0A\00", align 1
@I40E_ERR_INVALID_HMC_OBJ_INDEX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"i40e_create_lan_hmc_object: returns error %d\0A\00", align 1
@I40E_ERR_INVALID_HMC_OBJ_COUNT = common dso_local global i32 0, align 4
@I40E_ERR_INVALID_SD_INDEX = common dso_local global i32 0, align 4
@I40E_HMC_DIRECT_BP_SIZE = common dso_local global i64 0, align 8
@I40E_HMC_MAX_BP_COUNT = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@I40E_ERR_INVALID_SD_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_create_lan_hmc_object(%struct.i40e_hw* %0, %struct.i40e_hmc_lan_create_obj_info* %1) #0 {
  %3 = alloca %struct.i40e_hw*, align 8
  %4 = alloca %struct.i40e_hmc_lan_create_obj_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40e_hmc_sd_entry*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.i40e_hw* %0, %struct.i40e_hw** %3, align 8
  store %struct.i40e_hmc_lan_create_obj_info* %1, %struct.i40e_hmc_lan_create_obj_info** %4, align 8
  %17 = load i32, i32* @I40E_SUCCESS, align 4
  store i32 %17, i32* %5, align 4
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %11, align 4
  %19 = load %struct.i40e_hmc_lan_create_obj_info*, %struct.i40e_hmc_lan_create_obj_info** %4, align 8
  %20 = icmp eq %struct.i40e_hmc_lan_create_obj_info* null, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @I40E_ERR_BAD_PTR, align 4
  store i32 %22, i32* %5, align 4
  %23 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %355

24:                                               ; preds = %2
  %25 = load %struct.i40e_hmc_lan_create_obj_info*, %struct.i40e_hmc_lan_create_obj_info** %4, align 8
  %26 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %25, i32 0, i32 4
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %28 = icmp eq %struct.TYPE_22__* null, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @I40E_ERR_BAD_PTR, align 4
  store i32 %30, i32* %5, align 4
  %31 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %355

32:                                               ; preds = %24
  %33 = load i64, i64* @I40E_HMC_INFO_SIGNATURE, align 8
  %34 = load %struct.i40e_hmc_lan_create_obj_info*, %struct.i40e_hmc_lan_create_obj_info** %4, align 8
  %35 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %34, i32 0, i32 4
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %33, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load i32, i32* @I40E_ERR_BAD_PTR, align 4
  store i32 %41, i32* %5, align 4
  %42 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %355

43:                                               ; preds = %32
  %44 = load %struct.i40e_hmc_lan_create_obj_info*, %struct.i40e_hmc_lan_create_obj_info** %4, align 8
  %45 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.i40e_hmc_lan_create_obj_info*, %struct.i40e_hmc_lan_create_obj_info** %4, align 8
  %48 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %47, i32 0, i32 4
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %50, align 8
  %52 = load %struct.i40e_hmc_lan_create_obj_info*, %struct.i40e_hmc_lan_create_obj_info** %4, align 8
  %53 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp sge i64 %46, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %43
  %60 = load i32, i32* @I40E_ERR_INVALID_HMC_OBJ_INDEX, align 4
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  br label %355

63:                                               ; preds = %43
  %64 = load %struct.i40e_hmc_lan_create_obj_info*, %struct.i40e_hmc_lan_create_obj_info** %4, align 8
  %65 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.i40e_hmc_lan_create_obj_info*, %struct.i40e_hmc_lan_create_obj_info** %4, align 8
  %68 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %66, %69
  %71 = load %struct.i40e_hmc_lan_create_obj_info*, %struct.i40e_hmc_lan_create_obj_info** %4, align 8
  %72 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %71, i32 0, i32 4
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %74, align 8
  %76 = load %struct.i40e_hmc_lan_create_obj_info*, %struct.i40e_hmc_lan_create_obj_info** %4, align 8
  %77 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp sgt i64 %70, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %63
  %84 = load i32, i32* @I40E_ERR_INVALID_HMC_OBJ_COUNT, align 4
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %85)
  br label %355

87:                                               ; preds = %63
  %88 = load %struct.i40e_hmc_lan_create_obj_info*, %struct.i40e_hmc_lan_create_obj_info** %4, align 8
  %89 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %88, i32 0, i32 4
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %89, align 8
  %91 = load %struct.i40e_hmc_lan_create_obj_info*, %struct.i40e_hmc_lan_create_obj_info** %4, align 8
  %92 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.i40e_hmc_lan_create_obj_info*, %struct.i40e_hmc_lan_create_obj_info** %4, align 8
  %95 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.i40e_hmc_lan_create_obj_info*, %struct.i40e_hmc_lan_create_obj_info** %4, align 8
  %98 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @I40E_FIND_SD_INDEX_LIMIT(%struct.TYPE_22__* %90, i64 %93, i64 %96, i64 %99, i64* %12, i64* %13)
  %101 = load i64, i64* %12, align 8
  %102 = load %struct.i40e_hmc_lan_create_obj_info*, %struct.i40e_hmc_lan_create_obj_info** %4, align 8
  %103 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %102, i32 0, i32 4
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp sge i64 %101, %107
  br i1 %108, label %118, label %109

109:                                              ; preds = %87
  %110 = load i64, i64* %13, align 8
  %111 = load %struct.i40e_hmc_lan_create_obj_info*, %struct.i40e_hmc_lan_create_obj_info** %4, align 8
  %112 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %111, i32 0, i32 4
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp sgt i64 %110, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %109, %87
  %119 = load i32, i32* @I40E_ERR_INVALID_SD_INDEX, align 4
  store i32 %119, i32* %5, align 4
  br label %355

120:                                              ; preds = %109
  %121 = load %struct.i40e_hmc_lan_create_obj_info*, %struct.i40e_hmc_lan_create_obj_info** %4, align 8
  %122 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %121, i32 0, i32 4
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %122, align 8
  %124 = load %struct.i40e_hmc_lan_create_obj_info*, %struct.i40e_hmc_lan_create_obj_info** %4, align 8
  %125 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.i40e_hmc_lan_create_obj_info*, %struct.i40e_hmc_lan_create_obj_info** %4, align 8
  %128 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.i40e_hmc_lan_create_obj_info*, %struct.i40e_hmc_lan_create_obj_info** %4, align 8
  %131 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @I40E_FIND_PD_INDEX_LIMIT(%struct.TYPE_22__* %123, i64 %126, i64 %129, i64 %132, i64* %9, i64* %10)
  %134 = load %struct.i40e_hmc_lan_create_obj_info*, %struct.i40e_hmc_lan_create_obj_info** %4, align 8
  %135 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %120
  %139 = load i64, i64* @I40E_HMC_DIRECT_BP_SIZE, align 8
  store i64 %139, i64* %14, align 8
  br label %144

140:                                              ; preds = %120
  %141 = load %struct.i40e_hmc_lan_create_obj_info*, %struct.i40e_hmc_lan_create_obj_info** %4, align 8
  %142 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  store i64 %143, i64* %14, align 8
  br label %144

144:                                              ; preds = %140, %138
  %145 = load i64, i64* %12, align 8
  store i64 %145, i64* %16, align 8
  br label %146

146:                                              ; preds = %279, %144
  %147 = load i64, i64* %16, align 8
  %148 = load i64, i64* %13, align 8
  %149 = icmp slt i64 %147, %148
  br i1 %149, label %150, label %282

150:                                              ; preds = %146
  %151 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %152 = load %struct.i40e_hmc_lan_create_obj_info*, %struct.i40e_hmc_lan_create_obj_info** %4, align 8
  %153 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %152, i32 0, i32 4
  %154 = load %struct.TYPE_22__*, %struct.TYPE_22__** %153, align 8
  %155 = load i64, i64* %16, align 8
  %156 = load %struct.i40e_hmc_lan_create_obj_info*, %struct.i40e_hmc_lan_create_obj_info** %4, align 8
  %157 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 8
  %159 = load i64, i64* %14, align 8
  %160 = call i32 @i40e_add_sd_table_entry(%struct.i40e_hw* %151, %struct.TYPE_22__* %154, i64 %155, i32 %158, i64 %159)
  store i32 %160, i32* %5, align 4
  %161 = load i32, i32* @I40E_SUCCESS, align 4
  %162 = load i32, i32* %5, align 4
  %163 = icmp ne i32 %161, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %150
  br label %283

165:                                              ; preds = %150
  %166 = load %struct.i40e_hmc_lan_create_obj_info*, %struct.i40e_hmc_lan_create_obj_info** %4, align 8
  %167 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %166, i32 0, i32 4
  %168 = load %struct.TYPE_22__*, %struct.TYPE_22__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 1
  %171 = load %struct.i40e_hmc_sd_entry*, %struct.i40e_hmc_sd_entry** %170, align 8
  %172 = load i64, i64* %16, align 8
  %173 = getelementptr inbounds %struct.i40e_hmc_sd_entry, %struct.i40e_hmc_sd_entry* %171, i64 %172
  store %struct.i40e_hmc_sd_entry* %173, %struct.i40e_hmc_sd_entry** %6, align 8
  %174 = load %struct.i40e_hmc_sd_entry*, %struct.i40e_hmc_sd_entry** %6, align 8
  %175 = getelementptr inbounds %struct.i40e_hmc_sd_entry, %struct.i40e_hmc_sd_entry* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp eq i32 128, %176
  br i1 %177, label %178, label %237

178:                                              ; preds = %165
  %179 = load i64, i64* %9, align 8
  %180 = load i64, i64* %16, align 8
  %181 = load i64, i64* @I40E_HMC_MAX_BP_COUNT, align 8
  %182 = mul nsw i64 %180, %181
  %183 = call i64 @max(i64 %179, i64 %182)
  store i64 %183, i64* %7, align 8
  %184 = load i64, i64* %10, align 8
  %185 = load i64, i64* %16, align 8
  %186 = add nsw i64 %185, 1
  %187 = load i64, i64* @I40E_HMC_MAX_BP_COUNT, align 8
  %188 = mul nsw i64 %186, %187
  %189 = call i64 @min(i64 %184, i64 %188)
  store i64 %189, i64* %8, align 8
  %190 = load i64, i64* %7, align 8
  store i64 %190, i64* %15, align 8
  br label %191

191:                                              ; preds = %209, %178
  %192 = load i64, i64* %15, align 8
  %193 = load i64, i64* %8, align 8
  %194 = icmp slt i64 %192, %193
  br i1 %194, label %195, label %212

195:                                              ; preds = %191
  %196 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %197 = load %struct.i40e_hmc_lan_create_obj_info*, %struct.i40e_hmc_lan_create_obj_info** %4, align 8
  %198 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %197, i32 0, i32 4
  %199 = load %struct.TYPE_22__*, %struct.TYPE_22__** %198, align 8
  %200 = load i64, i64* %15, align 8
  %201 = call i32 @i40e_add_pd_table_entry(%struct.i40e_hw* %196, %struct.TYPE_22__* %199, i64 %200, i32* null)
  store i32 %201, i32* %5, align 4
  %202 = load i32, i32* @I40E_SUCCESS, align 4
  %203 = load i32, i32* %5, align 4
  %204 = icmp ne i32 %202, %203
  br i1 %204, label %205, label %208

205:                                              ; preds = %195
  %206 = load i8*, i8** @TRUE, align 8
  %207 = ptrtoint i8* %206 to i32
  store i32 %207, i32* %11, align 4
  br label %212

208:                                              ; preds = %195
  br label %209

209:                                              ; preds = %208
  %210 = load i64, i64* %15, align 8
  %211 = add nsw i64 %210, 1
  store i64 %211, i64* %15, align 8
  br label %191

212:                                              ; preds = %205, %191
  %213 = load i32, i32* %11, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %236

215:                                              ; preds = %212
  br label %216

216:                                              ; preds = %225, %215
  %217 = load i64, i64* %15, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %223

219:                                              ; preds = %216
  %220 = load i64, i64* %15, align 8
  %221 = load i64, i64* %7, align 8
  %222 = icmp sgt i64 %220, %221
  br label %223

223:                                              ; preds = %219, %216
  %224 = phi i1 [ false, %216 ], [ %222, %219 ]
  br i1 %224, label %225, label %235

225:                                              ; preds = %223
  %226 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %227 = load %struct.i40e_hmc_lan_create_obj_info*, %struct.i40e_hmc_lan_create_obj_info** %4, align 8
  %228 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %227, i32 0, i32 4
  %229 = load %struct.TYPE_22__*, %struct.TYPE_22__** %228, align 8
  %230 = load i64, i64* %15, align 8
  %231 = sub nsw i64 %230, 1
  %232 = call i32 @i40e_remove_pd_bp(%struct.i40e_hw* %226, %struct.TYPE_22__* %229, i64 %231)
  %233 = load i64, i64* %15, align 8
  %234 = add nsw i64 %233, -1
  store i64 %234, i64* %15, align 8
  br label %216

235:                                              ; preds = %223
  br label %236

236:                                              ; preds = %235, %212
  br label %237

237:                                              ; preds = %236, %165
  %238 = load %struct.i40e_hmc_sd_entry*, %struct.i40e_hmc_sd_entry** %6, align 8
  %239 = getelementptr inbounds %struct.i40e_hmc_sd_entry, %struct.i40e_hmc_sd_entry* %238, i32 0, i32 2
  %240 = load i8*, i8** %239, align 8
  %241 = icmp ne i8* %240, null
  br i1 %241, label %278, label %242

242:                                              ; preds = %237
  %243 = load i8*, i8** @TRUE, align 8
  %244 = load %struct.i40e_hmc_sd_entry*, %struct.i40e_hmc_sd_entry** %6, align 8
  %245 = getelementptr inbounds %struct.i40e_hmc_sd_entry, %struct.i40e_hmc_sd_entry* %244, i32 0, i32 2
  store i8* %243, i8** %245, align 8
  %246 = load %struct.i40e_hmc_sd_entry*, %struct.i40e_hmc_sd_entry** %6, align 8
  %247 = getelementptr inbounds %struct.i40e_hmc_sd_entry, %struct.i40e_hmc_sd_entry* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  switch i32 %248, label %275 [
    i32 128, label %249
    i32 129, label %262
  ]

249:                                              ; preds = %242
  %250 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %251 = load %struct.i40e_hmc_sd_entry*, %struct.i40e_hmc_sd_entry** %6, align 8
  %252 = getelementptr inbounds %struct.i40e_hmc_sd_entry, %struct.i40e_hmc_sd_entry* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = load i64, i64* %16, align 8
  %258 = load %struct.i40e_hmc_sd_entry*, %struct.i40e_hmc_sd_entry** %6, align 8
  %259 = getelementptr inbounds %struct.i40e_hmc_sd_entry, %struct.i40e_hmc_sd_entry* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = call i32 @I40E_SET_PF_SD_ENTRY(%struct.i40e_hw* %250, i32 %256, i64 %257, i32 %260)
  br label %277

262:                                              ; preds = %242
  %263 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %264 = load %struct.i40e_hmc_sd_entry*, %struct.i40e_hmc_sd_entry** %6, align 8
  %265 = getelementptr inbounds %struct.i40e_hmc_sd_entry, %struct.i40e_hmc_sd_entry* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = load i64, i64* %16, align 8
  %271 = load %struct.i40e_hmc_sd_entry*, %struct.i40e_hmc_sd_entry** %6, align 8
  %272 = getelementptr inbounds %struct.i40e_hmc_sd_entry, %struct.i40e_hmc_sd_entry* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = call i32 @I40E_SET_PF_SD_ENTRY(%struct.i40e_hw* %263, i32 %269, i64 %270, i32 %273)
  br label %277

275:                                              ; preds = %242
  %276 = load i32, i32* @I40E_ERR_INVALID_SD_TYPE, align 4
  store i32 %276, i32* %5, align 4
  br label %355

277:                                              ; preds = %262, %249
  br label %278

278:                                              ; preds = %277, %237
  br label %279

279:                                              ; preds = %278
  %280 = load i64, i64* %16, align 8
  %281 = add nsw i64 %280, 1
  store i64 %281, i64* %16, align 8
  br label %146

282:                                              ; preds = %146
  br label %355

283:                                              ; preds = %164
  br label %284

284:                                              ; preds = %351, %283
  %285 = load i64, i64* %16, align 8
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %291

287:                                              ; preds = %284
  %288 = load i64, i64* %16, align 8
  %289 = load i64, i64* %12, align 8
  %290 = icmp sgt i64 %288, %289
  br label %291

291:                                              ; preds = %287, %284
  %292 = phi i1 [ false, %284 ], [ %290, %287 ]
  br i1 %292, label %293, label %354

293:                                              ; preds = %291
  %294 = load %struct.i40e_hmc_lan_create_obj_info*, %struct.i40e_hmc_lan_create_obj_info** %4, align 8
  %295 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %294, i32 0, i32 4
  %296 = load %struct.TYPE_22__*, %struct.TYPE_22__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %296, i32 0, i32 1
  %298 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %297, i32 0, i32 1
  %299 = load %struct.i40e_hmc_sd_entry*, %struct.i40e_hmc_sd_entry** %298, align 8
  %300 = load i64, i64* %16, align 8
  %301 = sub nsw i64 %300, 1
  %302 = getelementptr inbounds %struct.i40e_hmc_sd_entry, %struct.i40e_hmc_sd_entry* %299, i64 %301
  store %struct.i40e_hmc_sd_entry* %302, %struct.i40e_hmc_sd_entry** %6, align 8
  %303 = load %struct.i40e_hmc_sd_entry*, %struct.i40e_hmc_sd_entry** %6, align 8
  %304 = getelementptr inbounds %struct.i40e_hmc_sd_entry, %struct.i40e_hmc_sd_entry* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  switch i32 %305, label %349 [
    i32 128, label %306
    i32 129, label %341
  ]

306:                                              ; preds = %293
  %307 = load i64, i64* %9, align 8
  %308 = load i64, i64* %16, align 8
  %309 = sub nsw i64 %308, 1
  %310 = load i64, i64* @I40E_HMC_MAX_BP_COUNT, align 8
  %311 = mul nsw i64 %309, %310
  %312 = call i64 @max(i64 %307, i64 %311)
  store i64 %312, i64* %7, align 8
  %313 = load i64, i64* %10, align 8
  %314 = load i64, i64* %16, align 8
  %315 = load i64, i64* @I40E_HMC_MAX_BP_COUNT, align 8
  %316 = mul nsw i64 %314, %315
  %317 = call i64 @min(i64 %313, i64 %316)
  store i64 %317, i64* %8, align 8
  %318 = load i64, i64* %7, align 8
  store i64 %318, i64* %15, align 8
  br label %319

319:                                              ; preds = %330, %306
  %320 = load i64, i64* %15, align 8
  %321 = load i64, i64* %8, align 8
  %322 = icmp slt i64 %320, %321
  br i1 %322, label %323, label %333

323:                                              ; preds = %319
  %324 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %325 = load %struct.i40e_hmc_lan_create_obj_info*, %struct.i40e_hmc_lan_create_obj_info** %4, align 8
  %326 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %325, i32 0, i32 4
  %327 = load %struct.TYPE_22__*, %struct.TYPE_22__** %326, align 8
  %328 = load i64, i64* %15, align 8
  %329 = call i32 @i40e_remove_pd_bp(%struct.i40e_hw* %324, %struct.TYPE_22__* %327, i64 %328)
  br label %330

330:                                              ; preds = %323
  %331 = load i64, i64* %15, align 8
  %332 = add nsw i64 %331, 1
  store i64 %332, i64* %15, align 8
  br label %319

333:                                              ; preds = %319
  %334 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %335 = load %struct.i40e_hmc_lan_create_obj_info*, %struct.i40e_hmc_lan_create_obj_info** %4, align 8
  %336 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %335, i32 0, i32 4
  %337 = load %struct.TYPE_22__*, %struct.TYPE_22__** %336, align 8
  %338 = load i64, i64* %16, align 8
  %339 = sub nsw i64 %338, 1
  %340 = call i32 @i40e_remove_pd_page(%struct.i40e_hw* %334, %struct.TYPE_22__* %337, i64 %339)
  br label %351

341:                                              ; preds = %293
  %342 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %343 = load %struct.i40e_hmc_lan_create_obj_info*, %struct.i40e_hmc_lan_create_obj_info** %4, align 8
  %344 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %343, i32 0, i32 4
  %345 = load %struct.TYPE_22__*, %struct.TYPE_22__** %344, align 8
  %346 = load i64, i64* %16, align 8
  %347 = sub nsw i64 %346, 1
  %348 = call i32 @i40e_remove_sd_bp(%struct.i40e_hw* %342, %struct.TYPE_22__* %345, i64 %347)
  br label %351

349:                                              ; preds = %293
  %350 = load i32, i32* @I40E_ERR_INVALID_SD_TYPE, align 4
  store i32 %350, i32* %5, align 4
  br label %351

351:                                              ; preds = %349, %341, %333
  %352 = load i64, i64* %16, align 8
  %353 = add nsw i64 %352, -1
  store i64 %353, i64* %16, align 8
  br label %284

354:                                              ; preds = %291
  br label %355

355:                                              ; preds = %354, %282, %275, %118, %83, %59, %40, %29, %21
  %356 = load i32, i32* %5, align 4
  ret i32 %356
}

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @DEBUGOUT1(i8*, i32) #1

declare dso_local i32 @I40E_FIND_SD_INDEX_LIMIT(%struct.TYPE_22__*, i64, i64, i64, i64*, i64*) #1

declare dso_local i32 @I40E_FIND_PD_INDEX_LIMIT(%struct.TYPE_22__*, i64, i64, i64, i64*, i64*) #1

declare dso_local i32 @i40e_add_sd_table_entry(%struct.i40e_hw*, %struct.TYPE_22__*, i64, i32, i64) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @i40e_add_pd_table_entry(%struct.i40e_hw*, %struct.TYPE_22__*, i64, i32*) #1

declare dso_local i32 @i40e_remove_pd_bp(%struct.i40e_hw*, %struct.TYPE_22__*, i64) #1

declare dso_local i32 @I40E_SET_PF_SD_ENTRY(%struct.i40e_hw*, i32, i64, i32) #1

declare dso_local i32 @i40e_remove_pd_page(%struct.i40e_hw*, %struct.TYPE_22__*, i64) #1

declare dso_local i32 @i40e_remove_sd_bp(%struct.i40e_hw*, %struct.TYPE_22__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
