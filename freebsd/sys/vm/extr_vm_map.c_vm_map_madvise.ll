; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vm_map_madvise.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vm_map_madvise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32 }
%struct.TYPE_27__ = type { i64, i32, i64, i64, %struct.TYPE_25__, i32, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@MAP_ENTRY_IS_SUB_MAP = common dso_local global i32 0, align 4
@MAP_ENTRY_BEHAV_NORMAL = common dso_local global i32 0, align 4
@MAP_ENTRY_BEHAV_SEQUENTIAL = common dso_local global i32 0, align 4
@MAP_ENTRY_BEHAV_RANDOM = common dso_local global i32 0, align 4
@MAP_ENTRY_NOSYNC = common dso_local global i32 0, align 4
@MAP_ENTRY_NOCOREDUMP = common dso_local global i32 0, align 4
@MAP_PREFAULT_MADVISE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_map_madvise(%struct.TYPE_26__* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_27__*, align 8
  %11 = alloca %struct.TYPE_27__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  switch i32 %17, label %34 [
    i32 132, label %18
    i32 129, label %18
    i32 130, label %18
    i32 131, label %18
    i32 137, label %18
    i32 133, label %18
    i32 136, label %18
    i32 128, label %26
    i32 135, label %26
    i32 134, label %26
  ]

18:                                               ; preds = %4, %4, %4, %4, %4, %4, %4
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %284

23:                                               ; preds = %18
  store i32 1, i32* %12, align 4
  %24 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %25 = call i32 @vm_map_lock(%struct.TYPE_26__* %24)
  br label %36

26:                                               ; preds = %4, %4, %4
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %284

31:                                               ; preds = %26
  store i32 0, i32* %12, align 4
  %32 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %33 = call i32 @vm_map_lock_read(%struct.TYPE_26__* %32)
  br label %36

34:                                               ; preds = %4
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %5, align 4
  br label %284

36:                                               ; preds = %31, %23
  %37 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @VM_MAP_RANGE_CHECK(%struct.TYPE_26__* %37, i64 %38, i64 %39)
  %41 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call i64 @vm_map_lookup_entry(%struct.TYPE_26__* %41, i64 %42, %struct.TYPE_27__** %11)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %36
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %50 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @vm_map_clip_start(%struct.TYPE_26__* %49, %struct.TYPE_27__* %50, i64 %51)
  br label %53

53:                                               ; preds = %48, %45
  br label %57

54:                                               ; preds = %36
  %55 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %56 = call %struct.TYPE_27__* @vm_map_entry_succ(%struct.TYPE_27__* %55)
  store %struct.TYPE_27__* %56, %struct.TYPE_27__** %11, align 8
  br label %57

57:                                               ; preds = %54, %53
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %138

60:                                               ; preds = %57
  %61 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  store %struct.TYPE_27__* %61, %struct.TYPE_27__** %10, align 8
  br label %62

62:                                               ; preds = %127, %60
  %63 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %8, align 8
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %68, label %130

68:                                               ; preds = %62
  %69 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @MAP_ENTRY_IS_SUB_MAP, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %127

76:                                               ; preds = %68
  %77 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %78 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %79 = load i64, i64* %8, align 8
  %80 = call i32 @vm_map_clip_end(%struct.TYPE_26__* %77, %struct.TYPE_27__* %78, i64 %79)
  %81 = load i32, i32* %9, align 4
  switch i32 %81, label %120 [
    i32 132, label %82
    i32 129, label %86
    i32 130, label %90
    i32 131, label %94
    i32 137, label %100
    i32 133, label %107
    i32 136, label %113
  ]

82:                                               ; preds = %76
  %83 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %84 = load i32, i32* @MAP_ENTRY_BEHAV_NORMAL, align 4
  %85 = call i32 @vm_map_entry_set_behavior(%struct.TYPE_27__* %83, i32 %84)
  br label %121

86:                                               ; preds = %76
  %87 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %88 = load i32, i32* @MAP_ENTRY_BEHAV_SEQUENTIAL, align 4
  %89 = call i32 @vm_map_entry_set_behavior(%struct.TYPE_27__* %87, i32 %88)
  br label %121

90:                                               ; preds = %76
  %91 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %92 = load i32, i32* @MAP_ENTRY_BEHAV_RANDOM, align 4
  %93 = call i32 @vm_map_entry_set_behavior(%struct.TYPE_27__* %91, i32 %92)
  br label %121

94:                                               ; preds = %76
  %95 = load i32, i32* @MAP_ENTRY_NOSYNC, align 4
  %96 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 8
  br label %121

100:                                              ; preds = %76
  %101 = load i32, i32* @MAP_ENTRY_NOSYNC, align 4
  %102 = xor i32 %101, -1
  %103 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = and i32 %105, %102
  store i32 %106, i32* %104, align 8
  br label %121

107:                                              ; preds = %76
  %108 = load i32, i32* @MAP_ENTRY_NOCOREDUMP, align 4
  %109 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 8
  br label %121

113:                                              ; preds = %76
  %114 = load i32, i32* @MAP_ENTRY_NOCOREDUMP, align 4
  %115 = xor i32 %114, -1
  %116 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = and i32 %118, %115
  store i32 %119, i32* %117, align 8
  br label %121

120:                                              ; preds = %76
  br label %121

121:                                              ; preds = %120, %113, %107, %100, %94, %90, %86, %82
  %122 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %123 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %124 = call i32 @vm_map_entry_pred(%struct.TYPE_27__* %123)
  %125 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %126 = call i32 @vm_map_try_merge_entries(%struct.TYPE_26__* %122, i32 %124, %struct.TYPE_27__* %125)
  br label %127

127:                                              ; preds = %121, %75
  %128 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %129 = call %struct.TYPE_27__* @vm_map_entry_succ(%struct.TYPE_27__* %128)
  store %struct.TYPE_27__* %129, %struct.TYPE_27__** %10, align 8
  br label %62

130:                                              ; preds = %62
  %131 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %132 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %133 = call i32 @vm_map_entry_pred(%struct.TYPE_27__* %132)
  %134 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %135 = call i32 @vm_map_try_merge_entries(%struct.TYPE_26__* %131, i32 %133, %struct.TYPE_27__* %134)
  %136 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %137 = call i32 @vm_map_unlock(%struct.TYPE_26__* %136)
  br label %283

138:                                              ; preds = %57
  %139 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  store %struct.TYPE_27__* %139, %struct.TYPE_27__** %10, align 8
  br label %140

140:                                              ; preds = %277, %138
  %141 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* %8, align 8
  %145 = icmp slt i64 %143, %144
  br i1 %145, label %146, label %280

146:                                              ; preds = %140
  %147 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @MAP_ENTRY_IS_SUB_MAP, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %146
  br label %277

154:                                              ; preds = %146
  %155 = load i32, i32* %9, align 4
  %156 = icmp eq i32 %155, 134
  br i1 %156, label %157, label %172

157:                                              ; preds = %154
  %158 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %158, i32 0, i32 4
  %160 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_28__*, %struct.TYPE_28__** %160, align 8
  %162 = icmp ne %struct.TYPE_28__* %161, null
  br i1 %162, label %163, label %172

163:                                              ; preds = %157
  %164 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %164, i32 0, i32 4
  %166 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_28__*, %struct.TYPE_28__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = icmp ne i32* %169, null
  br i1 %170, label %171, label %172

171:                                              ; preds = %163
  br label %277

172:                                              ; preds = %163, %157, %154
  %173 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %173, i32 0, i32 6
  %175 = load i32, i32* %174, align 4
  %176 = call i64 @OFF_TO_IDX(i32 %175)
  store i64 %176, i64* %13, align 8
  %177 = load i64, i64* %13, align 8
  %178 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %179 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = sub nsw i64 %180, %183
  %185 = call i64 @atop(i64 %184)
  %186 = add nsw i64 %177, %185
  store i64 %186, i64* %14, align 8
  %187 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %188 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  store i64 %189, i64* %16, align 8
  %190 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %191 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  store i64 %192, i64* %15, align 8
  %193 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %194 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* %7, align 8
  %197 = icmp slt i64 %195, %196
  br i1 %197, label %198, label %208

198:                                              ; preds = %172
  %199 = load i64, i64* %7, align 8
  %200 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %201 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = sub nsw i64 %199, %202
  %204 = call i64 @atop(i64 %203)
  %205 = load i64, i64* %13, align 8
  %206 = add nsw i64 %205, %204
  store i64 %206, i64* %13, align 8
  %207 = load i64, i64* %7, align 8
  store i64 %207, i64* %16, align 8
  br label %208

208:                                              ; preds = %198, %172
  %209 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %210 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %209, i32 0, i32 2
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* %8, align 8
  %213 = icmp sgt i64 %211, %212
  br i1 %213, label %214, label %224

214:                                              ; preds = %208
  %215 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %216 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %215, i32 0, i32 2
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* %8, align 8
  %219 = sub nsw i64 %217, %218
  %220 = call i64 @atop(i64 %219)
  %221 = load i64, i64* %14, align 8
  %222 = sub nsw i64 %221, %220
  store i64 %222, i64* %14, align 8
  %223 = load i64, i64* %8, align 8
  store i64 %223, i64* %15, align 8
  br label %224

224:                                              ; preds = %214, %208
  %225 = load i64, i64* %13, align 8
  %226 = load i64, i64* %14, align 8
  %227 = icmp sge i64 %225, %226
  br i1 %227, label %228, label %229

228:                                              ; preds = %224
  br label %277

229:                                              ; preds = %224
  %230 = load i32, i32* %9, align 4
  %231 = icmp eq i32 %230, 135
  br i1 %231, label %235, label %232

232:                                              ; preds = %229
  %233 = load i32, i32* %9, align 4
  %234 = icmp eq i32 %233, 134
  br i1 %234, label %235, label %243

235:                                              ; preds = %232, %229
  %236 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = load i64, i64* %16, align 8
  %240 = load i64, i64* %15, align 8
  %241 = load i32, i32* %9, align 4
  %242 = call i32 @pmap_advise(i32 %238, i64 %239, i64 %240, i32 %241)
  br label %243

243:                                              ; preds = %235, %232
  %244 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %245 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %244, i32 0, i32 4
  %246 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %245, i32 0, i32 0
  %247 = load %struct.TYPE_28__*, %struct.TYPE_28__** %246, align 8
  %248 = load i64, i64* %13, align 8
  %249 = load i64, i64* %14, align 8
  %250 = load i32, i32* %9, align 4
  %251 = call i32 @vm_object_madvise(%struct.TYPE_28__* %247, i64 %248, i64 %249, i32 %250)
  %252 = load i32, i32* %9, align 4
  %253 = icmp eq i32 %252, 128
  br i1 %253, label %254, label %276

254:                                              ; preds = %243
  %255 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %256 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %255, i32 0, i32 3
  %257 = load i64, i64* %256, align 8
  %258 = icmp eq i64 %257, 0
  br i1 %258, label %259, label %276

259:                                              ; preds = %254
  %260 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %261 = load i64, i64* %16, align 8
  %262 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %263 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %262, i32 0, i32 5
  %264 = load i32, i32* %263, align 8
  %265 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %266 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %265, i32 0, i32 4
  %267 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %266, i32 0, i32 0
  %268 = load %struct.TYPE_28__*, %struct.TYPE_28__** %267, align 8
  %269 = load i64, i64* %13, align 8
  %270 = load i64, i64* %14, align 8
  %271 = load i64, i64* %13, align 8
  %272 = sub nsw i64 %270, %271
  %273 = call i32 @ptoa(i64 %272)
  %274 = load i32, i32* @MAP_PREFAULT_MADVISE, align 4
  %275 = call i32 @vm_map_pmap_enter(%struct.TYPE_26__* %260, i64 %261, i32 %264, %struct.TYPE_28__* %268, i64 %269, i32 %273, i32 %274)
  br label %276

276:                                              ; preds = %259, %254, %243
  br label %277

277:                                              ; preds = %276, %228, %171, %153
  %278 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %279 = call %struct.TYPE_27__* @vm_map_entry_succ(%struct.TYPE_27__* %278)
  store %struct.TYPE_27__* %279, %struct.TYPE_27__** %10, align 8
  br label %140

280:                                              ; preds = %140
  %281 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %282 = call i32 @vm_map_unlock_read(%struct.TYPE_26__* %281)
  br label %283

283:                                              ; preds = %280, %130
  store i32 0, i32* %5, align 4
  br label %284

284:                                              ; preds = %283, %34, %30, %22
  %285 = load i32, i32* %5, align 4
  ret i32 %285
}

declare dso_local i32 @vm_map_lock(%struct.TYPE_26__*) #1

declare dso_local i32 @vm_map_lock_read(%struct.TYPE_26__*) #1

declare dso_local i32 @VM_MAP_RANGE_CHECK(%struct.TYPE_26__*, i64, i64) #1

declare dso_local i64 @vm_map_lookup_entry(%struct.TYPE_26__*, i64, %struct.TYPE_27__**) #1

declare dso_local i32 @vm_map_clip_start(%struct.TYPE_26__*, %struct.TYPE_27__*, i64) #1

declare dso_local %struct.TYPE_27__* @vm_map_entry_succ(%struct.TYPE_27__*) #1

declare dso_local i32 @vm_map_clip_end(%struct.TYPE_26__*, %struct.TYPE_27__*, i64) #1

declare dso_local i32 @vm_map_entry_set_behavior(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @vm_map_try_merge_entries(%struct.TYPE_26__*, i32, %struct.TYPE_27__*) #1

declare dso_local i32 @vm_map_entry_pred(%struct.TYPE_27__*) #1

declare dso_local i32 @vm_map_unlock(%struct.TYPE_26__*) #1

declare dso_local i64 @OFF_TO_IDX(i32) #1

declare dso_local i64 @atop(i64) #1

declare dso_local i32 @pmap_advise(i32, i64, i64, i32) #1

declare dso_local i32 @vm_object_madvise(%struct.TYPE_28__*, i64, i64, i32) #1

declare dso_local i32 @vm_map_pmap_enter(%struct.TYPE_26__*, i64, i32, %struct.TYPE_28__*, i64, i32, i32) #1

declare dso_local i32 @ptoa(i64) #1

declare dso_local i32 @vm_map_unlock_read(%struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
