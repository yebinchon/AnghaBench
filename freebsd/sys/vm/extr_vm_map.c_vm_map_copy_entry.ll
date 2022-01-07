; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vm_map_copy_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vm_map_copy_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.ucred*, %struct.TYPE_29__* }
%struct.ucred = type { i32 }
%struct.TYPE_29__ = type { i32, i64, i32, %struct.ucred*, i64, %struct.TYPE_25__, i64, i64, %struct.TYPE_29__* }
%struct.TYPE_25__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i64, i32, i64, %struct.ucred*, i32* }
%struct.TYPE_28__ = type { i32 }

@MAP_ENTRY_IS_SUB_MAP = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@MAP_ENTRY_NEEDS_COPY = common dso_local global i32 0, align 4
@OBJT_DEFAULT = common dso_local global i64 0, align 8
@OBJT_SWAP = common dso_local global i64 0, align 8
@OBJ_NOSPLIT = common dso_local global i32 0, align 4
@OBJ_ONEMAPPING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"OVERCOMMIT: vm_map_copy_entry: cred %p\00", align 1
@curthread = common dso_local global %struct.TYPE_26__* null, align 8
@MAP_ENTRY_COW = common dso_local global i32 0, align 4
@MAP_ENTRY_WRITECNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_28__*, %struct.TYPE_28__*, %struct.TYPE_29__*, %struct.TYPE_29__*, i32*)* @vm_map_copy_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_map_copy_entry(%struct.TYPE_28__* %0, %struct.TYPE_28__* %1, %struct.TYPE_29__* %2, %struct.TYPE_29__* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca %struct.TYPE_29__*, align 8
  %9 = alloca %struct.TYPE_29__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_27__*, align 8
  %12 = alloca %struct.TYPE_29__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.ucred*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %6, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %7, align 8
  store %struct.TYPE_29__* %2, %struct.TYPE_29__** %8, align 8
  store %struct.TYPE_29__* %3, %struct.TYPE_29__** %9, align 8
  store i32* %4, i32** %10, align 8
  %16 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %17 = call i32 @VM_MAP_ASSERT_LOCKED(%struct.TYPE_28__* %16)
  %18 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = or i32 %20, %23
  %25 = load i32, i32* @MAP_ENTRY_IS_SUB_MAP, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %5
  br label %321

29:                                               ; preds = %5
  %30 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %29
  %35 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @VM_PROT_WRITE, align 4
  %39 = and i32 %37, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %314

41:                                               ; preds = %34, %29
  %42 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @MAP_ENTRY_NEEDS_COPY, align 4
  %46 = and i32 %44, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %72

48:                                               ; preds = %41
  %49 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @VM_PROT_WRITE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %72

55:                                               ; preds = %48
  %56 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %59, i32 0, i32 6
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %62, i32 0, i32 7
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @VM_PROT_WRITE, align 4
  %69 = xor i32 %68, -1
  %70 = and i32 %67, %69
  %71 = call i32 @pmap_protect(i32 %58, i64 %61, i64 %64, i32 %70)
  br label %72

72:                                               ; preds = %55, %48, %41
  %73 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %73, i32 0, i32 7
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %76, i32 0, i32 6
  %78 = load i64, i64* %77, align 8
  %79 = sub nsw i64 %75, %78
  store i64 %79, i64* %13, align 8
  %80 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %80, i32 0, i32 5
  %82 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_27__*, %struct.TYPE_27__** %82, align 8
  store %struct.TYPE_27__* %83, %struct.TYPE_27__** %11, align 8
  %84 = icmp ne %struct.TYPE_27__* %83, null
  br i1 %84, label %85, label %286

85:                                               ; preds = %72
  %86 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %87 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_27__* %86)
  %88 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %89 = call i32 @ENTRY_CHARGED(%struct.TYPE_29__* %88)
  store i32 %89, i32* %15, align 4
  %90 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %90, i32 0, i32 4
  %92 = load i32*, i32** %91, align 8
  %93 = icmp eq i32* %92, null
  br i1 %93, label %94, label %126

