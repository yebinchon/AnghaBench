; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c_iflib_rxeof.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c_iflib_rxeof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i32, %struct.TYPE_25__*, i32, i32, %struct.TYPE_29__* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_29__ = type { i32 (i32, %struct.if_rxd_info*)*, i32, i32, %struct.TYPE_26__*, %struct.TYPE_27__, %struct.TYPE_28__* }
%struct.if_rxd_info = type { i32, i64, i64, i32, %struct.TYPE_26__*, i32 }
%struct.TYPE_26__ = type { i32 (%struct.TYPE_26__*, %struct.mbuf*)*, i32 }
%struct.mbuf = type { %struct.mbuf*, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32, i64 }
%struct.TYPE_27__ = type { i64* }
%struct.TYPE_28__ = type { i32, i32 }

@IFLIB_HAS_RXCQ = common dso_local global i32 0, align 4
@rx_unavail = common dso_local global i32 0, align 4
@rx_ctx_inactive = common dso_local global i32 0, align 4
@IFCAP_LRO = common dso_local global i32 0, align 4
@rx_if_input = common dso_local global i32 0, align 4
@IFCOUNTER_IBYTES = common dso_local global i32 0, align 4
@IFCOUNTER_IPACKETS = common dso_local global i32 0, align 4
@IFC_DO_RESET = common dso_local global i32 0, align 4
@CSUM_L4_CALC = common dso_local global i32 0, align 4
@CSUM_L4_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*, i32)* @iflib_rxeof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iflib_rxeof(%struct.TYPE_24__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_29__*, align 8
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.if_rxd_info, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_25__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.mbuf*, align 8
  %24 = alloca %struct.mbuf*, align 8
  %25 = alloca %struct.mbuf*, align 8
  %26 = alloca %struct.mbuf*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store i32 %1, i32* %5, align 4
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %27, i32 0, i32 5
  %29 = load %struct.TYPE_29__*, %struct.TYPE_29__** %28, align 8
  store %struct.TYPE_29__* %29, %struct.TYPE_29__** %7, align 8
  %30 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %30, i32 0, i32 5
  %32 = load %struct.TYPE_28__*, %struct.TYPE_28__** %31, align 8
  store %struct.TYPE_28__* %32, %struct.TYPE_28__** %8, align 8
  %33 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %33, i32 0, i32 4
  store %struct.TYPE_27__* %34, %struct.TYPE_27__** %9, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %22, align 4
  %35 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_26__*, %struct.TYPE_26__** %36, align 8
  store %struct.TYPE_26__* %37, %struct.TYPE_26__** %6, align 8
  store %struct.mbuf* null, %struct.mbuf** %25, align 8
  store %struct.mbuf* null, %struct.mbuf** %24, align 8
  %38 = load i32, i32* %5, align 4
  %39 = icmp sgt i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @MPASS(i32 %40)
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %42 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @IFLIB_HAS_RXCQ, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %2
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %49, i32 0, i32 0
  store i32* %50, i32** %12, align 8
  br label %57

51:                                               ; preds = %2
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %55, i32 0, i32 0
  store i32* %56, i32** %12, align 8
  br label %57

57:                                               ; preds = %51, %48
  %58 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %60 = load i32*, i32** %12, align 8
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @iflib_rxd_avail(%struct.TYPE_29__* %58, %struct.TYPE_24__* %59, i32 %61, i32 %62)
  store i32 %63, i32* %10, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %90

65:                                               ; preds = %57
  store i32 0, i32* %11, align 4
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %68, i64 0
  store %struct.TYPE_25__* %69, %struct.TYPE_25__** %18, align 8
  br label %70

70:                                               ; preds = %82, %65
  %71 = load i32, i32* %11, align 4
  %72 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %87

76:                                               ; preds = %70
  %77 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 8
  %81 = call i32 @__iflib_fl_refill_lt(%struct.TYPE_29__* %77, %struct.TYPE_25__* %78, i32 %80)
  br label %82

82:                                               ; preds = %76
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %11, align 4
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %86 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %85, i32 1
  store %struct.TYPE_25__* %86, %struct.TYPE_25__** %18, align 8
  br label %70

87:                                               ; preds = %70
  %88 = load i32, i32* @rx_unavail, align 4
  %89 = call i32 @DBG_COUNTER_INC(i32 %88)
  store i32 0, i32* %3, align 4
  br label %369

90:                                               ; preds = %57
  %91 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @CURVNET_SET_QUIET(i32 %93)
  %95 = load i32, i32* %5, align 4
  store i32 %95, i32* %15, align 4
  br label %96

96:                                               ; preds = %237, %226, %189, %90
  %97 = load i32, i32* %15, align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i32, i32* %10, align 4
  %101 = icmp sgt i32 %100, 0
  br label %102

102:                                              ; preds = %99, %96
  %103 = phi i1 [ false, %96 ], [ %101, %99 ]
  br i1 %103, label %104, label %238

104:                                              ; preds = %102
  %105 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %106 = call i32 @CTX_ACTIVE(%struct.TYPE_29__* %105)
  %107 = icmp ne i32 %106, 0
  %108 = xor i1 %107, true
  %109 = zext i1 %108 to i32
  %110 = call i64 @__predict_false(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %104
  %113 = load i32, i32* @rx_ctx_inactive, align 4
  %114 = call i32 @DBG_COUNTER_INC(i32 %113)
  br label %238

115:                                              ; preds = %104
  %116 = call i32 @rxd_info_zero(%struct.if_rxd_info* %13)
  %117 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds %struct.if_rxd_info, %struct.if_rxd_info* %13, i32 0, i32 5
  store i32 %119, i32* %120, align 8
  %121 = load i32*, i32** %12, align 8
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds %struct.if_rxd_info, %struct.if_rxd_info* %13, i32 0, i32 0
  store i32 %122, i32* %123, align 8
  %124 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %125 = getelementptr inbounds %struct.if_rxd_info, %struct.if_rxd_info* %13, i32 0, i32 4
  store %struct.TYPE_26__* %124, %struct.TYPE_26__** %125, align 8
  %126 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = getelementptr inbounds %struct.if_rxd_info, %struct.if_rxd_info* %13, i32 0, i32 3
  store i32 %128, i32* %129, align 8
  %130 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %130, i32 0, i32 0
  %132 = load i32 (i32, %struct.if_rxd_info*)*, i32 (i32, %struct.if_rxd_info*)** %131, align 8
  %133 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = call i32 %132(i32 %135, %struct.if_rxd_info* %13)
  store i32 %136, i32* %14, align 4
  %137 = load i32, i32* %14, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %115
  br label %357

140:                                              ; preds = %115
  %141 = load i32, i32* %17, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %17, align 4
  %143 = getelementptr inbounds %struct.if_rxd_info, %struct.if_rxd_info* %13, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load i32, i32* %16, align 4
  %146 = sext i32 %145 to i64
  %147 = add nsw i64 %146, %144
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %16, align 4
  %149 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @IFLIB_HAS_RXCQ, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %191

155:                                              ; preds = %140
  %156 = getelementptr inbounds %struct.if_rxd_info, %struct.if_rxd_info* %13, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32*, i32** %12, align 8
  store i32 %157, i32* %158, align 4
  br label %159

159:                                              ; preds = %170, %155
  %160 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = sext i32 %162 to i64
  %164 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %164, i32 0, i32 0
  %166 = load i64*, i64** %165, align 8
  %167 = getelementptr inbounds i64, i64* %166, i64 0
  %168 = load i64, i64* %167, align 8
  %169 = icmp sge i64 %163, %168
  br i1 %169, label %170, label %182

170:                                              ; preds = %159
  %171 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %171, i32 0, i32 0
  %173 = load i64*, i64** %172, align 8
  %174 = getelementptr inbounds i64, i64* %173, i64 0
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = sext i32 %178 to i64
  %180 = sub nsw i64 %179, %175
  %181 = trunc i64 %180 to i32
  store i32 %181, i32* %177, align 8
  br label %159

182:                                              ; preds = %159
  %183 = getelementptr inbounds %struct.if_rxd_info, %struct.if_rxd_info* %13, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = icmp eq i64 %184, 0
  %186 = zext i1 %185 to i32
  %187 = call i64 @__predict_false(i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %182
  br label %96

190:                                              ; preds = %182
  br label %191

191:                                              ; preds = %190, %140
  %192 = getelementptr inbounds %struct.if_rxd_info, %struct.if_rxd_info* %13, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  %195 = zext i1 %194 to i32
  %196 = call i32 @MPASS(i32 %195)
  %197 = getelementptr inbounds %struct.if_rxd_info, %struct.if_rxd_info* %13, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  %200 = zext i1 %199 to i32
  %201 = call i32 @MPASS(i32 %200)
  %202 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %203 = call %struct.mbuf* @iflib_rxd_pkt_get(%struct.TYPE_24__* %202, %struct.if_rxd_info* %13)
  store %struct.mbuf* %203, %struct.mbuf** %23, align 8
  %204 = load i32, i32* %10, align 4
  %205 = add nsw i32 %204, -1
  store i32 %205, i32* %10, align 4
  %206 = load i32, i32* %15, align 4
  %207 = add nsw i32 %206, -1
  store i32 %207, i32* %15, align 4
  %208 = load i32, i32* %10, align 4
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %220

210:                                              ; preds = %191
  %211 = load i32, i32* %15, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %220

213:                                              ; preds = %210
  %214 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %215 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %216 = load i32*, i32** %12, align 8
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* %15, align 4
  %219 = call i32 @iflib_rxd_avail(%struct.TYPE_29__* %214, %struct.TYPE_24__* %215, i32 %217, i32 %218)
  store i32 %219, i32* %10, align 4
  br label %220

220:                                              ; preds = %213, %210, %191
  %221 = load %struct.mbuf*, %struct.mbuf** %23, align 8
  %222 = icmp eq %struct.mbuf* %221, null
  %223 = zext i1 %222 to i32
  %224 = call i64 @__predict_false(i32 %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %220
  br label %96

227:                                              ; preds = %220
  %228 = load %struct.mbuf*, %struct.mbuf** %24, align 8
  %229 = icmp eq %struct.mbuf* %228, null
  br i1 %229, label %230, label %232

230:                                              ; preds = %227
  %231 = load %struct.mbuf*, %struct.mbuf** %23, align 8
  store %struct.mbuf* %231, %struct.mbuf** %25, align 8
  store %struct.mbuf* %231, %struct.mbuf** %24, align 8
  br label %237

232:                                              ; preds = %227
  %233 = load %struct.mbuf*, %struct.mbuf** %23, align 8
  %234 = load %struct.mbuf*, %struct.mbuf** %25, align 8
  %235 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %234, i32 0, i32 0
  store %struct.mbuf* %233, %struct.mbuf** %235, align 8
  %236 = load %struct.mbuf*, %struct.mbuf** %23, align 8
  store %struct.mbuf* %236, %struct.mbuf** %25, align 8
  br label %237

237:                                              ; preds = %232, %230
  br label %96

238:                                              ; preds = %112, %102
  %239 = call i32 (...) @CURVNET_RESTORE()
  store i32 0, i32* %11, align 4
  %240 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %240, i32 0, i32 2
  %242 = load %struct.TYPE_25__*, %struct.TYPE_25__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %242, i64 0
  store %struct.TYPE_25__* %243, %struct.TYPE_25__** %18, align 8
  br label %244

244:                                              ; preds = %256, %238
  %245 = load i32, i32* %11, align 4
  %246 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %247 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = icmp slt i32 %245, %248
  br i1 %249, label %250, label %261

250:                                              ; preds = %244
  %251 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %252 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %253 = load i32, i32* %5, align 4
  %254 = add nsw i32 %253, 8
  %255 = call i32 @__iflib_fl_refill_lt(%struct.TYPE_29__* %251, %struct.TYPE_25__* %252, i32 %254)
  br label %256

256:                                              ; preds = %250
  %257 = load i32, i32* %11, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %11, align 4
  %259 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %260 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %259, i32 1
  store %struct.TYPE_25__* %260, %struct.TYPE_25__** %18, align 8
  br label %244

261:                                              ; preds = %244
  %262 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %263 = call i32 @if_getcapenable(%struct.TYPE_26__* %262)
  %264 = load i32, i32* @IFCAP_LRO, align 4
  %265 = and i32 %263, %264
  store i32 %265, i32* %19, align 4
  %266 = load i32, i32* %19, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %272

268:                                              ; preds = %261
  %269 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %270 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %269, i32 0, i32 1
  %271 = call i32 @iflib_get_ip_forwarding(i32* %270, i32* %20, i32* %21)
  br label %272

272:                                              ; preds = %268, %261
  store %struct.mbuf* null, %struct.mbuf** %26, align 8
  store %struct.mbuf* null, %struct.mbuf** %25, align 8
  br label %273

273:                                              ; preds = %325, %304, %290, %272
  %274 = load %struct.mbuf*, %struct.mbuf** %24, align 8
  %275 = icmp ne %struct.mbuf* %274, null
  br i1 %275, label %276, label %327

276:                                              ; preds = %273
  %277 = load %struct.mbuf*, %struct.mbuf** %24, align 8
  store %struct.mbuf* %277, %struct.mbuf** %23, align 8
  %278 = load %struct.mbuf*, %struct.mbuf** %24, align 8
  %279 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %278, i32 0, i32 0
  %280 = load %struct.mbuf*, %struct.mbuf** %279, align 8
  store %struct.mbuf* %280, %struct.mbuf** %24, align 8
  %281 = load %struct.mbuf*, %struct.mbuf** %23, align 8
  %282 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %281, i32 0, i32 0
  store %struct.mbuf* null, %struct.mbuf** %282, align 8
  %283 = load %struct.mbuf*, %struct.mbuf** %23, align 8
  %284 = call i32 @IP_ALIGNED(%struct.mbuf* %283)
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %291, label %286

286:                                              ; preds = %276
  %287 = load %struct.mbuf*, %struct.mbuf** %23, align 8
  %288 = call %struct.mbuf* @iflib_fixup_rx(%struct.mbuf* %287)
  store %struct.mbuf* %288, %struct.mbuf** %23, align 8
  %289 = icmp eq %struct.mbuf* %288, null
  br i1 %289, label %290, label %291

290:                                              ; preds = %286
  br label %273

291:                                              ; preds = %286, %276
  %292 = load %struct.mbuf*, %struct.mbuf** %23, align 8
  %293 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %292, i32 0, i32 1
  %294 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %293, i32 0, i32 1
  %295 = load i64, i64* %294, align 8
  %296 = load i32, i32* %16, align 4
  %297 = sext i32 %296 to i64
  %298 = add nsw i64 %297, %295
  %299 = trunc i64 %298 to i32
  store i32 %299, i32* %16, align 4
  %300 = load i32, i32* %17, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %17, align 4
  %302 = load i32, i32* %22, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %313

304:                                              ; preds = %291
  %305 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %306 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %305, i32 0, i32 0
  %307 = load i32 (%struct.TYPE_26__*, %struct.mbuf*)*, i32 (%struct.TYPE_26__*, %struct.mbuf*)** %306, align 8
  %308 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %309 = load %struct.mbuf*, %struct.mbuf** %23, align 8
  %310 = call i32 %307(%struct.TYPE_26__* %308, %struct.mbuf* %309)
  %311 = load i32, i32* @rx_if_input, align 4
  %312 = call i32 @DBG_COUNTER_INC(i32 %311)
  br label %273

313:                                              ; preds = %291
  %314 = load %struct.mbuf*, %struct.mbuf** %26, align 8
  %315 = icmp eq %struct.mbuf* %314, null
  br i1 %315, label %316, label %318

316:                                              ; preds = %313
  %317 = load %struct.mbuf*, %struct.mbuf** %23, align 8
  store %struct.mbuf* %317, %struct.mbuf** %26, align 8
  br label %318

318:                                              ; preds = %316, %313
  %319 = load %struct.mbuf*, %struct.mbuf** %25, align 8
  %320 = icmp ne %struct.mbuf* %319, null
  br i1 %320, label %321, label %325

321:                                              ; preds = %318
  %322 = load %struct.mbuf*, %struct.mbuf** %23, align 8
  %323 = load %struct.mbuf*, %struct.mbuf** %25, align 8
  %324 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %323, i32 0, i32 0
  store %struct.mbuf* %322, %struct.mbuf** %324, align 8
  br label %325

325:                                              ; preds = %321, %318
  %326 = load %struct.mbuf*, %struct.mbuf** %23, align 8
  store %struct.mbuf* %326, %struct.mbuf** %25, align 8
  br label %273

327:                                              ; preds = %273
  %328 = load %struct.mbuf*, %struct.mbuf** %26, align 8
  %329 = icmp ne %struct.mbuf* %328, null
  br i1 %329, label %330, label %339

330:                                              ; preds = %327
  %331 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %332 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %331, i32 0, i32 0
  %333 = load i32 (%struct.TYPE_26__*, %struct.mbuf*)*, i32 (%struct.TYPE_26__*, %struct.mbuf*)** %332, align 8
  %334 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %335 = load %struct.mbuf*, %struct.mbuf** %26, align 8
  %336 = call i32 %333(%struct.TYPE_26__* %334, %struct.mbuf* %335)
  %337 = load i32, i32* @rx_if_input, align 4
  %338 = call i32 @DBG_COUNTER_INC(i32 %337)
  br label %339

339:                                              ; preds = %330, %327
  %340 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %341 = load i32, i32* @IFCOUNTER_IBYTES, align 4
  %342 = load i32, i32* %16, align 4
  %343 = call i32 @if_inc_counter(%struct.TYPE_26__* %340, i32 %341, i32 %342)
  %344 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %345 = load i32, i32* @IFCOUNTER_IPACKETS, align 4
  %346 = load i32, i32* %17, align 4
  %347 = call i32 @if_inc_counter(%struct.TYPE_26__* %344, i32 %345, i32 %346)
  %348 = load i32, i32* %10, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %351

350:                                              ; preds = %339
  store i32 1, i32* %3, align 4
  br label %369

351:                                              ; preds = %339
  %352 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %353 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %354 = load i32*, i32** %12, align 8
  %355 = load i32, i32* %354, align 4
  %356 = call i32 @iflib_rxd_avail(%struct.TYPE_29__* %352, %struct.TYPE_24__* %353, i32 %355, i32 1)
  store i32 %356, i32* %3, align 4
  br label %369

357:                                              ; preds = %139
  %358 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %359 = call i32 @STATE_LOCK(%struct.TYPE_29__* %358)
  %360 = load i32, i32* @IFC_DO_RESET, align 4
  %361 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %362 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %361, i32 0, i32 1
  %363 = load i32, i32* %362, align 8
  %364 = or i32 %363, %360
  store i32 %364, i32* %362, align 8
  %365 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %366 = call i32 @iflib_admin_intr_deferred(%struct.TYPE_29__* %365)
  %367 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %368 = call i32 @STATE_UNLOCK(%struct.TYPE_29__* %367)
  store i32 0, i32* %3, align 4
  br label %369

369:                                              ; preds = %357, %351, %350, %87
  %370 = load i32, i32* %3, align 4
  ret i32 %370
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @iflib_rxd_avail(%struct.TYPE_29__*, %struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @__iflib_fl_refill_lt(%struct.TYPE_29__*, %struct.TYPE_25__*, i32) #1

declare dso_local i32 @DBG_COUNTER_INC(i32) #1

declare dso_local i32 @CURVNET_SET_QUIET(i32) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @CTX_ACTIVE(%struct.TYPE_29__*) #1

declare dso_local i32 @rxd_info_zero(%struct.if_rxd_info*) #1

declare dso_local %struct.mbuf* @iflib_rxd_pkt_get(%struct.TYPE_24__*, %struct.if_rxd_info*) #1

declare dso_local i32 @CURVNET_RESTORE(...) #1

declare dso_local i32 @if_getcapenable(%struct.TYPE_26__*) #1

declare dso_local i32 @iflib_get_ip_forwarding(i32*, i32*, i32*) #1

declare dso_local i32 @IP_ALIGNED(%struct.mbuf*) #1

declare dso_local %struct.mbuf* @iflib_fixup_rx(%struct.mbuf*) #1

declare dso_local i32 @if_inc_counter(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @STATE_LOCK(%struct.TYPE_29__*) #1

declare dso_local i32 @iflib_admin_intr_deferred(%struct.TYPE_29__*) #1

declare dso_local i32 @STATE_UNLOCK(%struct.TYPE_29__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
