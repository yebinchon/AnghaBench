; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_sprom.c_bhnd_nvram_sprom_read_var.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_sprom.c_bhnd_nvram_sprom_read_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_sprom_opcode_state = type { i64, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i64, i64 }
%struct.bhnd_sprom_opcode_idx_entry = type { i32 }
%struct.bhnd_nvram_io = type { i32 }
%union.bhnd_nvram_sprom_storage = type { i32 }
%struct.bhnd_nvram_vardefn = type { i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"invalid entry\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"variable evaluation failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [83 x i8] c"SPROM array element count %zu cannot be represented by '%s' element count of %hhu\0A\00", align 1
@EFTYPE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"invalid SPROM data type: %d\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"error decoding '%s', SPROM_ARRAY_MAXLEN incorrect\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"variable seek failed: %d\0A\00", align 1
@BHND_NVRAM_VF_IGNALL1 = common dso_local global i32 0, align 4
@SPROM_OPCODE_VAR_STATE_OPEN = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [18 x i8] c"invalid var state\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"invalid bind state\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"output skip %u positioned %zu beyond nelem %zu\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BHND_NVRAM_TYPE_INT32 = common dso_local global i32 0, align 4
@BHND_NVRAM_TYPE_UINT32 = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [35 x i8] c"output skip %u would overflow %zu\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"loop terminated early\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@BHND_NVRAM_VAL_BORROW_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhnd_sprom_opcode_state*, %struct.bhnd_sprom_opcode_idx_entry*, %struct.bhnd_nvram_io*, %union.bhnd_nvram_sprom_storage*, i32*)* @bhnd_nvram_sprom_read_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_nvram_sprom_read_var(%struct.bhnd_sprom_opcode_state* %0, %struct.bhnd_sprom_opcode_idx_entry* %1, %struct.bhnd_nvram_io* %2, %union.bhnd_nvram_sprom_storage* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bhnd_sprom_opcode_state*, align 8
  %8 = alloca %struct.bhnd_sprom_opcode_idx_entry*, align 8
  %9 = alloca %struct.bhnd_nvram_io*, align 8
  %10 = alloca %union.bhnd_nvram_sprom_storage*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %union.bhnd_nvram_sprom_storage*, align 8
  %13 = alloca %struct.bhnd_nvram_vardefn*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_4__*, align 8
  %23 = alloca %struct.TYPE_3__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  store %struct.bhnd_sprom_opcode_state* %0, %struct.bhnd_sprom_opcode_state** %7, align 8
  store %struct.bhnd_sprom_opcode_idx_entry* %1, %struct.bhnd_sprom_opcode_idx_entry** %8, align 8
  store %struct.bhnd_nvram_io* %2, %struct.bhnd_nvram_io** %9, align 8
  store %union.bhnd_nvram_sprom_storage* %3, %union.bhnd_nvram_sprom_storage** %10, align 8
  store i32* %4, i32** %11, align 8
  %31 = load %struct.bhnd_sprom_opcode_idx_entry*, %struct.bhnd_sprom_opcode_idx_entry** %8, align 8
  %32 = getelementptr inbounds %struct.bhnd_sprom_opcode_idx_entry, %struct.bhnd_sprom_opcode_idx_entry* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.bhnd_nvram_vardefn* @bhnd_nvram_get_vardefn(i32 %33)
  store %struct.bhnd_nvram_vardefn* %34, %struct.bhnd_nvram_vardefn** %13, align 8
  %35 = load %struct.bhnd_nvram_vardefn*, %struct.bhnd_nvram_vardefn** %13, align 8
  %36 = icmp ne %struct.bhnd_nvram_vardefn* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i32 @BHND_NV_ASSERT(i32 %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.bhnd_sprom_opcode_state*, %struct.bhnd_sprom_opcode_state** %7, align 8
  %40 = load %struct.bhnd_sprom_opcode_idx_entry*, %struct.bhnd_sprom_opcode_idx_entry** %8, align 8
  %41 = call i32 @bhnd_sprom_opcode_eval_var(%struct.bhnd_sprom_opcode_state* %39, %struct.bhnd_sprom_opcode_idx_entry* %40)
  store i32 %41, i32* %21, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %5
  %44 = load i32, i32* %21, align 4
  %45 = sext i32 %44 to i64
  %46 = call i32 (i8*, i64, ...) @BHND_NV_LOG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %45)
  %47 = load i32, i32* %21, align 4
  store i32 %47, i32* %6, align 4
  br label %341

48:                                               ; preds = %5
  %49 = load %struct.bhnd_sprom_opcode_state*, %struct.bhnd_sprom_opcode_state** %7, align 8
  %50 = getelementptr inbounds %struct.bhnd_sprom_opcode_state, %struct.bhnd_sprom_opcode_state* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %19, align 8
  %53 = load i64, i64* %19, align 8
  %54 = load %struct.bhnd_nvram_vardefn*, %struct.bhnd_nvram_vardefn** %13, align 8
  %55 = getelementptr inbounds %struct.bhnd_nvram_vardefn, %struct.bhnd_nvram_vardefn* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ugt i64 %53, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %48
  %59 = load i64, i64* %19, align 8
  %60 = load %struct.bhnd_nvram_vardefn*, %struct.bhnd_nvram_vardefn** %13, align 8
  %61 = getelementptr inbounds %struct.bhnd_nvram_vardefn, %struct.bhnd_nvram_vardefn* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.bhnd_nvram_vardefn*, %struct.bhnd_nvram_vardefn** %13, align 8
  %64 = getelementptr inbounds %struct.bhnd_nvram_vardefn, %struct.bhnd_nvram_vardefn* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 (i8*, i64, ...) @BHND_NV_LOG(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i64 0, i64 0), i64 %59, i32 %62, i64 %65)
  %67 = load i32, i32* @EFTYPE, align 4
  store i32 %67, i32* %6, align 4
  br label %341

