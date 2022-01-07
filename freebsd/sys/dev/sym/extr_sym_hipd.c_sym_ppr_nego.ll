; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_ppr_nego.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_ppr_nego.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64*, i64, i32, i64, i64, i64, i64, i32* }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_17__ }
%struct.TYPE_18__ = type { i64, i64, i64, i64 }
%struct.TYPE_17__ = type { i64, i64, i64 }
%struct.TYPE_22__ = type { i64 }

@DEBUG_FLAGS = common dso_local global i32 0, align 4
@DEBUG_NEGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"ppr msgin\00", align 1
@PPR_OPT_DT = common dso_local global i64 0, align 8
@HS_PRT = common dso_local global i32 0, align 4
@HS_NEGOTIATE = common dso_local global i64 0, align 8
@HS_BUSY = common dso_local global i32 0, align 4
@NS_PPR = common dso_local global i64 0, align 8
@FE_ULTRA3 = common dso_local global i32 0, align 4
@FE_U3EN = common dso_local global i32 0, align 4
@PPR_OPT_MASK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [56 x i8] c"ppr: dt=%x ofs=%d per=%d wide=%d div=%d fak=%d chg=%d.\0A\00", align 1
@clrack = common dso_local global i32 0, align 4
@M_EXTENDED = common dso_local global i32 0, align 4
@M_X_PPR_REQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"ppr msgout\00", align 1
@M_NOOP = common dso_local global i64 0, align 8
@ppr_resp = common dso_local global i32 0, align 4
@msg_bad = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, %struct.TYPE_20__*, %struct.TYPE_22__*)* @sym_ppr_nego to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_ppr_nego(%struct.TYPE_21__* %0, %struct.TYPE_20__* %1, %struct.TYPE_22__* %2) #0 {
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %6, align 8
  store i32 1, i32* %14, align 4
  %15 = load i32, i32* @DEBUG_FLAGS, align 4
  %16 = load i32, i32* @DEBUG_NEGO, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = call i32 @sym_print_msg(%struct.TYPE_22__* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64* %23)
  br label %25

25:                                               ; preds = %19, %3
  store i64 0, i64* %7, align 8
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 3
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %9, align 8
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 5
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %8, align 8
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 6
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %13, align 8
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 7
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @PPR_OPT_DT, align 8
  %47 = and i64 %45, %46
  store i64 %47, i64* %11, align 8
  %48 = load i32, i32* @HS_PRT, align 4
  %49 = call i64 @INB(i32 %48)
  %50 = load i64, i64* @HS_NEGOTIATE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %68

52:                                               ; preds = %25
  %53 = load i32, i32* @HS_PRT, align 4
  %54 = load i32, i32* @HS_BUSY, align 4
  %55 = call i32 @OUTB(i32 %53, i32 %54)
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %52
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @NS_PPR, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %351

67:                                               ; preds = %60, %52
  store i32 0, i32* %14, align 4
  br label %68

68:                                               ; preds = %67, %25
  %69 = load i64, i64* %13, align 8
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp sgt i64 %69, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  store i64 1, i64* %7, align 8
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %13, align 8
  br label %78

78:                                               ; preds = %74, %68
  %79 = load i64, i64* %13, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %78
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @FE_ULTRA3, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %81, %78
  %89 = load i64, i64* @PPR_OPT_DT, align 8
  %90 = xor i64 %89, -1
  %91 = load i64, i64* %11, align 8
  %92 = and i64 %91, %90
  store i64 %92, i64* %11, align 8
  br label %93

93:                                               ; preds = %88, %81
  %94 = load i32, i32* %14, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %111

96:                                               ; preds = %93
  %97 = load i64, i64* %13, align 8
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp sgt i64 %97, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %96
  store i64 1, i64* %7, align 8
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  store i64 %109, i64* %13, align 8
  br label %110

110:                                              ; preds = %104, %96
  br label %111

111:                                              ; preds = %110, %93
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @FE_U3EN, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %111
  %119 = load i64, i64* @PPR_OPT_DT, align 8
  %120 = xor i64 %119, -1
  %121 = load i64, i64* %11, align 8
  %122 = and i64 %121, %120
  store i64 %122, i64* %11, align 8
  br label %123

