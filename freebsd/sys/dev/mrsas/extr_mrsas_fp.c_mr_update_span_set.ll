; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas_fp.c_mr_update_span_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas_fp.c_mr_update_span_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32, i64, i64 }
%struct.TYPE_24__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_26__ = type { i64, i32 }
%struct.TYPE_19__ = type { i32 }

@MAX_LOGICAL_DRIVES = common dso_local global i32 0, align 4
@MAX_QUAD_DEPTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mr_update_span_set(%struct.TYPE_27__* %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca %struct.TYPE_27__*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca %struct.TYPE_28__*, align 8
  %12 = alloca %struct.TYPE_28__*, align 8
  %13 = alloca %struct.TYPE_25__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %3, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %4, align 8
  store i32 0, i32* %14, align 4
  br label %16

16:                                               ; preds = %291, %2
  %17 = load i32, i32* %14, align 4
  %18 = load i32, i32* @MAX_LOGICAL_DRIVES, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %294

20:                                               ; preds = %16
  %21 = load i32, i32* %14, align 4
  %22 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %23 = call i32 @MR_TargetIdToLdGet(i32 %21, %struct.TYPE_27__* %22)
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %15, align 4
  %25 = load i32, i32* @MAX_LOGICAL_DRIVES, align 4
  %26 = icmp sge i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %291

28:                                               ; preds = %20
  %29 = load i32, i32* %15, align 4
  %30 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %31 = call %struct.TYPE_26__* @MR_LdRaidGet(i32 %29, %struct.TYPE_27__* %30)
  store %struct.TYPE_26__* %31, %struct.TYPE_26__** %10, align 8
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %287, %28
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @MAX_QUAD_DEPTH, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %290

36:                                               ; preds = %32
  store i64 0, i64* %5, align 8
  br label %37

37:                                               ; preds = %276, %36
  %38 = load i64, i64* %5, align 8
  %39 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ult i64 %38, %41
  br i1 %42, label %43, label %279

43:                                               ; preds = %37
  %44 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %46, align 8
  %48 = load i32, i32* %15, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %51, align 8
  %53 = load i64, i64* %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  %60 = icmp slt i32 %57, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %43
  br label %276

62:                                               ; preds = %43
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %64 = load i32, i32* %15, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_28__*, %struct.TYPE_28__** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %68, i64 %70
  store %struct.TYPE_28__* %71, %struct.TYPE_28__** %11, align 8
  %72 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %74, align 8
  %76 = load i32, i32* %15, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %79, align 8
  %81 = load i64, i64* %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %85, i64 %87
  store %struct.TYPE_25__* %88, %struct.TYPE_25__** %13, align 8
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %8, align 4
  br label %94

94:                                               ; preds = %134, %62
  %95 = load i64, i64* %6, align 8
  %96 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ult i64 %95, %98
  br i1 %99, label %100, label %137

100:                                              ; preds = %94
  %101 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %103, align 8
  %105 = load i32, i32* %15, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %108, align 8
  %110 = load i64, i64* %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %115, 1
  %117 = icmp sge i32 %114, %116
  br i1 %117, label %118, label %133

118:                                              ; preds = %100
  %119 = load i32, i32* %8, align 4
  %120 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = load i64, i64* %6, align 8
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  store i32 %119, i32* %124, align 4
  %125 = load i32, i32* %15, align 4
  %126 = load i64, i64* %6, align 8
  %127 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %128 = call %struct.TYPE_19__* @MR_LdSpanPtrGet(i32 %125, i64 %126, %struct.TYPE_27__* %127)
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %8, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %8, align 4
  br label %133

133:                                              ; preds = %118, %100
  br label %134

134:                                              ; preds = %133
  %135 = load i64, i64* %6, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %6, align 8
  br label %94

137:                                              ; preds = %94
  %138 = load i32, i32* %8, align 4
  %139 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %139, i32 0, i32 2
  store i32 %138, i32* %140, align 8
  %141 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %142 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %145 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = sub nsw i64 %143, %146
  %148 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %149 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = sext i32 %150 to i64
  %152 = add nsw i64 %147, %151
  %153 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %154 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @mega_div64_32(i64 %152, i32 %155)
  store i32 %156, i32* %9, align 4
  %157 = load i32, i32* %7, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %196

159:                                              ; preds = %137
  %160 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %161 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %160, i32 0, i32 3
  store i32 0, i32* %161, align 4
  %162 = load i32, i32* %9, align 4
  %163 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = shl i32 %162, %165
  %167 = load i32, i32* %8, align 4
  %168 = mul nsw i32 %166, %167
  %169 = sub nsw i32 %168, 1
  %170 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %171 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %170, i32 0, i32 4
  store i32 %169, i32* %171, align 8
  %172 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %173 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %172, i32 0, i32 5
  store i32 0, i32* %173, align 4
  %174 = load i32, i32* %9, align 4
  %175 = sub nsw i32 %174, 1
  %176 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %177 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %176, i32 0, i32 6
  store i32 %175, i32* %177, align 8
  %178 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %179 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %178, i32 0, i32 7
  store i32 0, i32* %179, align 4
  %180 = load i32, i32* %9, align 4
  %181 = load i32, i32* %8, align 4
  %182 = mul nsw i32 %180, %181
  %183 = sub nsw i32 %182, 1
  %184 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %185 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %184, i32 0, i32 8
  store i32 %183, i32* %185, align 8
  %186 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %187 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %186, i32 0, i32 9
  store i32 0, i32* %187, align 4
  %188 = load i32, i32* %9, align 4
  %189 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %190 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = mul nsw i32 %188, %191
  %193 = sub nsw i32 %192, 1
  %194 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %195 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %194, i32 0, i32 10
  store i32 %193, i32* %195, align 8
  br label %275

196:                                              ; preds = %137
  %197 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %198 = load i32, i32* %15, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %200, i32 0, i32 0
  %202 = load %struct.TYPE_28__*, %struct.TYPE_28__** %201, align 8
  %203 = load i32, i32* %7, align 4
  %204 = sub nsw i32 %203, 1
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %202, i64 %205
  store %struct.TYPE_28__* %206, %struct.TYPE_28__** %12, align 8
  %207 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %208 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %207, i32 0, i32 4
  %209 = load i32, i32* %208, align 8
  %210 = add nsw i32 %209, 1
  %211 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %212 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %211, i32 0, i32 3
  store i32 %210, i32* %212, align 4
  %213 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %214 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* %9, align 4
  %217 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %218 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = shl i32 %216, %219
  %221 = load i32, i32* %8, align 4
  %222 = mul nsw i32 %220, %221
  %223 = add nsw i32 %215, %222
  %224 = sub nsw i32 %223, 1
  %225 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %226 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %225, i32 0, i32 4
  store i32 %224, i32* %226, align 8
  %227 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %228 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %227, i32 0, i32 6
  %229 = load i32, i32* %228, align 8
  %230 = add nsw i32 %229, 1
  %231 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %232 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %231, i32 0, i32 5
  store i32 %230, i32* %232, align 4
  %233 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %234 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %233, i32 0, i32 5
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* %9, align 4
  %237 = add nsw i32 %235, %236
  %238 = sub nsw i32 %237, 1
  %239 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %240 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %239, i32 0, i32 6
  store i32 %238, i32* %240, align 8
  %241 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %242 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %241, i32 0, i32 8
  %243 = load i32, i32* %242, align 8
  %244 = add nsw i32 %243, 1
  %245 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %246 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %245, i32 0, i32 7
  store i32 %244, i32* %246, align 4
  %247 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %248 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %247, i32 0, i32 7
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* %9, align 4
  %251 = load i32, i32* %8, align 4
  %252 = mul nsw i32 %250, %251
  %253 = add nsw i32 %249, %252
  %254 = sub nsw i32 %253, 1
  %255 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %256 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %255, i32 0, i32 8
  store i32 %254, i32* %256, align 8
  %257 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %258 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %257, i32 0, i32 10
  %259 = load i32, i32* %258, align 8
  %260 = add nsw i32 %259, 1
  %261 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %262 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %261, i32 0, i32 9
  store i32 %260, i32* %262, align 4
  %263 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %264 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %263, i32 0, i32 9
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* %9, align 4
  %267 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %268 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = mul nsw i32 %266, %269
  %271 = add nsw i32 %265, %270
  %272 = sub nsw i32 %271, 1
  %273 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %274 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %273, i32 0, i32 10
  store i32 %272, i32* %274, align 8
  br label %275

275:                                              ; preds = %196, %159
  br label %279

276:                                              ; preds = %61
  %277 = load i64, i64* %5, align 8
  %278 = add i64 %277, 1
  store i64 %278, i64* %5, align 8
  br label %37

279:                                              ; preds = %275, %37
  %280 = load i64, i64* %5, align 8
  %281 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %282 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = icmp eq i64 %280, %283
  br i1 %284, label %285, label %286

285:                                              ; preds = %279
  br label %290

286:                                              ; preds = %279
  br label %287

287:                                              ; preds = %286
  %288 = load i32, i32* %7, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %7, align 4
  br label %32

290:                                              ; preds = %285, %32
  br label %291

291:                                              ; preds = %290, %27
  %292 = load i32, i32* %14, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %14, align 4
  br label %16

294:                                              ; preds = %16
  ret void
}

declare dso_local i32 @MR_TargetIdToLdGet(i32, %struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_26__* @MR_LdRaidGet(i32, %struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_19__* @MR_LdSpanPtrGet(i32, i64, %struct.TYPE_27__*) #1

declare dso_local i32 @mega_div64_32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