68:                                               ; preds = %48
  %69 = load %struct.bhnd_nvram_vardefn*, %struct.bhnd_nvram_vardefn** %13, align 8
  %70 = getelementptr inbounds %struct.bhnd_nvram_vardefn, %struct.bhnd_nvram_vardefn* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @bhnd_nvram_base_type(i32 %71)
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = call i64 @bhnd_nvram_value_size(i32* null, i32 0, i32 %73, i32 1)
  store i64 %74, i64* %18, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %68
  %77 = load %struct.bhnd_nvram_vardefn*, %struct.bhnd_nvram_vardefn** %13, align 8
  %78 = getelementptr inbounds %struct.bhnd_nvram_vardefn, %struct.bhnd_nvram_vardefn* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = call i32 (i8*, i64, ...) @BHND_NV_LOG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i64 %80)
  %82 = load i32, i32* @EFTYPE, align 4
  store i32 %82, i32* %6, align 4
  br label %341

83:                                               ; preds = %68
  %84 = load i64, i64* %19, align 8
  %85 = load i64, i64* %18, align 8
  %86 = mul i64 %84, %85
  store i64 %86, i64* %16, align 8
  %87 = load %union.bhnd_nvram_sprom_storage*, %union.bhnd_nvram_sprom_storage** %10, align 8
  store %union.bhnd_nvram_sprom_storage* %87, %union.bhnd_nvram_sprom_storage** %12, align 8
  %88 = load i64, i64* %16, align 8
  %89 = icmp ugt i64 %88, 4
  br i1 %89, label %90, label %97

90:                                               ; preds = %83
  %91 = load %struct.bhnd_nvram_vardefn*, %struct.bhnd_nvram_vardefn** %13, align 8
  %92 = getelementptr inbounds %struct.bhnd_nvram_vardefn, %struct.bhnd_nvram_vardefn* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = call i32 (i8*, i64, ...) @BHND_NV_LOG(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i64 %94)
  %96 = load i32, i32* @EFTYPE, align 4
  store i32 %96, i32* %6, align 4
  br label %341

