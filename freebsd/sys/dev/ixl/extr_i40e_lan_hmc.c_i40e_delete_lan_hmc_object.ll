; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_lan_hmc.c_i40e_delete_lan_hmc_object.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_lan_hmc.c_i40e_delete_lan_hmc_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_hmc_lan_delete_obj_info = type { i64, i64, i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, %struct.TYPE_15__, %struct.TYPE_11__* }
%struct.TYPE_15__ = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.i40e_hmc_pd_table }
%struct.i40e_hmc_pd_table = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_11__ = type { i64 }

@I40E_SUCCESS = common dso_local global i32 0, align 4
@I40E_ERR_BAD_PTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"i40e_delete_hmc_object: bad info ptr\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"i40e_delete_hmc_object: bad info->hmc_info ptr\0A\00", align 1
@I40E_HMC_INFO_SIGNATURE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [49 x i8] c"i40e_delete_hmc_object: bad hmc_info->signature\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"i40e_delete_hmc_object: bad sd_entry\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"i40e_delete_hmc_object: bad hmc_info->hmc_obj\0A\00", align 1
@I40E_ERR_INVALID_HMC_OBJ_INDEX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"i40e_delete_hmc_object: returns error %d\0A\00", align 1
@I40E_ERR_INVALID_HMC_OBJ_COUNT = common dso_local global i32 0, align 4
@I40E_HMC_PD_CNT_IN_SD = common dso_local global i64 0, align 8
@I40E_ERR_INVALID_SD_INDEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_delete_lan_hmc_object(%struct.i40e_hw* %0, %struct.i40e_hmc_lan_delete_obj_info* %1) #0 {
  %3 = alloca %struct.i40e_hw*, align 8
  %4 = alloca %struct.i40e_hmc_lan_delete_obj_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40e_hmc_pd_table*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.i40e_hw* %0, %struct.i40e_hw** %3, align 8
  store %struct.i40e_hmc_lan_delete_obj_info* %1, %struct.i40e_hmc_lan_delete_obj_info** %4, align 8
  %14 = load i32, i32* @I40E_SUCCESS, align 4
  store i32 %14, i32* %5, align 4
  %15 = load %struct.i40e_hmc_lan_delete_obj_info*, %struct.i40e_hmc_lan_delete_obj_info** %4, align 8
  %16 = icmp eq %struct.i40e_hmc_lan_delete_obj_info* null, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @I40E_ERR_BAD_PTR, align 4
  store i32 %18, i32* %5, align 4
  %19 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %270

20:                                               ; preds = %2
  %21 = load %struct.i40e_hmc_lan_delete_obj_info*, %struct.i40e_hmc_lan_delete_obj_info** %4, align 8
  %22 = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, %struct.i40e_hmc_lan_delete_obj_info* %21, i32 0, i32 3
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %24 = icmp eq %struct.TYPE_16__* null, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @I40E_ERR_BAD_PTR, align 4
  store i32 %26, i32* %5, align 4
  %27 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %270

28:                                               ; preds = %20
  %29 = load i64, i64* @I40E_HMC_INFO_SIGNATURE, align 8
  %30 = load %struct.i40e_hmc_lan_delete_obj_info*, %struct.i40e_hmc_lan_delete_obj_info** %4, align 8
  %31 = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, %struct.i40e_hmc_lan_delete_obj_info* %30, i32 0, i32 3
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %29, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load i32, i32* @I40E_ERR_BAD_PTR, align 4
  store i32 %37, i32* %5, align 4
  %38 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  br label %270

39:                                               ; preds = %28
  %40 = load %struct.i40e_hmc_lan_delete_obj_info*, %struct.i40e_hmc_lan_delete_obj_info** %4, align 8
  %41 = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, %struct.i40e_hmc_lan_delete_obj_info* %40, i32 0, i32 3
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %44, align 8
  %46 = icmp eq %struct.TYPE_14__* null, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load i32, i32* @I40E_ERR_BAD_PTR, align 4
  store i32 %48, i32* %5, align 4
  %49 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %270

50:                                               ; preds = %39
  %51 = load %struct.i40e_hmc_lan_delete_obj_info*, %struct.i40e_hmc_lan_delete_obj_info** %4, align 8
  %52 = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, %struct.i40e_hmc_lan_delete_obj_info* %51, i32 0, i32 3
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  %56 = icmp eq %struct.TYPE_11__* null, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load i32, i32* @I40E_ERR_BAD_PTR, align 4
  store i32 %58, i32* %5, align 4
  %59 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  br label %270

