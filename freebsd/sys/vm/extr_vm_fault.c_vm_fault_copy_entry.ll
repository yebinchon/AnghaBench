; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_fault.c_vm_fault_copy_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_fault.c_vm_fault_copy_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_37__ = type { i32* }
%struct.TYPE_39__ = type { i32 }
%struct.TYPE_40__ = type { i32, i32, i64, i64, i32*, i64, %struct.TYPE_35__ }
%struct.TYPE_35__ = type { %struct.TYPE_38__* }
%struct.TYPE_38__ = type { i64, i64, i64, i64, %struct.TYPE_38__*, i32*, i32, i32, i32 }
%struct.TYPE_36__ = type { i64, i32, i32 }

@MAP_ENTRY_NEEDS_COPY = common dso_local global i32 0, align 4
@OBJT_DEFAULT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"vm_fault_copy_entry: vm_object not NULL\00", align 1
@MAP_ENTRY_VN_EXEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"vm_fault_copy_entry: leaked swp charge\00", align 1
@curthread = common dso_local global %struct.TYPE_37__* null, align 8
@OBJT_SWAP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"no cred for entry %p\00", align 1
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"vm_fault_copy_entry: main object missing page\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"vm_fault_copy_entry: page missing\00", align 1
@VM_ALLOC_NORMAL = common dso_local global i32 0, align 4
@VM_ALLOC_WAITFAIL = common dso_local global i32 0, align 4
@PMAP_ENTER_WIRED = common dso_local global i32 0, align 4
@PQ_INACTIVE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"dst_m %p is not wired\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@MAP_ENTRY_COW = common dso_local global i32 0, align 4
@OBJ_COLORED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_fault_copy_entry(%struct.TYPE_39__* %0, %struct.TYPE_39__* %1, %struct.TYPE_40__* %2, %struct.TYPE_40__* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_39__*, align 8
  %7 = alloca %struct.TYPE_39__*, align 8
  %8 = alloca %struct.TYPE_40__*, align 8
  %9 = alloca %struct.TYPE_40__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_38__*, align 8
  %12 = alloca %struct.TYPE_38__*, align 8
  %13 = alloca %struct.TYPE_38__*, align 8
  %14 = alloca %struct.TYPE_38__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_36__*, align 8
  %22 = alloca %struct.TYPE_36__*, align 8
  %23 = alloca i32, align 4
  store %struct.TYPE_39__* %0, %struct.TYPE_39__** %6, align 8
  store %struct.TYPE_39__* %1, %struct.TYPE_39__** %7, align 8
  store %struct.TYPE_40__* %2, %struct.TYPE_40__** %8, align 8
  store %struct.TYPE_40__* %3, %struct.TYPE_40__** %9, align 8
  store i32* %4, i32** %10, align 8
  %24 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %25 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %26 = icmp eq %struct.TYPE_40__* %24, %25
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %23, align 4
  %28 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %19, align 4
  store i32 %30, i32* %18, align 4
  %31 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %31, i32 0, i32 6
  %33 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_38__*, %struct.TYPE_38__** %33, align 8
  store %struct.TYPE_38__* %34, %struct.TYPE_38__** %14, align 8
  %35 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %35, i32 0, i32 5
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @OFF_TO_IDX(i64 %37)
  store i64 %38, i64* %17, align 8
  %39 = load i32, i32* %23, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %5
  %42 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @MAP_ENTRY_NEEDS_COPY, align 4
  %46 = and i32 %44, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load %struct.TYPE_38__*, %struct.TYPE_38__** %14, align 8
  store %struct.TYPE_38__* %49, %struct.TYPE_38__** %12, align 8
  %50 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %51 = call i32 @vm_object_reference(%struct.TYPE_38__* %50)
  br label %77

52:                                               ; preds = %41, %5
  %53 = load i64, i64* @OBJT_DEFAULT, align 8
  %54 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %56, %59
  %61 = call i32 @atop(i64 %60)
  %62 = call %struct.TYPE_38__* @vm_object_allocate(i64 %53, i32 %61)
  store %struct.TYPE_38__* %62, %struct.TYPE_38__** %12, align 8
  %63 = load %struct.TYPE_38__*, %struct.TYPE_38__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %66, i32 0, i32 6
  store i32 %65, i32* %67, align 8
  %68 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %70, %73
  %75 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  br label %77

77:                                               ; preds = %52, %48
  %78 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %79 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_38__* %78)
  %80 = load i32, i32* %23, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %77
  %83 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %83, i32 0, i32 6
  %85 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_38__*, %struct.TYPE_38__** %85, align 8
  %87 = icmp eq %struct.TYPE_38__* %86, null
  br label %88

