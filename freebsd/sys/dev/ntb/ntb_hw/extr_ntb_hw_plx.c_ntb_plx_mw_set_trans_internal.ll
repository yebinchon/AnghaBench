; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_plx.c_ntb_plx_mw_set_trans_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_plx.c_ntb_plx_mw_set_trans_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_plx_softc = type { i32, i32, i32, i32, i32, i32, i64, %struct.ntb_plx_mw_info* }
%struct.ntb_plx_mw_info = type { i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@UINT64_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ntb_plx_mw_set_trans_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntb_plx_mw_set_trans_internal(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ntb_plx_softc*, align 8
  %7 = alloca %struct.ntb_plx_mw_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call %struct.ntb_plx_softc* @device_get_softc(i32 %19)
  store %struct.ntb_plx_softc* %20, %struct.ntb_plx_softc** %6, align 8
  %21 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %6, align 8
  %22 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %21, i32 0, i32 7
  %23 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %23, i64 %25
  store %struct.ntb_plx_mw_info* %26, %struct.ntb_plx_mw_info** %7, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %6, align 8
  %29 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %27, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %2
  %33 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %6, align 8
  %34 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  br label %37

36:                                               ; preds = %2
  br label %37

37:                                               ; preds = %36, %32
  %38 = phi i32 [ %35, %32 ], [ 0, %36 ]
  store i32 %38, i32* %10, align 4
  %39 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %7, align 8
  %40 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %6, align 8
  %45 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  br label %48

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %47, %43
  %49 = phi i32 [ %46, %43 ], [ 0, %47 ]
  store i32 %49, i32* %18, align 4
  %50 = load i32, i32* %18, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %48
  %53 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %6, align 8
  %54 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ult i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52, %48
  %58 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %7, align 8
  %59 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %10, align 4
  %62 = sub nsw i32 %60, %61
  store i32 %62, i32* %12, align 4
  br label %86

63:                                               ; preds = %52
  %64 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %7, align 8
  %65 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %64, i32 0, i32 2
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @powerof2(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %63
  %74 = load i32, i32* %12, align 4
  %75 = call i64 @flsll(i32 %74)
  %76 = shl i64 1, %75
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %12, align 4
  br label %78

78:                                               ; preds = %73, %63
  %79 = load i32, i32* %12, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load i32, i32* %12, align 4
  %83 = icmp slt i32 %82, 1048576
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  store i32 1048576, i32* %12, align 4
  br label %85

85:                                               ; preds = %84, %81, %78
  br label %86

86:                                               ; preds = %85, %57
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %12, align 4
  %89 = sub nsw i32 %88, 1
  %90 = and i32 %87, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  %93 = load i32, i32* @EINVAL, align 4
  store i32 %93, i32* %3, align 4
  br label %413

94:                                               ; preds = %86
  %95 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %6, align 8
  %96 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp uge i32 %97, 0
  br i1 %98, label %99, label %160

99:                                               ; preds = %94
  %100 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %7, align 8
  %101 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %160

104:                                              ; preds = %99
  store i32 0, i32* %14, align 4
  %105 = load i32, i32* %12, align 4
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %104
  %108 = load i32, i32* %12, align 4
  %109 = sub nsw i32 %108, 1
  %110 = xor i32 %109, -1
  %111 = and i32 %110, -1048576
  store i32 %111, i32* %14, align 4
  br label %112

112:                                              ; preds = %107, %104
  %113 = load i32, i32* %14, align 4
  %114 = or i32 %113, 12
  store i32 %114, i32* %14, align 4
  %115 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %6, align 8
  %116 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %7, align 8
  %117 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sub nsw i32 %118, 2
  %120 = mul nsw i32 %119, 4
  %121 = add nsw i32 232, %120
  %122 = load i32, i32* %14, align 4
  %123 = call i32 @PNTX_WRITE(%struct.ntb_plx_softc* %115, i32 %121, i32 %122)
  %124 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %6, align 8
  %125 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %7, align 8
  %126 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = sub nsw i32 %127, 2
  %129 = mul nsw i32 %128, 4
  %130 = add nsw i32 232, %129
  %131 = add nsw i32 %130, 4
  %132 = load i32, i32* %14, align 4
  %133 = ashr i32 %132, 32
  %134 = call i32 @PNTX_WRITE(%struct.ntb_plx_softc* %124, i32 %131, i32 %133)
  %135 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %7, align 8
  %136 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = sext i32 %137 to i64
  %139 = mul nsw i64 2305843009213693952, %138
  %140 = load i32, i32* %10, align 4
  %141 = sext i32 %140 to i64
  %142 = add nsw i64 %139, %141
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %14, align 4
  %144 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %6, align 8
  %145 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %7, align 8
  %146 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @PCIR_BAR(i32 %147)
  %149 = load i32, i32* %14, align 4
  %150 = call i32 @PNTX_WRITE(%struct.ntb_plx_softc* %144, i32 %148, i32 %149)
  %151 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %6, align 8
  %152 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %7, align 8
  %153 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @PCIR_BAR(i32 %154)
  %156 = add nsw i32 %155, 4
  %157 = load i32, i32* %14, align 4
  %158 = ashr i32 %157, 32
  %159 = call i32 @PNTX_WRITE(%struct.ntb_plx_softc* %151, i32 %156, i32 %158)
  br label %197

160:                                              ; preds = %99, %94
  %161 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %6, align 8
  %162 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = icmp uge i32 %163, 0
  br i1 %164, label %165, label %196

165:                                              ; preds = %160
  store i32 0, i32* %15, align 4
  %166 = load i32, i32* %12, align 4
  %167 = icmp sgt i32 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %165
  %169 = load i32, i32* %12, align 4
  %170 = sub nsw i32 %169, 1
  %171 = xor i32 %170, -1
  %172 = and i32 %171, -1048576
  store i32 %172, i32* %15, align 4
  br label %173

173:                                              ; preds = %168, %165
  %174 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %6, align 8
  %175 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %7, align 8
  %176 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = sub nsw i32 %177, 2
  %179 = mul nsw i32 %178, 4
  %180 = add nsw i32 232, %179
  %181 = load i32, i32* %15, align 4
  %182 = call i32 @PNTX_WRITE(%struct.ntb_plx_softc* %174, i32 %180, i32 %181)
  %183 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %7, align 8
  %184 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = mul nsw i32 536870912, %185
  %187 = load i32, i32* %10, align 4
  %188 = add nsw i32 %186, %187
  store i32 %188, i32* %14, align 4
  %189 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %6, align 8
  %190 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %7, align 8
  %191 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @PCIR_BAR(i32 %192)
  %194 = load i32, i32* %14, align 4
  %195 = call i32 @PNTX_WRITE(%struct.ntb_plx_softc* %189, i32 %193, i32 %194)
  br label %196

196:                                              ; preds = %173, %160
  br label %197

197:                                              ; preds = %196, %112
  %198 = load i32, i32* %18, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %197
  %201 = load i32, i32* @UINT64_MAX, align 4
  br label %209

202:                                              ; preds = %197
  %203 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %7, align 8
  %204 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %203, i32 0, i32 2
  %205 = load %struct.TYPE_2__*, %struct.TYPE_2__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i64 0
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  br label %209

209:                                              ; preds = %202, %200
  %210 = phi i32 [ %201, %200 ], [ %208, %202 ]
  store i32 %210, i32* %8, align 4
  %211 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %7, align 8
  %212 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %211, i32 0, i32 3
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %236

215:                                              ; preds = %209
  %216 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %6, align 8
  %217 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %7, align 8
  %218 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = sub nsw i32 %219, 2
  %221 = mul nsw i32 %220, 4
  %222 = add nsw i32 3132, %221
  %223 = load i32, i32* %8, align 4
  %224 = call i32 @PNTX_WRITE(%struct.ntb_plx_softc* %216, i32 %222, i32 %223)
  %225 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %6, align 8
  %226 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %7, align 8
  %227 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = sub nsw i32 %228, 2
  %230 = mul nsw i32 %229, 4
  %231 = add nsw i32 3132, %230
  %232 = add nsw i32 %231, 4
  %233 = load i32, i32* %8, align 4
  %234 = ashr i32 %233, 32
  %235 = call i32 @PNTX_WRITE(%struct.ntb_plx_softc* %225, i32 %232, i32 %234)
  br label %246

236:                                              ; preds = %209
  %237 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %6, align 8
  %238 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %7, align 8
  %239 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = sub nsw i32 %240, 2
  %242 = mul nsw i32 %241, 4
  %243 = add nsw i32 3132, %242
  %244 = load i32, i32* %8, align 4
  %245 = call i32 @PNTX_WRITE(%struct.ntb_plx_softc* %237, i32 %243, i32 %244)
  br label %246

246:                                              ; preds = %236, %215
  %247 = load i32, i32* %18, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %246
  br label %257

250:                                              ; preds = %246
  %251 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %7, align 8
  %252 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %251, i32 0, i32 2
  %253 = load %struct.TYPE_2__*, %struct.TYPE_2__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %253, i64 0
  %255 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  br label %257

257:                                              ; preds = %250, %249
  %258 = phi i32 [ 0, %249 ], [ %256, %250 ]
  store i32 %258, i32* %11, align 4
  %259 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %6, align 8
  %260 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %398

263:                                              ; preds = %257
  %264 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %7, align 8
  %265 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = icmp eq i32 %266, 2
  br i1 %267, label %268, label %398

268:                                              ; preds = %263
  %269 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %6, align 8
  %270 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 8
  %272 = icmp ugt i32 %271, 0
  br i1 %272, label %283, label %273

273:                                              ; preds = %268
  %274 = load i32, i32* %8, align 4
  %275 = load i32, i32* %12, align 4
  %276 = sub nsw i32 %275, 1
  %277 = and i32 %274, %276
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %283, label %279

279:                                              ; preds = %273
  %280 = load i32, i32* %11, align 4
  %281 = load i32, i32* %12, align 4
  %282 = icmp ne i32 %280, %281
  br i1 %282, label %283, label %398

283:                                              ; preds = %279, %273, %268
  %284 = load i32, i32* %12, align 4
  %285 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %6, align 8
  %286 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %285, i32 0, i32 3
  %287 = load i32, i32* %286, align 4
  %288 = mul nsw i32 128, %287
  %289 = sdiv i32 %284, %288
  store i32 %289, i32* %13, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %290

290:                                              ; preds = %392, %283
  %291 = load i32, i32* %16, align 4
  %292 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %6, align 8
  %293 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %292, i32 0, i32 3
  %294 = load i32, i32* %293, align 4
  %295 = mul nsw i32 128, %294
  %296 = icmp ult i32 %291, %295
  br i1 %296, label %297, label %395

297:                                              ; preds = %290
  %298 = load i32, i32* %16, align 4
  %299 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %6, align 8
  %300 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %299, i32 0, i32 3
  %301 = load i32, i32* %300, align 4
  %302 = mul nsw i32 128, %301
  %303 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %6, align 8
  %304 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 8
  %306 = ashr i32 %302, %305
  %307 = urem i32 %298, %306
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %327

309:                                              ; preds = %297
  %310 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %7, align 8
  %311 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %310, i32 0, i32 2
  %312 = load %struct.TYPE_2__*, %struct.TYPE_2__** %311, align 8
  %313 = load i32, i32* %17, align 4
  %314 = zext i32 %313 to i64
  %315 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %312, i64 %314
  %316 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  store i32 %317, i32* %8, align 4
  store i32 %317, i32* %9, align 4
  %318 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %7, align 8
  %319 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %318, i32 0, i32 2
  %320 = load %struct.TYPE_2__*, %struct.TYPE_2__** %319, align 8
  %321 = load i32, i32* %17, align 4
  %322 = add i32 %321, 1
  store i32 %322, i32* %17, align 4
  %323 = zext i32 %321 to i64
  %324 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %320, i64 %323
  %325 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 4
  store i32 %326, i32* %11, align 4
  br label %327

327:                                              ; preds = %309, %297
  %328 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %6, align 8
  %329 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %328, i32 0, i32 6
  %330 = load i64, i64* %329, align 8
  %331 = icmp ne i64 %330, 0
  %332 = zext i1 %331 to i64
  %333 = select i1 %331, i32 0, i32 1
  store i32 %333, i32* %15, align 4
  %334 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %6, align 8
  %335 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %334, i32 0, i32 3
  %336 = load i32, i32* %335, align 4
  %337 = icmp eq i32 %336, 1
  br i1 %337, label %338, label %345

338:                                              ; preds = %327
  %339 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %6, align 8
  %340 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %339, i32 0, i32 4
  %341 = load i32, i32* %340, align 8
  %342 = mul nsw i32 2, %341
  %343 = load i32, i32* %15, align 4
  %344 = add nsw i32 %343, %342
  store i32 %344, i32* %15, align 4
  br label %345

345:                                              ; preds = %338, %327
  %346 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %6, align 8
  %347 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %346, i32 0, i32 3
  %348 = load i32, i32* %347, align 4
  %349 = mul nsw i32 4096, %348
  %350 = load i32, i32* %15, align 4
  %351 = mul nsw i32 %350, %349
  store i32 %351, i32* %15, align 4
  %352 = load i32, i32* %16, align 4
  %353 = mul i32 %352, 4
  %354 = add i32 229376, %353
  %355 = load i32, i32* %16, align 4
  %356 = icmp uge i32 %355, 128
  %357 = zext i1 %356 to i64
  %358 = select i1 %356, i32 3584, i32 0
  %359 = add i32 %354, %358
  %360 = load i32, i32* %15, align 4
  %361 = add i32 %360, %359
  store i32 %361, i32* %15, align 4
  %362 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %6, align 8
  %363 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %362, i32 0, i32 5
  %364 = load i32, i32* %363, align 4
  %365 = load i32, i32* %15, align 4
  %366 = load i32, i32* %9, align 4
  %367 = call i32 @bus_write_4(i32 %364, i32 %365, i32 %366)
  %368 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %6, align 8
  %369 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %368, i32 0, i32 5
  %370 = load i32, i32* %369, align 4
  %371 = load i32, i32* %15, align 4
  %372 = add nsw i32 %371, 1024
  %373 = load i32, i32* %9, align 4
  %374 = ashr i32 %373, 32
  %375 = call i32 @bus_write_4(i32 %370, i32 %372, i32 %374)
  %376 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %6, align 8
  %377 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %376, i32 0, i32 5
  %378 = load i32, i32* %377, align 4
  %379 = load i32, i32* %15, align 4
  %380 = add nsw i32 %379, 2048
  %381 = load i32, i32* %9, align 4
  %382 = load i32, i32* %8, align 4
  %383 = load i32, i32* %11, align 4
  %384 = add nsw i32 %382, %383
  %385 = icmp slt i32 %381, %384
  %386 = zext i1 %385 to i64
  %387 = select i1 %385, i32 3, i32 0
  %388 = call i32 @bus_write_4(i32 %378, i32 %380, i32 %387)
  %389 = load i32, i32* %13, align 4
  %390 = load i32, i32* %9, align 4
  %391 = add nsw i32 %390, %389
  store i32 %391, i32* %9, align 4
  br label %392

392:                                              ; preds = %345
  %393 = load i32, i32* %16, align 4
  %394 = add i32 %393, 1
  store i32 %394, i32* %16, align 4
  br label %290

395:                                              ; preds = %290
  %396 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %6, align 8
  %397 = call i32 @NTX_WRITE(%struct.ntb_plx_softc* %396, i32 3220, i32 268435456)
  br label %412

398:                                              ; preds = %279, %263, %257
  %399 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %6, align 8
  %400 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %399, i32 0, i32 3
  %401 = load i32, i32* %400, align 4
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %411

403:                                              ; preds = %398
  %404 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %7, align 8
  %405 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 8
  %407 = icmp eq i32 %406, 2
  br i1 %407, label %408, label %411

408:                                              ; preds = %403
  %409 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %6, align 8
  %410 = call i32 @NTX_WRITE(%struct.ntb_plx_softc* %409, i32 3220, i32 0)
  br label %411

411:                                              ; preds = %408, %403, %398
  br label %412

412:                                              ; preds = %411, %395
  store i32 0, i32* %3, align 4
  br label %413

413:                                              ; preds = %412, %92
  %414 = load i32, i32* %3, align 4
  ret i32 %414
}

declare dso_local %struct.ntb_plx_softc* @device_get_softc(i32) #1

declare dso_local i32 @powerof2(i32) #1

declare dso_local i64 @flsll(i32) #1

declare dso_local i32 @PNTX_WRITE(%struct.ntb_plx_softc*, i32, i32) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i32 @bus_write_4(i32, i32, i32) #1

declare dso_local i32 @NTX_WRITE(%struct.ntb_plx_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
