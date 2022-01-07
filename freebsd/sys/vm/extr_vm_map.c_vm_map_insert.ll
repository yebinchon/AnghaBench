; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vm_map_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vm_map_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_36__ = type { i32, i64, %struct.ucred* }
%struct.ucred = type { i32 }
%struct.TYPE_35__ = type { %struct.ucred* }
%struct.TYPE_37__ = type { i32 }
%struct.TYPE_38__ = type { i64, i32, i64, i64, i64, i64, i64, i64, %struct.ucred*, i64, i32, i32*, %struct.TYPE_34__ }
%struct.TYPE_34__ = type { %struct.TYPE_36__* }

@kernel_object = common dso_local global %struct.TYPE_36__* null, align 8
@MAP_COPY_ON_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"vm_map_insert: kernel object and COW\00", align 1
@MAP_NOFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"vm_map_insert: paradoxical MAP_NOFAULT request\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"prot %#x is not subset of max_prot %#x\00", align 1
@KERN_INVALID_ADDRESS = common dso_local global i32 0, align 4
@KERN_NO_SPACE = common dso_local global i32 0, align 4
@MAP_CREATE_GUARD = common dso_local global i32 0, align 4
@VM_PROT_NONE = common dso_local global i64 0, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@MAP_ENTRY_COW = common dso_local global i32 0, align 4
@MAP_ENTRY_NEEDS_COPY = common dso_local global i32 0, align 4
@MAP_ENTRY_NOFAULT = common dso_local global i32 0, align 4
@MAP_DISABLE_SYNCER = common dso_local global i32 0, align 4
@MAP_ENTRY_NOSYNC = common dso_local global i32 0, align 4
@MAP_DISABLE_COREDUMP = common dso_local global i32 0, align 4
@MAP_ENTRY_NOCOREDUMP = common dso_local global i32 0, align 4
@MAP_STACK_GROWS_DOWN = common dso_local global i32 0, align 4
@MAP_ENTRY_GROWS_DOWN = common dso_local global i32 0, align 4
@MAP_STACK_GROWS_UP = common dso_local global i32 0, align 4
@MAP_ENTRY_GROWS_UP = common dso_local global i32 0, align 4
@MAP_WRITECOUNT = common dso_local global i32 0, align 4
@MAP_ENTRY_WRITECNT = common dso_local global i32 0, align 4
@MAP_VN_EXEC = common dso_local global i32 0, align 4
@MAP_ENTRY_VN_EXEC = common dso_local global i32 0, align 4
@MAP_ENTRY_GUARD = common dso_local global i32 0, align 4
@MAP_CREATE_STACK_GAP_DN = common dso_local global i32 0, align 4
@MAP_ENTRY_STACK_GAP_DN = common dso_local global i32 0, align 4
@MAP_CREATE_STACK_GAP_UP = common dso_local global i32 0, align 4
@MAP_ENTRY_STACK_GAP_UP = common dso_local global i32 0, align 4
@MAP_INHERIT_SHARE = common dso_local global i32 0, align 4
@VM_INHERIT_SHARE = common dso_local global i64 0, align 8
@VM_INHERIT_DEFAULT = common dso_local global i64 0, align 8
@MAP_ACC_NO_CHARGE = common dso_local global i32 0, align 4
@MAP_ACC_CHARGED = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i64 0, align 8
@KERN_RESOURCE_SHORTAGE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"overcommit: vm_map_insert o %p\00", align 1
@curthread = common dso_local global %struct.TYPE_35__* null, align 8
@kernel_map = common dso_local global %struct.TYPE_37__* null, align 8
@kernel_vm_end = common dso_local global i64 0, align 8
@OBJ_ONEMAPPING = common dso_local global i32 0, align 4
@MAP_ENTRY_USER_WIRED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"prev_entry %p has incoherent wiring\00", align 1
@KERN_SUCCESS = common dso_local global i32 0, align 4
@VM_FAULT_READ_AHEAD_INIT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"overcommit: vm_map_insert leaks vm_map %p\00", align 1
@MAP_PREFAULT = common dso_local global i32 0, align 4
@MAP_PREFAULT_PARTIAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_map_insert(%struct.TYPE_37__* %0, %struct.TYPE_36__* %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_37__*, align 8
  %11 = alloca %struct.TYPE_36__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_38__*, align 8
  %19 = alloca %struct.TYPE_38__*, align 8
  %20 = alloca %struct.ucred*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  store %struct.TYPE_37__* %0, %struct.TYPE_37__** %10, align 8
  store %struct.TYPE_36__* %1, %struct.TYPE_36__** %11, align 8
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i64 %6, i64* %16, align 8
  store i32 %7, i32* %17, align 4
  %23 = load %struct.TYPE_37__*, %struct.TYPE_37__** %10, align 8
  %24 = call i32 @VM_MAP_ASSERT_LOCKED(%struct.TYPE_37__* %23)
  %25 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %26 = load %struct.TYPE_36__*, %struct.TYPE_36__** @kernel_object, align 8
  %27 = icmp ne %struct.TYPE_36__* %25, %26
  br i1 %27, label %33, label %28

28:                                               ; preds = %8
  %29 = load i32, i32* %17, align 4
  %30 = load i32, i32* @MAP_COPY_ON_WRITE, align 4
  %31 = and i32 %29, %30
  %32 = icmp eq i32 %31, 0
  br label %33

33:                                               ; preds = %28, %8
  %34 = phi i1 [ true, %8 ], [ %32, %28 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @KASSERT(i32 %35, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %38 = icmp eq %struct.TYPE_36__* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* %17, align 4
  %41 = load i32, i32* @MAP_NOFAULT, align 4
  %42 = and i32 %40, %41
  %43 = icmp eq i32 %42, 0
  br label %44

44:                                               ; preds = %39, %33
  %45 = phi i1 [ true, %33 ], [ %43, %39 ]
  %46 = zext i1 %45 to i32
  %47 = call i32 @KASSERT(i32 %46, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i64, i64* %15, align 8
  %49 = load i64, i64* %16, align 8
  %50 = xor i64 %49, -1
  %51 = and i64 %48, %50
  %52 = icmp eq i64 %51, 0
  %53 = zext i1 %52 to i32
  %54 = load i64, i64* %15, align 8
  %55 = load i64, i64* %16, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = call i32 @KASSERT(i32 %53, i8* %56)
  %58 = load i64, i64* %13, align 8
  %59 = load %struct.TYPE_37__*, %struct.TYPE_37__** %10, align 8
  %60 = call i64 @vm_map_min(%struct.TYPE_37__* %59)
  %61 = icmp slt i64 %58, %60
  br i1 %61, label %71, label %62

62:                                               ; preds = %44
  %63 = load i64, i64* %14, align 8
  %64 = load %struct.TYPE_37__*, %struct.TYPE_37__** %10, align 8
  %65 = call i64 @vm_map_max(%struct.TYPE_37__* %64)
  %66 = icmp sgt i64 %63, %65
  br i1 %66, label %71, label %67

67:                                               ; preds = %62
  %68 = load i64, i64* %13, align 8
  %69 = load i64, i64* %14, align 8
  %70 = icmp sge i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %67, %62, %44
  %72 = load i32, i32* @KERN_INVALID_ADDRESS, align 4
  store i32 %72, i32* %9, align 4
  br label %611

73:                                               ; preds = %67
  %74 = load %struct.TYPE_37__*, %struct.TYPE_37__** %10, align 8
  %75 = load i64, i64* %13, align 8
  %76 = call i64 @vm_map_lookup_entry(%struct.TYPE_37__* %74, i64 %75, %struct.TYPE_38__** %19)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i32, i32* @KERN_NO_SPACE, align 4
  store i32 %79, i32* %9, align 4
  br label %611

80:                                               ; preds = %73
  %81 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %82 = call %struct.TYPE_38__* @vm_map_entry_succ(%struct.TYPE_38__* %81)
  %83 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %14, align 8
  %86 = icmp slt i64 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = load i32, i32* @KERN_NO_SPACE, align 4
  store i32 %88, i32* %9, align 4
  br label %611

89:                                               ; preds = %80
  %90 = load i32, i32* %17, align 4
  %91 = load i32, i32* @MAP_CREATE_GUARD, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %89
  %95 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %96 = icmp ne %struct.TYPE_36__* %95, null
  br i1 %96, label %101, label %97

97:                                               ; preds = %94
  %98 = load i64, i64* %16, align 8
  %99 = load i64, i64* @VM_PROT_NONE, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %97, %94
  %102 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %102, i32* %9, align 4
  br label %611

103:                                              ; preds = %97, %89
  store i32 0, i32* %21, align 4
  %104 = load i32, i32* %17, align 4
  %105 = load i32, i32* @MAP_COPY_ON_WRITE, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %103
  %109 = load i32, i32* @MAP_ENTRY_COW, align 4
  %110 = load i32, i32* @MAP_ENTRY_NEEDS_COPY, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* %21, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %21, align 4
  br label %114

114:                                              ; preds = %108, %103
  %115 = load i32, i32* %17, align 4
  %116 = load i32, i32* @MAP_NOFAULT, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = load i32, i32* @MAP_ENTRY_NOFAULT, align 4
  %121 = load i32, i32* %21, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %21, align 4
  br label %123

123:                                              ; preds = %119, %114
  %124 = load i32, i32* %17, align 4
  %125 = load i32, i32* @MAP_DISABLE_SYNCER, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %123
  %129 = load i32, i32* @MAP_ENTRY_NOSYNC, align 4
  %130 = load i32, i32* %21, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %21, align 4
  br label %132

132:                                              ; preds = %128, %123
  %133 = load i32, i32* %17, align 4
  %134 = load i32, i32* @MAP_DISABLE_COREDUMP, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %132
  %138 = load i32, i32* @MAP_ENTRY_NOCOREDUMP, align 4
  %139 = load i32, i32* %21, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %21, align 4
  br label %141

141:                                              ; preds = %137, %132
  %142 = load i32, i32* %17, align 4
  %143 = load i32, i32* @MAP_STACK_GROWS_DOWN, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %141
  %147 = load i32, i32* @MAP_ENTRY_GROWS_DOWN, align 4
  %148 = load i32, i32* %21, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %21, align 4
  br label %150

150:                                              ; preds = %146, %141
  %151 = load i32, i32* %17, align 4
  %152 = load i32, i32* @MAP_STACK_GROWS_UP, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %150
  %156 = load i32, i32* @MAP_ENTRY_GROWS_UP, align 4
  %157 = load i32, i32* %21, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %21, align 4
  br label %159

159:                                              ; preds = %155, %150
  %160 = load i32, i32* %17, align 4
  %161 = load i32, i32* @MAP_WRITECOUNT, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %159
  %165 = load i32, i32* @MAP_ENTRY_WRITECNT, align 4
  %166 = load i32, i32* %21, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %21, align 4
  br label %168

168:                                              ; preds = %164, %159
  %169 = load i32, i32* %17, align 4
  %170 = load i32, i32* @MAP_VN_EXEC, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %168
  %174 = load i32, i32* @MAP_ENTRY_VN_EXEC, align 4
  %175 = load i32, i32* %21, align 4
  %176 = or i32 %175, %174
  store i32 %176, i32* %21, align 4
  br label %177

177:                                              ; preds = %173, %168
  %178 = load i32, i32* %17, align 4
  %179 = load i32, i32* @MAP_CREATE_GUARD, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %177
  %183 = load i32, i32* @MAP_ENTRY_GUARD, align 4
  %184 = load i32, i32* %21, align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* %21, align 4
  br label %186

186:                                              ; preds = %182, %177
  %187 = load i32, i32* %17, align 4
  %188 = load i32, i32* @MAP_CREATE_STACK_GAP_DN, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %186
  %192 = load i32, i32* @MAP_ENTRY_STACK_GAP_DN, align 4
  %193 = load i32, i32* %21, align 4
  %194 = or i32 %193, %192
  store i32 %194, i32* %21, align 4
  br label %195

195:                                              ; preds = %191, %186
  %196 = load i32, i32* %17, align 4
  %197 = load i32, i32* @MAP_CREATE_STACK_GAP_UP, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %195
  %201 = load i32, i32* @MAP_ENTRY_STACK_GAP_UP, align 4
  %202 = load i32, i32* %21, align 4
  %203 = or i32 %202, %201
  store i32 %203, i32* %21, align 4
  br label %204

204:                                              ; preds = %200, %195
  %205 = load i32, i32* %17, align 4
  %206 = load i32, i32* @MAP_INHERIT_SHARE, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %204
  %210 = load i64, i64* @VM_INHERIT_SHARE, align 8
  store i64 %210, i64* %22, align 8
  br label %213

211:                                              ; preds = %204
  %212 = load i64, i64* @VM_INHERIT_DEFAULT, align 8
  store i64 %212, i64* %22, align 8
  br label %213

213:                                              ; preds = %211, %209
  store %struct.ucred* null, %struct.ucred** %20, align 8
  %214 = load i32, i32* %17, align 4
  %215 = load i32, i32* @MAP_ACC_NO_CHARGE, align 4
  %216 = load i32, i32* @MAP_NOFAULT, align 4
  %217 = or i32 %215, %216
  %218 = load i32, i32* @MAP_CREATE_GUARD, align 4
  %219 = or i32 %217, %218
  %220 = and i32 %214, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %213
  br label %277

223:                                              ; preds = %213
  %224 = load i32, i32* %17, align 4
  %225 = load i32, i32* @MAP_ACC_CHARGED, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %241, label %228

228:                                              ; preds = %223
  %229 = load i64, i64* %15, align 8
  %230 = load i64, i64* @VM_PROT_WRITE, align 8
  %231 = and i64 %229, %230
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %276

233:                                              ; preds = %228
  %234 = load i32, i32* %21, align 4
  %235 = load i32, i32* @MAP_ENTRY_NEEDS_COPY, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %241, label %238

238:                                              ; preds = %233
  %239 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %240 = icmp eq %struct.TYPE_36__* %239, null
  br i1 %240, label %241, label %276

241:                                              ; preds = %238, %233, %223
  %242 = load i32, i32* %17, align 4
  %243 = load i32, i32* @MAP_ACC_CHARGED, align 4
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %254, label %246

246:                                              ; preds = %241
  %247 = load i64, i64* %14, align 8
  %248 = load i64, i64* %13, align 8
  %249 = sub nsw i64 %247, %248
  %250 = call i32 @swap_reserve(i64 %249)
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %254, label %252

252:                                              ; preds = %246
  %253 = load i32, i32* @KERN_RESOURCE_SHORTAGE, align 4
  store i32 %253, i32* %9, align 4
  br label %611

254:                                              ; preds = %246, %241
  %255 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %256 = icmp eq %struct.TYPE_36__* %255, null
  br i1 %256, label %267, label %257

257:                                              ; preds = %254
  %258 = load i32, i32* %21, align 4
  %259 = load i32, i32* @MAP_ENTRY_NEEDS_COPY, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %267, label %262

262:                                              ; preds = %257
  %263 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %264 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %263, i32 0, i32 2
  %265 = load %struct.ucred*, %struct.ucred** %264, align 8
  %266 = icmp eq %struct.ucred* %265, null
  br label %267

267:                                              ; preds = %262, %257, %254
  %268 = phi i1 [ true, %257 ], [ true, %254 ], [ %266, %262 ]
  %269 = zext i1 %268 to i32
  %270 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %271 = bitcast %struct.TYPE_36__* %270 to i8*
  %272 = call i32 @KASSERT(i32 %269, i8* %271)
  %273 = load %struct.TYPE_35__*, %struct.TYPE_35__** @curthread, align 8
  %274 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %273, i32 0, i32 0
  %275 = load %struct.ucred*, %struct.ucred** %274, align 8
  store %struct.ucred* %275, %struct.ucred** %20, align 8
  br label %276

276:                                              ; preds = %267, %238, %228
  br label %277

277:                                              ; preds = %276, %222
  %278 = load %struct.TYPE_37__*, %struct.TYPE_37__** %10, align 8
  %279 = load %struct.TYPE_37__*, %struct.TYPE_37__** @kernel_map, align 8
  %280 = icmp eq %struct.TYPE_37__* %278, %279
  br i1 %280, label %281, label %288

281:                                              ; preds = %277
  %282 = load i64, i64* %14, align 8
  %283 = load i64, i64* @kernel_vm_end, align 8
  %284 = icmp sgt i64 %282, %283
  br i1 %284, label %285, label %288

285:                                              ; preds = %281
  %286 = load i64, i64* %14, align 8
  %287 = call i32 @pmap_growkernel(i64 %286)
  br label %288

288:                                              ; preds = %285, %281, %277
  %289 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %290 = icmp ne %struct.TYPE_36__* %289, null
  br i1 %290, label %291, label %310

291:                                              ; preds = %288
  %292 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %293 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_36__* %292)
  %294 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %295 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = icmp sgt i32 %296, 1
  br i1 %297, label %303, label %298

298:                                              ; preds = %291
  %299 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %300 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %299, i32 0, i32 1
  %301 = load i64, i64* %300, align 8
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %307

303:                                              ; preds = %298, %291
  %304 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %305 = load i32, i32* @OBJ_ONEMAPPING, align 4
  %306 = call i32 @vm_object_clear_flag(%struct.TYPE_36__* %304, i32 %305)
  br label %307

307:                                              ; preds = %303, %298
  %308 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %309 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_36__* %308)
  br label %494

310:                                              ; preds = %288
  %311 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %312 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 8
  %314 = load i32, i32* @MAP_ENTRY_USER_WIRED, align 4
  %315 = xor i32 %314, -1
  %316 = and i32 %313, %315
  %317 = load i32, i32* %21, align 4
  %318 = icmp eq i32 %316, %317
  br i1 %318, label %319, label %493

319:                                              ; preds = %310
  %320 = load i32, i32* %17, align 4
  %321 = load i32, i32* @MAP_STACK_GROWS_DOWN, align 4
  %322 = load i32, i32* @MAP_STACK_GROWS_UP, align 4
  %323 = or i32 %321, %322
  %324 = load i32, i32* @MAP_VN_EXEC, align 4
  %325 = or i32 %323, %324
  %326 = and i32 %320, %325
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %328, label %493

328:                                              ; preds = %319
  %329 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %330 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %329, i32 0, i32 2
  %331 = load i64, i64* %330, align 8
  %332 = load i64, i64* %13, align 8
  %333 = icmp eq i64 %331, %332
  br i1 %333, label %334, label %493

334:                                              ; preds = %328
  %335 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %336 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %335, i32 0, i32 8
  %337 = load %struct.ucred*, %struct.ucred** %336, align 8
  %338 = load %struct.ucred*, %struct.ucred** %20, align 8
  %339 = icmp eq %struct.ucred* %337, %338
  br i1 %339, label %355, label %340

340:                                              ; preds = %334
  %341 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %342 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %341, i32 0, i32 12
  %343 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %342, i32 0, i32 0
  %344 = load %struct.TYPE_36__*, %struct.TYPE_36__** %343, align 8
  %345 = icmp ne %struct.TYPE_36__* %344, null
  br i1 %345, label %346, label %493

346:                                              ; preds = %340
  %347 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %348 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %347, i32 0, i32 12
  %349 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %348, i32 0, i32 0
  %350 = load %struct.TYPE_36__*, %struct.TYPE_36__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %350, i32 0, i32 2
  %352 = load %struct.ucred*, %struct.ucred** %351, align 8
  %353 = load %struct.ucred*, %struct.ucred** %20, align 8
  %354 = icmp eq %struct.ucred* %352, %353
  br i1 %354, label %355, label %493

355:                                              ; preds = %346, %334
  %356 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %357 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %356, i32 0, i32 12
  %358 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %357, i32 0, i32 0
  %359 = load %struct.TYPE_36__*, %struct.TYPE_36__** %358, align 8
  %360 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %361 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %360, i32 0, i32 3
  %362 = load i64, i64* %361, align 8
  %363 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %364 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %363, i32 0, i32 2
  %365 = load i64, i64* %364, align 8
  %366 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %367 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %366, i32 0, i32 0
  %368 = load i64, i64* %367, align 8
  %369 = sub nsw i64 %365, %368
  %370 = trunc i64 %369 to i32
  %371 = load i64, i64* %14, align 8
  %372 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %373 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %372, i32 0, i32 2
  %374 = load i64, i64* %373, align 8
  %375 = sub nsw i64 %371, %374
  %376 = trunc i64 %375 to i32
  %377 = load %struct.ucred*, %struct.ucred** %20, align 8
  %378 = icmp ne %struct.ucred* %377, null
  br i1 %378, label %379, label %384

379:                                              ; preds = %355
  %380 = load i32, i32* %21, align 4
  %381 = load i32, i32* @MAP_ENTRY_NEEDS_COPY, align 4
  %382 = and i32 %380, %381
  %383 = icmp eq i32 %382, 0
  br label %384

384:                                              ; preds = %379, %355
  %385 = phi i1 [ false, %355 ], [ %383, %379 ]
  %386 = zext i1 %385 to i32
  %387 = call i64 @vm_object_coalesce(%struct.TYPE_36__* %359, i64 %362, i32 %370, i32 %376, i32 %386)
  %388 = icmp ne i64 %387, 0
  br i1 %388, label %389, label %493

389:                                              ; preds = %384
  %390 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %391 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %390, i32 0, i32 4
  %392 = load i64, i64* %391, align 8
  %393 = load i64, i64* %22, align 8
  %394 = icmp eq i64 %392, %393
  br i1 %394, label %395, label %456

395:                                              ; preds = %389
  %396 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %397 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %396, i32 0, i32 5
  %398 = load i64, i64* %397, align 8
  %399 = load i64, i64* %15, align 8
  %400 = icmp eq i64 %398, %399
  br i1 %400, label %401, label %456

401:                                              ; preds = %395
  %402 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %403 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %402, i32 0, i32 6
  %404 = load i64, i64* %403, align 8
  %405 = load i64, i64* %16, align 8
  %406 = icmp eq i64 %404, %405
  br i1 %406, label %407, label %456

407:                                              ; preds = %401
  %408 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %409 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %408, i32 0, i32 7
  %410 = load i64, i64* %409, align 8
  %411 = icmp eq i64 %410, 0
  br i1 %411, label %412, label %456

412:                                              ; preds = %407
  %413 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %414 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %413, i32 0, i32 1
  %415 = load i32, i32* %414, align 8
  %416 = load i32, i32* @MAP_ENTRY_USER_WIRED, align 4
  %417 = and i32 %415, %416
  %418 = icmp eq i32 %417, 0
  %419 = zext i1 %418 to i32
  %420 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %421 = bitcast %struct.TYPE_38__* %420 to i8*
  %422 = call i32 @KASSERT(i32 %419, i8* %421)
  %423 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %424 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %423, i32 0, i32 1
  %425 = load i32, i32* %424, align 8
  %426 = load i32, i32* @MAP_ENTRY_GUARD, align 4
  %427 = and i32 %425, %426
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %429, label %441

429:                                              ; preds = %412
  %430 = load i64, i64* %14, align 8
  %431 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %432 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %431, i32 0, i32 2
  %433 = load i64, i64* %432, align 8
  %434 = sub nsw i64 %430, %433
  %435 = load %struct.TYPE_37__*, %struct.TYPE_37__** %10, align 8
  %436 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %435, i32 0, i32 0
  %437 = load i32, i32* %436, align 4
  %438 = sext i32 %437 to i64
  %439 = add nsw i64 %438, %434
  %440 = trunc i64 %439 to i32
  store i32 %440, i32* %436, align 4
  br label %441

441:                                              ; preds = %429, %412
  %442 = load %struct.TYPE_37__*, %struct.TYPE_37__** %10, align 8
  %443 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %444 = load i64, i64* %14, align 8
  %445 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %446 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %445, i32 0, i32 2
  %447 = load i64, i64* %446, align 8
  %448 = sub nsw i64 %444, %447
  %449 = call i32 @vm_map_entry_resize(%struct.TYPE_37__* %442, %struct.TYPE_38__* %443, i64 %448)
  %450 = load %struct.TYPE_37__*, %struct.TYPE_37__** %10, align 8
  %451 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %452 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %453 = call %struct.TYPE_38__* @vm_map_entry_succ(%struct.TYPE_38__* %452)
  %454 = call i32 @vm_map_try_merge_entries(%struct.TYPE_37__* %450, %struct.TYPE_38__* %451, %struct.TYPE_38__* %453)
  %455 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %455, i32* %9, align 4
  br label %611

456:                                              ; preds = %407, %401, %395, %389
  %457 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %458 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %457, i32 0, i32 12
  %459 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %458, i32 0, i32 0
  %460 = load %struct.TYPE_36__*, %struct.TYPE_36__** %459, align 8
  store %struct.TYPE_36__* %460, %struct.TYPE_36__** %11, align 8
  %461 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %462 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %461, i32 0, i32 3
  %463 = load i64, i64* %462, align 8
  %464 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %465 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %464, i32 0, i32 2
  %466 = load i64, i64* %465, align 8
  %467 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %468 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %467, i32 0, i32 0
  %469 = load i64, i64* %468, align 8
  %470 = sub nsw i64 %466, %469
  %471 = add nsw i64 %463, %470
  store i64 %471, i64* %12, align 8
  %472 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %473 = call i32 @vm_object_reference(%struct.TYPE_36__* %472)
  %474 = load %struct.ucred*, %struct.ucred** %20, align 8
  %475 = icmp ne %struct.ucred* %474, null
  br i1 %475, label %476, label %492

476:                                              ; preds = %456
  %477 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %478 = icmp ne %struct.TYPE_36__* %477, null
  br i1 %478, label %479, label %492

479:                                              ; preds = %476
  %480 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %481 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %480, i32 0, i32 2
  %482 = load %struct.ucred*, %struct.ucred** %481, align 8
  %483 = icmp ne %struct.ucred* %482, null
  br i1 %483, label %484, label %492

484:                                              ; preds = %479
  %485 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %486 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %485, i32 0, i32 1
  %487 = load i32, i32* %486, align 8
  %488 = load i32, i32* @MAP_ENTRY_NEEDS_COPY, align 4
  %489 = and i32 %487, %488
  %490 = icmp ne i32 %489, 0
  br i1 %490, label %492, label %491

491:                                              ; preds = %484
  store %struct.ucred* null, %struct.ucred** %20, align 8
  br label %492

492:                                              ; preds = %491, %484, %479, %476, %456
  br label %493

493:                                              ; preds = %492, %384, %346, %340, %328, %319, %310
  br label %494

494:                                              ; preds = %493, %307
  %495 = load %struct.ucred*, %struct.ucred** %20, align 8
  %496 = icmp ne %struct.ucred* %495, null
  br i1 %496, label %497, label %500

497:                                              ; preds = %494
  %498 = load %struct.ucred*, %struct.ucred** %20, align 8
  %499 = call i32 @crhold(%struct.ucred* %498)
  br label %500

500:                                              ; preds = %497, %494
  %501 = load %struct.TYPE_37__*, %struct.TYPE_37__** %10, align 8
  %502 = call %struct.TYPE_38__* @vm_map_entry_create(%struct.TYPE_37__* %501)
  store %struct.TYPE_38__* %502, %struct.TYPE_38__** %18, align 8
  %503 = load i64, i64* %13, align 8
  %504 = load %struct.TYPE_38__*, %struct.TYPE_38__** %18, align 8
  %505 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %504, i32 0, i32 0
  store i64 %503, i64* %505, align 8
  %506 = load i64, i64* %14, align 8
  %507 = load %struct.TYPE_38__*, %struct.TYPE_38__** %18, align 8
  %508 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %507, i32 0, i32 2
  store i64 %506, i64* %508, align 8
  %509 = load %struct.TYPE_38__*, %struct.TYPE_38__** %18, align 8
  %510 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %509, i32 0, i32 8
  store %struct.ucred* null, %struct.ucred** %510, align 8
  %511 = load i32, i32* %21, align 4
  %512 = load %struct.TYPE_38__*, %struct.TYPE_38__** %18, align 8
  %513 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %512, i32 0, i32 1
  store i32 %511, i32* %513, align 8
  %514 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %515 = load %struct.TYPE_38__*, %struct.TYPE_38__** %18, align 8
  %516 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %515, i32 0, i32 12
  %517 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %516, i32 0, i32 0
  store %struct.TYPE_36__* %514, %struct.TYPE_36__** %517, align 8
  %518 = load i64, i64* %12, align 8
  %519 = load %struct.TYPE_38__*, %struct.TYPE_38__** %18, align 8
  %520 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %519, i32 0, i32 3
  store i64 %518, i64* %520, align 8
  %521 = load i64, i64* %22, align 8
  %522 = load %struct.TYPE_38__*, %struct.TYPE_38__** %18, align 8
  %523 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %522, i32 0, i32 4
  store i64 %521, i64* %523, align 8
  %524 = load i64, i64* %15, align 8
  %525 = load %struct.TYPE_38__*, %struct.TYPE_38__** %18, align 8
  %526 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %525, i32 0, i32 5
  store i64 %524, i64* %526, align 8
  %527 = load i64, i64* %16, align 8
  %528 = load %struct.TYPE_38__*, %struct.TYPE_38__** %18, align 8
  %529 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %528, i32 0, i32 6
  store i64 %527, i64* %529, align 8
  %530 = load %struct.TYPE_38__*, %struct.TYPE_38__** %18, align 8
  %531 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %530, i32 0, i32 7
  store i64 0, i64* %531, align 8
  %532 = load %struct.TYPE_38__*, %struct.TYPE_38__** %18, align 8
  %533 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %532, i32 0, i32 11
  store i32* null, i32** %533, align 8
  %534 = load i32, i32* @VM_FAULT_READ_AHEAD_INIT, align 4
  %535 = load %struct.TYPE_38__*, %struct.TYPE_38__** %18, align 8
  %536 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %535, i32 0, i32 10
  store i32 %534, i32* %536, align 8
  %537 = load i64, i64* %13, align 8
  %538 = load %struct.TYPE_38__*, %struct.TYPE_38__** %18, align 8
  %539 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %538, i32 0, i32 9
  store i64 %537, i64* %539, align 8
  %540 = load %struct.ucred*, %struct.ucred** %20, align 8
  %541 = icmp eq %struct.ucred* %540, null
  br i1 %541, label %547, label %542

542:                                              ; preds = %500
  %543 = load %struct.TYPE_38__*, %struct.TYPE_38__** %18, align 8
  %544 = call i32 @ENTRY_CHARGED(%struct.TYPE_38__* %543)
  %545 = icmp ne i32 %544, 0
  %546 = xor i1 %545, true
  br label %547

547:                                              ; preds = %542, %500
  %548 = phi i1 [ true, %500 ], [ %546, %542 ]
  %549 = zext i1 %548 to i32
  %550 = load %struct.TYPE_38__*, %struct.TYPE_38__** %18, align 8
  %551 = bitcast %struct.TYPE_38__* %550 to i8*
  %552 = call i32 @KASSERT(i32 %549, i8* %551)
  %553 = load %struct.ucred*, %struct.ucred** %20, align 8
  %554 = load %struct.TYPE_38__*, %struct.TYPE_38__** %18, align 8
  %555 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %554, i32 0, i32 8
  store %struct.ucred* %553, %struct.ucred** %555, align 8
  %556 = load %struct.TYPE_37__*, %struct.TYPE_37__** %10, align 8
  %557 = load %struct.TYPE_38__*, %struct.TYPE_38__** %18, align 8
  %558 = call i32 @vm_map_entry_link(%struct.TYPE_37__* %556, %struct.TYPE_38__* %557)
  %559 = load %struct.TYPE_38__*, %struct.TYPE_38__** %18, align 8
  %560 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %559, i32 0, i32 1
  %561 = load i32, i32* %560, align 8
  %562 = load i32, i32* @MAP_ENTRY_GUARD, align 4
  %563 = and i32 %561, %562
  %564 = icmp eq i32 %563, 0
  br i1 %564, label %565, label %579

565:                                              ; preds = %547
  %566 = load %struct.TYPE_38__*, %struct.TYPE_38__** %18, align 8
  %567 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %566, i32 0, i32 2
  %568 = load i64, i64* %567, align 8
  %569 = load %struct.TYPE_38__*, %struct.TYPE_38__** %18, align 8
  %570 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %569, i32 0, i32 0
  %571 = load i64, i64* %570, align 8
  %572 = sub nsw i64 %568, %571
  %573 = load %struct.TYPE_37__*, %struct.TYPE_37__** %10, align 8
  %574 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %573, i32 0, i32 0
  %575 = load i32, i32* %574, align 4
  %576 = sext i32 %575 to i64
  %577 = add nsw i64 %576, %572
  %578 = trunc i64 %577 to i32
  store i32 %578, i32* %574, align 4
  br label %579

579:                                              ; preds = %565, %547
  %580 = load %struct.TYPE_37__*, %struct.TYPE_37__** %10, align 8
  %581 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %582 = load %struct.TYPE_38__*, %struct.TYPE_38__** %18, align 8
  %583 = call i32 @vm_map_try_merge_entries(%struct.TYPE_37__* %580, %struct.TYPE_38__* %581, %struct.TYPE_38__* %582)
  %584 = load %struct.TYPE_37__*, %struct.TYPE_37__** %10, align 8
  %585 = load %struct.TYPE_38__*, %struct.TYPE_38__** %18, align 8
  %586 = load %struct.TYPE_38__*, %struct.TYPE_38__** %18, align 8
  %587 = call %struct.TYPE_38__* @vm_map_entry_succ(%struct.TYPE_38__* %586)
  %588 = call i32 @vm_map_try_merge_entries(%struct.TYPE_37__* %584, %struct.TYPE_38__* %585, %struct.TYPE_38__* %587)
  %589 = load i32, i32* %17, align 4
  %590 = load i32, i32* @MAP_PREFAULT, align 4
  %591 = load i32, i32* @MAP_PREFAULT_PARTIAL, align 4
  %592 = or i32 %590, %591
  %593 = and i32 %589, %592
  %594 = icmp ne i32 %593, 0
  br i1 %594, label %595, label %609

595:                                              ; preds = %579
  %596 = load %struct.TYPE_37__*, %struct.TYPE_37__** %10, align 8
  %597 = load i64, i64* %13, align 8
  %598 = load i64, i64* %15, align 8
  %599 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %600 = load i64, i64* %12, align 8
  %601 = call i32 @OFF_TO_IDX(i64 %600)
  %602 = load i64, i64* %14, align 8
  %603 = load i64, i64* %13, align 8
  %604 = sub nsw i64 %602, %603
  %605 = load i32, i32* %17, align 4
  %606 = load i32, i32* @MAP_PREFAULT_PARTIAL, align 4
  %607 = and i32 %605, %606
  %608 = call i32 @vm_map_pmap_enter(%struct.TYPE_37__* %596, i64 %597, i64 %598, %struct.TYPE_36__* %599, i32 %601, i64 %604, i32 %607)
  br label %609

609:                                              ; preds = %595, %579
  %610 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %610, i32* %9, align 4
  br label %611

611:                                              ; preds = %609, %441, %252, %101, %87, %78, %71
  %612 = load i32, i32* %9, align 4
  ret i32 %612
}

declare dso_local i32 @VM_MAP_ASSERT_LOCKED(%struct.TYPE_37__*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @vm_map_min(%struct.TYPE_37__*) #1

declare dso_local i64 @vm_map_max(%struct.TYPE_37__*) #1

declare dso_local i64 @vm_map_lookup_entry(%struct.TYPE_37__*, i64, %struct.TYPE_38__**) #1

declare dso_local %struct.TYPE_38__* @vm_map_entry_succ(%struct.TYPE_38__*) #1

declare dso_local i32 @swap_reserve(i64) #1

declare dso_local i32 @pmap_growkernel(i64) #1

declare dso_local i32 @VM_OBJECT_WLOCK(%struct.TYPE_36__*) #1

declare dso_local i32 @vm_object_clear_flag(%struct.TYPE_36__*, i32) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_36__*) #1

declare dso_local i64 @vm_object_coalesce(%struct.TYPE_36__*, i64, i32, i32, i32) #1

declare dso_local i32 @vm_map_entry_resize(%struct.TYPE_37__*, %struct.TYPE_38__*, i64) #1

declare dso_local i32 @vm_map_try_merge_entries(%struct.TYPE_37__*, %struct.TYPE_38__*, %struct.TYPE_38__*) #1

declare dso_local i32 @vm_object_reference(%struct.TYPE_36__*) #1

declare dso_local i32 @crhold(%struct.ucred*) #1

declare dso_local %struct.TYPE_38__* @vm_map_entry_create(%struct.TYPE_37__*) #1

declare dso_local i32 @ENTRY_CHARGED(%struct.TYPE_38__*) #1

declare dso_local i32 @vm_map_entry_link(%struct.TYPE_37__*, %struct.TYPE_38__*) #1

declare dso_local i32 @vm_map_pmap_enter(%struct.TYPE_37__*, i64, i64, %struct.TYPE_36__*, i32, i64, i32) #1

declare dso_local i32 @OFF_TO_IDX(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