97:                                               ; preds = %83
  %98 = load %union.bhnd_nvram_sprom_storage*, %union.bhnd_nvram_sprom_storage** %12, align 8
  %99 = load i64, i64* %16, align 8
  %100 = call i32 @memset(%union.bhnd_nvram_sprom_storage* %98, i32 0, i64 %99)
  %101 = load %struct.bhnd_sprom_opcode_state*, %struct.bhnd_sprom_opcode_state** %7, align 8
  %102 = load %struct.bhnd_sprom_opcode_idx_entry*, %struct.bhnd_sprom_opcode_idx_entry** %8, align 8
  %103 = call i32 @bhnd_sprom_opcode_seek(%struct.bhnd_sprom_opcode_state* %101, %struct.bhnd_sprom_opcode_idx_entry* %102)
  store i32 %103, i32* %21, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %97
  %106 = load i32, i32* %21, align 4
  %107 = sext i32 %106 to i64
  %108 = call i32 (i8*, i64, ...) @BHND_NV_LOG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i64 %107)
  %109 = load i32, i32* %21, align 4
  store i32 %109, i32* %6, align 4
  br label %341

110:                                              ; preds = %97
  store i64 0, i64* %17, align 8
  store i32 0, i32* %15, align 4
  %111 = load %struct.bhnd_nvram_vardefn*, %struct.bhnd_nvram_vardefn** %13, align 8
  %112 = getelementptr inbounds %struct.bhnd_nvram_vardefn, %struct.bhnd_nvram_vardefn* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @BHND_NVRAM_VF_IGNALL1, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %110
  store i32 1, i32* %20, align 4
  br label %119

118:                                              ; preds = %110
  store i32 0, i32* %20, align 4
  br label %119

119:                                              ; preds = %118, %117
  br label %120

120:                                              ; preds = %306, %119
  %121 = load %struct.bhnd_sprom_opcode_state*, %struct.bhnd_sprom_opcode_state** %7, align 8
  %122 = call i32 @bhnd_sprom_opcode_next_binding(%struct.bhnd_sprom_opcode_state* %121)
  store i32 %122, i32* %21, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %307