123:                                              ; preds = %118, %111
  %124 = load i64, i64* %11, align 8
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 0
  %127 = load i64*, i64** %126, align 8
  %128 = getelementptr inbounds i64, i64* %127, i64 7
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @PPR_OPT_MASK, align 8
  %131 = and i64 %129, %130
  %132 = icmp ne i64 %124, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %123
  store i64 1, i64* %7, align 8
  br label %134

134:                                              ; preds = %133, %123
  %135 = load i64, i64* %8, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %181

137:                                              ; preds = %134
  %138 = load i64, i64* %11, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %151

140:                                              ; preds = %137
  %141 = load i64, i64* %8, align 8
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = icmp sgt i64 %141, %144
  br i1 %145, label %146, label %150

146:                                              ; preds = %140
  store i64 1, i64* %7, align 8
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  store i64 %149, i64* %8, align 8
  br label %150

150:                                              ; preds = %146, %140
  br label %162

151:                                              ; preds = %137
  %152 = load i64, i64* %8, align 8
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %153, i32 0, i32 4
  %155 = load i64, i64* %154, align 8
  %156 = icmp sgt i64 %152, %155
  br i1 %156, label %157, label %161

157:                                              ; preds = %151
  store i64 1, i64* %7, align 8
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %158, i32 0, i32 4
  %160 = load i64, i64* %159, align 8
  store i64 %160, i64* %8, align 8
  br label %161

161:                                              ; preds = %157, %151
  br label %162

162:                                              ; preds = %161, %150
  %163 = load i32, i32* %14, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %180

165:                                              ; preds = %162
  %166 = load i64, i64* %8, align 8
  %167 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = icmp sgt i64 %166, %171
  br i1 %172, label %173, label %179

173:                                              ; preds = %165
  store i64 1, i64* %7, align 8
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  store i64 %178, i64* %8, align 8
  br label %179

179:                                              ; preds = %173, %165
  br label %180

180:                                              ; preds = %179, %162
  br label %181

181:                                              ; preds = %180, %134
  %182 = load i64, i64* %8, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %228

184:                                              ; preds = %181
  %185 = load i64, i64* %11, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %198

187:                                              ; preds = %184
  %188 = load i64, i64* %9, align 8
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %189, i32 0, i32 5
  %191 = load i64, i64* %190, align 8
  %192 = icmp slt i64 %188, %191
  br i1 %192, label %193, label %197

193:                                              ; preds = %187
  store i64 1, i64* %7, align 8
  %194 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %194, i32 0, i32 5
  %196 = load i64, i64* %195, align 8
  store i64 %196, i64* %9, align 8
  br label %197

197:                                              ; preds = %193, %187
  br label %209

198:                                              ; preds = %184
  %199 = load i64, i64* %9, align 8
  %200 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %200, i32 0, i32 6
  %202 = load i64, i64* %201, align 8
  %203 = icmp slt i64 %199, %202
  br i1 %203, label %204, label %208

204:                                              ; preds = %198
  store i64 1, i64* %7, align 8
  %205 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %205, i32 0, i32 6
  %207 = load i64, i64* %206, align 8
  store i64 %207, i64* %9, align 8
  br label %208

208:                                              ; preds = %204, %198
  br label %209

209:                                              ; preds = %208, %197
  %210 = load i32, i32* %14, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %227

212:                                              ; preds = %209
  %213 = load i64, i64* %9, align 8
  %214 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %216, i32 0, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = icmp slt i64 %213, %218
  br i1 %219, label %220, label %226

220:                                              ; preds = %212
  store i64 1, i64* %7, align 8
  %221 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %223, i32 0, i32 2
  %225 = load i64, i64* %224, align 8
  store i64 %225, i64* %9, align 8
  br label %226

226:                                              ; preds = %220, %212
  br label %227

227:                                              ; preds = %226, %209
  br label %228

228:                                              ; preds = %227, %181
  store i64 0, i64* %10, align 8
  store i64 0, i64* %12, align 8
  %229 = load i64, i64* %8, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %238

