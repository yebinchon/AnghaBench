; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_if_plip.c_lp_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_if_plip.c_lp_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lp_data = type { i64*, i64, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.mbuf = type { i32 }

@IFF_LINK0 = common dso_local global i32 0, align 4
@LPMAXSPIN2 = common dso_local global i32 0, align 4
@MLPIPHDRLEN = common dso_local global i32 0, align 4
@CLPIPHDRLEN = common dso_local global i32 0, align 4
@IFCOUNTER_IPACKETS = common dso_local global i32 0, align 4
@IFCOUNTER_IBYTES = common dso_local global i32 0, align 4
@NETISR_IP = common dso_local global i32 0, align 4
@LPIP_SHAKE = common dso_local global i32 0, align 4
@LPIPHDRLEN = common dso_local global i32 0, align 4
@trecvh = common dso_local global i32* null, align 8
@trecvl = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"R\00", align 1
@IFCOUNTER_IERRORS = common dso_local global i32 0, align 4
@LPMAXERRS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Too many errors, Going off-line.\0A\00", align 1
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @lp_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lp_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.lp_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.mbuf*, align 8
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to %struct.lp_data*
  store %struct.lp_data* %12, %struct.lp_data** %3, align 8
  %13 = load %struct.lp_data*, %struct.lp_data** %3, align 8
  %14 = getelementptr inbounds %struct.lp_data, %struct.lp_data* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @device_get_parent(i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @ppb_assert_locked(i32 %17)
  %19 = load %struct.lp_data*, %struct.lp_data** %3, align 8
  %20 = getelementptr inbounds %struct.lp_data, %struct.lp_data* %19, i32 0, i32 2
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IFF_LINK0, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %160

27:                                               ; preds = %1
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @ppb_wdtr(i32 %28, i32 1)
  %30 = load i32, i32* @LPMAXSPIN2, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @clpinbyte(i32 %30, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %326

36:                                               ; preds = %27
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* @LPMAXSPIN2, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @clpinbyte(i32 %38, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %326

44:                                               ; preds = %36
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %6, align 4
  %47 = shl i32 %46, 8
  %48 = add nsw i32 %45, %47
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.lp_data*, %struct.lp_data** %3, align 8
  %51 = getelementptr inbounds %struct.lp_data, %struct.lp_data* %50, i32 0, i32 2
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @MLPIPHDRLEN, align 4
  %56 = add nsw i32 %54, %55
  %57 = icmp sgt i32 %49, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %44
  br label %326

59:                                               ; preds = %44
  %60 = load %struct.lp_data*, %struct.lp_data** %3, align 8
  %61 = getelementptr inbounds %struct.lp_data, %struct.lp_data* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  store i64* %62, i64** %7, align 8
  br label %63

63:                                               ; preds = %74, %59
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %5, align 4
  %66 = icmp ne i32 %64, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %63
  %68 = load i32, i32* @LPMAXSPIN2, align 4
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @clpinbyte(i32 %68, i32 %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %326

74:                                               ; preds = %67
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = load i64*, i64** %7, align 8
  %78 = getelementptr inbounds i64, i64* %77, i32 1
  store i64* %78, i64** %7, align 8
  store i64 %76, i64* %77, align 8
  br label %63

79:                                               ; preds = %63
  %80 = load i32, i32* @LPMAXSPIN2, align 4
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @clpinbyte(i32 %80, i32 %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %326

86:                                               ; preds = %79
  %87 = load i64*, i64** %7, align 8
  %88 = load %struct.lp_data*, %struct.lp_data** %3, align 8
  %89 = getelementptr inbounds %struct.lp_data, %struct.lp_data* %88, i32 0, i32 0
  %90 = load i64*, i64** %89, align 8
  %91 = ptrtoint i64* %87 to i64
  %92 = ptrtoint i64* %90 to i64
  %93 = sub i64 %91, %92
  %94 = sdiv exact i64 %93, 8
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @CLPIPHDRLEN, align 4
  %98 = icmp sle i32 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %86
  br label %326

100:                                              ; preds = %86
  %101 = load %struct.lp_data*, %struct.lp_data** %3, align 8
  %102 = getelementptr inbounds %struct.lp_data, %struct.lp_data* %101, i32 0, i32 1
  store i64 0, i64* %102, align 8
  %103 = load i32, i32* @CLPIPHDRLEN, align 4
  %104 = load i32, i32* %5, align 4
  %105 = sub nsw i32 %104, %103
  store i32 %105, i32* %5, align 4
  %106 = load %struct.lp_data*, %struct.lp_data** %3, align 8
  %107 = getelementptr inbounds %struct.lp_data, %struct.lp_data* %106, i32 0, i32 2
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %107, align 8
  %109 = load i32, i32* @IFCOUNTER_IPACKETS, align 4
  %110 = call i32 @if_inc_counter(%struct.TYPE_5__* %108, i32 %109, i32 1)
  %111 = load %struct.lp_data*, %struct.lp_data** %3, align 8
  %112 = getelementptr inbounds %struct.lp_data, %struct.lp_data* %111, i32 0, i32 2
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = load i32, i32* @IFCOUNTER_IBYTES, align 4
  %115 = load i32, i32* %5, align 4
  %116 = call i32 @if_inc_counter(%struct.TYPE_5__* %113, i32 %114, i32 %115)
  %117 = load %struct.lp_data*, %struct.lp_data** %3, align 8
  %118 = getelementptr inbounds %struct.lp_data, %struct.lp_data* %117, i32 0, i32 0
  %119 = load i64*, i64** %118, align 8
  %120 = load i32, i32* @CLPIPHDRLEN, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %119, i64 %121
  %123 = load i32, i32* %5, align 4
  %124 = load %struct.lp_data*, %struct.lp_data** %3, align 8
  %125 = getelementptr inbounds %struct.lp_data, %struct.lp_data* %124, i32 0, i32 2
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %125, align 8
  %127 = call %struct.mbuf* @m_devget(i64* %122, i32 %123, i32 0, %struct.TYPE_5__* %126, i32 0)
  store %struct.mbuf* %127, %struct.mbuf** %10, align 8
  %128 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %129 = icmp ne %struct.mbuf* %128, null
  br i1 %129, label %130, label %159

130:                                              ; preds = %100
  %131 = load i32, i32* %4, align 4
  %132 = call i32 @ppb_unlock(i32 %131)
  %133 = load %struct.lp_data*, %struct.lp_data** %3, align 8
  %134 = getelementptr inbounds %struct.lp_data, %struct.lp_data* %133, i32 0, i32 2
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 4
  %138 = call i64 @bpf_peers_present(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %130
  %141 = load %struct.lp_data*, %struct.lp_data** %3, align 8
  %142 = getelementptr inbounds %struct.lp_data, %struct.lp_data* %141, i32 0, i32 2
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %142, align 8
  %144 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %145 = call i32 @lptap(%struct.TYPE_5__* %143, %struct.mbuf* %144)
  br label %146

146:                                              ; preds = %140, %130
  %147 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %148 = load %struct.lp_data*, %struct.lp_data** %3, align 8
  %149 = getelementptr inbounds %struct.lp_data, %struct.lp_data* %148, i32 0, i32 2
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @M_SETFIB(%struct.mbuf* %147, i32 %152)
  %154 = load i32, i32* @NETISR_IP, align 4
  %155 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %156 = call i32 @netisr_queue(i32 %154, %struct.mbuf* %155)
  %157 = load i32, i32* %4, align 4
  %158 = call i32 @ppb_lock(i32 %157)
  br label %159

159:                                              ; preds = %146, %100
  br label %361

160:                                              ; preds = %1
  br label %161

161:                                              ; preds = %324, %160
  %162 = load i32, i32* %4, align 4
  %163 = call i32 @ppb_rstr(i32 %162)
  %164 = load i32, i32* @LPIP_SHAKE, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %325

167:                                              ; preds = %161
  %168 = load %struct.lp_data*, %struct.lp_data** %3, align 8
  %169 = getelementptr inbounds %struct.lp_data, %struct.lp_data* %168, i32 0, i32 2
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @LPIPHDRLEN, align 4
  %174 = add nsw i32 %172, %173
  store i32 %174, i32* %5, align 4
  %175 = load %struct.lp_data*, %struct.lp_data** %3, align 8
  %176 = getelementptr inbounds %struct.lp_data, %struct.lp_data* %175, i32 0, i32 0
  %177 = load i64*, i64** %176, align 8
  store i64* %177, i64** %7, align 8
  br label %178

178:                                              ; preds = %249, %167
  %179 = load i32, i32* %5, align 4
  %180 = add nsw i32 %179, -1
  store i32 %180, i32* %5, align 4
  %181 = icmp ne i32 %179, 0
  br i1 %181, label %182, label %250

182:                                              ; preds = %178
  %183 = load i32, i32* %4, align 4
  %184 = call i32 @ppb_rstr(i32 %183)
  %185 = sext i32 %184 to i64
  store i64 %185, i64* %9, align 8
  %186 = load i32, i32* %4, align 4
  %187 = call i32 @ppb_wdtr(i32 %186, i32 8)
  %188 = load i32, i32* @LPMAXSPIN2, align 4
  store i32 %188, i32* %6, align 4
  br label %189

189:                                              ; preds = %200, %182
  %190 = load i32, i32* %4, align 4
  %191 = call i32 @ppb_rstr(i32 %190)
  %192 = load i32, i32* @LPIP_SHAKE, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %189
  %196 = load i32, i32* %6, align 4
  %197 = add nsw i32 %196, -1
  store i32 %197, i32* %6, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %200, label %199

199:                                              ; preds = %195
  br label %326

200:                                              ; preds = %195
  br label %189

201:                                              ; preds = %189
  %202 = load i32, i32* %4, align 4
  %203 = call i32 @ppb_rstr(i32 %202)
  %204 = sext i32 %203 to i64
  store i64 %204, i64* %8, align 8
  %205 = load i32, i32* %4, align 4
  %206 = call i32 @ppb_wdtr(i32 %205, i32 0)
  %207 = load i32*, i32** @trecvh, align 8
  %208 = load i64, i64* %9, align 8
  %209 = getelementptr inbounds i32, i32* %207, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = load i32*, i32** @trecvl, align 8
  %212 = load i64, i64* %8, align 8
  %213 = getelementptr inbounds i32, i32* %211, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = or i32 %210, %214
  %216 = sext i32 %215 to i64
  %217 = load i64*, i64** %7, align 8
  %218 = getelementptr inbounds i64, i64* %217, i32 1
  store i64* %218, i64** %7, align 8
  store i64 %216, i64* %217, align 8
  %219 = load i32, i32* @LPMAXSPIN2, align 4
  store i32 %219, i32* %6, align 4
  br label %220

220:                                              ; preds = %248, %201
  %221 = load i32, i32* %4, align 4
  %222 = call i32 @ppb_rstr(i32 %221)
  %223 = sext i32 %222 to i64
  store i64 %223, i64* %9, align 8
  %224 = load i32, i32* @LPIP_SHAKE, align 4
  %225 = sext i32 %224 to i64
  %226 = and i64 %223, %225
  %227 = icmp ne i64 %226, 0
  %228 = xor i1 %227, true
  br i1 %228, label %229, label %249

229:                                              ; preds = %220
  %230 = load i64, i64* %9, align 8
  %231 = load i64, i64* %8, align 8
  %232 = icmp ne i64 %230, %231
  br i1 %232, label %233, label %243

233:                                              ; preds = %229
  %234 = load i32, i32* %4, align 4
  %235 = call i32 @ppb_rstr(i32 %234)
  %236 = sext i32 %235 to i64
  store i64 %236, i64* %9, align 8
  %237 = xor i64 %236, 184
  %238 = and i64 %237, 248
  %239 = load i64, i64* %8, align 8
  %240 = and i64 %239, 248
  %241 = icmp eq i64 %238, %240
  br i1 %241, label %242, label %243

242:                                              ; preds = %233
  br label %251

243:                                              ; preds = %233, %229
  %244 = load i32, i32* %6, align 4
  %245 = add nsw i32 %244, -1
  store i32 %245, i32* %6, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %248, label %247

247:                                              ; preds = %243
  br label %326

248:                                              ; preds = %243
  br label %220

249:                                              ; preds = %220
  br label %178

250:                                              ; preds = %178
  br label %251

251:                                              ; preds = %250, %242
  %252 = load i64*, i64** %7, align 8
  %253 = load %struct.lp_data*, %struct.lp_data** %3, align 8
  %254 = getelementptr inbounds %struct.lp_data, %struct.lp_data* %253, i32 0, i32 0
  %255 = load i64*, i64** %254, align 8
  %256 = ptrtoint i64* %252 to i64
  %257 = ptrtoint i64* %255 to i64
  %258 = sub i64 %256, %257
  %259 = sdiv exact i64 %258, 8
  %260 = trunc i64 %259 to i32
  store i32 %260, i32* %5, align 4
  %261 = load i32, i32* %5, align 4
  %262 = load i32, i32* @LPIPHDRLEN, align 4
  %263 = icmp sle i32 %261, %262
  br i1 %263, label %264, label %265

264:                                              ; preds = %251
  br label %326

265:                                              ; preds = %251
  %266 = load %struct.lp_data*, %struct.lp_data** %3, align 8
  %267 = getelementptr inbounds %struct.lp_data, %struct.lp_data* %266, i32 0, i32 1
  store i64 0, i64* %267, align 8
  %268 = load i32, i32* @LPIPHDRLEN, align 4
  %269 = load i32, i32* %5, align 4
  %270 = sub nsw i32 %269, %268
  store i32 %270, i32* %5, align 4
  %271 = load %struct.lp_data*, %struct.lp_data** %3, align 8
  %272 = getelementptr inbounds %struct.lp_data, %struct.lp_data* %271, i32 0, i32 2
  %273 = load %struct.TYPE_5__*, %struct.TYPE_5__** %272, align 8
  %274 = load i32, i32* @IFCOUNTER_IPACKETS, align 4
  %275 = call i32 @if_inc_counter(%struct.TYPE_5__* %273, i32 %274, i32 1)
  %276 = load %struct.lp_data*, %struct.lp_data** %3, align 8
  %277 = getelementptr inbounds %struct.lp_data, %struct.lp_data* %276, i32 0, i32 2
  %278 = load %struct.TYPE_5__*, %struct.TYPE_5__** %277, align 8
  %279 = load i32, i32* @IFCOUNTER_IBYTES, align 4
  %280 = load i32, i32* %5, align 4
  %281 = call i32 @if_inc_counter(%struct.TYPE_5__* %278, i32 %279, i32 %280)
  %282 = load %struct.lp_data*, %struct.lp_data** %3, align 8
  %283 = getelementptr inbounds %struct.lp_data, %struct.lp_data* %282, i32 0, i32 0
  %284 = load i64*, i64** %283, align 8
  %285 = load i32, i32* @LPIPHDRLEN, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i64, i64* %284, i64 %286
  %288 = load i32, i32* %5, align 4
  %289 = load %struct.lp_data*, %struct.lp_data** %3, align 8
  %290 = getelementptr inbounds %struct.lp_data, %struct.lp_data* %289, i32 0, i32 2
  %291 = load %struct.TYPE_5__*, %struct.TYPE_5__** %290, align 8
  %292 = call %struct.mbuf* @m_devget(i64* %287, i32 %288, i32 0, %struct.TYPE_5__* %291, i32 0)
  store %struct.mbuf* %292, %struct.mbuf** %10, align 8
  %293 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %294 = icmp ne %struct.mbuf* %293, null
  br i1 %294, label %295, label %324

295:                                              ; preds = %265
  %296 = load i32, i32* %4, align 4
  %297 = call i32 @ppb_unlock(i32 %296)
  %298 = load %struct.lp_data*, %struct.lp_data** %3, align 8
  %299 = getelementptr inbounds %struct.lp_data, %struct.lp_data* %298, i32 0, i32 2
  %300 = load %struct.TYPE_5__*, %struct.TYPE_5__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %300, i32 0, i32 4
  %302 = load i32, i32* %301, align 4
  %303 = call i64 @bpf_peers_present(i32 %302)
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %311

305:                                              ; preds = %295
  %306 = load %struct.lp_data*, %struct.lp_data** %3, align 8
  %307 = getelementptr inbounds %struct.lp_data, %struct.lp_data* %306, i32 0, i32 2
  %308 = load %struct.TYPE_5__*, %struct.TYPE_5__** %307, align 8
  %309 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %310 = call i32 @lptap(%struct.TYPE_5__* %308, %struct.mbuf* %309)
  br label %311

311:                                              ; preds = %305, %295
  %312 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %313 = load %struct.lp_data*, %struct.lp_data** %3, align 8
  %314 = getelementptr inbounds %struct.lp_data, %struct.lp_data* %313, i32 0, i32 2
  %315 = load %struct.TYPE_5__*, %struct.TYPE_5__** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %315, i32 0, i32 3
  %317 = load i32, i32* %316, align 4
  %318 = call i32 @M_SETFIB(%struct.mbuf* %312, i32 %317)
  %319 = load i32, i32* @NETISR_IP, align 4
  %320 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %321 = call i32 @netisr_queue(i32 %319, %struct.mbuf* %320)
  %322 = load i32, i32* %4, align 4
  %323 = call i32 @ppb_lock(i32 %322)
  br label %324

324:                                              ; preds = %311, %265
  br label %161

325:                                              ; preds = %161
  br label %361

326:                                              ; preds = %264, %247, %199, %99, %85, %73, %58, %43, %35
  %327 = load i32, i32* %4, align 4
  %328 = call i32 @ppb_wdtr(i32 %327, i32 0)
  %329 = call i32 @lprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %330 = load %struct.lp_data*, %struct.lp_data** %3, align 8
  %331 = getelementptr inbounds %struct.lp_data, %struct.lp_data* %330, i32 0, i32 2
  %332 = load %struct.TYPE_5__*, %struct.TYPE_5__** %331, align 8
  %333 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %334 = call i32 @if_inc_counter(%struct.TYPE_5__* %332, i32 %333, i32 1)
  %335 = load %struct.lp_data*, %struct.lp_data** %3, align 8
  %336 = getelementptr inbounds %struct.lp_data, %struct.lp_data* %335, i32 0, i32 1
  %337 = load i64, i64* %336, align 8
  %338 = add nsw i64 %337, 1
  store i64 %338, i64* %336, align 8
  %339 = load %struct.lp_data*, %struct.lp_data** %3, align 8
  %340 = getelementptr inbounds %struct.lp_data, %struct.lp_data* %339, i32 0, i32 1
  %341 = load i64, i64* %340, align 8
  %342 = load i64, i64* @LPMAXERRS, align 8
  %343 = icmp sgt i64 %341, %342
  br i1 %343, label %344, label %361

344:                                              ; preds = %326
  %345 = load %struct.lp_data*, %struct.lp_data** %3, align 8
  %346 = getelementptr inbounds %struct.lp_data, %struct.lp_data* %345, i32 0, i32 2
  %347 = load %struct.TYPE_5__*, %struct.TYPE_5__** %346, align 8
  %348 = call i32 @if_printf(%struct.TYPE_5__* %347, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %349 = load i32, i32* %4, align 4
  %350 = call i32 @ppb_wctr(i32 %349, i32 0)
  %351 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %352 = xor i32 %351, -1
  %353 = load %struct.lp_data*, %struct.lp_data** %3, align 8
  %354 = getelementptr inbounds %struct.lp_data, %struct.lp_data* %353, i32 0, i32 2
  %355 = load %struct.TYPE_5__*, %struct.TYPE_5__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %355, i32 0, i32 2
  %357 = load i32, i32* %356, align 4
  %358 = and i32 %357, %352
  store i32 %358, i32* %356, align 4
  %359 = load %struct.lp_data*, %struct.lp_data** %3, align 8
  %360 = getelementptr inbounds %struct.lp_data, %struct.lp_data* %359, i32 0, i32 1
  store i64 0, i64* %360, align 8
  br label %361

361:                                              ; preds = %159, %325, %344, %326
  ret void
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @ppb_assert_locked(i32) #1

declare dso_local i32 @ppb_wdtr(i32, i32) #1

declare dso_local i32 @clpinbyte(i32, i32) #1

declare dso_local i32 @if_inc_counter(%struct.TYPE_5__*, i32, i32) #1

declare dso_local %struct.mbuf* @m_devget(i64*, i32, i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @ppb_unlock(i32) #1

declare dso_local i64 @bpf_peers_present(i32) #1

declare dso_local i32 @lptap(%struct.TYPE_5__*, %struct.mbuf*) #1

declare dso_local i32 @M_SETFIB(%struct.mbuf*, i32) #1

declare dso_local i32 @netisr_queue(i32, %struct.mbuf*) #1

declare dso_local i32 @ppb_lock(i32) #1

declare dso_local i32 @ppb_rstr(i32) #1

declare dso_local i32 @lprintf(i8*) #1

declare dso_local i32 @if_printf(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @ppb_wctr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
