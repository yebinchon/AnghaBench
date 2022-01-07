; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_page_alloc_domain_after.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_page_alloc_domain_after.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, i32 }
%struct.TYPE_26__ = type { i32, i32, i64, i8*, i8*, i32*, i64, i64 }
%struct.vm_domain = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32* }

@VM_ALLOC_NOOBJ = common dso_local global i32 0, align 4
@VM_ALLOC_SBUSY = common dso_local global i32 0, align 4
@VM_ALLOC_NOBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"inconsistent object(%p)/req(%x)\00", align 1
@VM_ALLOC_WAITOK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Can't sleep and retry object insertion.\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"mpred %p doesn't precede pindex 0x%jx\00", align 1
@VM_FREEPOOL_DEFAULT = common dso_local global i32 0, align 4
@VM_FREEPOOL_DIRECT = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@PG_PCPU_CACHE = common dso_local global i32 0, align 4
@VM_ALLOC_ZERO = common dso_local global i32 0, align 4
@PG_ZERO = common dso_local global i32 0, align 4
@VM_ALLOC_NODUMP = common dso_local global i32 0, align 4
@PG_NODUMP = common dso_local global i32 0, align 4
@OBJ_UNMANAGED = common dso_local global i32 0, align 4
@VPO_UNMANAGED = common dso_local global i8* null, align 8
@VPB_UNBUSIED = common dso_local global i8* null, align 8
@VPB_SINGLE_EXCLUSIVER = common dso_local global i8* null, align 8
@VM_ALLOC_WIRED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"page %p has object\00", align 1
@VM_ALLOC_WAITFAIL = common dso_local global i32 0, align 4
@VM_MEMATTR_DEFAULT = common dso_local global i32 0, align 4
@OBJ_FICTITIOUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_26__* @vm_page_alloc_domain_after(%struct.TYPE_27__* %0, i64 %1, i32 %2, i32 %3, %struct.TYPE_26__* %4) #0 {
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca %struct.vm_domain*, align 8
  %13 = alloca %struct.TYPE_26__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_26__* %4, %struct.TYPE_26__** %11, align 8
  %16 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %17 = icmp ne %struct.TYPE_27__* %16, null
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @VM_ALLOC_NOOBJ, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = icmp eq i32 %18, %23
  br i1 %24, label %25, label %43

25:                                               ; preds = %5
  %26 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %27 = icmp ne %struct.TYPE_27__* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @VM_ALLOC_SBUSY, align 4
  %31 = and i32 %29, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %28, %25
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @VM_ALLOC_NOBUSY, align 4
  %36 = load i32, i32* @VM_ALLOC_SBUSY, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  %39 = load i32, i32* @VM_ALLOC_NOBUSY, align 4
  %40 = load i32, i32* @VM_ALLOC_SBUSY, align 4
  %41 = or i32 %39, %40
  %42 = icmp ne i32 %38, %41
  br label %43

43:                                               ; preds = %33, %28, %5
  %44 = phi i1 [ false, %28 ], [ false, %5 ], [ %42, %33 ]
  %45 = zext i1 %44 to i32
  %46 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i8*
  %50 = call i32 @KASSERT(i32 %45, i8* %49)
  %51 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %52 = icmp eq %struct.TYPE_27__* %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %43
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @VM_ALLOC_WAITOK, align 4
  %56 = and i32 %54, %55
  %57 = icmp eq i32 %56, 0
  br label %58