88:                                               ; preds = %82, %77
  %89 = phi i1 [ true, %77 ], [ %87, %82 ]
  %90 = zext i1 %89 to i32
  %91 = call i32 @KASSERT(i32 %90, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %92 = load %struct.TYPE_38__*, %struct.TYPE_38__** %14, align 8
  %93 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %94 = icmp ne %struct.TYPE_38__* %92, %93
  br i1 %94, label %95, label %108

95:                                               ; preds = %88
  %96 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %97 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %97, i32 0, i32 6
  %99 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %98, i32 0, i32 0
  store %struct.TYPE_38__* %96, %struct.TYPE_38__** %99, align 8
  %100 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %100, i32 0, i32 5
  store i64 0, i64* %101, align 8
  %102 = load i32, i32* @MAP_ENTRY_VN_EXEC, align 4
  %103 = xor i32 %102, -1
  %104 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, %103
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %95, %88
  %109 = load i32*, i32** %10, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %135

111:                                              ; preds = %108
  %112 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %112, i32 0, i32 4
  %114 = load i32*, i32** %113, align 8
  %115 = icmp eq i32* %114, null
  %116 = zext i1 %115 to i32
  %117 = call i32 @KASSERT(i32 %116, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %118 = load %struct.TYPE_37__*, %struct.TYPE_37__** @curthread, align 8
  %119 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %121, i32 0, i32 5
  store i32* %120, i32** %122, align 8
  %123 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %123, i32 0, i32 5
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 @crhold(i32* %125)
  %127 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i32*, i32** %10, align 8
  %131 = load i32, i32* %130, align 4
  %132 = sext i32 %131 to i64
  %133 = add nsw i64 %132, %129
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %130, align 4
  br label %169

135:                                              ; preds = %108
  %136 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %137 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @OBJT_DEFAULT, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %147, label %141

141:                                              ; preds = %135
  %142 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @OBJT_SWAP, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %168

147:                                              ; preds = %141, %135
  %148 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %148, i32 0, i32 5
  %150 = load i32*, i32** %149, align 8
  %151 = icmp eq i32* %150, null
  br i1 %151, label %152, label %168

152:                                              ; preds = %147
  %153 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %153, i32 0, i32 4
  %155 = load i32*, i32** %154, align 8
  %156 = icmp ne i32* %155, null
  %157 = zext i1 %156 to i32
  %158 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %159 = bitcast %struct.TYPE_40__* %158 to i8*
  %160 = call i32 @KASSERT(i32 %157, i8* %159)
  %161 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %161, i32 0, i32 4
  %163 = load i32*, i32** %162, align 8
  %164 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %165 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %164, i32 0, i32 5
  store i32* %163, i32** %165, align 8
  %166 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %166, i32 0, i32 4
  store i32* null, i32** %167, align 8
  br label %168

168:                                              ; preds = %152, %147, %141
  br label %169

169:                                              ; preds = %168, %111
  %170 = load i32, i32* %23, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %177, label %172

172:                                              ; preds = %169
  %173 = load i32, i32* @VM_PROT_WRITE, align 4
  %174 = xor i32 %173, -1
  %175 = load i32, i32* %18, align 4
  %176 = and i32 %175, %174
  store i32 %176, i32* %18, align 4
  br label %177

177:                                              ; preds = %172, %169
  %178 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %178, i32 0, i32 3
  %180 = load i64, i64* %179, align 8
  store i64 %180, i64* %20, align 8
  store i64 0, i64* %15, align 8
  br label %181

181:                                              ; preds = %362, %177
  %182 = load i64, i64* %20, align 8
  %183 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %183, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = icmp slt i64 %182, %185
  br i1 %186, label %187, label %368

187:                                              ; preds = %181
  br label %188

188:                                              ; preds = %294, %266, %187
  %189 = load %struct.TYPE_38__*, %struct.TYPE_38__** %14, align 8
  %190 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %191 = icmp ne %struct.TYPE_38__* %189, %190
  br i1 %191, label %192, label %195

192:                                              ; preds = %188
  %193 = load %struct.TYPE_38__*, %struct.TYPE_38__** %14, align 8
  %194 = call i32 @VM_OBJECT_RLOCK(%struct.TYPE_38__* %193)
  br label %195

195:                                              ; preds = %192, %188
  %196 = load %struct.TYPE_38__*, %struct.TYPE_38__** %14, align 8
  store %struct.TYPE_38__* %196, %struct.TYPE_38__** %13, align 8
  %197 = load i64, i64* %17, align 8
  %198 = load i64, i64* %15, align 8
  %199 = add nsw i64 %197, %198
  store i64 %199, i64* %16, align 8
  br label %200

200:                                              ; preds = %240, %195
  %201 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %202 = load i64, i64* %16, align 8
  %203 = call %struct.TYPE_36__* @vm_page_lookup(%struct.TYPE_38__* %201, i64 %202)
  store %struct.TYPE_36__* %203, %struct.TYPE_36__** %22, align 8
  %204 = icmp eq %struct.TYPE_36__* %203, null
  br i1 %204, label %205, label %210

205:                                              ; preds = %200
  %206 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %207 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %206, i32 0, i32 4
  %208 = load %struct.TYPE_38__*, %struct.TYPE_38__** %207, align 8
  store %struct.TYPE_38__* %208, %struct.TYPE_38__** %11, align 8
  %209 = icmp ne %struct.TYPE_38__* %208, null
  br label %210

210:                                              ; preds = %205, %200
  %211 = phi i1 [ false, %200 ], [ %209, %205 ]
  br i1 %211, label %212, label %242

212:                                              ; preds = %210
  %213 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %214 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @VM_PROT_WRITE, align 4
  %217 = and i32 %215, %216
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %222, label %219

219:                                              ; preds = %212
  %220 = load i32, i32* %23, align 4
  %221 = icmp ne i32 %220, 0
  br label %222

222:                                              ; preds = %219, %212
  %223 = phi i1 [ true, %212 ], [ %221, %219 ]
  %224 = zext i1 %223 to i32
  %225 = call i32 @KASSERT(i32 %224, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %226 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %227 = call i32 @VM_OBJECT_RLOCK(%struct.TYPE_38__* %226)
  %228 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %229 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %228, i32 0, i32 3
  %230 = load i64, i64* %229, align 8
  %231 = call i64 @OFF_TO_IDX(i64 %230)
  %232 = load i64, i64* %16, align 8
  %233 = add nsw i64 %232, %231
  store i64 %233, i64* %16, align 8
  %234 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %235 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %236 = icmp ne %struct.TYPE_38__* %234, %235
  br i1 %236, label %237, label %240

237:                                              ; preds = %222
  %238 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %239 = call i32 @VM_OBJECT_RUNLOCK(%struct.TYPE_38__* %238)
  br label %240

240:                                              ; preds = %237, %222
  %241 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  store %struct.TYPE_38__* %241, %struct.TYPE_38__** %13, align 8
  br label %200

242:                                              ; preds = %210
  %243 = load %struct.TYPE_36__*, %struct.TYPE_36__** %22, align 8
  %244 = icmp ne %struct.TYPE_36__* %243, null
  %245 = zext i1 %244 to i32
  %246 = call i32 @KASSERT(i32 %245, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %247 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %248 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %249 = icmp ne %struct.TYPE_38__* %247, %248
  br i1 %249, label %250, label %288

250:                                              ; preds = %242
  %251 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %252 = load %struct.TYPE_38__*, %struct.TYPE_38__** %14, align 8
  %253 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %254 = icmp eq %struct.TYPE_38__* %252, %253
  br i1 %254, label %255, label %257

255:                                              ; preds = %250
  %256 = load i64, i64* %17, align 8
  br label %258

257:                                              ; preds = %250
  br label %258

258:                                              ; preds = %257, %255
  %259 = phi i64 [ %256, %255 ], [ 0, %257 ]
  %260 = load i64, i64* %15, align 8
  %261 = add nsw i64 %259, %260
  %262 = load i32, i32* @VM_ALLOC_NORMAL, align 4
  %263 = call %struct.TYPE_36__* @vm_page_alloc(%struct.TYPE_38__* %251, i64 %261, i32 %262)
  store %struct.TYPE_36__* %263, %struct.TYPE_36__** %21, align 8
  %264 = load %struct.TYPE_36__*, %struct.TYPE_36__** %21, align 8
  %265 = icmp eq %struct.TYPE_36__* %264, null
  br i1 %265, label %266, label %275

266:                                              ; preds = %258
  %267 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %268 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_38__* %267)
  %269 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %270 = call i32 @VM_OBJECT_RUNLOCK(%struct.TYPE_38__* %269)
  %271 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %272 = call i32 @vm_wait(%struct.TYPE_38__* %271)
  %273 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %274 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_38__* %273)
  br label %188

275:                                              ; preds = %258
  %276 = load %struct.TYPE_36__*, %struct.TYPE_36__** %22, align 8
  %277 = load %struct.TYPE_36__*, %struct.TYPE_36__** %21, align 8
  %278 = call i32 @pmap_copy_page(%struct.TYPE_36__* %276, %struct.TYPE_36__* %277)
  %279 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %280 = call i32 @VM_OBJECT_RUNLOCK(%struct.TYPE_38__* %279)
  %281 = load %struct.TYPE_36__*, %struct.TYPE_36__** %22, align 8
  %282 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 8
  %284 = load %struct.TYPE_36__*, %struct.TYPE_36__** %21, align 8
  %285 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %284, i32 0, i32 1
  store i32 %283, i32* %285, align 8
  %286 = load %struct.TYPE_36__*, %struct.TYPE_36__** %21, align 8
  %287 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %286, i32 0, i32 2
  store i32 %283, i32* %287, align 4
  br label %307

288:                                              ; preds = %242
  %289 = load %struct.TYPE_36__*, %struct.TYPE_36__** %22, align 8
  store %struct.TYPE_36__* %289, %struct.TYPE_36__** %21, align 8
  %290 = load %struct.TYPE_36__*, %struct.TYPE_36__** %21, align 8
  %291 = load i32, i32* @VM_ALLOC_WAITFAIL, align 4
  %292 = call i64 @vm_page_busy_acquire(%struct.TYPE_36__* %290, i32 %291)
  %293 = icmp eq i64 %292, 0
  br i1 %293, label %294, label %295

294:                                              ; preds = %288
  br label %188

295:                                              ; preds = %288
  %296 = load %struct.TYPE_36__*, %struct.TYPE_36__** %21, align 8
  %297 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %300 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %299, i32 0, i32 2
  %301 = load i64, i64* %300, align 8
  %302 = icmp sge i64 %298, %301
  br i1 %302, label %303, label %306

303:                                              ; preds = %295
  %304 = load %struct.TYPE_36__*, %struct.TYPE_36__** %21, align 8
  %305 = call i32 @vm_page_xunbusy(%struct.TYPE_36__* %304)
  br label %368

306:                                              ; preds = %295
  br label %307

307:                                              ; preds = %306, %275
  %308 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %309 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_38__* %308)
  %310 = load %struct.TYPE_36__*, %struct.TYPE_36__** %21, align 8
  %311 = call i64 @vm_page_all_valid(%struct.TYPE_36__* %310)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %330

313:                                              ; preds = %307
  %314 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %315 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = load i64, i64* %20, align 8
  %318 = load %struct.TYPE_36__*, %struct.TYPE_36__** %21, align 8
  %319 = load i32, i32* %19, align 4
  %320 = load i32, i32* %18, align 4
  %321 = load i32, i32* %23, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %325

323:                                              ; preds = %313
  %324 = load i32, i32* @PMAP_ENTER_WIRED, align 4
  br label %326

325:                                              ; preds = %313
  br label %326

326:                                              ; preds = %325, %323
  %327 = phi i32 [ %324, %323 ], [ 0, %325 ]
  %328 = or i32 %320, %327
  %329 = call i32 @pmap_enter(i32 %316, i64 %317, %struct.TYPE_36__* %318, i32 %319, i32 %328, i32 0)
  br label %330

330:                                              ; preds = %326, %307
  %331 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %332 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_38__* %331)
  %333 = load i32, i32* %23, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %352