124:                                              ; preds = %120
  %125 = load %struct.bhnd_sprom_opcode_state*, %struct.bhnd_sprom_opcode_state** %7, align 8
  %126 = getelementptr inbounds %struct.bhnd_sprom_opcode_state, %struct.bhnd_sprom_opcode_state* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @SPROM_OPCODE_VAR_STATE_OPEN, align 8
  %129 = icmp sge i64 %127, %128
  %130 = zext i1 %129 to i32
  %131 = call i32 @BHND_NV_ASSERT(i32 %130, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %132 = load %struct.bhnd_sprom_opcode_state*, %struct.bhnd_sprom_opcode_state** %7, align 8
  %133 = getelementptr inbounds %struct.bhnd_sprom_opcode_state, %struct.bhnd_sprom_opcode_state* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @BHND_NV_ASSERT(i32 %135, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %137 = load %struct.bhnd_sprom_opcode_state*, %struct.bhnd_sprom_opcode_state** %7, align 8
  %138 = getelementptr inbounds %struct.bhnd_sprom_opcode_state, %struct.bhnd_sprom_opcode_state* %137, i32 0, i32 2
  store %struct.TYPE_3__* %138, %struct.TYPE_3__** %23, align 8
  %139 = load %struct.bhnd_sprom_opcode_state*, %struct.bhnd_sprom_opcode_state** %7, align 8
  %140 = getelementptr inbounds %struct.bhnd_sprom_opcode_state, %struct.bhnd_sprom_opcode_state* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 5
  store %struct.TYPE_4__* %141, %struct.TYPE_4__** %22, align 8
  %142 = load i64, i64* %17, align 8
  %143 = load i64, i64* %19, align 8
  %144 = icmp uge i64 %142, %143
  br i1 %144, label %145, label %153

145:                                              ; preds = %124
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* %17, align 8
  %150 = load i64, i64* %19, align 8
  %151 = call i32 (i8*, i64, ...) @BHND_NV_LOG(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i64 %148, i64 %149, i64 %150)
  %152 = load i32, i32* @EINVAL, align 4
  store i32 %152, i32* %6, align 4
  br label %341

153:                                              ; preds = %124
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  store i32 %156, i32* %27, align 4
  %157 = load %struct.bhnd_sprom_opcode_state*, %struct.bhnd_sprom_opcode_state** %7, align 8
  %158 = call i32 @bhnd_sprom_opcode_apply_scale(%struct.bhnd_sprom_opcode_state* %157, i32* %27)
  store i32 %158, i32* %21, align 4
  %159 = load i32, i32* %21, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %153
  %162 = load i32, i32* %21, align 4
  store i32 %162, i32* %6, align 4
  br label %341

163:                                              ; preds = %153
  %164 = load %struct.bhnd_sprom_opcode_state*, %struct.bhnd_sprom_opcode_state** %7, align 8
  %165 = getelementptr inbounds %struct.bhnd_sprom_opcode_state, %struct.bhnd_sprom_opcode_state* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  store i64 %166, i64* %25, align 8
  store i64 0, i64* %29, align 8
  br label %167

167:                                              ; preds = %303, %163
  %168 = load i64, i64* %29, align 8
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = icmp ult i64 %168, %171
  br i1 %172, label %173, label %306

173:                                              ; preds = %167
  %174 = load %struct.bhnd_nvram_vardefn*, %struct.bhnd_nvram_vardefn** %13, align 8
  %175 = load %struct.bhnd_nvram_io*, %struct.bhnd_nvram_io** %9, align 8
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 4
  %179 = load i64, i64* %25, align 8
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @bhnd_nvram_sprom_read_offset(%struct.bhnd_nvram_vardefn* %174, %struct.bhnd_nvram_io* %175, i32 %178, i64 %179, i32 %182, i32 %185, i32* %15)
  store i32 %186, i32* %21, align 4
  %187 = load i32, i32* %21, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %173
  %190 = load i32, i32* %21, align 4
  store i32 %190, i32* %6, align 4
  br label %341

191:                                              ; preds = %173
  %192 = load %struct.bhnd_nvram_vardefn*, %struct.bhnd_nvram_vardefn** %13, align 8
  %193 = getelementptr inbounds %struct.bhnd_nvram_vardefn, %struct.bhnd_nvram_vardefn* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @BHND_NVRAM_VF_IGNALL1, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %236

198:                                              ; preds = %191
  %199 = load i32, i32* %20, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %236

201:                                              ; preds = %198
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  store i32 %204, i32* %30, align 4
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 8
  %208 = icmp sgt i32 %207, 0
  br i1 %208, label %209, label %215

209:                                              ; preds = %201
  %210 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* %30, align 4
  %214 = ashr i32 %213, %212
  store i32 %214, i32* %30, align 4
  br label %228

215:                                              ; preds = %201
  %216 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 8
  %219 = icmp slt i32 %218, 0
  br i1 %219, label %220, label %227

220:                                              ; preds = %215
  %221 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 8
  %224 = sub nsw i32 0, %223
  %225 = load i32, i32* %30, align 4
  %226 = shl i32 %225, %224
  store i32 %226, i32* %30, align 4
  br label %227

227:                                              ; preds = %220, %215
  br label %228

228:                                              ; preds = %227, %209
  %229 = load i32, i32* %15, align 4
  %230 = load i32, i32* %30, align 4
  %231 = and i32 %229, %230
  %232 = load i32, i32* %30, align 4
  %233 = icmp ne i32 %231, %232
  br i1 %233, label %234, label %235

234:                                              ; preds = %228
  store i32 0, i32* %20, align 4
  br label %235

235:                                              ; preds = %234, %228
  br label %236

236:                                              ; preds = %235, %198, %191
  %237 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 3
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %246

241:                                              ; preds = %236
  %242 = load i32, i32* %27, align 4
  %243 = sext i32 %242 to i64
  %244 = load i64, i64* %25, align 8
  %245 = sub i64 %244, %243
  store i64 %245, i64* %25, align 8
  br label %251

246:                                              ; preds = %236
  %247 = load i32, i32* %27, align 4
  %248 = sext i32 %247 to i64
  %249 = load i64, i64* %25, align 8
  %250 = add i64 %249, %248
  store i64 %250, i64* %25, align 8
  br label %251

251:                                              ; preds = %246, %241
  %252 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = icmp eq i64 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %251
  br label %303

257:                                              ; preds = %251
  %258 = load i32, i32* %14, align 4
  %259 = call i64 @bhnd_nvram_is_signed_type(i32 %258)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %257
  %262 = load i32, i32* @BHND_NVRAM_TYPE_INT32, align 4
  store i32 %262, i32* %24, align 4
  br label %265

263:                                              ; preds = %257
  %264 = load i32, i32* @BHND_NVRAM_TYPE_UINT32, align 4
  store i32 %264, i32* %24, align 4
  br label %265

265:                                              ; preds = %263, %261
  %266 = load %union.bhnd_nvram_sprom_storage*, %union.bhnd_nvram_sprom_storage** %12, align 8
  %267 = bitcast %union.bhnd_nvram_sprom_storage* %266 to i32*
  %268 = load i64, i64* %18, align 8
  %269 = load i64, i64* %17, align 8
  %270 = mul i64 %268, %269
  %271 = getelementptr inbounds i32, i32* %267, i64 %270
  %272 = bitcast i32* %271 to i8*
  store i8* %272, i8** %28, align 8
  %273 = load i64, i64* %18, align 8
  store i64 %273, i64* %26, align 8
  %274 = load i32, i32* %24, align 4
  %275 = load i8*, i8** %28, align 8
  %276 = load i32, i32* %14, align 4
  %277 = call i32 @bhnd_nvram_value_coerce(i32* %15, i32 4, i32 %274, i8* %275, i64* %26, i32 %276)
  store i32 %277, i32* %21, align 4
  %278 = load i32, i32* %21, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %282

280:                                              ; preds = %265
  %281 = load i32, i32* %21, align 4
  store i32 %281, i32* %6, align 4
  br label %341

282:                                              ; preds = %265
  store i32 0, i32* %15, align 4
  %283 = load i64, i64* @SIZE_MAX, align 8
  %284 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %285 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = sub i64 %283, %286
  %288 = load i64, i64* %17, align 8
  %289 = icmp ult i64 %287, %288
  br i1 %289, label %290, label %297

290:                                              ; preds = %282
  %291 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %292 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = load i64, i64* %17, align 8
  %295 = call i32 (i8*, i64, ...) @BHND_NV_LOG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i64 %293, i64 %294)
  %296 = load i32, i32* @EINVAL, align 4
  store i32 %296, i32* %6, align 4
  br label %341

297:                                              ; preds = %282
  %298 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %299 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = load i64, i64* %17, align 8
  %302 = add i64 %301, %300
  store i64 %302, i64* %17, align 8
  br label %303

303:                                              ; preds = %297, %256
  %304 = load i64, i64* %29, align 8
  %305 = add i64 %304, 1
  store i64 %305, i64* %29, align 8
  br label %167

306:                                              ; preds = %167
  br label %120

307:                                              ; preds = %120
  %308 = load i32, i32* %21, align 4
  %309 = icmp ne i32 %308, 0
  %310 = zext i1 %309 to i32
  %311 = call i32 @BHND_NV_ASSERT(i32 %310, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  %312 = load i32, i32* %21, align 4
  %313 = load i32, i32* @ENOENT, align 4
  %314 = icmp ne i32 %312, %313
  br i1 %314, label %315, label %317

315:                                              ; preds = %307
  %316 = load i32, i32* %21, align 4
  store i32 %316, i32* %6, align 4
  br label %341

317:                                              ; preds = %307
  %318 = load %struct.bhnd_nvram_vardefn*, %struct.bhnd_nvram_vardefn** %13, align 8
  %319 = getelementptr inbounds %struct.bhnd_nvram_vardefn, %struct.bhnd_nvram_vardefn* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 8
  %321 = load i32, i32* @BHND_NVRAM_VF_IGNALL1, align 4
  %322 = and i32 %320, %321
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %329

324:                                              ; preds = %317
  %325 = load i32, i32* %20, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %329

327:                                              ; preds = %324
  %328 = load i32, i32* @ENOENT, align 4
  store i32 %328, i32* %6, align 4
  br label %341

329:                                              ; preds = %324, %317
  %330 = load i32*, i32** %11, align 8
  %331 = load %struct.bhnd_nvram_vardefn*, %struct.bhnd_nvram_vardefn** %13, align 8
  %332 = getelementptr inbounds %struct.bhnd_nvram_vardefn, %struct.bhnd_nvram_vardefn* %331, i32 0, i32 3
  %333 = load i32, i32* %332, align 8
  %334 = load %union.bhnd_nvram_sprom_storage*, %union.bhnd_nvram_sprom_storage** %12, align 8
  %335 = load i64, i64* %16, align 8
  %336 = load %struct.bhnd_nvram_vardefn*, %struct.bhnd_nvram_vardefn** %13, align 8
  %337 = getelementptr inbounds %struct.bhnd_nvram_vardefn, %struct.bhnd_nvram_vardefn* %336, i32 0, i32 2
  %338 = load i32, i32* %337, align 4
  %339 = load i32, i32* @BHND_NVRAM_VAL_BORROW_DATA, align 4
  %340 = call i32 @bhnd_nvram_val_init(i32* %330, i32 %333, %union.bhnd_nvram_sprom_storage* %334, i64 %335, i32 %338, i32 %339)
  store i32 %340, i32* %6, align 4
  br label %341

341:                                              ; preds = %329, %327, %315, %290, %280, %189, %161, %145, %105, %90, %76, %58, %43
  %342 = load i32, i32* %6, align 4
  ret i32 %342
}

declare dso_local %struct.bhnd_nvram_vardefn* @bhnd_nvram_get_vardefn(i32) #1

declare dso_local i32 @BHND_NV_ASSERT(i32, i8*) #1

declare dso_local i32 @bhnd_sprom_opcode_eval_var(%struct.bhnd_sprom_opcode_state*, %struct.bhnd_sprom_opcode_idx_entry*) #1

declare dso_local i32 @BHND_NV_LOG(i8*, i64, ...) #1

declare dso_local i32 @bhnd_nvram_base_type(i32) #1

declare dso_local i64 @bhnd_nvram_value_size(i32*, i32, i32, i32) #1

declare dso_local i32 @memset(%union.bhnd_nvram_sprom_storage*, i32, i64) #1

declare dso_local i32 @bhnd_sprom_opcode_seek(%struct.bhnd_sprom_opcode_state*, %struct.bhnd_sprom_opcode_idx_entry*) #1

declare dso_local i32 @bhnd_sprom_opcode_next_binding(%struct.bhnd_sprom_opcode_state*) #1

declare dso_local i32 @bhnd_sprom_opcode_apply_scale(%struct.bhnd_sprom_opcode_state*, i32*) #1

declare dso_local i32 @bhnd_nvram_sprom_read_offset(%struct.bhnd_nvram_vardefn*, %struct.bhnd_nvram_io*, i32, i64, i32, i32, i32*) #1

declare dso_local i64 @bhnd_nvram_is_signed_type(i32) #1

declare dso_local i32 @bhnd_nvram_value_coerce(i32*, i32, i32, i8*, i64*, i32) #1

declare dso_local i32 @bhnd_nvram_val_init(i32*, i32, %union.bhnd_nvram_sprom_storage*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