60:                                               ; preds = %50
  %61 = load %struct.i40e_hmc_lan_delete_obj_info*, %struct.i40e_hmc_lan_delete_obj_info** %4, align 8
  %62 = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, %struct.i40e_hmc_lan_delete_obj_info* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.i40e_hmc_lan_delete_obj_info*, %struct.i40e_hmc_lan_delete_obj_info** %4, align 8
  %65 = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, %struct.i40e_hmc_lan_delete_obj_info* %64, i32 0, i32 3
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %67, align 8
  %69 = load %struct.i40e_hmc_lan_delete_obj_info*, %struct.i40e_hmc_lan_delete_obj_info** %4, align 8
  %70 = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, %struct.i40e_hmc_lan_delete_obj_info* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp sge i64 %63, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %60
  %77 = load i32, i32* @I40E_ERR_INVALID_HMC_OBJ_INDEX, align 4
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %78)
  br label %270

80:                                               ; preds = %60
  %81 = load %struct.i40e_hmc_lan_delete_obj_info*, %struct.i40e_hmc_lan_delete_obj_info** %4, align 8
  %82 = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, %struct.i40e_hmc_lan_delete_obj_info* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.i40e_hmc_lan_delete_obj_info*, %struct.i40e_hmc_lan_delete_obj_info** %4, align 8
  %85 = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, %struct.i40e_hmc_lan_delete_obj_info* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %83, %86
  %88 = load %struct.i40e_hmc_lan_delete_obj_info*, %struct.i40e_hmc_lan_delete_obj_info** %4, align 8
  %89 = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, %struct.i40e_hmc_lan_delete_obj_info* %88, i32 0, i32 3
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %91, align 8
  %93 = load %struct.i40e_hmc_lan_delete_obj_info*, %struct.i40e_hmc_lan_delete_obj_info** %4, align 8
  %94 = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, %struct.i40e_hmc_lan_delete_obj_info* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp sgt i64 %87, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %80
  %101 = load i32, i32* @I40E_ERR_INVALID_HMC_OBJ_COUNT, align 4
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %102)
  br label %270

104:                                              ; preds = %80
  %105 = load %struct.i40e_hmc_lan_delete_obj_info*, %struct.i40e_hmc_lan_delete_obj_info** %4, align 8
  %106 = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, %struct.i40e_hmc_lan_delete_obj_info* %105, i32 0, i32 3
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %106, align 8
  %108 = load %struct.i40e_hmc_lan_delete_obj_info*, %struct.i40e_hmc_lan_delete_obj_info** %4, align 8
  %109 = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, %struct.i40e_hmc_lan_delete_obj_info* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.i40e_hmc_lan_delete_obj_info*, %struct.i40e_hmc_lan_delete_obj_info** %4, align 8
  %112 = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, %struct.i40e_hmc_lan_delete_obj_info* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.i40e_hmc_lan_delete_obj_info*, %struct.i40e_hmc_lan_delete_obj_info** %4, align 8
  %115 = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, %struct.i40e_hmc_lan_delete_obj_info* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @I40E_FIND_PD_INDEX_LIMIT(%struct.TYPE_16__* %107, i64 %110, i64 %113, i64 %116, i64* %7, i64* %8)
  %118 = load i64, i64* %7, align 8
  store i64 %118, i64* %13, align 8
  br label %119

119:                                              ; preds = %174, %104
  %120 = load i64, i64* %13, align 8
  %121 = load i64, i64* %8, align 8
  %122 = icmp ult i64 %120, %121
  br i1 %122, label %123, label %177

123:                                              ; preds = %119
  %124 = load i64, i64* %13, align 8
  %125 = load i64, i64* @I40E_HMC_PD_CNT_IN_SD, align 8
  %126 = udiv i64 %124, %125
  store i64 %126, i64* %10, align 8
  %127 = load %struct.i40e_hmc_lan_delete_obj_info*, %struct.i40e_hmc_lan_delete_obj_info** %4, align 8
  %128 = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, %struct.i40e_hmc_lan_delete_obj_info* %127, i32 0, i32 3
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %131, align 8
  %133 = load i64, i64* %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 128, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %123
  br label %174