231:                                              ; preds = %228
  %232 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %233 = load i64, i64* %11, align 8
  %234 = load i64, i64* %9, align 8
  %235 = call i64 @sym_getsync(%struct.TYPE_21__* %232, i64 %233, i64 %234, i64* %12, i64* %10)
  %236 = icmp slt i64 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %231
  br label %351

238:                                              ; preds = %231, %228
  %239 = load i32, i32* @DEBUG_FLAGS, align 4
  %240 = load i32, i32* @DEBUG_NEGO, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %254

243:                                              ; preds = %238
  %244 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %245 = call i32 @PRINT_ADDR(%struct.TYPE_22__* %244)
  %246 = load i64, i64* %11, align 8
  %247 = load i64, i64* %8, align 8
  %248 = load i64, i64* %9, align 8
  %249 = load i64, i64* %13, align 8
  %250 = load i64, i64* %12, align 8
  %251 = load i64, i64* %10, align 8
  %252 = load i64, i64* %7, align 8
  %253 = call i32 @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i64 %246, i64 %247, i64 %248, i64 %249, i64 %250, i64 %251, i64 %252)
  br label %254

254:                                              ; preds = %243, %238
  %255 = load i32, i32* %14, align 4
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %275

257:                                              ; preds = %254
  %258 = load i64, i64* %7, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %257
  br label %351

261:                                              ; preds = %257
  %262 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %263 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %264 = load i64, i64* %11, align 8
  %265 = load i64, i64* %8, align 8
  %266 = load i64, i64* %9, align 8
  %267 = load i64, i64* %13, align 8
  %268 = load i64, i64* %12, align 8
  %269 = load i64, i64* %10, align 8
  %270 = call i32 @sym_setpprot(%struct.TYPE_21__* %262, %struct.TYPE_22__* %263, i64 %264, i64 %265, i64 %266, i64 %267, i64 %268, i64 %269)
  %271 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %272 = load i32, i32* @clrack, align 4
  %273 = call i32 @SCRIPTA_BA(%struct.TYPE_21__* %271, i32 %272)
  %274 = call i32 @OUTL_DSP(i32 %273)
  br label %384

275:                                              ; preds = %254
  %276 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %277 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %278 = load i64, i64* %11, align 8
  %279 = load i64, i64* %8, align 8
  %280 = load i64, i64* %9, align 8
  %281 = load i64, i64* %13, align 8
  %282 = load i64, i64* %12, align 8
  %283 = load i64, i64* %10, align 8
  %284 = call i32 @sym_setpprot(%struct.TYPE_21__* %276, %struct.TYPE_22__* %277, i64 %278, i64 %279, i64 %280, i64 %281, i64 %282, i64 %283)
  %285 = load i32, i32* @M_EXTENDED, align 4
  %286 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %287 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %286, i32 0, i32 7
  %288 = load i32*, i32** %287, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 0
  store i32 %285, i32* %289, align 4
  %290 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %291 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %290, i32 0, i32 7
  %292 = load i32*, i32** %291, align 8
  %293 = getelementptr inbounds i32, i32* %292, i64 1
  store i32 6, i32* %293, align 4
  %294 = load i32, i32* @M_X_PPR_REQ, align 4
  %295 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %296 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %295, i32 0, i32 7
  %297 = load i32*, i32** %296, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 2
  store i32 %294, i32* %298, align 4
  %299 = load i64, i64* %9, align 8
  %300 = trunc i64 %299 to i32
  %301 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %302 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %301, i32 0, i32 7
  %303 = load i32*, i32** %302, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 3
  store i32 %300, i32* %304, align 4
  %305 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %306 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %305, i32 0, i32 7
  %307 = load i32*, i32** %306, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 4
  store i32 0, i32* %308, align 4
  %309 = load i64, i64* %8, align 8
  %310 = trunc i64 %309 to i32
  %311 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %312 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %311, i32 0, i32 7
  %313 = load i32*, i32** %312, align 8
  %314 = getelementptr inbounds i32, i32* %313, i64 5
  store i32 %310, i32* %314, align 4
  %315 = load i64, i64* %13, align 8
  %316 = trunc i64 %315 to i32
  %317 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %318 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %317, i32 0, i32 7
  %319 = load i32*, i32** %318, align 8
  %320 = getelementptr inbounds i32, i32* %319, i64 6
  store i32 %316, i32* %320, align 4
  %321 = load i64, i64* %11, align 8
  %322 = trunc i64 %321 to i32
  %323 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %324 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %323, i32 0, i32 7
  %325 = load i32*, i32** %324, align 8
  %326 = getelementptr inbounds i32, i32* %325, i64 7
  store i32 %322, i32* %326, align 4
  %327 = load i64, i64* @NS_PPR, align 8
  %328 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %329 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %328, i32 0, i32 0
  store i64 %327, i64* %329, align 8
  %330 = load i32, i32* @DEBUG_FLAGS, align 4
  %331 = load i32, i32* @DEBUG_NEGO, align 4
  %332 = and i32 %330, %331
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %341