58:                                               ; preds = %53, %43
  %59 = phi i1 [ true, %43 ], [ %57, %53 ]
  %60 = zext i1 %59 to i32
  %61 = call i32 @KASSERT(i32 %60, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %62 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %63 = icmp eq %struct.TYPE_26__* %62, null
  br i1 %63, label %70, label %64

64:                                               ; preds = %58
  %65 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %8, align 8
  %69 = icmp slt i64 %67, %68
  br label %70

70:                                               ; preds = %64, %58
  %71 = phi i1 [ true, %58 ], [ %69, %64 ]
  %72 = zext i1 %71 to i32
  %73 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %74 = load i64, i64* %8, align 8
  %75 = trunc i64 %74 to i32
  %76 = sext i32 %75 to i64
  %77 = inttoptr i64 %76 to i8*
  %78 = call i32 @KASSERT(i32 %72, i8* %77)
  %79 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %80 = icmp ne %struct.TYPE_27__* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %70
  %82 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %83 = call i32 @VM_OBJECT_ASSERT_WLOCKED(%struct.TYPE_27__* %82)
  br label %84

84:                                               ; preds = %81, %70
  store i32 0, i32* %14, align 4
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %13, align 8
  %85 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %86 = icmp ne %struct.TYPE_27__* %85, null
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = load i32, i32* @VM_FREEPOOL_DEFAULT, align 4
  br label %91

89:                                               ; preds = %84
  %90 = load i32, i32* @VM_FREEPOOL_DIRECT, align 4
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i32 [ %88, %87 ], [ %90, %89 ]
  store i32 %92, i32* %15, align 4
  br label %93

93:                                               ; preds = %151, %91
  %94 = load i32, i32* %9, align 4
  %95 = call %struct.vm_domain* @VM_DOMAIN(i32 %94)
  store %struct.vm_domain* %95, %struct.vm_domain** %12, align 8
  %96 = load %struct.vm_domain*, %struct.vm_domain** %12, align 8
  %97 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %96, i32 0, i32 0
  %98 = load %struct.TYPE_25__*, %struct.TYPE_25__** %97, align 8
  %99 = load i32, i32* %15, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %123

105:                                              ; preds = %93
  %106 = load %struct.vm_domain*, %struct.vm_domain** %12, align 8
  %107 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %106, i32 0, i32 0
  %108 = load %struct.TYPE_25__*, %struct.TYPE_25__** %107, align 8
  %109 = load i32, i32* %15, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* @M_NOWAIT, align 4
  %115 = call %struct.TYPE_26__* @uma_zalloc(i32* %113, i32 %114)
  store %struct.TYPE_26__* %115, %struct.TYPE_26__** %13, align 8
  %116 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %117 = icmp ne %struct.TYPE_26__* %116, null
  br i1 %117, label %118, label %122

118:                                              ; preds = %105
  %119 = load i32, i32* @PG_PCPU_CACHE, align 4
  %120 = load i32, i32* %14, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %14, align 4
  br label %154

122:                                              ; preds = %105
  br label %123

123:                                              ; preds = %122, %93
  %124 = load %struct.vm_domain*, %struct.vm_domain** %12, align 8
  %125 = load i32, i32* %10, align 4
  %126 = call i64 @vm_domain_allocate(%struct.vm_domain* %124, i32 %125, i32 1)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %142

128:                                              ; preds = %123
  %129 = load %struct.vm_domain*, %struct.vm_domain** %12, align 8
  %130 = call i32 @vm_domain_free_lock(%struct.vm_domain* %129)
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* %15, align 4
  %133 = call %struct.TYPE_26__* @vm_phys_alloc_pages(i32 %131, i32 %132, i32 0)
  store %struct.TYPE_26__* %133, %struct.TYPE_26__** %13, align 8
  %134 = load %struct.vm_domain*, %struct.vm_domain** %12, align 8
  %135 = call i32 @vm_domain_free_unlock(%struct.vm_domain* %134)
  %136 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %137 = icmp eq %struct.TYPE_26__* %136, null
  br i1 %137, label %138, label %141

138:                                              ; preds = %128
  %139 = load %struct.vm_domain*, %struct.vm_domain** %12, align 8
  %140 = call i32 @vm_domain_freecnt_inc(%struct.vm_domain* %139, i32 1)
  br label %141

141:                                              ; preds = %138, %128
  br label %142

142:                                              ; preds = %141, %123
  %143 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %144 = icmp eq %struct.TYPE_26__* %143, null
  br i1 %144, label %145, label %153

145:                                              ; preds = %142
  %146 = load %struct.vm_domain*, %struct.vm_domain** %12, align 8
  %147 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %148 = load i32, i32* %10, align 4
  %149 = call i64 @vm_domain_alloc_fail(%struct.vm_domain* %146, %struct.TYPE_27__* %147, i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %145
  br label %93

152:                                              ; preds = %145
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %6, align 8
  br label %310

153:                                              ; preds = %142
  br label %154

154:                                              ; preds = %153, %118
  %155 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %156 = call i32 @vm_page_dequeue(%struct.TYPE_26__* %155)
  %157 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %158 = call i32 @vm_page_alloc_check(%struct.TYPE_26__* %157)
  %159 = load i32, i32* %10, align 4
  %160 = load i32, i32* @VM_ALLOC_ZERO, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %171

163:                                              ; preds = %154
  %164 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %165 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @PG_ZERO, align 4
  %168 = and i32 %166, %167
  %169 = load i32, i32* %14, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %14, align 4
  br label %171

171:                                              ; preds = %163, %154
  %172 = load i32, i32* %10, align 4
  %173 = load i32, i32* @VM_ALLOC_NODUMP, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %171
  %177 = load i32, i32* @PG_NODUMP, align 4
  %178 = load i32, i32* %14, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %14, align 4
  br label %180

180:                                              ; preds = %176, %171
  %181 = load i32, i32* %14, align 4
  %182 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %183 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %182, i32 0, i32 0
  store i32 %181, i32* %183, align 8
  %184 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %185 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %184, i32 0, i32 7
  store i64 0, i64* %185, align 8
  %186 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %187 = icmp eq %struct.TYPE_27__* %186, null
  br i1 %187, label %195, label %188

188:                                              ; preds = %180
  %189 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @OBJ_UNMANAGED, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %188, %180
  %196 = load i8*, i8** @VPO_UNMANAGED, align 8
  br label %198

197:                                              ; preds = %188
  br label %198

198:                                              ; preds = %197, %195
  %199 = phi i8* [ %196, %195 ], [ null, %197 ]
  %200 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %201 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %200, i32 0, i32 4
  store i8* %199, i8** %201, align 8
  %202 = load i8*, i8** @VPB_UNBUSIED, align 8
  %203 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %204 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %203, i32 0, i32 3
  store i8* %202, i8** %204, align 8
  %205 = load i32, i32* %10, align 4
  %206 = load i32, i32* @VM_ALLOC_NOBUSY, align 4
  %207 = load i32, i32* @VM_ALLOC_NOOBJ, align 4
  %208 = or i32 %206, %207
  %209 = load i32, i32* @VM_ALLOC_SBUSY, align 4
  %210 = or i32 %208, %209
  %211 = and i32 %205, %210
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %198
  %214 = load i8*, i8** @VPB_SINGLE_EXCLUSIVER, align 8
  %215 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %216 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %215, i32 0, i32 3
  store i8* %214, i8** %216, align 8
  br label %217

217:                                              ; preds = %213, %198
  %218 = load i32, i32* %10, align 4
  %219 = load i32, i32* @VM_ALLOC_SBUSY, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %217
  %223 = call i8* @VPB_SHARERS_WORD(i32 1)
  %224 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %225 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %224, i32 0, i32 3
  store i8* %223, i8** %225, align 8
  br label %226

226:                                              ; preds = %222, %217
  %227 = load i32, i32* %10, align 4
  %228 = load i32, i32* @VM_ALLOC_WIRED, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %226
  %232 = call i32 @vm_wire_add(i32 1)
  %233 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %234 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %233, i32 0, i32 1
  store i32 1, i32* %234, align 4
  br label %235

235:                                              ; preds = %231, %226
  %236 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %237 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %236, i32 0, i32 6
  store i64 0, i64* %237, align 8
  %238 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %239 = icmp ne %struct.TYPE_27__* %238, null
  br i1 %239, label %240, label %304

240:                                              ; preds = %235
  %241 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %242 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %243 = load i64, i64* %8, align 8
  %244 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %245 = call i64 @vm_page_insert_after(%struct.TYPE_26__* %241, %struct.TYPE_27__* %242, i64 %243, %struct.TYPE_26__* %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %284

247:                                              ; preds = %240
  %248 = load i32, i32* %10, align 4
  %249 = load i32, i32* @VM_ALLOC_WIRED, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %256

252:                                              ; preds = %247
  %253 = call i32 @vm_wire_sub(i32 1)
  %254 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %255 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %254, i32 0, i32 1
  store i32 0, i32* %255, align 4
  br label %256

256:                                              ; preds = %252, %247
  %257 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %258 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %257, i32 0, i32 5
  %259 = load i32*, i32** %258, align 8
  %260 = icmp eq i32* %259, null
  %261 = zext i1 %260 to i32
  %262 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %263 = bitcast %struct.TYPE_26__* %262 to i8*
  %264 = call i32 @KASSERT(i32 %261, i8* %263)
  %265 = load i8*, i8** @VPO_UNMANAGED, align 8
  %266 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %267 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %266, i32 0, i32 4
  store i8* %265, i8** %267, align 8
  %268 = load i8*, i8** @VPB_UNBUSIED, align 8
  %269 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %270 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %269, i32 0, i32 3
  store i8* %268, i8** %270, align 8
  %271 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %272 = call i32 @vm_page_free_toq(%struct.TYPE_26__* %271)
  %273 = load i32, i32* %10, align 4
  %274 = load i32, i32* @VM_ALLOC_WAITFAIL, align 4
  %275 = and i32 %273, %274
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %283

277:                                              ; preds = %256
  %278 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %279 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_27__* %278)
  %280 = call i32 (...) @vm_radix_wait()
  %281 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %282 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_27__* %281)
  br label %283

283:                                              ; preds = %277, %256
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %6, align 8
  br label %310

284:                                              ; preds = %240
  %285 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %286 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = load i32, i32* @VM_MEMATTR_DEFAULT, align 4
  %289 = icmp ne i32 %287, %288
  br i1 %289, label %290, label %303

290:                                              ; preds = %284
  %291 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %292 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 4
  %294 = load i32, i32* @OBJ_FICTITIOUS, align 4
  %295 = and i32 %293, %294
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %297, label %303

297:                                              ; preds = %290
  %298 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %299 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %300 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = call i32 @pmap_page_set_memattr(%struct.TYPE_26__* %298, i32 %301)
  br label %303

303:                                              ; preds = %297, %290, %284
  br label %308

304:                                              ; preds = %235
  %305 = load i64, i64* %8, align 8
  %306 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %307 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %306, i32 0, i32 2
  store i64 %305, i64* %307, align 8
  br label %308

308:                                              ; preds = %304, %303
  %309 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  store %struct.TYPE_26__* %309, %struct.TYPE_26__** %6, align 8
  br label %310

310:                                              ; preds = %308, %283, %152
  %311 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  ret %struct.TYPE_26__* %311
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @VM_OBJECT_ASSERT_WLOCKED(%struct.TYPE_27__*) #1

declare dso_local %struct.vm_domain* @VM_DOMAIN(i32) #1

declare dso_local %struct.TYPE_26__* @uma_zalloc(i32*, i32) #1

declare dso_local i64 @vm_domain_allocate(%struct.vm_domain*, i32, i32) #1

declare dso_local i32 @vm_domain_free_lock(%struct.vm_domain*) #1

declare dso_local %struct.TYPE_26__* @vm_phys_alloc_pages(i32, i32, i32) #1

declare dso_local i32 @vm_domain_free_unlock(%struct.vm_domain*) #1

declare dso_local i32 @vm_domain_freecnt_inc(%struct.vm_domain*, i32) #1

declare dso_local i64 @vm_domain_alloc_fail(%struct.vm_domain*, %struct.TYPE_27__*, i32) #1

declare dso_local i32 @vm_page_dequeue(%struct.TYPE_26__*) #1

declare dso_local i32 @vm_page_alloc_check(%struct.TYPE_26__*) #1

declare dso_local i8* @VPB_SHARERS_WORD(i32) #1

declare dso_local i32 @vm_wire_add(i32) #1

declare dso_local i64 @vm_page_insert_after(%struct.TYPE_26__*, %struct.TYPE_27__*, i64, %struct.TYPE_26__*) #1

declare dso_local i32 @vm_wire_sub(i32) #1

declare dso_local i32 @vm_page_free_toq(%struct.TYPE_26__*) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_27__*) #1

declare dso_local i32 @vm_radix_wait(...) #1

declare dso_local i32 @VM_OBJECT_WLOCK(%struct.TYPE_27__*) #1

declare dso_local i32 @pmap_page_set_memattr(%struct.TYPE_26__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
