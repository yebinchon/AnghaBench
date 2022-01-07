; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_object.c_vm_object_deallocate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_object.c_vm_object_deallocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32, i32, i32, %struct.TYPE_16__*, i32, i32*, i32 }

@OBJT_VNODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [60 x i8] c"vm_object_deallocate: object deallocated too many times: %d\00", align 1
@OBJT_DEFAULT = common dso_local global i64 0, align 8
@OBJT_SWAP = common dso_local global i64 0, align 8
@OBJ_TMPFS_NODE = common dso_local global i32 0, align 4
@OBJ_ONEMAPPING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"vm_object_deallocate: ref_count: %d, shadow_count: %d\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"shadowed tmpfs v_object %p\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"vmo_de\00", align 1
@OBJ_DEAD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"objde1\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"objde2\00", align 1
@PVM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"shadowed tmpfs v_object 2 %p\00", align 1
@shadow_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_object_deallocate(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  br label %6

6:                                                ; preds = %302, %239, %141, %1
  %7 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %8 = icmp ne %struct.TYPE_16__* %7, null
  br i1 %8, label %9, label %304

9:                                                ; preds = %6
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %11 = call i32 @VM_OBJECT_RLOCK(%struct.TYPE_16__* %10)
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @OBJT_VNODE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %9
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %19 = call i32 @vm_object_vndeallocate(%struct.TYPE_16__* %18)
  br label %304

20:                                               ; preds = %9
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 1
  %23 = call i32 @refcount_release_if_gt(i32* %22, i32 2)
  store i32 %23, i32* %4, align 4
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %25 = call i32 @VM_OBJECT_RUNLOCK(%struct.TYPE_16__* %24)
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %304

29:                                               ; preds = %20
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %31 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_16__* %30)
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i8*
  %41 = call i32 @KASSERT(i32 %36, i8* %40)
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 1
  %44 = call i32 @refcount_release(i32* %43)
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp sgt i32 %47, 1
  br i1 %48, label %49, label %52

49:                                               ; preds = %29
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %51 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_16__* %50)
  br label %304

52:                                               ; preds = %29
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %252

57:                                               ; preds = %52
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %90

62:                                               ; preds = %57
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 6
  %65 = load i32*, i32** %64, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %90

67:                                               ; preds = %62
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @OBJT_DEFAULT, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %86, label %73

73:                                               ; preds = %67
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @OBJT_SWAP, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %90

79:                                               ; preds = %73
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @OBJ_TMPFS_NODE, align 4
  %84 = and i32 %82, %83
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %79, %67
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %88 = load i32, i32* @OBJ_ONEMAPPING, align 4
  %89 = call i32 @vm_object_set_flag(%struct.TYPE_16__* %87, i32 %88)
  br label %249

90:                                               ; preds = %79, %73, %62, %57
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %95, label %248

95:                                               ; preds = %90
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 6
  %98 = load i32*, i32** %97, align 8
  %99 = icmp eq i32* %98, null
  br i1 %99, label %100, label %248

100:                                              ; preds = %95
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @OBJT_DEFAULT, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %112, label %106

106:                                              ; preds = %100
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @OBJT_SWAP, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %248

112:                                              ; preds = %106, %100
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 7
  %115 = call %struct.TYPE_16__* @LIST_FIRST(i32* %114)
  store %struct.TYPE_16__* %115, %struct.TYPE_16__** %5, align 8
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %117 = icmp ne %struct.TYPE_16__* %116, null
  %118 = zext i1 %117 to i32
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = sext i32 %124 to i64
  %126 = inttoptr i64 %125 to i8*
  %127 = call i32 @KASSERT(i32 %118, i8* %126)
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @OBJ_TMPFS_NODE, align 4
  %132 = and i32 %130, %131
  %133 = icmp eq i32 %132, 0
  %134 = zext i1 %133 to i32
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %136 = bitcast %struct.TYPE_16__* %135 to i8*
  %137 = call i32 @KASSERT(i32 %134, i8* %136)
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %139 = call i32 @VM_OBJECT_TRYWLOCK(%struct.TYPE_16__* %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %148, label %141

141:                                              ; preds = %112
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 1
  %144 = call i32 @refcount_acquire(i32* %143)
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %146 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_16__* %145)
  %147 = call i32 @pause(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 1)
  br label %6

148:                                              ; preds = %112
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @OBJ_DEAD, align 4
  %153 = and i32 %151, %152
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %245

155:                                              ; preds = %148
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 6
  %158 = load i32*, i32** %157, align 8
  %159 = icmp eq i32* %158, null
  br i1 %159, label %160, label %245

160:                                              ; preds = %155
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @OBJT_DEFAULT, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %172, label %166

166:                                              ; preds = %160
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @OBJT_SWAP, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %245

172:                                              ; preds = %166, %160
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 1
  %175 = call i32 @refcount_acquire(i32* %174)
  br label %176

176:                                              ; preds = %220, %193, %172
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 8
  %180 = call i64 @REFCOUNT_COUNT(i32 %179)
  %181 = icmp sgt i64 %180, 0
  br i1 %181, label %182, label %197

182:                                              ; preds = %176
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %184 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_16__* %183)
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %186 = call i32 @vm_object_pip_wait(%struct.TYPE_16__* %185, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 4
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %188, align 8
  store %struct.TYPE_16__* %189, %struct.TYPE_16__** %3, align 8
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %192 = icmp eq %struct.TYPE_16__* %190, %191
  br i1 %192, label %193, label %196

193:                                              ; preds = %182
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %195 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_16__* %194)
  br label %176

196:                                              ; preds = %182
  br label %228

197:                                              ; preds = %176
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i32 0, i32 5
  %200 = load i32, i32* %199, align 8
  %201 = call i64 @REFCOUNT_COUNT(i32 %200)
  %202 = icmp sgt i64 %201, 0
  br i1 %202, label %203, label %224

