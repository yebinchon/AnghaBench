; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_task_switch.c_validate_seg_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_task_switch.c_validate_seg_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }
%struct.vm_task_switch = type { i32, %struct.vm_guest_paging }
%struct.vm_guest_paging = type { i32 }
%struct.seg_desc = type { i32, i64, i64 }
%struct.user_segment_descriptor = type { i32, i32, i32 }

@IDT_TS = common dso_local global i32 0, align 4
@IDT_SS = common dso_local global i32 0, align 4
@IDT_NP = common dso_local global i32 0, align 4
@SEL_RPL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmctx*, i32, %struct.vm_task_switch*, i32, %struct.seg_desc*, i32*)* @validate_seg_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_seg_desc(%struct.vmctx* %0, i32 %1, %struct.vm_task_switch* %2, i32 %3, %struct.seg_desc* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.vmctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.vm_task_switch*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.seg_desc*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.vm_guest_paging, align 4
  %15 = alloca %struct.user_segment_descriptor, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.seg_desc, align 8
  store %struct.vmctx* %0, %struct.vmctx** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.vm_task_switch* %2, %struct.vm_task_switch** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.seg_desc* %4, %struct.seg_desc** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %26, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %23, align 4
  %29 = load i32, i32* %11, align 4
  switch i32 %29, label %34 [
    i32 129, label %30
    i32 134, label %31
    i32 128, label %32
    i32 133, label %33
    i32 132, label %33
    i32 131, label %33
    i32 130, label %33
  ]

30:                                               ; preds = %6
  store i32 1, i32* %23, align 4
  br label %36

31:                                               ; preds = %6
  store i32 1, i32* %24, align 4
  br label %36

32:                                               ; preds = %6
  store i32 1, i32* %25, align 4
  br label %36

33:                                               ; preds = %6, %6, %6, %6
  store i32 1, i32* %26, align 4
  br label %36

34:                                               ; preds = %6
  %35 = call i32 @assert(i32 0)
  br label %36

36:                                               ; preds = %34, %33, %32, %31, %30
  %37 = load %struct.vmctx*, %struct.vmctx** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @GETREG(%struct.vmctx* %37, i32 %38, i32 %39)
  store i32 %40, i32* %21, align 4
  %41 = load i32, i32* %23, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %36
  %44 = load i32, i32* %21, align 4
  %45 = call i64 @ISLDT(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  %48 = load %struct.vmctx*, %struct.vmctx** %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @IDT_TS, align 4
  %51 = load i32, i32* %21, align 4
  %52 = load %struct.vm_task_switch*, %struct.vm_task_switch** %10, align 8
  %53 = getelementptr inbounds %struct.vm_task_switch, %struct.vm_task_switch* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @sel_exception(%struct.vmctx* %48, i32 %49, i32 %50, i32 %51, i32 %54)
  store i32 1, i32* %7, align 4
  br label %287

56:                                               ; preds = %43, %36
  %57 = load %struct.vmctx*, %struct.vmctx** %8, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %21, align 4
  %60 = call i64 @desc_table_limit_check(%struct.vmctx* %57, i32 %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %56
  %63 = load %struct.vmctx*, %struct.vmctx** %8, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @IDT_TS, align 4
  %66 = load i32, i32* %21, align 4
  %67 = load %struct.vm_task_switch*, %struct.vm_task_switch** %10, align 8
  %68 = getelementptr inbounds %struct.vm_task_switch, %struct.vm_task_switch* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @sel_exception(%struct.vmctx* %63, i32 %64, i32 %65, i32 %66, i32 %69)
  store i32 1, i32* %7, align 4
  br label %287

71:                                               ; preds = %56
  %72 = load i32, i32* %21, align 4
  %73 = call i64 @IDXSEL(i32 %72)
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %97

75:                                               ; preds = %71
  %76 = load i32, i32* %24, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %25, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %78, %75
  %82 = load %struct.vmctx*, %struct.vmctx** %8, align 8
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @IDT_TS, align 4
  %85 = load i32, i32* %21, align 4
  %86 = load %struct.vm_task_switch*, %struct.vm_task_switch** %10, align 8
  %87 = getelementptr inbounds %struct.vm_task_switch, %struct.vm_task_switch* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @sel_exception(%struct.vmctx* %82, i32 %83, i32 %84, i32 %85, i32 %88)
  store i32 1, i32* %7, align 4
  br label %287

90:                                               ; preds = %78
  %91 = load %struct.seg_desc*, %struct.seg_desc** %12, align 8
  %92 = getelementptr inbounds %struct.seg_desc, %struct.seg_desc* %91, i32 0, i32 2
  store i64 0, i64* %92, align 8
  %93 = load %struct.seg_desc*, %struct.seg_desc** %12, align 8
  %94 = getelementptr inbounds %struct.seg_desc, %struct.seg_desc* %93, i32 0, i32 1
  store i64 0, i64* %94, align 8
  %95 = load %struct.seg_desc*, %struct.seg_desc** %12, align 8
  %96 = getelementptr inbounds %struct.seg_desc, %struct.seg_desc* %95, i32 0, i32 0
  store i32 65536, i32* %96, align 8
  store i32 0, i32* %7, align 4
  br label %287

97:                                               ; preds = %71
  %98 = load %struct.vm_task_switch*, %struct.vm_task_switch** %10, align 8
  %99 = getelementptr inbounds %struct.vm_task_switch, %struct.vm_task_switch* %98, i32 0, i32 1
  %100 = bitcast %struct.vm_guest_paging* %14 to i8*
  %101 = bitcast %struct.vm_guest_paging* %99 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %100, i8* align 4 %101, i64 4, i1 false)
  %102 = getelementptr inbounds %struct.vm_guest_paging, %struct.vm_guest_paging* %14, i32 0, i32 0
  store i32 0, i32* %102, align 4
  %103 = load %struct.vmctx*, %struct.vmctx** %8, align 8
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %21, align 4
  %106 = load i32*, i32** %13, align 8
  %107 = call i32 @desc_table_read(%struct.vmctx* %103, i32 %104, %struct.vm_guest_paging* %14, i32 %105, %struct.user_segment_descriptor* %15, i32* %106)
  store i32 %107, i32* %16, align 4
  %108 = load i32, i32* %16, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %97
  %111 = load i32*, i32** %13, align 8
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %110, %97
  %115 = load i32, i32* %16, align 4
  store i32 %115, i32* %7, align 4
  br label %287

116:                                              ; preds = %110
  %117 = load i32, i32* %23, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.user_segment_descriptor, %struct.user_segment_descriptor* %15, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @ldt_desc(i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %148

124:                                              ; preds = %119, %116
  %125 = load i32, i32* %24, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.user_segment_descriptor, %struct.user_segment_descriptor* %15, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i64 @code_desc(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %148

132:                                              ; preds = %127, %124
  %133 = load i32, i32* %26, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct.user_segment_descriptor, %struct.user_segment_descriptor* %15, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @data_desc(i32 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %135, %132
  %141 = load i32, i32* %25, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %157

143:                                              ; preds = %140
  %144 = getelementptr inbounds %struct.user_segment_descriptor, %struct.user_segment_descriptor* %15, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @stack_desc(i32 %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %157, label %148

148:                                              ; preds = %143, %135, %127, %119
  %149 = load %struct.vmctx*, %struct.vmctx** %8, align 8
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* @IDT_TS, align 4
  %152 = load i32, i32* %21, align 4
  %153 = load %struct.vm_task_switch*, %struct.vm_task_switch** %10, align 8
  %154 = getelementptr inbounds %struct.vm_task_switch, %struct.vm_task_switch* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @sel_exception(%struct.vmctx* %149, i32 %150, i32 %151, i32 %152, i32 %155)
  store i32 1, i32* %7, align 4
  br label %287

157:                                              ; preds = %143, %140
  %158 = getelementptr inbounds %struct.user_segment_descriptor, %struct.user_segment_descriptor* %15, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %183, label %161

161:                                              ; preds = %157
  %162 = load i32, i32* %23, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %161
  %165 = load i32, i32* @IDT_TS, align 4
  store i32 %165, i32* %17, align 4
  br label %174

166:                                              ; preds = %161
  %167 = load i32, i32* %25, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %166
  %170 = load i32, i32* @IDT_SS, align 4
  store i32 %170, i32* %17, align 4
  br label %173

171:                                              ; preds = %166
  %172 = load i32, i32* @IDT_NP, align 4
  store i32 %172, i32* %17, align 4
  br label %173

173:                                              ; preds = %171, %169
  br label %174

174:                                              ; preds = %173, %164
  %175 = load %struct.vmctx*, %struct.vmctx** %8, align 8
  %176 = load i32, i32* %9, align 4
  %177 = load i32, i32* %17, align 4
  %178 = load i32, i32* %21, align 4
  %179 = load %struct.vm_task_switch*, %struct.vm_task_switch** %10, align 8
  %180 = getelementptr inbounds %struct.vm_task_switch, %struct.vm_task_switch* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @sel_exception(%struct.vmctx* %175, i32 %176, i32 %177, i32 %178, i32 %181)
  store i32 1, i32* %7, align 4
  br label %287

183:                                              ; preds = %157
  %184 = load %struct.vmctx*, %struct.vmctx** %8, align 8
  %185 = load i32, i32* %9, align 4
  %186 = call i32 @GETREG(%struct.vmctx* %184, i32 %185, i32 134)
  store i32 %186, i32* %22, align 4
  %187 = load i32, i32* %22, align 4
  %188 = load i32, i32* @SEL_RPL_MASK, align 4
  %189 = and i32 %187, %188
  store i32 %189, i32* %18, align 4
  %190 = load i32, i32* %21, align 4
  %191 = load i32, i32* @SEL_RPL_MASK, align 4
  %192 = and i32 %190, %191
  store i32 %192, i32* %20, align 4
  %193 = getelementptr inbounds %struct.user_segment_descriptor, %struct.user_segment_descriptor* %15, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  store i32 %194, i32* %19, align 4
  %195 = load i32, i32* %25, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %214

197:                                              ; preds = %183
  %198 = load i32, i32* %20, align 4
  %199 = load i32, i32* %18, align 4
  %200 = icmp ne i32 %198, %199
  br i1 %200, label %205, label %201

201:                                              ; preds = %197
  %202 = load i32, i32* %19, align 4
  %203 = load i32, i32* %18, align 4
  %204 = icmp ne i32 %202, %203
  br i1 %204, label %205, label %214

205:                                              ; preds = %201, %197
  %206 = load %struct.vmctx*, %struct.vmctx** %8, align 8
  %207 = load i32, i32* %9, align 4
  %208 = load i32, i32* @IDT_TS, align 4
  %209 = load i32, i32* %21, align 4
  %210 = load %struct.vm_task_switch*, %struct.vm_task_switch** %10, align 8
  %211 = getelementptr inbounds %struct.vm_task_switch, %struct.vm_task_switch* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @sel_exception(%struct.vmctx* %206, i32 %207, i32 %208, i32 %209, i32 %212)
  store i32 1, i32* %7, align 4
  br label %287

214:                                              ; preds = %201, %183
  %215 = load i32, i32* %24, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %247

217:                                              ; preds = %214
  %218 = getelementptr inbounds %struct.user_segment_descriptor, %struct.user_segment_descriptor* %15, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = and i32 %219, 4
  %221 = icmp ne i32 %220, 0
  %222 = zext i1 %221 to i64
  %223 = select i1 %221, i32 1, i32 0
  store i32 %223, i32* %27, align 4
  %224 = load i32, i32* %27, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %217
  %227 = load i32, i32* %18, align 4
  %228 = load i32, i32* %19, align 4
  %229 = icmp slt i32 %227, %228
  br i1 %229, label %237, label %230

230:                                              ; preds = %226, %217
  %231 = load i32, i32* %27, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %246, label %233

233:                                              ; preds = %230
  %234 = load i32, i32* %18, align 4
  %235 = load i32, i32* %19, align 4
  %236 = icmp ne i32 %234, %235
  br i1 %236, label %237, label %246

237:                                              ; preds = %233, %226
  %238 = load %struct.vmctx*, %struct.vmctx** %8, align 8
  %239 = load i32, i32* %9, align 4
  %240 = load i32, i32* @IDT_TS, align 4
  %241 = load i32, i32* %21, align 4
  %242 = load %struct.vm_task_switch*, %struct.vm_task_switch** %10, align 8
  %243 = getelementptr inbounds %struct.vm_task_switch, %struct.vm_task_switch* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @sel_exception(%struct.vmctx* %238, i32 %239, i32 %240, i32 %241, i32 %244)
  store i32 1, i32* %7, align 4
  br label %287

246:                                              ; preds = %233, %230
  br label %247

247:                                              ; preds = %246, %214
  %248 = load i32, i32* %26, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %283

250:                                              ; preds = %247
  %251 = getelementptr inbounds %struct.user_segment_descriptor, %struct.user_segment_descriptor* %15, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = call i64 @code_desc(i32 %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %261

255:                                              ; preds = %250
  %256 = getelementptr inbounds %struct.user_segment_descriptor, %struct.user_segment_descriptor* %15, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = and i32 %257, 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %255
  store i32 1, i32* %27, align 4
  br label %262

261:                                              ; preds = %255, %250
  store i32 0, i32* %27, align 4
  br label %262

262:                                              ; preds = %261, %260
  %263 = load i32, i32* %27, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %282, label %265

265:                                              ; preds = %262
  %266 = load i32, i32* %20, align 4
  %267 = load i32, i32* %19, align 4
  %268 = icmp sgt i32 %266, %267
  br i1 %268, label %273, label %269

269:                                              ; preds = %265
  %270 = load i32, i32* %18, align 4
  %271 = load i32, i32* %19, align 4
  %272 = icmp sgt i32 %270, %271
  br i1 %272, label %273, label %282

273:                                              ; preds = %269, %265
  %274 = load %struct.vmctx*, %struct.vmctx** %8, align 8
  %275 = load i32, i32* %9, align 4
  %276 = load i32, i32* @IDT_TS, align 4
  %277 = load i32, i32* %21, align 4
  %278 = load %struct.vm_task_switch*, %struct.vm_task_switch** %10, align 8
  %279 = getelementptr inbounds %struct.vm_task_switch, %struct.vm_task_switch* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = call i32 @sel_exception(%struct.vmctx* %274, i32 %275, i32 %276, i32 %277, i32 %280)
  store i32 1, i32* %7, align 4
  br label %287

282:                                              ; preds = %269, %262
  br label %283

283:                                              ; preds = %282, %247
  %284 = load %struct.seg_desc*, %struct.seg_desc** %12, align 8
  call void @usd_to_seg_desc(%struct.seg_desc* sret %28, %struct.user_segment_descriptor* %15)
  %285 = bitcast %struct.seg_desc* %284 to i8*
  %286 = bitcast %struct.seg_desc* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %285, i8* align 8 %286, i64 24, i1 false)
  store i32 0, i32* %7, align 4
  br label %287

287:                                              ; preds = %283, %273, %237, %205, %174, %148, %114, %90, %81, %62, %47
  %288 = load i32, i32* %7, align 4
  ret i32 %288
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @GETREG(%struct.vmctx*, i32, i32) #1

declare dso_local i64 @ISLDT(i32) #1

declare dso_local i32 @sel_exception(%struct.vmctx*, i32, i32, i32, i32) #1

declare dso_local i64 @desc_table_limit_check(%struct.vmctx*, i32, i32) #1

declare dso_local i64 @IDXSEL(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @desc_table_read(%struct.vmctx*, i32, %struct.vm_guest_paging*, i32, %struct.user_segment_descriptor*, i32*) #1

declare dso_local i32 @ldt_desc(i32) #1

declare dso_local i64 @code_desc(i32) #1

declare dso_local i32 @data_desc(i32) #1

declare dso_local i32 @stack_desc(i32) #1

declare dso_local void @usd_to_seg_desc(%struct.seg_desc* sret, %struct.user_segment_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