335:                                              ; preds = %330
  %336 = load %struct.TYPE_36__*, %struct.TYPE_36__** %22, align 8
  %337 = load %struct.TYPE_36__*, %struct.TYPE_36__** %21, align 8
  %338 = icmp ne %struct.TYPE_36__* %336, %337
  br i1 %338, label %339, label %345

339:                                              ; preds = %335
  %340 = load %struct.TYPE_36__*, %struct.TYPE_36__** %22, align 8
  %341 = load i32, i32* @PQ_INACTIVE, align 4
  %342 = call i32 @vm_page_unwire(%struct.TYPE_36__* %340, i32 %341)
  %343 = load %struct.TYPE_36__*, %struct.TYPE_36__** %21, align 8
  %344 = call i32 @vm_page_wire(%struct.TYPE_36__* %343)
  br label %351

345:                                              ; preds = %335
  %346 = load %struct.TYPE_36__*, %struct.TYPE_36__** %21, align 8
  %347 = call i32 @vm_page_wired(%struct.TYPE_36__* %346)
  %348 = load %struct.TYPE_36__*, %struct.TYPE_36__** %21, align 8
  %349 = bitcast %struct.TYPE_36__* %348 to i8*
  %350 = call i32 @KASSERT(i32 %347, i8* %349)
  br label %351