139:                                              ; preds = %123
  %140 = load i64, i64* %13, align 8
  %141 = load i64, i64* @I40E_HMC_PD_CNT_IN_SD, align 8
  %142 = urem i64 %140, %141
  store i64 %142, i64* %9, align 8
  %143 = load %struct.i40e_hmc_lan_delete_obj_info*, %struct.i40e_hmc_lan_delete_obj_info** %4, align 8
  %144 = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, %struct.i40e_hmc_lan_delete_obj_info* %143, i32 0, i32 3
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %147, align 8
  %149 = load i64, i64* %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 0
  store %struct.i40e_hmc_pd_table* %152, %struct.i40e_hmc_pd_table** %6, align 8
  %153 = load %struct.i40e_hmc_pd_table*, %struct.i40e_hmc_pd_table** %6, align 8
  %154 = getelementptr inbounds %struct.i40e_hmc_pd_table, %struct.i40e_hmc_pd_table* %153, i32 0, i32 0
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %154, align 8
  %156 = load i64, i64* %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %173

161:                                              ; preds = %139
  %162 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %163 = load %struct.i40e_hmc_lan_delete_obj_info*, %struct.i40e_hmc_lan_delete_obj_info** %4, align 8
  %164 = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, %struct.i40e_hmc_lan_delete_obj_info* %163, i32 0, i32 3
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %164, align 8
  %166 = load i64, i64* %13, align 8
  %167 = call i32 @i40e_remove_pd_bp(%struct.i40e_hw* %162, %struct.TYPE_16__* %165, i64 %166)
  store i32 %167, i32* %5, align 4
  %168 = load i32, i32* @I40E_SUCCESS, align 4
  %169 = load i32, i32* %5, align 4
  %170 = icmp ne i32 %168, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %161
  br label %270

172:                                              ; preds = %161
  br label %173

173:                                              ; preds = %172, %139
  br label %174

174:                                              ; preds = %173, %138
  %175 = load i64, i64* %13, align 8
  %176 = add i64 %175, 1
  store i64 %176, i64* %13, align 8
  br label %119

177:                                              ; preds = %119
  %178 = load %struct.i40e_hmc_lan_delete_obj_info*, %struct.i40e_hmc_lan_delete_obj_info** %4, align 8
  %179 = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, %struct.i40e_hmc_lan_delete_obj_info* %178, i32 0, i32 3
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %179, align 8
  %181 = load %struct.i40e_hmc_lan_delete_obj_info*, %struct.i40e_hmc_lan_delete_obj_info** %4, align 8
  %182 = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, %struct.i40e_hmc_lan_delete_obj_info* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.i40e_hmc_lan_delete_obj_info*, %struct.i40e_hmc_lan_delete_obj_info** %4, align 8
  %185 = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, %struct.i40e_hmc_lan_delete_obj_info* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.i40e_hmc_lan_delete_obj_info*, %struct.i40e_hmc_lan_delete_obj_info** %4, align 8
  %188 = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, %struct.i40e_hmc_lan_delete_obj_info* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = call i32 @I40E_FIND_SD_INDEX_LIMIT(%struct.TYPE_16__* %180, i64 %183, i64 %186, i64 %189, i64* %10, i64* %11)
  %191 = load i64, i64* %10, align 8
  %192 = load %struct.i40e_hmc_lan_delete_obj_info*, %struct.i40e_hmc_lan_delete_obj_info** %4, align 8
  %193 = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, %struct.i40e_hmc_lan_delete_obj_info* %192, i32 0, i32 3
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = icmp uge i64 %191, %197
  br i1 %198, label %208, label %199

199:                                              ; preds = %177
  %200 = load i64, i64* %11, align 8
  %201 = load %struct.i40e_hmc_lan_delete_obj_info*, %struct.i40e_hmc_lan_delete_obj_info** %4, align 8
  %202 = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, %struct.i40e_hmc_lan_delete_obj_info* %201, i32 0, i32 3
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = icmp ugt i64 %200, %206
  br i1 %207, label %208, label %210

208:                                              ; preds = %199, %177
  %209 = load i32, i32* @I40E_ERR_INVALID_SD_INDEX, align 4
  store i32 %209, i32* %5, align 4
  br label %270

210:                                              ; preds = %199
  %211 = load i64, i64* %10, align 8
  store i64 %211, i64* %12, align 8
  br label %212

212:                                              ; preds = %266, %210
  %213 = load i64, i64* %12, align 8
  %214 = load i64, i64* %11, align 8
  %215 = icmp ult i64 %213, %214
  br i1 %215, label %216, label %269

