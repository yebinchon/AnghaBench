; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vm_map_unwire.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vm_map_unwire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, i64, i32, i32* }

@KERN_SUCCESS = common dso_local global i32 0, align 4
@VM_MAP_WIRE_HOLESOK = common dso_local global i32 0, align 4
@VM_MAP_WIRE_USER = common dso_local global i32 0, align 4
@KERN_INVALID_ADDRESS = common dso_local global i32 0, align 4
@MAP_ENTRY_IN_TRANSITION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"owned map entry %p\00", align 1
@curthread = common dso_local global i32* null, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"vm_map_unwire: lookup failed\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"vm_map_unwire: !HOLESOK and new/changed entry\00", align 1
@MAP_ENTRY_USER_WIRED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"vm_map_unwire: in-transition flag missing %p\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"vm_map_unwire: alien wire %p\00", align 1
@MAP_ENTRY_NEEDS_WAKEUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_map_unwire(i32 %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %8, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %21, i32* %5, align 4
  br label %307

22:                                               ; preds = %4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @VM_MAP_WIRE_HOLESOK, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @VM_MAP_WIRE_USER, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @vm_map_lock(i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @VM_MAP_RANGE_CHECK(i32 %35, i64 %36, i64 %37)
  %39 = load i32, i32* %6, align 4
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @vm_map_lookup_entry(i32 %39, i64 %40, %struct.TYPE_13__** %11)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %54, label %43

43:                                               ; preds = %22
  %44 = load i32, i32* %14, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %48 = call %struct.TYPE_13__* @vm_map_entry_succ(%struct.TYPE_13__* %47)
  store %struct.TYPE_13__* %48, %struct.TYPE_13__** %11, align 8
  br label %53

49:                                               ; preds = %43
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @vm_map_unlock(i32 %50)
  %52 = load i32, i32* @KERN_INVALID_ADDRESS, align 4
  store i32 %52, i32* %5, align 4
  br label %307

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53, %22
  store i32 1, i32* %13, align 4
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  store %struct.TYPE_13__* %55, %struct.TYPE_13__** %10, align 8
  %56 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %56, i32* %12, align 4
  br label %57

57:                                               ; preds = %163, %93, %54
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %8, align 8
  %62 = icmp slt i64 %60, %61
  br i1 %62, label %63, label %166

63:                                               ; preds = %57
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @MAP_ENTRY_IN_TRANSITION, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %95

70:                                               ; preds = %63
  %71 = load i32, i32* %6, align 4
  %72 = load i64, i64* %7, align 8
  %73 = load i32, i32* %14, align 4
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %75 = call %struct.TYPE_13__* @vm_map_entry_in_transition(i32 %71, i64 %72, i64* %8, i32 %73, %struct.TYPE_13__* %74)
  store %struct.TYPE_13__* %75, %struct.TYPE_13__** %10, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %77 = icmp eq %struct.TYPE_13__* %76, null
  br i1 %77, label %78, label %87

78:                                               ; preds = %70
  %79 = load i32, i32* %13, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @vm_map_unlock(i32 %82)
  %84 = load i32, i32* @KERN_INVALID_ADDRESS, align 4
  store i32 %84, i32* %5, align 4
  br label %307

85:                                               ; preds = %78
  %86 = load i32, i32* @KERN_INVALID_ADDRESS, align 4
  store i32 %86, i32* %12, align 4
  br label %166

87:                                               ; preds = %70
  %88 = load i32, i32* %13, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  br label %93

92:                                               ; preds = %87
  br label %93

93:                                               ; preds = %92, %90
  %94 = phi %struct.TYPE_13__* [ %91, %90 ], [ null, %92 ]
  store %struct.TYPE_13__* %94, %struct.TYPE_13__** %11, align 8
  br label %57

95:                                               ; preds = %63
  store i32 0, i32* %13, align 4
  %96 = load i32, i32* %6, align 4
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %98 = load i64, i64* %7, align 8
  %99 = call i32 @vm_map_clip_start(i32 %96, %struct.TYPE_13__* %97, i64 %98)
  %100 = load i32, i32* %6, align 4
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %102 = load i64, i64* %8, align 8
  %103 = call i32 @vm_map_clip_end(i32 %100, %struct.TYPE_13__* %101, i64 %102)
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @MAP_ENTRY_IN_TRANSITION, align 4
  %108 = and i32 %106, %107
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %95
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 4
  %113 = load i32*, i32** %112, align 8
  %114 = icmp eq i32* %113, null
  br label %115

115:                                              ; preds = %110, %95
  %116 = phi i1 [ false, %95 ], [ %114, %110 ]
  %117 = zext i1 %116 to i32
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %119 = bitcast %struct.TYPE_13__* %118 to i8*
  %120 = call i32 @KASSERT(i32 %117, i8* %119)
  %121 = load i32, i32* @MAP_ENTRY_IN_TRANSITION, align 4
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 8
  %126 = load i32*, i32** @curthread, align 8
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 4
  store i32* %126, i32** %128, align 8
  %129 = load i32, i32* %14, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %151, label %131

131:                                              ; preds = %115
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* %8, align 8
  %136 = icmp slt i64 %134, %135
  br i1 %136, label %137, label %151

137:                                              ; preds = %131
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %139 = call %struct.TYPE_13__* @vm_map_entry_succ(%struct.TYPE_13__* %138)
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = icmp sgt i64 %141, %144
  br i1 %145, label %146, label %151

146:                                              ; preds = %137
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  store i64 %149, i64* %8, align 8
  %150 = load i32, i32* @KERN_INVALID_ADDRESS, align 4
  store i32 %150, i32* %12, align 4
  br label %166

151:                                              ; preds = %137, %131, %115
  %152 = load i32, i32* %16, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %163, label %154

154:                                              ; preds = %151
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %156 = call i64 @vm_map_entry_system_wired_count(%struct.TYPE_13__* %155)
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %154
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  store i64 %161, i64* %8, align 8
  %162 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %162, i32* %12, align 4
  br label %166

163:                                              ; preds = %154, %151
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %165 = call %struct.TYPE_13__* @vm_map_entry_succ(%struct.TYPE_13__* %164)
  store %struct.TYPE_13__* %165, %struct.TYPE_13__** %10, align 8
  br label %57

166:                                              ; preds = %158, %146, %85, %57
  store i32 0, i32* %15, align 4
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %168 = icmp eq %struct.TYPE_13__* %167, null
  br i1 %168, label %169, label %179

169:                                              ; preds = %166
  %170 = load i32, i32* %6, align 4
  %171 = load i64, i64* %7, align 8
  %172 = call i32 @vm_map_lookup_entry(i32 %170, i64 %171, %struct.TYPE_13__** %11)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %179, label %174

174:                                              ; preds = %169
  %175 = load i32, i32* %14, align 4
  %176 = call i32 @KASSERT(i32 %175, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %178 = call %struct.TYPE_13__* @vm_map_entry_succ(%struct.TYPE_13__* %177)
  store %struct.TYPE_13__* %178, %struct.TYPE_13__** %11, align 8
  br label %179

179:                                              ; preds = %174, %169, %166
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  store %struct.TYPE_13__* %180, %struct.TYPE_13__** %10, align 8
  br label %181

181:                                              ; preds = %289, %179
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* %8, align 8
  %186 = icmp slt i64 %184, %185
  br i1 %186, label %187, label %292

187:                                              ; preds = %181
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @MAP_ENTRY_IN_TRANSITION, align 4
  %192 = and i32 %190, %191
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %200, label %194

194:                                              ; preds = %187
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 4
  %197 = load i32*, i32** %196, align 8
  %198 = load i32*, i32** @curthread, align 8
  %199 = icmp ne i32* %197, %198
  br i1 %199, label %200, label %203

200:                                              ; preds = %194, %187
  %201 = load i32, i32* %14, align 4
  %202 = call i32 @KASSERT(i32 %201, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %289

203:                                              ; preds = %194
  %204 = load i32, i32* %12, align 4
  %205 = load i32, i32* @KERN_SUCCESS, align 4
  %206 = icmp eq i32 %204, %205
  br i1 %206, label %207, label %242

207:                                              ; preds = %203
  %208 = load i32, i32* %16, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %217

210:                                              ; preds = %207
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @MAP_ENTRY_USER_WIRED, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %242

217:                                              ; preds = %210, %207
  %218 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 8
  %221 = icmp eq i32 %220, 1
  br i1 %221, label %222, label %226

222:                                              ; preds = %217
  %223 = load i32, i32* %6, align 4
  %224 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %225 = call i32 @vm_map_entry_unwire(i32 %223, %struct.TYPE_13__* %224)
  br label %231

226:                                              ; preds = %217
  %227 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %227, i32 0, i32 3
  %229 = load i32, i32* %228, align 8
  %230 = add nsw i32 %229, -1
  store i32 %230, i32* %228, align 8
  br label %231

231:                                              ; preds = %226, %222
  %232 = load i32, i32* %16, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %241

234:                                              ; preds = %231
  %235 = load i32, i32* @MAP_ENTRY_USER_WIRED, align 4
  %236 = xor i32 %235, -1
  %237 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 8
  %240 = and i32 %239, %236
  store i32 %240, i32* %238, align 8
  br label %241

241:                                              ; preds = %234, %231
  br label %242

242:                                              ; preds = %241, %210, %203
  %243 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 8
  %246 = load i32, i32* @MAP_ENTRY_IN_TRANSITION, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  %249 = zext i1 %248 to i32
  %250 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %251 = bitcast %struct.TYPE_13__* %250 to i8*
  %252 = call i32 @KASSERT(i32 %249, i8* %251)
  %253 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i32 0, i32 4
  %255 = load i32*, i32** %254, align 8
  %256 = load i32*, i32** @curthread, align 8
  %257 = icmp eq i32* %255, %256
  %258 = zext i1 %257 to i32
  %259 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %260 = bitcast %struct.TYPE_13__* %259 to i8*
  %261 = call i32 @KASSERT(i32 %258, i8* %260)
  %262 = load i32, i32* @MAP_ENTRY_IN_TRANSITION, align 4
  %263 = xor i32 %262, -1
  %264 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %265 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 8
  %267 = and i32 %266, %263
  store i32 %267, i32* %265, align 8
  %268 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %269 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %268, i32 0, i32 4
  store i32* null, i32** %269, align 8
  %270 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %271 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* @MAP_ENTRY_NEEDS_WAKEUP, align 4
  %274 = and i32 %272, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %283

276:                                              ; preds = %242
  %277 = load i32, i32* @MAP_ENTRY_NEEDS_WAKEUP, align 4
  %278 = xor i32 %277, -1
  %279 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %280 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 8
  %282 = and i32 %281, %278
  store i32 %282, i32* %280, align 8
  store i32 1, i32* %15, align 4
  br label %283

283:                                              ; preds = %276, %242
  %284 = load i32, i32* %6, align 4
  %285 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %286 = call i32 @vm_map_entry_pred(%struct.TYPE_13__* %285)
  %287 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %288 = call i32 @vm_map_try_merge_entries(i32 %284, i32 %286, %struct.TYPE_13__* %287)
  br label %289

289:                                              ; preds = %283, %200
  %290 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %291 = call %struct.TYPE_13__* @vm_map_entry_succ(%struct.TYPE_13__* %290)
  store %struct.TYPE_13__* %291, %struct.TYPE_13__** %10, align 8
  br label %181

292:                                              ; preds = %181
  %293 = load i32, i32* %6, align 4
  %294 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %295 = call i32 @vm_map_entry_pred(%struct.TYPE_13__* %294)
  %296 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %297 = call i32 @vm_map_try_merge_entries(i32 %293, i32 %295, %struct.TYPE_13__* %296)
  %298 = load i32, i32* %6, align 4
  %299 = call i32 @vm_map_unlock(i32 %298)
  %300 = load i32, i32* %15, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %305

302:                                              ; preds = %292
  %303 = load i32, i32* %6, align 4
  %304 = call i32 @vm_map_wakeup(i32 %303)
  br label %305

305:                                              ; preds = %302, %292
  %306 = load i32, i32* %12, align 4
  store i32 %306, i32* %5, align 4
  br label %307

307:                                              ; preds = %305, %81, %49, %20
  %308 = load i32, i32* %5, align 4
  ret i32 %308
}

declare dso_local i32 @vm_map_lock(i32) #1

declare dso_local i32 @VM_MAP_RANGE_CHECK(i32, i64, i64) #1

declare dso_local i32 @vm_map_lookup_entry(i32, i64, %struct.TYPE_13__**) #1

declare dso_local %struct.TYPE_13__* @vm_map_entry_succ(%struct.TYPE_13__*) #1

declare dso_local i32 @vm_map_unlock(i32) #1

declare dso_local %struct.TYPE_13__* @vm_map_entry_in_transition(i32, i64, i64*, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @vm_map_clip_start(i32, %struct.TYPE_13__*, i64) #1

declare dso_local i32 @vm_map_clip_end(i32, %struct.TYPE_13__*, i64) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @vm_map_entry_system_wired_count(%struct.TYPE_13__*) #1

declare dso_local i32 @vm_map_entry_unwire(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @vm_map_try_merge_entries(i32, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @vm_map_entry_pred(%struct.TYPE_13__*) #1

declare dso_local i32 @vm_map_wakeup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