351:                                              ; preds = %345, %339
  br label %359

352:                                              ; preds = %330
  %353 = load %struct.TYPE_36__*, %struct.TYPE_36__** %21, align 8
  %354 = call i32 @vm_page_lock(%struct.TYPE_36__* %353)
  %355 = load %struct.TYPE_36__*, %struct.TYPE_36__** %21, align 8
  %356 = call i32 @vm_page_activate(%struct.TYPE_36__* %355)
  %357 = load %struct.TYPE_36__*, %struct.TYPE_36__** %21, align 8
  %358 = call i32 @vm_page_unlock(%struct.TYPE_36__* %357)
  br label %359

359:                                              ; preds = %352, %351
  %360 = load %struct.TYPE_36__*, %struct.TYPE_36__** %21, align 8
  %361 = call i32 @vm_page_xunbusy(%struct.TYPE_36__* %360)
  br label %362

362:                                              ; preds = %359
  %363 = load i64, i64* @PAGE_SIZE, align 8
  %364 = load i64, i64* %20, align 8
  %365 = add nsw i64 %364, %363
  store i64 %365, i64* %20, align 8
  %366 = load i64, i64* %15, align 8
  %367 = add nsw i64 %366, 1
  store i64 %367, i64* %15, align 8
  br label %181

368:                                              ; preds = %303, %181
  %369 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %370 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_38__* %369)
  %371 = load i32, i32* %23, align 4
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %384