216:                                              ; preds = %212
  %217 = load %struct.i40e_hmc_lan_delete_obj_info*, %struct.i40e_hmc_lan_delete_obj_info** %4, align 8
  %218 = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, %struct.i40e_hmc_lan_delete_obj_info* %217, i32 0, i32 3
  %219 = load %struct.TYPE_16__*, %struct.TYPE_16__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %220, i32 0, i32 1
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %221, align 8
  %223 = load i64, i64* %12, align 8
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %229, label %228

228:                                              ; preds = %216
  br label %266

229:                                              ; preds = %216
  %230 = load %struct.i40e_hmc_lan_delete_obj_info*, %struct.i40e_hmc_lan_delete_obj_info** %4, align 8
  %231 = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, %struct.i40e_hmc_lan_delete_obj_info* %230, i32 0, i32 3
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %233, i32 0, i32 1
  %235 = load %struct.TYPE_14__*, %struct.TYPE_14__** %234, align 8
  %236 = load i64, i64* %12, align 8
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %235, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  switch i32 %239, label %264 [
    i32 129, label %240
    i32 128, label %252
  ]

240:                                              ; preds = %229
  %241 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %242 = load %struct.i40e_hmc_lan_delete_obj_info*, %struct.i40e_hmc_lan_delete_obj_info** %4, align 8
  %243 = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, %struct.i40e_hmc_lan_delete_obj_info* %242, i32 0, i32 3
  %244 = load %struct.TYPE_16__*, %struct.TYPE_16__** %243, align 8
  %245 = load i64, i64* %12, align 8
  %246 = call i32 @i40e_remove_sd_bp(%struct.i40e_hw* %241, %struct.TYPE_16__* %244, i64 %245)
  store i32 %246, i32* %5, align 4
  %247 = load i32, i32* @I40E_SUCCESS, align 4
  %248 = load i32, i32* %5, align 4
  %249 = icmp ne i32 %247, %248
  br i1 %249, label %250, label %251

250:                                              ; preds = %240
  br label %270

251:                                              ; preds = %240
  br label %265

252:                                              ; preds = %229
  %253 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %254 = load %struct.i40e_hmc_lan_delete_obj_info*, %struct.i40e_hmc_lan_delete_obj_info** %4, align 8
  %255 = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, %struct.i40e_hmc_lan_delete_obj_info* %254, i32 0, i32 3
  %256 = load %struct.TYPE_16__*, %struct.TYPE_16__** %255, align 8
  %257 = load i64, i64* %12, align 8
  %258 = call i32 @i40e_remove_pd_page(%struct.i40e_hw* %253, %struct.TYPE_16__* %256, i64 %257)
  store i32 %258, i32* %5, align 4
  %259 = load i32, i32* @I40E_SUCCESS, align 4
  %260 = load i32, i32* %5, align 4
  %261 = icmp ne i32 %259, %260
  br i1 %261, label %262, label %263

262:                                              ; preds = %252
  br label %270

263:                                              ; preds = %252
  br label %265

264:                                              ; preds = %229
  br label %265

265:                                              ; preds = %264, %263, %251
  br label %266

266:                                              ; preds = %265, %228
  %267 = load i64, i64* %12, align 8
  %268 = add i64 %267, 1
  store i64 %268, i64* %12, align 8
  br label %212

269:                                              ; preds = %212
  br label %270

270:                                              ; preds = %269, %262, %250, %208, %171, %100, %76, %57, %47, %36, %25, %17
  %271 = load i32, i32* %5, align 4
  ret i32 %271
}

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @DEBUGOUT1(i8*, i32) #1

declare dso_local i32 @I40E_FIND_PD_INDEX_LIMIT(%struct.TYPE_16__*, i64, i64, i64, i64*, i64*) #1

declare dso_local i32 @i40e_remove_pd_bp(%struct.i40e_hw*, %struct.TYPE_16__*, i64) #1

declare dso_local i32 @I40E_FIND_SD_INDEX_LIMIT(%struct.TYPE_16__*, i64, i64, i64, i64*, i64*) #1

declare dso_local i32 @i40e_remove_sd_bp(%struct.i40e_hw*, %struct.TYPE_16__*, i64) #1

declare dso_local i32 @i40e_remove_pd_page(%struct.i40e_hw*, %struct.TYPE_16__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
