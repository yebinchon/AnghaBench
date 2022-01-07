; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vm_map_wire_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vm_map_wire_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i64 }
%struct.TYPE_31__ = type { i64, i32, i32, i64, i32, i32* }

@KERN_SUCCESS = common dso_local global i32 0, align 4
@VM_MAP_WIRE_WRITE = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@VM_MAP_WIRE_HOLESOK = common dso_local global i32 0, align 4
@VM_MAP_WIRE_USER = common dso_local global i32 0, align 4
@KERN_INVALID_ADDRESS = common dso_local global i32 0, align 4
@MAP_ENTRY_IN_TRANSITION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"owned map entry %p\00", align 1
@curthread = common dso_local global i32* null, align 8
@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_EXECUTE = common dso_local global i32 0, align 4
@MAP_ENTRY_WIRE_SKIPPED = common dso_local global i32 0, align 4
@KERN_RESOURCE_SHORTAGE = common dso_local global i32 0, align 4
@VM_PROT_NONE = common dso_local global i32 0, align 4
@VM_FAULT_WIRE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"vm_map_wire: lookup failed\00", align 1
@MAP_ENTRY_USER_WIRED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"vm_map_wire: !HOLESOK and new/changed entry\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"vm_map_wire: in-transition flag missing %p\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"vm_map_wire: alien wire %p\00", align 1
@MAP_ENTRY_NEEDS_WAKEUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_map_wire_locked(%struct.TYPE_30__* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_30__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_31__*, align 8
  %11 = alloca %struct.TYPE_31__*, align 8
  %12 = alloca %struct.TYPE_31__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %24 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %25 = call i32 @VM_MAP_ASSERT_LOCKED(%struct.TYPE_30__* %24)
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %30, i32* %5, align 4
  br label %525

31:                                               ; preds = %4
  store i32 0, i32* %23, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @VM_MAP_WIRE_WRITE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32, i32* @VM_PROT_WRITE, align 4
  %38 = load i32, i32* %23, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %23, align 4
  br label %40

40:                                               ; preds = %36, %31
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @VM_MAP_WIRE_HOLESOK, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %20, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @VM_MAP_WIRE_USER, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %22, align 4
  %51 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* %8, align 8
  %54 = call i32 @VM_MAP_RANGE_CHECK(%struct.TYPE_30__* %51, i64 %52, i64 %53)
  %55 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @vm_map_lookup_entry(%struct.TYPE_30__* %55, i64 %56, %struct.TYPE_31__** %11)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %40
  %60 = load i32, i32* %20, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %64 = call %struct.TYPE_31__* @vm_map_entry_succ(%struct.TYPE_31__* %63)
  store %struct.TYPE_31__* %64, %struct.TYPE_31__** %11, align 8
  br label %67

65:                                               ; preds = %59
  %66 = load i32, i32* @KERN_INVALID_ADDRESS, align 4
  store i32 %66, i32* %5, align 4
  br label %525

67:                                               ; preds = %62
  br label %68

68:                                               ; preds = %67, %40
  store i32 1, i32* %19, align 4
  %69 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  store %struct.TYPE_31__* %69, %struct.TYPE_31__** %10, align 8
  br label %70

70:                                               ; preds = %347, %104, %68
  %71 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %8, align 8
  %75 = icmp slt i64 %73, %74
  br i1 %75, label %76, label %350

76:                                               ; preds = %70
  %77 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @MAP_ENTRY_IN_TRANSITION, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %106

83:                                               ; preds = %76
  %84 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %85 = load i64, i64* %7, align 8
  %86 = load i32, i32* %20, align 4
  %87 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %88 = call %struct.TYPE_31__* @vm_map_entry_in_transition(%struct.TYPE_30__* %84, i64 %85, i64* %8, i32 %86, %struct.TYPE_31__* %87)
  store %struct.TYPE_31__* %88, %struct.TYPE_31__** %10, align 8
  %89 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %90 = icmp eq %struct.TYPE_31__* %89, null
  br i1 %90, label %91, label %98

91:                                               ; preds = %83
  %92 = load i32, i32* %19, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = load i32, i32* @KERN_INVALID_ADDRESS, align 4
  store i32 %95, i32* %5, align 4
  br label %525

96:                                               ; preds = %91
  %97 = load i32, i32* @KERN_INVALID_ADDRESS, align 4
  store i32 %97, i32* %18, align 4
  br label %352

98:                                               ; preds = %83
  %99 = load i32, i32* %19, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  br label %104

103:                                              ; preds = %98
  br label %104

104:                                              ; preds = %103, %101
  %105 = phi %struct.TYPE_31__* [ %102, %101 ], [ null, %103 ]
  store %struct.TYPE_31__* %105, %struct.TYPE_31__** %11, align 8
  br label %70

106:                                              ; preds = %76
  store i32 0, i32* %19, align 4
  %107 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %108 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %109 = load i64, i64* %7, align 8
  %110 = call i32 @vm_map_clip_start(%struct.TYPE_30__* %107, %struct.TYPE_31__* %108, i64 %109)
  %111 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %112 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %113 = load i64, i64* %8, align 8
  %114 = call i32 @vm_map_clip_end(%struct.TYPE_30__* %111, %struct.TYPE_31__* %112, i64 %113)
  %115 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @MAP_ENTRY_IN_TRANSITION, align 4
  %119 = and i32 %117, %118
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %106
  %122 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %122, i32 0, i32 5
  %124 = load i32*, i32** %123, align 8
  %125 = icmp eq i32* %124, null
  br label %126

126:                                              ; preds = %121, %106
  %127 = phi i1 [ false, %106 ], [ %125, %121 ]
  %128 = zext i1 %127 to i32
  %129 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %130 = bitcast %struct.TYPE_31__* %129 to i8*
  %131 = call i32 @KASSERT(i32 %128, i8* %130)
  %132 = load i32, i32* @MAP_ENTRY_IN_TRANSITION, align 4
  %133 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 8
  %137 = load i32*, i32** @curthread, align 8
  %138 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %138, i32 0, i32 5
  store i32* %137, i32** %139, align 8
  %140 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @VM_PROT_READ, align 4
  %144 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %145 = or i32 %143, %144
  %146 = and i32 %142, %145
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %156, label %148

148:                                              ; preds = %126
  %149 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %23, align 4
  %153 = and i32 %151, %152
  %154 = load i32, i32* %23, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %170

156:                                              ; preds = %148, %126
  %157 = load i32, i32* @MAP_ENTRY_WIRE_SKIPPED, align 4
  %158 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = or i32 %160, %157
  store i32 %161, i32* %159, align 8
  %162 = load i32, i32* %20, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %169, label %164

164:                                              ; preds = %156
  %165 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %165, i32 0, i32 3
  %167 = load i64, i64* %166, align 8
  store i64 %167, i64* %8, align 8
  %168 = load i32, i32* @KERN_INVALID_ADDRESS, align 4
  store i32 %168, i32* %18, align 4
  br label %352

169:                                              ; preds = %156
  br label %324

170:                                              ; preds = %148
  %171 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 8
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %307

175:                                              ; preds = %170
  %176 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 8
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %177, align 8
  %180 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %181 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %180, i32 0, i32 3
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %184 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = sub nsw i64 %182, %185
  %187 = call i32 @atop(i64 %186)
  store i32 %187, i32* %16, align 4
  %188 = load i32, i32* %22, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %205

190:                                              ; preds = %175
  %191 = load i32, i32* %16, align 4
  %192 = call i32 @vm_map_wire_user_count_add(i32 %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %205, label %194

194:                                              ; preds = %190
  %195 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %196 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %197 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = call i32 @vm_map_wire_entry_failure(%struct.TYPE_30__* %195, %struct.TYPE_31__* %196, i64 %199)
  %201 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %202 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %201, i32 0, i32 3
  %203 = load i64, i64* %202, align 8
  store i64 %203, i64* %8, align 8
  %204 = load i32, i32* @KERN_RESOURCE_SHORTAGE, align 4
  store i32 %204, i32* %18, align 4
  br label %352

205:                                              ; preds = %190, %175
  %206 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %207 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  store i64 %208, i64* %15, align 8
  %209 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %210 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %209, i32 0, i32 3
  %211 = load i64, i64* %210, align 8
  store i64 %211, i64* %14, align 8
  %212 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  store i64 %214, i64* %17, align 8
  %215 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %216 = call i32 @vm_map_busy(%struct.TYPE_30__* %215)
  %217 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %218 = call i32 @vm_map_unlock(%struct.TYPE_30__* %217)
  %219 = load i64, i64* %15, align 8
  store i64 %219, i64* %13, align 8
  br label %220

220:                                              ; preds = %230, %205
  %221 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %222 = load i64, i64* %13, align 8
  %223 = load i32, i32* @VM_PROT_NONE, align 4
  %224 = load i32, i32* @VM_FAULT_WIRE, align 4
  %225 = call i32 @vm_fault(%struct.TYPE_30__* %221, i64 %222, i32 %223, i32 %224, i32* null)
  store i32 %225, i32* %18, align 4
  %226 = load i32, i32* @KERN_SUCCESS, align 4
  %227 = icmp ne i32 %225, %226
  br i1 %227, label %228, label %229

228:                                              ; preds = %220
  br label %236

229:                                              ; preds = %220
  br label %230

230:                                              ; preds = %229
  %231 = load i64, i64* @PAGE_SIZE, align 8
  %232 = load i64, i64* %13, align 8
  %233 = add nsw i64 %232, %231
  store i64 %233, i64* %13, align 8
  %234 = load i64, i64* %14, align 8
  %235 = icmp slt i64 %233, %234
  br i1 %235, label %220, label %236

236:                                              ; preds = %230, %228
  %237 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %238 = call i32 @vm_map_lock(%struct.TYPE_30__* %237)
  %239 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %240 = call i32 @vm_map_unbusy(%struct.TYPE_30__* %239)
  %241 = load i64, i64* %17, align 8
  %242 = add nsw i64 %241, 1
  %243 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = icmp ne i64 %242, %245
  br i1 %246, label %247, label %288

247:                                              ; preds = %236
  %248 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %249 = load i64, i64* %15, align 8
  %250 = call i32 @vm_map_lookup_entry(%struct.TYPE_30__* %248, i64 %249, %struct.TYPE_31__** %12)
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %254, label %252

252:                                              ; preds = %247
  %253 = call i32 @KASSERT(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %254

254:                                              ; preds = %252, %247
  %255 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %256 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %257 = icmp eq %struct.TYPE_31__* %255, %256
  br i1 %257, label %258, label %260

258:                                              ; preds = %254
  %259 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  store %struct.TYPE_31__* %259, %struct.TYPE_31__** %11, align 8
  br label %261

260:                                              ; preds = %254
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %11, align 8
  br label %261

261:                                              ; preds = %260, %258
  %262 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  store %struct.TYPE_31__* %262, %struct.TYPE_31__** %10, align 8
  br label %263

263:                                              ; preds = %284, %261
  %264 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %265 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %264, i32 0, i32 3
  %266 = load i64, i64* %265, align 8
  %267 = load i64, i64* %14, align 8
  %268 = icmp slt i64 %266, %267
  br i1 %268, label %269, label %287

269:                                              ; preds = %263
  %270 = load i32, i32* %18, align 4
  %271 = load i32, i32* @KERN_SUCCESS, align 4
  %272 = icmp ne i32 %270, %271
  br i1 %272, label %273, label %284

273:                                              ; preds = %269
  %274 = load i64, i64* %13, align 8
  %275 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %276 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %275, i32 0, i32 3
  %277 = load i64, i64* %276, align 8
  %278 = icmp slt i64 %274, %277
  br i1 %278, label %279, label %284

279:                                              ; preds = %273
  %280 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %281 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %282 = load i64, i64* %13, align 8
  %283 = call i32 @vm_map_wire_entry_failure(%struct.TYPE_30__* %280, %struct.TYPE_31__* %281, i64 %282)
  br label %284

284:                                              ; preds = %279, %273, %269
  %285 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %286 = call %struct.TYPE_31__* @vm_map_entry_succ(%struct.TYPE_31__* %285)
  store %struct.TYPE_31__* %286, %struct.TYPE_31__** %10, align 8
  br label %263

287:                                              ; preds = %263
  br label %288

288:                                              ; preds = %287, %236
  %289 = load i32, i32* %18, align 4
  %290 = load i32, i32* @KERN_SUCCESS, align 4
  %291 = icmp ne i32 %289, %290
  br i1 %291, label %292, label %306

292:                                              ; preds = %288
  %293 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %294 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %295 = load i64, i64* %13, align 8
  %296 = call i32 @vm_map_wire_entry_failure(%struct.TYPE_30__* %293, %struct.TYPE_31__* %294, i64 %295)
  %297 = load i32, i32* %22, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %302

299:                                              ; preds = %292
  %300 = load i32, i32* %16, align 4
  %301 = call i32 @vm_map_wire_user_count_sub(i32 %300)
  br label %302

302:                                              ; preds = %299, %292
  %303 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %304 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %303, i32 0, i32 3
  %305 = load i64, i64* %304, align 8
  store i64 %305, i64* %8, align 8
  br label %352

306:                                              ; preds = %288
  br label %323

307:                                              ; preds = %170
  %308 = load i32, i32* %22, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %317

310:                                              ; preds = %307
  %311 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %312 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 8
  %314 = load i32, i32* @MAP_ENTRY_USER_WIRED, align 4
  %315 = and i32 %313, %314
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %322

317:                                              ; preds = %310, %307
  %318 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %319 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %318, i32 0, i32 4
  %320 = load i32, i32* %319, align 8
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %319, align 8
  br label %322

322:                                              ; preds = %317, %310
  br label %323

323:                                              ; preds = %322, %306
  br label %324

324:                                              ; preds = %323, %169
  %325 = load i32, i32* %20, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %347, label %327

327:                                              ; preds = %324
  %328 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %329 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %328, i32 0, i32 3
  %330 = load i64, i64* %329, align 8
  %331 = load i64, i64* %8, align 8
  %332 = icmp slt i64 %330, %331
  br i1 %332, label %333, label %347

333:                                              ; preds = %327
  %334 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %335 = call %struct.TYPE_31__* @vm_map_entry_succ(%struct.TYPE_31__* %334)
  %336 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %335, i32 0, i32 0
  %337 = load i64, i64* %336, align 8
  %338 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %339 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %338, i32 0, i32 3
  %340 = load i64, i64* %339, align 8
  %341 = icmp sgt i64 %337, %340
  br i1 %341, label %342, label %347

342:                                              ; preds = %333
  %343 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %344 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %343, i32 0, i32 3
  %345 = load i64, i64* %344, align 8
  store i64 %345, i64* %8, align 8
  %346 = load i32, i32* @KERN_INVALID_ADDRESS, align 4
  store i32 %346, i32* %18, align 4
  br label %352

347:                                              ; preds = %333, %327, %324
  %348 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %349 = call %struct.TYPE_31__* @vm_map_entry_succ(%struct.TYPE_31__* %348)
  store %struct.TYPE_31__* %349, %struct.TYPE_31__** %10, align 8
  br label %70

350:                                              ; preds = %70
  %351 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %351, i32* %18, align 4
  br label %352

352:                                              ; preds = %350, %342, %302, %194, %164, %96
  store i32 0, i32* %21, align 4
  %353 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %354 = icmp eq %struct.TYPE_31__* %353, null
  br i1 %354, label %355, label %365

355:                                              ; preds = %352
  %356 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %357 = load i64, i64* %7, align 8
  %358 = call i32 @vm_map_lookup_entry(%struct.TYPE_30__* %356, i64 %357, %struct.TYPE_31__** %11)
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %365, label %360

360:                                              ; preds = %355
  %361 = load i32, i32* %20, align 4
  %362 = call i32 @KASSERT(i32 %361, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %363 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %364 = call %struct.TYPE_31__* @vm_map_entry_succ(%struct.TYPE_31__* %363)
  store %struct.TYPE_31__* %364, %struct.TYPE_31__** %11, align 8
  br label %365

365:                                              ; preds = %360, %355, %352
  %366 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  store %struct.TYPE_31__* %366, %struct.TYPE_31__** %10, align 8
  br label %367

367:                                              ; preds = %509, %365
  %368 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %369 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %368, i32 0, i32 0
  %370 = load i64, i64* %369, align 8
  %371 = load i64, i64* %8, align 8
  %372 = icmp slt i64 %370, %371
  br i1 %372, label %373, label %512

373:                                              ; preds = %367
  %374 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %375 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %374, i32 0, i32 1
  %376 = load i32, i32* %375, align 8
  %377 = load i32, i32* @MAP_ENTRY_IN_TRANSITION, align 4
  %378 = and i32 %376, %377
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %386, label %380

380:                                              ; preds = %373
  %381 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %382 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %381, i32 0, i32 5
  %383 = load i32*, i32** %382, align 8
  %384 = load i32*, i32** @curthread, align 8
  %385 = icmp ne i32* %383, %384
  br i1 %385, label %386, label %389

386:                                              ; preds = %380, %373
  %387 = load i32, i32* %20, align 4
  %388 = call i32 @KASSERT(i32 %387, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %509

389:                                              ; preds = %380
  %390 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %391 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %390, i32 0, i32 1
  %392 = load i32, i32* %391, align 8
  %393 = load i32, i32* @MAP_ENTRY_WIRE_SKIPPED, align 4
  %394 = and i32 %392, %393
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %397

396:                                              ; preds = %389
  br label %460

397:                                              ; preds = %389
  %398 = load i32, i32* %18, align 4
  %399 = load i32, i32* @KERN_SUCCESS, align 4
  %400 = icmp eq i32 %398, %399
  br i1 %400, label %401, label %411

401:                                              ; preds = %397
  %402 = load i32, i32* %22, align 4
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %410

404:                                              ; preds = %401
  %405 = load i32, i32* @MAP_ENTRY_USER_WIRED, align 4
  %406 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %407 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %406, i32 0, i32 1
  %408 = load i32, i32* %407, align 8
  %409 = or i32 %408, %405
  store i32 %409, i32* %407, align 8
  br label %410

410:                                              ; preds = %404, %401
  br label %459

411:                                              ; preds = %397
  %412 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %413 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %412, i32 0, i32 4
  %414 = load i32, i32* %413, align 8
  %415 = icmp eq i32 %414, -1
  br i1 %415, label %416, label %419

416:                                              ; preds = %411
  %417 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %418 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %417, i32 0, i32 4
  store i32 0, i32* %418, align 8
  br label %458

419:                                              ; preds = %411
  %420 = load i32, i32* %22, align 4
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %429

422:                                              ; preds = %419
  %423 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %424 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %423, i32 0, i32 1
  %425 = load i32, i32* %424, align 8
  %426 = load i32, i32* @MAP_ENTRY_USER_WIRED, align 4
  %427 = and i32 %425, %426
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %429, label %457

429:                                              ; preds = %422, %419
  %430 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %431 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %430, i32 0, i32 4
  %432 = load i32, i32* %431, align 8
  %433 = icmp eq i32 %432, 1
  br i1 %433, label %434, label %451

434:                                              ; preds = %429
  %435 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %436 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %437 = call i32 @vm_map_entry_unwire(%struct.TYPE_30__* %435, %struct.TYPE_31__* %436)
  %438 = load i32, i32* %22, align 4
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %440, label %450

440:                                              ; preds = %434
  %441 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %442 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %441, i32 0, i32 3
  %443 = load i64, i64* %442, align 8
  %444 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %445 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %444, i32 0, i32 0
  %446 = load i64, i64* %445, align 8
  %447 = sub nsw i64 %443, %446
  %448 = call i32 @atop(i64 %447)
  %449 = call i32 @vm_map_wire_user_count_sub(i32 %448)
  br label %450

450:                                              ; preds = %440, %434
  br label %456

451:                                              ; preds = %429
  %452 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %453 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %452, i32 0, i32 4
  %454 = load i32, i32* %453, align 8
  %455 = add nsw i32 %454, -1
  store i32 %455, i32* %453, align 8
  br label %456

456:                                              ; preds = %451, %450
  br label %457

457:                                              ; preds = %456, %422
  br label %458

458:                                              ; preds = %457, %416
  br label %459

459:                                              ; preds = %458, %410
  br label %460

460:                                              ; preds = %459, %396
  %461 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %462 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %461, i32 0, i32 1
  %463 = load i32, i32* %462, align 8
  %464 = load i32, i32* @MAP_ENTRY_IN_TRANSITION, align 4
  %465 = and i32 %463, %464
  %466 = icmp ne i32 %465, 0
  %467 = zext i1 %466 to i32
  %468 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %469 = bitcast %struct.TYPE_31__* %468 to i8*
  %470 = call i32 @KASSERT(i32 %467, i8* %469)
  %471 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %472 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %471, i32 0, i32 5
  %473 = load i32*, i32** %472, align 8
  %474 = load i32*, i32** @curthread, align 8
  %475 = icmp eq i32* %473, %474
  %476 = zext i1 %475 to i32
  %477 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %478 = bitcast %struct.TYPE_31__* %477 to i8*
  %479 = call i32 @KASSERT(i32 %476, i8* %478)
  %480 = load i32, i32* @MAP_ENTRY_IN_TRANSITION, align 4
  %481 = load i32, i32* @MAP_ENTRY_WIRE_SKIPPED, align 4
  %482 = or i32 %480, %481
  %483 = xor i32 %482, -1
  %484 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %485 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %484, i32 0, i32 1
  %486 = load i32, i32* %485, align 8
  %487 = and i32 %486, %483
  store i32 %487, i32* %485, align 8
  %488 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %489 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %488, i32 0, i32 5
  store i32* null, i32** %489, align 8
  %490 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %491 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %490, i32 0, i32 1
  %492 = load i32, i32* %491, align 8
  %493 = load i32, i32* @MAP_ENTRY_NEEDS_WAKEUP, align 4
  %494 = and i32 %492, %493
  %495 = icmp ne i32 %494, 0
  br i1 %495, label %496, label %503

496:                                              ; preds = %460
  %497 = load i32, i32* @MAP_ENTRY_NEEDS_WAKEUP, align 4
  %498 = xor i32 %497, -1
  %499 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %500 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %499, i32 0, i32 1
  %501 = load i32, i32* %500, align 8
  %502 = and i32 %501, %498
  store i32 %502, i32* %500, align 8
  store i32 1, i32* %21, align 4
  br label %503

503:                                              ; preds = %496, %460
  %504 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %505 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %506 = call i32 @vm_map_entry_pred(%struct.TYPE_31__* %505)
  %507 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %508 = call i32 @vm_map_try_merge_entries(%struct.TYPE_30__* %504, i32 %506, %struct.TYPE_31__* %507)
  br label %509

509:                                              ; preds = %503, %386
  %510 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %511 = call %struct.TYPE_31__* @vm_map_entry_succ(%struct.TYPE_31__* %510)
  store %struct.TYPE_31__* %511, %struct.TYPE_31__** %10, align 8
  br label %367

512:                                              ; preds = %367
  %513 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %514 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %515 = call i32 @vm_map_entry_pred(%struct.TYPE_31__* %514)
  %516 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %517 = call i32 @vm_map_try_merge_entries(%struct.TYPE_30__* %513, i32 %515, %struct.TYPE_31__* %516)
  %518 = load i32, i32* %21, align 4
  %519 = icmp ne i32 %518, 0
  br i1 %519, label %520, label %523

520:                                              ; preds = %512
  %521 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %522 = call i32 @vm_map_wakeup(%struct.TYPE_30__* %521)
  br label %523

523:                                              ; preds = %520, %512
  %524 = load i32, i32* %18, align 4
  store i32 %524, i32* %5, align 4
  br label %525

525:                                              ; preds = %523, %94, %65, %29
  %526 = load i32, i32* %5, align 4
  ret i32 %526
}

declare dso_local i32 @VM_MAP_ASSERT_LOCKED(%struct.TYPE_30__*) #1

declare dso_local i32 @VM_MAP_RANGE_CHECK(%struct.TYPE_30__*, i64, i64) #1

declare dso_local i32 @vm_map_lookup_entry(%struct.TYPE_30__*, i64, %struct.TYPE_31__**) #1

declare dso_local %struct.TYPE_31__* @vm_map_entry_succ(%struct.TYPE_31__*) #1

declare dso_local %struct.TYPE_31__* @vm_map_entry_in_transition(%struct.TYPE_30__*, i64, i64*, i32, %struct.TYPE_31__*) #1

declare dso_local i32 @vm_map_clip_start(%struct.TYPE_30__*, %struct.TYPE_31__*, i64) #1

declare dso_local i32 @vm_map_clip_end(%struct.TYPE_30__*, %struct.TYPE_31__*, i64) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @atop(i64) #1

declare dso_local i32 @vm_map_wire_user_count_add(i32) #1

declare dso_local i32 @vm_map_wire_entry_failure(%struct.TYPE_30__*, %struct.TYPE_31__*, i64) #1

declare dso_local i32 @vm_map_busy(%struct.TYPE_30__*) #1

declare dso_local i32 @vm_map_unlock(%struct.TYPE_30__*) #1

declare dso_local i32 @vm_fault(%struct.TYPE_30__*, i64, i32, i32, i32*) #1

declare dso_local i32 @vm_map_lock(%struct.TYPE_30__*) #1

declare dso_local i32 @vm_map_unbusy(%struct.TYPE_30__*) #1

declare dso_local i32 @vm_map_wire_user_count_sub(i32) #1

declare dso_local i32 @vm_map_entry_unwire(%struct.TYPE_30__*, %struct.TYPE_31__*) #1

declare dso_local i32 @vm_map_try_merge_entries(%struct.TYPE_30__*, i32, %struct.TYPE_31__*) #1

declare dso_local i32 @vm_map_entry_pred(%struct.TYPE_31__*) #1

declare dso_local i32 @vm_map_wakeup(%struct.TYPE_30__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