373:                                              ; preds = %368
  %374 = load i32, i32* @MAP_ENTRY_COW, align 4
  %375 = load i32, i32* @MAP_ENTRY_NEEDS_COPY, align 4
  %376 = or i32 %374, %375
  %377 = xor i32 %376, -1
  %378 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %379 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %378, i32 0, i32 1
  %380 = load i32, i32* %379, align 4
  %381 = and i32 %380, %377
  store i32 %381, i32* %379, align 4
  %382 = load %struct.TYPE_38__*, %struct.TYPE_38__** %14, align 8
  %383 = call i32 @vm_object_deallocate(%struct.TYPE_38__* %382)
  br label %384

384:                                              ; preds = %373, %368
  ret void
}

declare dso_local i64 @OFF_TO_IDX(i64) #1

declare dso_local i32 @vm_object_reference(%struct.TYPE_38__*) #1

declare dso_local %struct.TYPE_38__* @vm_object_allocate(i64, i32) #1

declare dso_local i32 @atop(i64) #1

declare dso_local i32 @VM_OBJECT_WLOCK(%struct.TYPE_38__*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @crhold(i32*) #1

declare dso_local i32 @VM_OBJECT_RLOCK(%struct.TYPE_38__*) #1

declare dso_local %struct.TYPE_36__* @vm_page_lookup(%struct.TYPE_38__*, i64) #1

declare dso_local i32 @VM_OBJECT_RUNLOCK(%struct.TYPE_38__*) #1

declare dso_local %struct.TYPE_36__* @vm_page_alloc(%struct.TYPE_38__*, i64, i32) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_38__*) #1

declare dso_local i32 @vm_wait(%struct.TYPE_38__*) #1

declare dso_local i32 @pmap_copy_page(%struct.TYPE_36__*, %struct.TYPE_36__*) #1

declare dso_local i64 @vm_page_busy_acquire(%struct.TYPE_36__*, i32) #1

declare dso_local i32 @vm_page_xunbusy(%struct.TYPE_36__*) #1

declare dso_local i64 @vm_page_all_valid(%struct.TYPE_36__*) #1

declare dso_local i32 @pmap_enter(i32, i64, %struct.TYPE_36__*, i32, i32, i32) #1

declare dso_local i32 @vm_page_unwire(%struct.TYPE_36__*, i32) #1

declare dso_local i32 @vm_page_wire(%struct.TYPE_36__*) #1

declare dso_local i32 @vm_page_wired(%struct.TYPE_36__*) #1

declare dso_local i32 @vm_page_lock(%struct.TYPE_36__*) #1

declare dso_local i32 @vm_page_activate(%struct.TYPE_36__*) #1

declare dso_local i32 @vm_page_unlock(%struct.TYPE_36__*) #1

declare dso_local i32 @vm_object_deallocate(%struct.TYPE_38__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