94:                                               ; preds = %85
  %95 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @OBJT_DEFAULT, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %106, label %100

100:                                              ; preds = %94
  %101 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @OBJT_SWAP, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %126

106:                                              ; preds = %100, %94
  %107 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %108 = call i32 @vm_object_collapse(%struct.TYPE_27__* %107)
  %109 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @OBJ_NOSPLIT, align 4
  %113 = load i32, i32* @OBJ_ONEMAPPING, align 4
  %114 = or i32 %112, %113
  %115 = and i32 %111, %114
  %116 = load i32, i32* @OBJ_ONEMAPPING, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %125

118:                                              ; preds = %106
  %119 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %120 = call i32 @vm_object_split(%struct.TYPE_29__* %119)
  %121 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %121, i32 0, i32 5
  %123 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_27__*, %struct.TYPE_27__** %123, align 8
  store %struct.TYPE_27__* %124, %struct.TYPE_27__** %11, align 8
  br label %125

125:                                              ; preds = %118, %106
  br label %126

126:                                              ; preds = %125, %100, %85
  %127 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %128 = call i32 @vm_object_reference_locked(%struct.TYPE_27__* %127)
  %129 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %130 = load i32, i32* @OBJ_ONEMAPPING, align 4
  %131 = call i32 @vm_object_clear_flag(%struct.TYPE_27__* %129, i32 %130)
  %132 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %132, i32 0, i32 3
  %134 = load %struct.ucred*, %struct.ucred** %133, align 8
  %135 = icmp ne %struct.ucred* %134, null
  br i1 %135, label %136, label %160

136:                                              ; preds = %126
  %137 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @MAP_ENTRY_NEEDS_COPY, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %160, label %143

143:                                              ; preds = %136
  %144 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %144, i32 0, i32 3
  %146 = load %struct.ucred*, %struct.ucred** %145, align 8
  %147 = icmp eq %struct.ucred* %146, null
  %148 = zext i1 %147 to i32
  %149 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %150 = bitcast %struct.TYPE_27__* %149 to i8*
  %151 = call i32 @KASSERT(i32 %148, i8* %150)
  %152 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %152, i32 0, i32 3
  %154 = load %struct.ucred*, %struct.ucred** %153, align 8
  %155 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %155, i32 0, i32 3
  store %struct.ucred* %154, %struct.ucred** %156, align 8
  %157 = load i64, i64* %13, align 8
  %158 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %158, i32 0, i32 2
  store i64 %157, i64* %159, align 8
  br label %160

160:                                              ; preds = %143, %136, %126
  %161 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %162 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_27__* %161)
  %163 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %164 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %164, i32 0, i32 5
  %166 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %165, i32 0, i32 0
  store %struct.TYPE_27__* %163, %struct.TYPE_27__** %166, align 8
  %167 = load i32, i32* %15, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %203

169:                                              ; preds = %160
  %170 = load %struct.TYPE_26__*, %struct.TYPE_26__** @curthread, align 8
  %171 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %170, i32 0, i32 0
  %172 = load %struct.ucred*, %struct.ucred** %171, align 8
  store %struct.ucred* %172, %struct.ucred** %14, align 8
  %173 = load %struct.ucred*, %struct.ucred** %14, align 8
  %174 = call i32 @crhold(%struct.ucred* %173)
  %175 = load %struct.ucred*, %struct.ucred** %14, align 8
  %176 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %177 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %176, i32 0, i32 3
  store %struct.ucred* %175, %struct.ucred** %177, align 8
  %178 = load i64, i64* %13, align 8
  %179 = load i32*, i32** %10, align 8
  %180 = load i32, i32* %179, align 4
  %181 = sext i32 %180 to i64
  %182 = add nsw i64 %181, %178
  %183 = trunc i64 %182 to i32
  store i32 %183, i32* %179, align 4
  %184 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @MAP_ENTRY_NEEDS_COPY, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %202, label %190

