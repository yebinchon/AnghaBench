; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_refill_fl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_refill_fl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.sw_zone_info* }
%struct.sw_zone_info = type { i32 }
%struct.sge_fl = type { i32, i32, i32, i32, i32, i32*, %struct.fl_sdesc*, i32, %struct.cluster_layout, %struct.cluster_layout, i32, i32 }
%struct.fl_sdesc = type { i64, %struct.cluster_layout, i32* }
%struct.cluster_layout = type { i64, i64, i64 }
%struct.cluster_metadata = type { i32, %struct.fl_sdesc* }

@extfree_rels = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@FL_STARVING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.sge_fl*, i32)* @refill_fl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @refill_fl(%struct.adapter* %0, %struct.sge_fl* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca %struct.sge_fl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.fl_sdesc*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.cluster_layout*, align 8
  %13 = alloca %struct.sw_zone_info*, align 8
  %14 = alloca %struct.cluster_metadata*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store %struct.sge_fl* %1, %struct.sge_fl** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %19 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %16, align 4
  %21 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %22 = call i32 @FL_LOCK_ASSERT_OWNED(%struct.sge_fl* %21)
  %23 = load i32, i32* %16, align 4
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i64 @__predict_false(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %3
  %29 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %30 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %31, 1
  br label %36

33:                                               ; preds = %3
  %34 = load i32, i32* %16, align 4
  %35 = sub nsw i32 %34, 1
  br label %36

36:                                               ; preds = %33, %28
  %37 = phi i32 [ %32, %28 ], [ %35, %33 ]
  store i32 %37, i32* %15, align 4
  %38 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %39 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %15, align 4
  %42 = mul nsw i32 %41, 8
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %297

45:                                               ; preds = %36
  %46 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %47 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %46, i32 0, i32 5
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %50 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %48, i64 %52
  store i32* %53, i32** %8, align 8
  %54 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %55 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %54, i32 0, i32 6
  %56 = load %struct.fl_sdesc*, %struct.fl_sdesc** %55, align 8
  %57 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %58 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.fl_sdesc, %struct.fl_sdesc* %56, i64 %60
  store %struct.fl_sdesc* %61, %struct.fl_sdesc** %9, align 8
  %62 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %63 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %62, i32 0, i32 9
  store %struct.cluster_layout* %63, %struct.cluster_layout** %12, align 8
  %64 = load %struct.adapter*, %struct.adapter** %5, align 8
  %65 = getelementptr inbounds %struct.adapter, %struct.adapter* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load %struct.sw_zone_info*, %struct.sw_zone_info** %66, align 8
  %68 = load %struct.cluster_layout*, %struct.cluster_layout** %12, align 8
  %69 = getelementptr inbounds %struct.cluster_layout, %struct.cluster_layout* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.sw_zone_info, %struct.sw_zone_info* %67, i64 %70
  store %struct.sw_zone_info* %71, %struct.sw_zone_info** %13, align 8
  br label %72

72:                                               ; preds = %268, %45
  %73 = load i32, i32* %7, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %269

75:                                               ; preds = %72
  %76 = load %struct.fl_sdesc*, %struct.fl_sdesc** %9, align 8
  %77 = getelementptr inbounds %struct.fl_sdesc, %struct.fl_sdesc* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %117

80:                                               ; preds = %75
  %81 = load %struct.fl_sdesc*, %struct.fl_sdesc** %9, align 8
  %82 = getelementptr inbounds %struct.fl_sdesc, %struct.fl_sdesc* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %87 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %86, i32 0, i32 11
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 4
  br label %212

90:                                               ; preds = %80
  %91 = load %struct.adapter*, %struct.adapter** %5, align 8
  %92 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %93 = load %struct.fl_sdesc*, %struct.fl_sdesc** %9, align 8
  %94 = getelementptr inbounds %struct.fl_sdesc, %struct.fl_sdesc* %93, i32 0, i32 1
  %95 = load %struct.fl_sdesc*, %struct.fl_sdesc** %9, align 8
  %96 = getelementptr inbounds %struct.fl_sdesc, %struct.fl_sdesc* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = call %struct.cluster_metadata* @cl_metadata(%struct.adapter* %91, %struct.sge_fl* %92, %struct.cluster_layout* %94, i32* %97)
  store %struct.cluster_metadata* %98, %struct.cluster_metadata** %14, align 8
  %99 = load %struct.cluster_metadata*, %struct.cluster_metadata** %14, align 8
  %100 = icmp ne %struct.cluster_metadata* %99, null
  %101 = zext i1 %100 to i32
  %102 = call i32 @MPASS(i32 %101)
  %103 = load %struct.cluster_metadata*, %struct.cluster_metadata** %14, align 8
  %104 = getelementptr inbounds %struct.cluster_metadata, %struct.cluster_metadata* %103, i32 0, i32 0
  %105 = call i32 @atomic_fetchadd_int(i32* %104, i32 -1)
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %114

107:                                              ; preds = %90
  %108 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %109 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %108, i32 0, i32 10
  %110 = load i32, i32* %109, align 8
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 8
  %112 = load i32, i32* @extfree_rels, align 4
  %113 = call i32 @counter_u64_add(i32 %112, i32 1)
  br label %206

114:                                              ; preds = %90
  %115 = load %struct.fl_sdesc*, %struct.fl_sdesc** %9, align 8
  %116 = getelementptr inbounds %struct.fl_sdesc, %struct.fl_sdesc* %115, i32 0, i32 2
  store i32* null, i32** %116, align 8
  br label %117

117:                                              ; preds = %114, %75
  %118 = load %struct.fl_sdesc*, %struct.fl_sdesc** %9, align 8
  %119 = getelementptr inbounds %struct.fl_sdesc, %struct.fl_sdesc* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = icmp eq i32* %120, null
  %122 = zext i1 %121 to i32
  %123 = call i32 @MPASS(i32 %122)
  br label %124

124:                                              ; preds = %157, %117
  %125 = load %struct.sw_zone_info*, %struct.sw_zone_info** %13, align 8
  %126 = getelementptr inbounds %struct.sw_zone_info, %struct.sw_zone_info* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @M_NOWAIT, align 4
  %129 = call i32* @uma_zalloc(i32 %127, i32 %128)
  store i32* %129, i32** %11, align 8
  %130 = load i32*, i32** %11, align 8
  %131 = icmp eq i32* %130, null
  %132 = zext i1 %131 to i32
  %133 = call i64 @__predict_false(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %168

135:                                              ; preds = %124
  %136 = load %struct.cluster_layout*, %struct.cluster_layout** %12, align 8
  %137 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %138 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %137, i32 0, i32 8
  %139 = icmp eq %struct.cluster_layout* %136, %138
  br i1 %139, label %156, label %140

140:                                              ; preds = %135
  %141 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %142 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %141, i32 0, i32 8
  %143 = getelementptr inbounds %struct.cluster_layout, %struct.cluster_layout* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp eq i64 %144, -1
  br i1 %145, label %156, label %146

146:                                              ; preds = %140
  %147 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %148 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %147, i32 0, i32 9
  %149 = getelementptr inbounds %struct.cluster_layout, %struct.cluster_layout* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %152 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %151, i32 0, i32 8
  %153 = getelementptr inbounds %struct.cluster_layout, %struct.cluster_layout* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp eq i64 %150, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %146, %140, %135
  br label %269

157:                                              ; preds = %146
  %158 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %159 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %158, i32 0, i32 8
  store %struct.cluster_layout* %159, %struct.cluster_layout** %12, align 8
  %160 = load %struct.adapter*, %struct.adapter** %5, align 8
  %161 = getelementptr inbounds %struct.adapter, %struct.adapter* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 0
  %163 = load %struct.sw_zone_info*, %struct.sw_zone_info** %162, align 8
  %164 = load %struct.cluster_layout*, %struct.cluster_layout** %12, align 8
  %165 = getelementptr inbounds %struct.cluster_layout, %struct.cluster_layout* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = getelementptr inbounds %struct.sw_zone_info, %struct.sw_zone_info* %163, i64 %166
  store %struct.sw_zone_info* %167, %struct.sw_zone_info** %13, align 8
  br label %124

168:                                              ; preds = %124
  %169 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %170 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %169, i32 0, i32 7
  %171 = load i32, i32* %170, align 8
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %170, align 8
  %173 = load i32, i32* %7, align 4
  %174 = add nsw i32 %173, -1
  store i32 %174, i32* %7, align 4
  %175 = load i32*, i32** %11, align 8
  %176 = ptrtoint i32* %175 to i32
  %177 = call i64 @pmap_kextract(i32 %176)
  store i64 %177, i64* %10, align 8
  %178 = load %struct.cluster_layout*, %struct.cluster_layout** %12, align 8
  %179 = getelementptr inbounds %struct.cluster_layout, %struct.cluster_layout* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* %10, align 8
  %182 = add i64 %181, %180
  store i64 %182, i64* %10, align 8
  %183 = load i32*, i32** %11, align 8
  %184 = load %struct.fl_sdesc*, %struct.fl_sdesc** %9, align 8
  %185 = getelementptr inbounds %struct.fl_sdesc, %struct.fl_sdesc* %184, i32 0, i32 2
  store i32* %183, i32** %185, align 8
  %186 = load %struct.fl_sdesc*, %struct.fl_sdesc** %9, align 8
  %187 = getelementptr inbounds %struct.fl_sdesc, %struct.fl_sdesc* %186, i32 0, i32 1
  %188 = load %struct.cluster_layout*, %struct.cluster_layout** %12, align 8
  %189 = bitcast %struct.cluster_layout* %187 to i8*
  %190 = bitcast %struct.cluster_layout* %188 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %189, i8* align 8 %190, i64 24, i1 false)
  %191 = load i64, i64* %10, align 8
  %192 = load %struct.cluster_layout*, %struct.cluster_layout** %12, align 8
  %193 = getelementptr inbounds %struct.cluster_layout, %struct.cluster_layout* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = or i64 %191, %194
  %196 = call i32 @htobe64(i64 %195)
  %197 = load i32*, i32** %8, align 8
  store i32 %196, i32* %197, align 4
  %198 = load %struct.adapter*, %struct.adapter** %5, align 8
  %199 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %200 = load %struct.cluster_layout*, %struct.cluster_layout** %12, align 8
  %201 = load i32*, i32** %11, align 8
  %202 = call %struct.cluster_metadata* @cl_metadata(%struct.adapter* %198, %struct.sge_fl* %199, %struct.cluster_layout* %200, i32* %201)
  store %struct.cluster_metadata* %202, %struct.cluster_metadata** %14, align 8
  %203 = load %struct.cluster_metadata*, %struct.cluster_metadata** %14, align 8
  %204 = icmp ne %struct.cluster_metadata* %203, null
  br i1 %204, label %205, label %209

205:                                              ; preds = %168
  br label %206

206:                                              ; preds = %205, %107
  %207 = load %struct.cluster_metadata*, %struct.cluster_metadata** %14, align 8
  %208 = getelementptr inbounds %struct.cluster_metadata, %struct.cluster_metadata* %207, i32 0, i32 0
  store i32 1, i32* %208, align 8
  br label %209

209:                                              ; preds = %206, %168
  %210 = load %struct.fl_sdesc*, %struct.fl_sdesc** %9, align 8
  %211 = getelementptr inbounds %struct.fl_sdesc, %struct.fl_sdesc* %210, i32 0, i32 0
  store i64 0, i64* %211, align 8
  br label %212

212:                                              ; preds = %209, %85
  %213 = load i32*, i32** %8, align 8
  %214 = getelementptr inbounds i32, i32* %213, i32 1
  store i32* %214, i32** %8, align 8
  %215 = load %struct.fl_sdesc*, %struct.fl_sdesc** %9, align 8
  %216 = getelementptr inbounds %struct.fl_sdesc, %struct.fl_sdesc* %215, i32 1
  store %struct.fl_sdesc* %216, %struct.fl_sdesc** %9, align 8
  %217 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %218 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %218, align 8
  %221 = srem i32 %220, 8
  %222 = icmp eq i32 %221, 0
  %223 = zext i1 %222 to i32
  %224 = call i64 @__predict_false(i32 %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %268

226:                                              ; preds = %212
  %227 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %228 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = sdiv i32 %229, 8
  store i32 %230, i32* %17, align 4
  %231 = load i32, i32* %17, align 4
  %232 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %233 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = icmp eq i32 %231, %234
  %236 = zext i1 %235 to i32
  %237 = call i64 @__predict_false(i32 %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %248

239:                                              ; preds = %226
  %240 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %241 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %240, i32 0, i32 2
  store i32 0, i32* %241, align 8
  store i32 0, i32* %17, align 4
  %242 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %243 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %242, i32 0, i32 6
  %244 = load %struct.fl_sdesc*, %struct.fl_sdesc** %243, align 8
  store %struct.fl_sdesc* %244, %struct.fl_sdesc** %9, align 8
  %245 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %246 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %245, i32 0, i32 5
  %247 = load i32*, i32** %246, align 8
  store i32* %247, i32** %8, align 8
  br label %248

248:                                              ; preds = %239, %226
  %249 = load i32, i32* %17, align 4
  %250 = load i32, i32* %15, align 4
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %252, label %253

252:                                              ; preds = %248
  br label %269

253:                                              ; preds = %248
  %254 = load i32, i32* %17, align 4
  %255 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %256 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %259 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @IDXDIFF(i32 %254, i32 %257, i32 %260)
  %262 = icmp sge i32 %261, 4
  br i1 %262, label %263, label %267

263:                                              ; preds = %253
  %264 = load %struct.adapter*, %struct.adapter** %5, align 8
  %265 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %266 = call i32 @ring_fl_db(%struct.adapter* %264, %struct.sge_fl* %265)
  br label %267

267:                                              ; preds = %263, %253
  br label %268

268:                                              ; preds = %267, %212
  br label %72

269:                                              ; preds = %252, %156, %72
  %270 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %271 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 8
  %273 = sdiv i32 %272, 8
  %274 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %275 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %274, i32 0, i32 3
  %276 = load i32, i32* %275, align 4
  %277 = icmp ne i32 %273, %276
  br i1 %277, label %278, label %282

278:                                              ; preds = %269
  %279 = load %struct.adapter*, %struct.adapter** %5, align 8
  %280 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %281 = call i32 @ring_fl_db(%struct.adapter* %279, %struct.sge_fl* %280)
  br label %282

282:                                              ; preds = %278, %269
  %283 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %284 = call i64 @FL_RUNNING_LOW(%struct.sge_fl* %283)
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %294

286:                                              ; preds = %282
  %287 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %288 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %287, i32 0, i32 4
  %289 = load i32, i32* %288, align 8
  %290 = load i32, i32* @FL_STARVING, align 4
  %291 = and i32 %289, %290
  %292 = icmp ne i32 %291, 0
  %293 = xor i1 %292, true
  br label %294

294:                                              ; preds = %286, %282
  %295 = phi i1 [ false, %282 ], [ %293, %286 ]
  %296 = zext i1 %295 to i32
  store i32 %296, i32* %4, align 4
  br label %297

297:                                              ; preds = %294, %44
  %298 = load i32, i32* %4, align 4
  ret i32 %298
}

declare dso_local i32 @FL_LOCK_ASSERT_OWNED(%struct.sge_fl*) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local %struct.cluster_metadata* @cl_metadata(%struct.adapter*, %struct.sge_fl*, %struct.cluster_layout*, i32*) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @atomic_fetchadd_int(i32*, i32) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

declare dso_local i32* @uma_zalloc(i32, i32) #1

declare dso_local i64 @pmap_kextract(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @htobe64(i64) #1

declare dso_local i32 @IDXDIFF(i32, i32, i32) #1

declare dso_local i32 @ring_fl_db(%struct.adapter*, %struct.sge_fl*) #1

declare dso_local i64 @FL_RUNNING_LOW(%struct.sge_fl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