203:                                              ; preds = %197
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %205 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_16__* %204)
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %207 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_16__* %206)
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 5
  %210 = load i32, i32* @PVM, align 4
  %211 = call i32 @refcount_wait(i32* %209, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %210)
  %212 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %213 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_16__* %212)
  %214 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %214, i32 0, i32 4
  %216 = load %struct.TYPE_16__*, %struct.TYPE_16__** %215, align 8
  store %struct.TYPE_16__* %216, %struct.TYPE_16__** %3, align 8
  %217 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %218 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %219 = icmp eq %struct.TYPE_16__* %217, %218
  br i1 %219, label %220, label %223

220:                                              ; preds = %203
  %221 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %222 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_16__* %221)
  br label %176

223:                                              ; preds = %203
  br label %227

224:                                              ; preds = %197
  %225 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %226 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_16__* %225)
  br label %227

227:                                              ; preds = %224, %223
  br label %228

228:                                              ; preds = %227, %196
  %229 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 8
  %232 = icmp eq i32 %231, 1
  br i1 %232, label %233, label %239

233:                                              ; preds = %228
  %234 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 8
  %237 = add nsw i32 %236, -1
  store i32 %237, i32* %235, align 8
  %238 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_16__* %238, %struct.TYPE_16__** %2, align 8
  br label %254

239:                                              ; preds = %228
  %240 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_16__* %240, %struct.TYPE_16__** %2, align 8
  %241 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %242 = call i32 @vm_object_collapse(%struct.TYPE_16__* %241)
  %243 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %244 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_16__* %243)
  br label %6

245:                                              ; preds = %166, %155, %148
  %246 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %247 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_16__* %246)
  br label %248

248:                                              ; preds = %245, %106, %95, %90
  br label %249

249:                                              ; preds = %248, %86
  %250 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %251 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_16__* %250)
  br label %304

252:                                              ; preds = %52
  br label %253

253:                                              ; preds = %252
  br label %254

254:                                              ; preds = %253, %233
  %255 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %256 = call i32 @umtx_shm_object_terminated(%struct.TYPE_16__* %255)
  %257 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %258 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %257, i32 0, i32 4
  %259 = load %struct.TYPE_16__*, %struct.TYPE_16__** %258, align 8
  store %struct.TYPE_16__* %259, %struct.TYPE_16__** %3, align 8
  %260 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %261 = icmp ne %struct.TYPE_16__* %260, null
  br i1 %261, label %262, label %286

262:                                              ; preds = %254
  %263 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %264 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 8
  %266 = load i32, i32* @OBJ_TMPFS_NODE, align 4
  %267 = and i32 %265, %266
  %268 = icmp eq i32 %267, 0
  %269 = zext i1 %268 to i32
  %270 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %271 = bitcast %struct.TYPE_16__* %270 to i8*
  %272 = call i32 @KASSERT(i32 %269, i8* %271)
  %273 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %274 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_16__* %273)
  %275 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %276 = load i32, i32* @shadow_list, align 4
  %277 = call i32 @LIST_REMOVE(%struct.TYPE_16__* %275, i32 %276)
  %278 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %279 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 4
  %281 = add nsw i32 %280, -1
  store i32 %281, i32* %279, align 4
  %282 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %283 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_16__* %282)
  %284 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %285 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %284, i32 0, i32 4
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %285, align 8
  br label %286

286:                                              ; preds = %262, %254
  %287 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %288 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %287, i32 0, i32 3
  %289 = load i32, i32* %288, align 8
  %290 = load i32, i32* @OBJ_DEAD, align 4
  %291 = and i32 %289, %290
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %293, label %299

293:                                              ; preds = %286
  %294 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %295 = load i32, i32* @OBJ_DEAD, align 4
  %296 = call i32 @vm_object_set_flag(%struct.TYPE_16__* %294, i32 %295)
  %297 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %298 = call i32 @vm_object_terminate(%struct.TYPE_16__* %297)
  br label %302

299:                                              ; preds = %286
  %300 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %301 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_16__* %300)
  br label %302

302:                                              ; preds = %299, %293
  %303 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  store %struct.TYPE_16__* %303, %struct.TYPE_16__** %2, align 8
  br label %6

304:                                              ; preds = %17, %28, %49, %249, %6
  ret void
}

declare dso_local i32 @VM_OBJECT_RLOCK(%struct.TYPE_16__*) #1

declare dso_local i32 @vm_object_vndeallocate(%struct.TYPE_16__*) #1

declare dso_local i32 @refcount_release_if_gt(i32*, i32) #1

declare dso_local i32 @VM_OBJECT_RUNLOCK(%struct.TYPE_16__*) #1

declare dso_local i32 @VM_OBJECT_WLOCK(%struct.TYPE_16__*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @refcount_release(i32*) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_16__*) #1

declare dso_local i32 @vm_object_set_flag(%struct.TYPE_16__*, i32) #1

declare dso_local %struct.TYPE_16__* @LIST_FIRST(i32*) #1

declare dso_local i32 @VM_OBJECT_TRYWLOCK(%struct.TYPE_16__*) #1

declare dso_local i32 @refcount_acquire(i32*) #1

declare dso_local i32 @pause(i8*, i32) #1

declare dso_local i64 @REFCOUNT_COUNT(i32) #1

declare dso_local i32 @vm_object_pip_wait(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @refcount_wait(i32*, i8*, i32) #1

declare dso_local i32 @vm_object_collapse(%struct.TYPE_16__*) #1

declare dso_local i32 @umtx_shm_object_terminated(%struct.TYPE_16__*) #1

declare dso_local i32 @LIST_REMOVE(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @vm_object_terminate(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