190:                                              ; preds = %169
  %191 = load %struct.ucred*, %struct.ucred** %14, align 8
  %192 = call i32 @crhold(%struct.ucred* %191)
  %193 = load %struct.ucred*, %struct.ucred** %14, align 8
  %194 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %194, i32 0, i32 3
  store %struct.ucred* %193, %struct.ucred** %195, align 8
  %196 = load i64, i64* %13, align 8
  %197 = load i32*, i32** %10, align 8
  %198 = load i32, i32* %197, align 4
  %199 = sext i32 %198 to i64
  %200 = add nsw i64 %199, %196
  %201 = trunc i64 %200 to i32
  store i32 %201, i32* %197, align 4
  br label %202

202:                                              ; preds = %190, %169
  br label %203

203:                                              ; preds = %202, %160
  %204 = load i32, i32* @MAP_ENTRY_COW, align 4
  %205 = load i32, i32* @MAP_ENTRY_NEEDS_COPY, align 4
  %206 = or i32 %204, %205
  %207 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = or i32 %209, %206
  store i32 %210, i32* %208, align 8
  %211 = load i32, i32* @MAP_ENTRY_COW, align 4
  %212 = load i32, i32* @MAP_ENTRY_NEEDS_COPY, align 4
  %213 = or i32 %211, %212
  %214 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %215 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = or i32 %216, %213
  store i32 %217, i32* %215, align 8
  %218 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %218, i32 0, i32 4
  %220 = load i64, i64* %219, align 8
  %221 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %222 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %221, i32 0, i32 4
  store i64 %220, i64* %222, align 8
  %223 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %224 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* @MAP_ENTRY_WRITECNT, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %265

229:                                              ; preds = %203
  %230 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %231 = call %struct.TYPE_29__* @vm_map_entry_create(%struct.TYPE_28__* %230)
  store %struct.TYPE_29__* %231, %struct.TYPE_29__** %12, align 8
  %232 = load i32, i32* @MAP_ENTRY_WRITECNT, align 4
  %233 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %234 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %233, i32 0, i32 0
  store i32 %232, i32* %234, align 8
  %235 = load i32, i32* @MAP_ENTRY_WRITECNT, align 4
  %236 = xor i32 %235, -1
  %237 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %238 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = and i32 %239, %236
  store i32 %240, i32* %238, align 8
  %241 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %242 = call i32 @vm_object_reference(%struct.TYPE_27__* %241)
  %243 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %244 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %245 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %244, i32 0, i32 5
  %246 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %245, i32 0, i32 0
  store %struct.TYPE_27__* %243, %struct.TYPE_27__** %246, align 8
  %247 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %248 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %247, i32 0, i32 6
  %249 = load i64, i64* %248, align 8
  %250 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %251 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %250, i32 0, i32 6
  store i64 %249, i64* %251, align 8
  %252 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %253 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %252, i32 0, i32 7
  %254 = load i64, i64* %253, align 8
  %255 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %256 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %255, i32 0, i32 7
  store i64 %254, i64* %256, align 8
  %257 = load %struct.TYPE_26__*, %struct.TYPE_26__** @curthread, align 8
  %258 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %257, i32 0, i32 1
  %259 = load %struct.TYPE_29__*, %struct.TYPE_29__** %258, align 8
  %260 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %261 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %260, i32 0, i32 8
  store %struct.TYPE_29__* %259, %struct.TYPE_29__** %261, align 8
  %262 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %263 = load %struct.TYPE_26__*, %struct.TYPE_26__** @curthread, align 8
  %264 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %263, i32 0, i32 1
  store %struct.TYPE_29__* %262, %struct.TYPE_29__** %264, align 8
  br label %265

