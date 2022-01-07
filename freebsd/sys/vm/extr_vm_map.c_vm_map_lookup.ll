; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vm_map_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vm_map_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32 }
%struct.TYPE_24__ = type { %struct.ucred* }
%struct.ucred = type { i32 }
%struct.TYPE_27__ = type { i32, i32, i32, i64, %struct.TYPE_23__, i8*, i8*, %struct.ucred*, i8* }
%struct.TYPE_23__ = type { %struct.TYPE_25__*, %struct.TYPE_26__* }
%struct.TYPE_25__ = type { i8*, %struct.ucred* }

@KERN_INVALID_ADDRESS = common dso_local global i32 0, align 4
@MAP_ENTRY_IS_SUB_MAP = common dso_local global i32 0, align 4
@VM_PROT_FAULT_LOOKUP = common dso_local global i32 0, align 4
@VM_PROT_NONE = common dso_local global i32 0, align 4
@kernel_map = common dso_local global %struct.TYPE_26__* null, align 8
@MAP_ENTRY_GUARD = common dso_local global i32 0, align 4
@MAP_ENTRY_STACK_GAP_DN = common dso_local global i32 0, align 4
@MAP_ENTRY_STACK_GAP_UP = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@VM_PROT_EXECUTE = common dso_local global i32 0, align 4
@KERN_PROTECTION_FAILURE = common dso_local global i32 0, align 4
@MAP_ENTRY_USER_WIRED = common dso_local global i32 0, align 4
@MAP_ENTRY_NEEDS_COPY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"entry %p flags %x\00", align 1
@VM_PROT_COPY = common dso_local global i32 0, align 4
@MAP_ENTRY_COW = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_24__* null, align 8
@KERN_RESOURCE_SHORTAGE = common dso_local global i32 0, align 4
@OBJT_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_map_lookup(%struct.TYPE_26__** %0, i8* %1, i32 %2, %struct.TYPE_27__** %3, %struct.TYPE_25__** %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_26__**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_27__**, align 8
  %14 = alloca %struct.TYPE_25__**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_27__*, align 8
  %19 = alloca %struct.TYPE_26__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_25__*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca %struct.ucred*, align 8
  %25 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_26__** %0, %struct.TYPE_26__*** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store %struct.TYPE_27__** %3, %struct.TYPE_27__*** %13, align 8
  store %struct.TYPE_25__** %4, %struct.TYPE_25__*** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %26 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %10, align 8
  %27 = load %struct.TYPE_26__*, %struct.TYPE_26__** %26, align 8
  store %struct.TYPE_26__* %27, %struct.TYPE_26__** %19, align 8
  %28 = load i32, i32* %12, align 4
  store i32 %28, i32* %21, align 4
  br label %29

29:                                               ; preds = %325, %220, %51, %8
  %30 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %31 = call i32 @vm_map_lock_read(%struct.TYPE_26__* %30)
  br label %32

32:                                               ; preds = %103, %29
  %33 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %13, align 8
  %36 = call i32 @vm_map_lookup_entry(%struct.TYPE_26__* %33, i8* %34, %struct.TYPE_27__** %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %32
  %39 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %40 = call i32 @vm_map_unlock_read(%struct.TYPE_26__* %39)
  %41 = load i32, i32* @KERN_INVALID_ADDRESS, align 4
  store i32 %41, i32* %9, align 4
  br label %393

42:                                               ; preds = %32
  %43 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %13, align 8
  %44 = load %struct.TYPE_27__*, %struct.TYPE_27__** %43, align 8
  store %struct.TYPE_27__* %44, %struct.TYPE_27__** %18, align 8
  %45 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %46 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @MAP_ENTRY_IS_SUB_MAP, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %42
  %52 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  store %struct.TYPE_26__* %52, %struct.TYPE_26__** %25, align 8
  %53 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %54 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_26__*, %struct.TYPE_26__** %55, align 8
  store %struct.TYPE_26__* %56, %struct.TYPE_26__** %19, align 8
  %57 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %10, align 8
  store %struct.TYPE_26__* %56, %struct.TYPE_26__** %57, align 8
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** %25, align 8
  %59 = call i32 @vm_map_unlock_read(%struct.TYPE_26__* %58)
  br label %29

60:                                               ; preds = %42
  %61 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %62 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %20, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* @VM_PROT_FAULT_LOOKUP, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %105

68:                                               ; preds = %60
  %69 = load i32, i32* @VM_PROT_FAULT_LOOKUP, align 4
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %12, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %20, align 4
  %74 = load i32, i32* @VM_PROT_NONE, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %104

76:                                               ; preds = %68
  %77 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %78 = load %struct.TYPE_26__*, %struct.TYPE_26__** @kernel_map, align 8
  %79 = icmp ne %struct.TYPE_26__* %77, %78
  br i1 %79, label %80, label %104

80:                                               ; preds = %76
  %81 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %82 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @MAP_ENTRY_GUARD, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %104

87:                                               ; preds = %80
  %88 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %89 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @MAP_ENTRY_STACK_GAP_DN, align 4
  %92 = load i32, i32* @MAP_ENTRY_STACK_GAP_UP, align 4
  %93 = or i32 %91, %92
  %94 = and i32 %90, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %87
  %97 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %98 = load i8*, i8** %11, align 8
  %99 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %100 = call i64 @vm_map_growstack(%struct.TYPE_26__* %97, i8* %98, %struct.TYPE_27__* %99)
  %101 = load i64, i64* @KERN_SUCCESS, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  br label %32

104:                                              ; preds = %96, %87, %80, %76, %68
  br label %105

105:                                              ; preds = %104, %60
  %106 = load i32, i32* @VM_PROT_READ, align 4
  %107 = load i32, i32* @VM_PROT_WRITE, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* %21, align 4
  %112 = and i32 %111, %110
  store i32 %112, i32* %21, align 4
  %113 = load i32, i32* %21, align 4
  %114 = load i32, i32* %20, align 4
  %115 = and i32 %113, %114
  %116 = load i32, i32* %21, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %122, label %118

118:                                              ; preds = %105
  %119 = load i32, i32* %20, align 4
  %120 = load i32, i32* @VM_PROT_NONE, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %118, %105
  %123 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %124 = call i32 @vm_map_unlock_read(%struct.TYPE_26__* %123)
  %125 = load i32, i32* @KERN_PROTECTION_FAILURE, align 4
  store i32 %125, i32* %9, align 4
  br label %393

126:                                              ; preds = %118
  %127 = load i32, i32* %20, align 4
  %128 = load i32, i32* @VM_PROT_WRITE, align 4
  %129 = and i32 %127, %128
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %143, label %131

131:                                              ; preds = %126
  %132 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %133 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @MAP_ENTRY_USER_WIRED, align 4
  %136 = load i32, i32* @MAP_ENTRY_NEEDS_COPY, align 4
  %137 = or i32 %135, %136
  %138 = and i32 %134, %137
  %139 = load i32, i32* @MAP_ENTRY_USER_WIRED, align 4
  %140 = load i32, i32* @MAP_ENTRY_NEEDS_COPY, align 4
  %141 = or i32 %139, %140
  %142 = icmp ne i32 %138, %141
  br label %143

143:                                              ; preds = %131, %126
  %144 = phi i1 [ true, %126 ], [ %142, %131 ]
  %145 = zext i1 %144 to i32
  %146 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %147 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %148 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = sext i32 %149 to i64
  %151 = inttoptr i64 %150 to i8*
  %152 = call i32 @KASSERT(i32 %145, i8* %151)
  %153 = load i32, i32* %12, align 4
  %154 = load i32, i32* @VM_PROT_COPY, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %175

157:                                              ; preds = %143
  %158 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %159 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @VM_PROT_WRITE, align 4
  %162 = and i32 %160, %161
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %175

164:                                              ; preds = %157
  %165 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %166 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @MAP_ENTRY_COW, align 4
  %169 = and i32 %167, %168
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %164
  %172 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %173 = call i32 @vm_map_unlock_read(%struct.TYPE_26__* %172)
  %174 = load i32, i32* @KERN_PROTECTION_FAILURE, align 4
  store i32 %174, i32* %9, align 4
  br label %393

175:                                              ; preds = %164, %157, %143
  %176 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %177 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %176, i32 0, i32 3
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  %180 = zext i1 %179 to i32
  %181 = load i32*, i32** %17, align 8
  store i32 %180, i32* %181, align 4
  %182 = load i32*, i32** %17, align 8
  %183 = load i32, i32* %182, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %175
  %186 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %187 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  store i32 %188, i32* %21, align 4
  br label %189

189:                                              ; preds = %185, %175
  %190 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %191 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %190, i32 0, i32 8
  %192 = load i8*, i8** %191, align 8
  %193 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %194 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %193, i32 0, i32 6
  %195 = load i8*, i8** %194, align 8
  %196 = ptrtoint i8* %192 to i64
  %197 = ptrtoint i8* %195 to i64
  %198 = sub i64 %196, %197
  %199 = inttoptr i64 %198 to i8*
  store i8* %199, i8** %23, align 8
  %200 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %201 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @MAP_ENTRY_NEEDS_COPY, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %310

206:                                              ; preds = %189
  %207 = load i32, i32* %21, align 4
  %208 = load i32, i32* @VM_PROT_WRITE, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %216, label %211

211:                                              ; preds = %206
  %212 = load i32, i32* %12, align 4
  %213 = load i32, i32* @VM_PROT_COPY, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %304

216:                                              ; preds = %211, %206
  %217 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %218 = call i64 @vm_map_lock_upgrade(%struct.TYPE_26__* %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %216
  br label %29

221:                                              ; preds = %216
  %222 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %223 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %222, i32 0, i32 7
  %224 = load %struct.ucred*, %struct.ucred** %223, align 8
  %225 = icmp eq %struct.ucred* %224, null
  br i1 %225, label %226, label %246

226:                                              ; preds = %221
  %227 = load %struct.TYPE_24__*, %struct.TYPE_24__** @curthread, align 8
  %228 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %227, i32 0, i32 0
  %229 = load %struct.ucred*, %struct.ucred** %228, align 8
  store %struct.ucred* %229, %struct.ucred** %24, align 8
  %230 = load %struct.ucred*, %struct.ucred** %24, align 8
  %231 = call i32 @crhold(%struct.ucred* %230)
  %232 = load i8*, i8** %23, align 8
  %233 = load %struct.ucred*, %struct.ucred** %24, align 8
  %234 = call i32 @swap_reserve_by_cred(i8* %232, %struct.ucred* %233)
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %242, label %236

236:                                              ; preds = %226
  %237 = load %struct.ucred*, %struct.ucred** %24, align 8
  %238 = call i32 @crfree(%struct.ucred* %237)
  %239 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %240 = call i32 @vm_map_unlock(%struct.TYPE_26__* %239)
  %241 = load i32, i32* @KERN_RESOURCE_SHORTAGE, align 4
  store i32 %241, i32* %9, align 4
  br label %393

242:                                              ; preds = %226
  %243 = load %struct.ucred*, %struct.ucred** %24, align 8
  %244 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %245 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %244, i32 0, i32 7
  store %struct.ucred* %243, %struct.ucred** %245, align 8
  br label %246

246:                                              ; preds = %242, %221
  %247 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %248 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %247, i32 0, i32 4
  %249 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %248, i32 0, i32 0
  %250 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %251 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %250, i32 0, i32 5
  %252 = load i8*, i8** %23, align 8
  %253 = call i32 @vm_object_shadow(%struct.TYPE_25__** %249, i8** %251, i8* %252)
  %254 = load i32, i32* @MAP_ENTRY_NEEDS_COPY, align 4
  %255 = xor i32 %254, -1
  %256 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %257 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = and i32 %258, %255
  store i32 %259, i32* %257, align 8
  %260 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %261 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %260, i32 0, i32 4
  %262 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %261, i32 0, i32 0
  %263 = load %struct.TYPE_25__*, %struct.TYPE_25__** %262, align 8
  store %struct.TYPE_25__* %263, %struct.TYPE_25__** %22, align 8
  %264 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %265 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %264, i32 0, i32 1
  %266 = load %struct.ucred*, %struct.ucred** %265, align 8
  %267 = icmp ne %struct.ucred* %266, null
  br i1 %267, label %268, label %280

268:                                              ; preds = %246
  %269 = load i8*, i8** %23, align 8
  %270 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %271 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %270, i32 0, i32 7
  %272 = load %struct.ucred*, %struct.ucred** %271, align 8
  %273 = call i32 @swap_release_by_cred(i8* %269, %struct.ucred* %272)
  %274 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %275 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %274, i32 0, i32 7
  %276 = load %struct.ucred*, %struct.ucred** %275, align 8
  %277 = call i32 @crfree(%struct.ucred* %276)
  %278 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %279 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %278, i32 0, i32 7
  store %struct.ucred* null, %struct.ucred** %279, align 8
  br label %301

280:                                              ; preds = %246
  %281 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %282 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %281, i32 0, i32 7
  %283 = load %struct.ucred*, %struct.ucred** %282, align 8
  %284 = icmp ne %struct.ucred* %283, null
  br i1 %284, label %285, label %300

285:                                              ; preds = %280
  %286 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %287 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_25__* %286)
  %288 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %289 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %288, i32 0, i32 7
  %290 = load %struct.ucred*, %struct.ucred** %289, align 8
  %291 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %292 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %291, i32 0, i32 1
  store %struct.ucred* %290, %struct.ucred** %292, align 8
  %293 = load i8*, i8** %23, align 8
  %294 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %295 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %294, i32 0, i32 0
  store i8* %293, i8** %295, align 8
  %296 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %297 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_25__* %296)
  %298 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %299 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %298, i32 0, i32 7
  store %struct.ucred* null, %struct.ucred** %299, align 8
  br label %300

300:                                              ; preds = %285, %280
  br label %301

301:                                              ; preds = %300, %268
  %302 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %303 = call i32 @vm_map_lock_downgrade(%struct.TYPE_26__* %302)
  br label %309

304:                                              ; preds = %211
  %305 = load i32, i32* @VM_PROT_WRITE, align 4
  %306 = xor i32 %305, -1
  %307 = load i32, i32* %20, align 4
  %308 = and i32 %307, %306
  store i32 %308, i32* %20, align 4
  br label %309

309:                                              ; preds = %304, %301
  br label %310

310:                                              ; preds = %309, %189
  %311 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %312 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %311, i32 0, i32 4
  %313 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %312, i32 0, i32 0
  %314 = load %struct.TYPE_25__*, %struct.TYPE_25__** %313, align 8
  %315 = icmp eq %struct.TYPE_25__* %314, null
  br i1 %315, label %316, label %370

316:                                              ; preds = %310
  %317 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %318 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %370, label %321

321:                                              ; preds = %316
  %322 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %323 = call i64 @vm_map_lock_upgrade(%struct.TYPE_26__* %322)
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %326

325:                                              ; preds = %321
  br label %29

326:                                              ; preds = %321
  %327 = load i32, i32* @OBJT_DEFAULT, align 4
  %328 = load i8*, i8** %23, align 8
  %329 = call i32 @atop(i8* %328)
  %330 = call %struct.TYPE_25__* @vm_object_allocate(i32 %327, i32 %329)
  %331 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %332 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %331, i32 0, i32 4
  %333 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %332, i32 0, i32 0
  store %struct.TYPE_25__* %330, %struct.TYPE_25__** %333, align 8
  %334 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %335 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %334, i32 0, i32 5
  store i8* null, i8** %335, align 8
  %336 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %337 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %336, i32 0, i32 7
  %338 = load %struct.ucred*, %struct.ucred** %337, align 8
  %339 = icmp ne %struct.ucred* %338, null
  br i1 %339, label %340, label %367

340:                                              ; preds = %326
  %341 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %342 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %341, i32 0, i32 4
  %343 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %342, i32 0, i32 0
  %344 = load %struct.TYPE_25__*, %struct.TYPE_25__** %343, align 8
  %345 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_25__* %344)
  %346 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %347 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %346, i32 0, i32 7
  %348 = load %struct.ucred*, %struct.ucred** %347, align 8
  %349 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %350 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %349, i32 0, i32 4
  %351 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %350, i32 0, i32 0
  %352 = load %struct.TYPE_25__*, %struct.TYPE_25__** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %352, i32 0, i32 1
  store %struct.ucred* %348, %struct.ucred** %353, align 8
  %354 = load i8*, i8** %23, align 8
  %355 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %356 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %355, i32 0, i32 4
  %357 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %356, i32 0, i32 0
  %358 = load %struct.TYPE_25__*, %struct.TYPE_25__** %357, align 8
  %359 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %358, i32 0, i32 0
  store i8* %354, i8** %359, align 8
  %360 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %361 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %360, i32 0, i32 4
  %362 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %361, i32 0, i32 0
  %363 = load %struct.TYPE_25__*, %struct.TYPE_25__** %362, align 8
  %364 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_25__* %363)
  %365 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %366 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %365, i32 0, i32 7
  store %struct.ucred* null, %struct.ucred** %366, align 8
  br label %367

