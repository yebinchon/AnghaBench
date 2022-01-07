; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_page_scan_contig.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_page_scan_contig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32, i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, i64 }
%struct.mtx = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"npages is 0\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"alignment is not a power of 2\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"boundary is not a power of 2\00", align 1
@PG_MARKER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"page %p is PG_MARKER\00", align 1
@PG_FICTITIOUS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"fictitious page %p has invalid ref count\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"m_run != NULL\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"m_run == NULL\00", align 1
@OBJT_DEFAULT = common dso_local global i64 0, align 8
@OBJT_SWAP = common dso_local global i64 0, align 8
@OBJT_VNODE = common dso_local global i64 0, align 8
@VM_MEMATTR_DEFAULT = common dso_local global i64 0, align 8
@PQ_NONE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [34 x i8] c"page %p has an unexpected memattr\00", align 1
@VPO_SWAPINPROG = common dso_local global i32 0, align 4
@VPO_SWAPSLEEP = common dso_local global i32 0, align 4
@VPO_UNMANAGED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"page %p has unexpected oflags\00", align 1
@VM_NFREEORDER = common dso_local global i32 0, align 4
@VPSC_NORESERV = common dso_local global i32 0, align 4
@VPSC_NOSUPER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_17__* @vm_page_scan_contig(i32 %0, %struct.TYPE_17__* %1, %struct.TYPE_17__* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.mtx*, align 8
  %15 = alloca %struct.TYPE_18__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_17__*, align 8
  %18 = alloca %struct.TYPE_17__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %9, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp sgt i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @KASSERT(i32 %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @powerof2(i32 %27)
  %29 = call i32 @KASSERT(i32 %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @powerof2(i32 %30)
  %32 = call i32 @KASSERT(i32 %31, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %18, align 8
  store i32 0, i32* %22, align 4
  store %struct.mtx* null, %struct.mtx** %14, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  store %struct.TYPE_17__* %33, %struct.TYPE_17__** %17, align 8
  br label %34

34:                                               ; preds = %258, %6
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %37 = icmp ult %struct.TYPE_17__* %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i32, i32* %22, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %39, %40
  br label %42

42:                                               ; preds = %38, %34
  %43 = phi i1 [ false, %34 ], [ %41, %38 ]
  br i1 %43, label %44, label %263

44:                                               ; preds = %42
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @PG_MARKER, align 4
  %49 = and i32 %47, %48
  %50 = icmp eq i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %53 = bitcast %struct.TYPE_17__* %52 to i8*
  %54 = call i32 @KASSERT(i32 %51, i8* %53)
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @PG_FICTITIOUS, align 4
  %59 = and i32 %57, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %44
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp sge i32 %64, 1
  br label %66

66:                                               ; preds = %61, %44
  %67 = phi i1 [ true, %44 ], [ %65, %61 ]
  %68 = zext i1 %67 to i32
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %70 = bitcast %struct.TYPE_17__* %69 to i8*
  %71 = call i32 @KASSERT(i32 %68, i8* %70)
  %72 = load i32, i32* %22, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %122

74:                                               ; preds = %66
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %76 = icmp eq %struct.TYPE_17__* %75, null
  %77 = zext i1 %76 to i32
  %78 = call i32 @KASSERT(i32 %77, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i64 %81
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %84 = icmp ugt %struct.TYPE_17__* %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %74
  br label %263

86:                                               ; preds = %74
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %88 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_17__* %87)
  store i32 %88, i32* %16, align 4
  %89 = load i32, i32* %16, align 4
  %90 = load i32, i32* %11, align 4
  %91 = sub nsw i32 %90, 1
  %92 = and i32 %89, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %86
  %95 = load i32, i32* %16, align 4
  %96 = load i32, i32* %11, align 4
  %97 = call i64 @roundup2(i32 %95, i32 %96)
  %98 = load i32, i32* %16, align 4
  %99 = sext i32 %98 to i64
  %100 = sub nsw i64 %97, %99
  %101 = call i32 @atop(i64 %100)
  store i32 %101, i32* %19, align 4
  br label %258

102:                                              ; preds = %86
  %103 = load i32, i32* %16, align 4
  %104 = load i32, i32* %16, align 4
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @ptoa(i32 %105)
  %107 = add nsw i32 %104, %106
  %108 = sub nsw i32 %107, 1
  %109 = xor i32 %103, %108
  %110 = load i32, i32* %12, align 4
  %111 = call i64 @rounddown2(i32 %109, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %102
  %114 = load i32, i32* %16, align 4
  %115 = load i32, i32* %12, align 4
  %116 = call i64 @roundup2(i32 %114, i32 %115)
  %117 = load i32, i32* %16, align 4
  %118 = sext i32 %117 to i64
  %119 = sub nsw i64 %116, %118
  %120 = call i32 @atop(i64 %119)
  store i32 %120, i32* %19, align 4
  br label %258

121:                                              ; preds = %102
  br label %127

122:                                              ; preds = %66
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %124 = icmp ne %struct.TYPE_17__* %123, null
  %125 = zext i1 %124 to i32
  %126 = call i32 @KASSERT(i32 %125, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %127

127:                                              ; preds = %122, %121
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %129 = call i32 @vm_page_change_lock(%struct.TYPE_17__* %128, %struct.mtx** %14)
  store i32 1, i32* %19, align 4
  br label %130

130:                                              ; preds = %156, %127
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %132 = call i64 @vm_page_wired(%struct.TYPE_17__* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %130
  store i32 0, i32* %21, align 4
  br label %240

135:                                              ; preds = %130
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 4
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %137, align 8
  store %struct.TYPE_18__* %138, %struct.TYPE_18__** %15, align 8
  %139 = icmp ne %struct.TYPE_18__* %138, null
  br i1 %139, label %140, label %226

140:                                              ; preds = %135
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %142 = call i32 @VM_OBJECT_TRYRLOCK(%struct.TYPE_18__* %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %160, label %144

144:                                              ; preds = %140
  %145 = load %struct.mtx*, %struct.mtx** %14, align 8
  %146 = call i32 @mtx_unlock(%struct.mtx* %145)
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %148 = call i32 @VM_OBJECT_RLOCK(%struct.TYPE_18__* %147)
  %149 = load %struct.mtx*, %struct.mtx** %14, align 8
  %150 = call i32 @mtx_lock(%struct.mtx* %149)
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 4
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %152, align 8
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %155 = icmp ne %struct.TYPE_18__* %153, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %144
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %158 = call i32 @VM_OBJECT_RUNLOCK(%struct.TYPE_18__* %157)
  br label %130

159:                                              ; preds = %144
  br label %160

160:                                              ; preds = %159, %140
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @OBJT_DEFAULT, align 8
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %166, label %179

166:                                              ; preds = %160
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @OBJT_SWAP, align 8
  %171 = icmp ne i64 %169, %170
  br i1 %171, label %172, label %179

172:                                              ; preds = %166
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @OBJT_VNODE, align 8
  %177 = icmp ne i64 %175, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %172
  store i32 0, i32* %21, align 4
  br label %223

179:                                              ; preds = %172, %166, %160
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @VM_MEMATTR_DEFAULT, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %221

185:                                              ; preds = %179
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %187 = call i64 @vm_page_queue(%struct.TYPE_17__* %186)
  %188 = load i64, i64* @PQ_NONE, align 8
  %189 = icmp ne i64 %187, %188
  br i1 %189, label %190, label %221

190:                                              ; preds = %185
  %191 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %192 = call i32 @vm_page_busied(%struct.TYPE_17__* %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %221, label %194

194:                                              ; preds = %190
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %196 = call i64 @vm_page_wired(%struct.TYPE_17__* %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %221, label %198

198:                                              ; preds = %194
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %200 = call i64 @pmap_page_get_memattr(%struct.TYPE_17__* %199)
  %201 = load i64, i64* @VM_MEMATTR_DEFAULT, align 8
  %202 = icmp eq i64 %200, %201
  %203 = zext i1 %202 to i32
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %205 = bitcast %struct.TYPE_17__* %204 to i8*
  %206 = call i32 @KASSERT(i32 %203, i8* %205)
  %207 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %208 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @VPO_SWAPINPROG, align 4
  %211 = load i32, i32* @VPO_SWAPSLEEP, align 4
  %212 = or i32 %210, %211
  %213 = load i32, i32* @VPO_UNMANAGED, align 4
  %214 = or i32 %212, %213
  %215 = and i32 %209, %214
  %216 = icmp eq i32 %215, 0
  %217 = zext i1 %216 to i32
  %218 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %219 = bitcast %struct.TYPE_17__* %218 to i8*
  %220 = call i32 @KASSERT(i32 %217, i8* %219)
  store i32 1, i32* %21, align 4
  br label %222

221:                                              ; preds = %194, %190, %185, %179
  store i32 0, i32* %21, align 4
  br label %222

222:                                              ; preds = %221, %198
  br label %223

223:                                              ; preds = %222, %178
  %224 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %225 = call i32 @VM_OBJECT_RUNLOCK(%struct.TYPE_18__* %224)
  br label %239

226:                                              ; preds = %135
  %227 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %228 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %227, i32 0, i32 3
  %229 = load i32, i32* %228, align 4
  store i32 %229, i32* %20, align 4
  %230 = load i32, i32* @VM_NFREEORDER, align 4
  %231 = icmp slt i32 %229, %230
  br i1 %231, label %232, label %237

232:                                              ; preds = %226
  %233 = load i32, i32* %20, align 4
  %234 = shl i32 1, %233
  store i32 %234, i32* %21, align 4
  %235 = load i32, i32* %20, align 4
  %236 = shl i32 1, %235
  store i32 %236, i32* %19, align 4
  br label %238

237:                                              ; preds = %226
  store i32 0, i32* %21, align 4
  br label %238

238:                                              ; preds = %237, %232
  br label %239

239:                                              ; preds = %238, %223
  br label %240

240:                                              ; preds = %239, %134
  %241 = load i32, i32* %21, align 4
  %242 = icmp sgt i32 %241, 0
  br i1 %242, label %243, label %252

243:                                              ; preds = %240
  %244 = load i32, i32* %22, align 4
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %248

246:                                              ; preds = %243
  %247 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  store %struct.TYPE_17__* %247, %struct.TYPE_17__** %18, align 8
  br label %248

248:                                              ; preds = %246, %243
  %249 = load i32, i32* %21, align 4
  %250 = load i32, i32* %22, align 4
  %251 = add nsw i32 %250, %249
  store i32 %251, i32* %22, align 4
  br label %257

252:                                              ; preds = %240
  %253 = load i32, i32* %22, align 4
  %254 = icmp sgt i32 %253, 0
  br i1 %254, label %255, label %256

255:                                              ; preds = %252
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %18, align 8
  store i32 0, i32* %22, align 4
  br label %256

256:                                              ; preds = %255, %252
  br label %257

257:                                              ; preds = %256, %248
  br label %258

258:                                              ; preds = %257, %113, %94
  %259 = load i32, i32* %19, align 4
  %260 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %261 = sext i32 %259 to i64
  %262 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %260, i64 %261
  store %struct.TYPE_17__* %262, %struct.TYPE_17__** %17, align 8
  br label %34

263:                                              ; preds = %85, %42
  %264 = load %struct.mtx*, %struct.mtx** %14, align 8
  %265 = icmp ne %struct.mtx* %264, null
  br i1 %265, label %266, label %269

266:                                              ; preds = %263
  %267 = load %struct.mtx*, %struct.mtx** %14, align 8
  %268 = call i32 @mtx_unlock(%struct.mtx* %267)
  br label %269

269:                                              ; preds = %266, %263
  %270 = load i32, i32* %22, align 4
  %271 = load i32, i32* %8, align 4
  %272 = icmp sge i32 %270, %271
  br i1 %272, label %273, label %275

273:                                              ; preds = %269
  %274 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  store %struct.TYPE_17__* %274, %struct.TYPE_17__** %7, align 8
  br label %276

275:                                              ; preds = %269
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %7, align 8
  br label %276

276:                                              ; preds = %275, %273
  %277 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  ret %struct.TYPE_17__* %277
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @powerof2(i32) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(%struct.TYPE_17__*) #1

declare dso_local i32 @atop(i64) #1

declare dso_local i64 @roundup2(i32, i32) #1

declare dso_local i64 @rounddown2(i32, i32) #1

declare dso_local i32 @ptoa(i32) #1

declare dso_local i32 @vm_page_change_lock(%struct.TYPE_17__*, %struct.mtx**) #1

declare dso_local i64 @vm_page_wired(%struct.TYPE_17__*) #1

declare dso_local i32 @VM_OBJECT_TRYRLOCK(%struct.TYPE_18__*) #1

declare dso_local i32 @mtx_unlock(%struct.mtx*) #1

declare dso_local i32 @VM_OBJECT_RLOCK(%struct.TYPE_18__*) #1

declare dso_local i32 @mtx_lock(%struct.mtx*) #1

declare dso_local i32 @VM_OBJECT_RUNLOCK(%struct.TYPE_18__*) #1

declare dso_local i64 @vm_page_queue(%struct.TYPE_17__*) #1

declare dso_local i32 @vm_page_busied(%struct.TYPE_17__*) #1

declare dso_local i64 @pmap_page_get_memattr(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