265:                                              ; preds = %229, %203
  %266 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %267 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %270 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %273 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %272, i32 0, i32 6
  %274 = load i64, i64* %273, align 8
  %275 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %276 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %275, i32 0, i32 7
  %277 = load i64, i64* %276, align 8
  %278 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %279 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %278, i32 0, i32 6
  %280 = load i64, i64* %279, align 8
  %281 = sub nsw i64 %277, %280
  %282 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %283 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %282, i32 0, i32 6
  %284 = load i64, i64* %283, align 8
  %285 = call i32 @pmap_copy(i32 %268, i32 %271, i64 %274, i64 %281, i64 %284)
  br label %313

286:                                              ; preds = %72
  %287 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %288 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %287, i32 0, i32 5
  %289 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %288, i32 0, i32 0
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %289, align 8
  %290 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %291 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %290, i32 0, i32 4
  store i64 0, i64* %291, align 8
  %292 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %293 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %292, i32 0, i32 3
  %294 = load %struct.ucred*, %struct.ucred** %293, align 8
  %295 = icmp ne %struct.ucred* %294, null
  br i1 %295, label %296, label %312

296:                                              ; preds = %286
  %297 = load %struct.TYPE_26__*, %struct.TYPE_26__** @curthread, align 8
  %298 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %297, i32 0, i32 0
  %299 = load %struct.ucred*, %struct.ucred** %298, align 8
  %300 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %301 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %300, i32 0, i32 3
  store %struct.ucred* %299, %struct.ucred** %301, align 8
  %302 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %303 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %302, i32 0, i32 3
  %304 = load %struct.ucred*, %struct.ucred** %303, align 8
  %305 = call i32 @crhold(%struct.ucred* %304)
  %306 = load i64, i64* %13, align 8
  %307 = load i32*, i32** %10, align 8
  %308 = load i32, i32* %307, align 4
  %309 = sext i32 %308 to i64
  %310 = add nsw i64 %309, %306
  %311 = trunc i64 %310 to i32
  store i32 %311, i32* %307, align 4
  br label %312

312:                                              ; preds = %296, %286
  br label %313

313:                                              ; preds = %312, %265
  br label %321

314:                                              ; preds = %34
  %315 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %316 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %317 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %318 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %319 = load i32*, i32** %10, align 8
  %320 = call i32 @vm_fault_copy_entry(%struct.TYPE_28__* %315, %struct.TYPE_28__* %316, %struct.TYPE_29__* %317, %struct.TYPE_29__* %318, i32* %319)
  br label %321

321:                                              ; preds = %28, %314, %313
  ret void
}

declare dso_local i32 @VM_MAP_ASSERT_LOCKED(%struct.TYPE_28__*) #1

declare dso_local i32 @pmap_protect(i32, i64, i64, i32) #1

declare dso_local i32 @VM_OBJECT_WLOCK(%struct.TYPE_27__*) #1

declare dso_local i32 @ENTRY_CHARGED(%struct.TYPE_29__*) #1

declare dso_local i32 @vm_object_collapse(%struct.TYPE_27__*) #1

declare dso_local i32 @vm_object_split(%struct.TYPE_29__*) #1

declare dso_local i32 @vm_object_reference_locked(%struct.TYPE_27__*) #1

declare dso_local i32 @vm_object_clear_flag(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_27__*) #1

declare dso_local i32 @crhold(%struct.ucred*) #1

declare dso_local %struct.TYPE_29__* @vm_map_entry_create(%struct.TYPE_28__*) #1

declare dso_local i32 @vm_object_reference(%struct.TYPE_27__*) #1

declare dso_local i32 @pmap_copy(i32, i32, i64, i64, i64) #1

declare dso_local i32 @vm_fault_copy_entry(%struct.TYPE_28__*, %struct.TYPE_28__*, %struct.TYPE_29__*, %struct.TYPE_29__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