334:                                              ; preds = %275
  %335 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %336 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %337 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %336, i32 0, i32 7
  %338 = load i32*, i32** %337, align 8
  %339 = bitcast i32* %338 to i64*
  %340 = call i32 @sym_print_msg(%struct.TYPE_22__* %335, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i64* %339)
  br label %341

341:                                              ; preds = %334, %275
  %342 = load i64, i64* @M_NOOP, align 8
  %343 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %344 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %343, i32 0, i32 0
  %345 = load i64*, i64** %344, align 8
  %346 = getelementptr inbounds i64, i64* %345, i64 0
  store i64 %342, i64* %346, align 8
  %347 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %348 = load i32, i32* @ppr_resp, align 4
  %349 = call i32 @SCRIPTB_BA(%struct.TYPE_21__* %347, i32 %348)
  %350 = call i32 @OUTL_DSP(i32 %349)
  br label %384

351:                                              ; preds = %260, %237, %66
  %352 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %353 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %354 = call i32 @sym_setpprot(%struct.TYPE_21__* %352, %struct.TYPE_22__* %353, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0)
  %355 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %356 = load i32, i32* @msg_bad, align 4
  %357 = call i32 @SCRIPTB_BA(%struct.TYPE_21__* %355, i32 %356)
  %358 = call i32 @OUTL_DSP(i32 %357)
  %359 = load i32, i32* %14, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %384, label %361

361:                                              ; preds = %351
  %362 = load i64, i64* %11, align 8
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %384, label %364

364:                                              ; preds = %361
  %365 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %366 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %365, i32 0, i32 0
  %367 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %367, i32 0, i32 3
  store i64 0, i64* %368, align 8
  %369 = load i64, i64* %13, align 8
  %370 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %371 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %370, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %371, i32 0, i32 0
  %373 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %372, i32 0, i32 2
  store i64 %369, i64* %373, align 8
  %374 = load i64, i64* %9, align 8
  %375 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %376 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %375, i32 0, i32 0
  %377 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %376, i32 0, i32 0
  %378 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %377, i32 0, i32 1
  store i64 %374, i64* %378, align 8
  %379 = load i64, i64* %8, align 8
  %380 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %381 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %380, i32 0, i32 0
  %382 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %381, i32 0, i32 0
  %383 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %382, i32 0, i32 0
  store i64 %379, i64* %383, align 8
  br label %384

384:                                              ; preds = %261, %341, %364, %361, %351
  ret void
}

declare dso_local i32 @sym_print_msg(%struct.TYPE_22__*, i8*, i64*) #1

declare dso_local i64 @INB(i32) #1

declare dso_local i32 @OUTB(i32, i32) #1

declare dso_local i64 @sym_getsync(%struct.TYPE_21__*, i64, i64, i64*, i64*) #1

declare dso_local i32 @PRINT_ADDR(%struct.TYPE_22__*) #1

declare dso_local i32 @printf(i8*, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @sym_setpprot(%struct.TYPE_21__*, %struct.TYPE_22__*, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @OUTL_DSP(i32) #1

declare dso_local i32 @SCRIPTA_BA(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @SCRIPTB_BA(%struct.TYPE_21__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