367:                                              ; preds = %340, %326
  %368 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %369 = call i32 @vm_map_lock_downgrade(%struct.TYPE_26__* %368)
  br label %370

370:                                              ; preds = %367, %316, %310
  %371 = load i8*, i8** %11, align 8
  %372 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %373 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %372, i32 0, i32 6
  %374 = load i8*, i8** %373, align 8
  %375 = ptrtoint i8* %371 to i64
  %376 = ptrtoint i8* %374 to i64
  %377 = sub i64 %375, %376
  %378 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %379 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %378, i32 0, i32 5
  %380 = load i8*, i8** %379, align 8
  %381 = getelementptr i8, i8* %380, i64 %377
  %382 = call i32 @OFF_TO_IDX(i8* %381)
  %383 = load i32*, i32** %15, align 8
  store i32 %382, i32* %383, align 4
  %384 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %385 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %384, i32 0, i32 4
  %386 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %385, i32 0, i32 0
  %387 = load %struct.TYPE_25__*, %struct.TYPE_25__** %386, align 8
  %388 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %14, align 8
  store %struct.TYPE_25__* %387, %struct.TYPE_25__** %388, align 8
  %389 = load i32, i32* %20, align 4
  %390 = load i32*, i32** %16, align 8
  store i32 %389, i32* %390, align 4
  %391 = load i64, i64* @KERN_SUCCESS, align 8
  %392 = trunc i64 %391 to i32
  store i32 %392, i32* %9, align 4
  br label %393

393:                                              ; preds = %370, %236, %171, %122, %38
  %394 = load i32, i32* %9, align 4
  ret i32 %394
}

declare dso_local i32 @vm_map_lock_read(%struct.TYPE_26__*) #1

declare dso_local i32 @vm_map_lookup_entry(%struct.TYPE_26__*, i8*, %struct.TYPE_27__**) #1

declare dso_local i32 @vm_map_unlock_read(%struct.TYPE_26__*) #1

declare dso_local i64 @vm_map_growstack(%struct.TYPE_26__*, i8*, %struct.TYPE_27__*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @vm_map_lock_upgrade(%struct.TYPE_26__*) #1

declare dso_local i32 @crhold(%struct.ucred*) #1

declare dso_local i32 @swap_reserve_by_cred(i8*, %struct.ucred*) #1

declare dso_local i32 @crfree(%struct.ucred*) #1

declare dso_local i32 @vm_map_unlock(%struct.TYPE_26__*) #1

declare dso_local i32 @vm_object_shadow(%struct.TYPE_25__**, i8**, i8*) #1

declare dso_local i32 @swap_release_by_cred(i8*, %struct.ucred*) #1

declare dso_local i32 @VM_OBJECT_WLOCK(%struct.TYPE_25__*) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_25__*) #1

declare dso_local i32 @vm_map_lock_downgrade(%struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_25__* @vm_object_allocate(i32, i32) #1

declare dso_local i32 @atop(i8*) #1

declare dso_local i32 @OFF_TO_IDX(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
