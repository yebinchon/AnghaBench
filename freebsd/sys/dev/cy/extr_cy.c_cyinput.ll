; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cy/extr_cy.c_cyinput.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cy/extr_cy.c_cyinput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.com_s = type { i32*, i32*, i32, i64, i32, i32, i32, i32*, %struct.tty* }
%struct.tty = type { i32, i64, i32, i32, i64*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@TS_ISOPEN = common dso_local global i32 0, align 4
@cy_events = common dso_local global i32 0, align 4
@TS_CAN_BYPASS_L_RINT = common dso_local global i32 0, align 4
@CS_RTS_IFLOW = common dso_local global i32 0, align 4
@IXOFF = common dso_local global i32 0, align 4
@TS_TBLOCK = common dso_local global i32 0, align 4
@CE_TTY_BUF_OVERFLOW = common dso_local global i64 0, align 8
@tk_nin = common dso_local global i32 0, align 4
@tk_rawcc = common dso_local global i32 0, align 4
@TS_TTSTOP = common dso_local global i32 0, align 4
@IXANY = common dso_local global i32 0, align 4
@VSTART = common dso_local global i64 0, align 8
@VSTOP = common dso_local global i64 0, align 8
@FLUSHO = common dso_local global i32 0, align 4
@CD1400_RDSR_BREAK = common dso_local global i32 0, align 4
@CD1400_RDSR_FE = common dso_local global i32 0, align 4
@CD1400_RDSR_OE = common dso_local global i32 0, align 4
@CD1400_RDSR_PE = common dso_local global i32 0, align 4
@TTY_BI = common dso_local global i32 0, align 4
@TTY_FE = common dso_local global i32 0, align 4
@TTY_OE = common dso_local global i32 0, align 4
@TTY_PE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.com_s*)* @cyinput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cyinput(%struct.com_s* %0) #0 {
  %2 = alloca %struct.com_s*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tty*, align 8
  store %struct.com_s* %0, %struct.com_s** %2, align 8
  %8 = load %struct.com_s*, %struct.com_s** %2, align 8
  %9 = getelementptr inbounds %struct.com_s, %struct.com_s* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %3, align 8
  %11 = load %struct.com_s*, %struct.com_s** %2, align 8
  %12 = getelementptr inbounds %struct.com_s, %struct.com_s* %11, i32 0, i32 8
  %13 = load %struct.tty*, %struct.tty** %12, align 8
  store %struct.tty* %13, %struct.tty** %7, align 8
  %14 = load %struct.tty*, %struct.tty** %7, align 8
  %15 = getelementptr inbounds %struct.tty, %struct.tty* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @TS_ISOPEN, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %40, label %20

20:                                               ; preds = %1
  %21 = load %struct.com_s*, %struct.com_s** %2, align 8
  %22 = getelementptr inbounds %struct.com_s, %struct.com_s* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.com_s*, %struct.com_s** %2, align 8
  %25 = getelementptr inbounds %struct.com_s, %struct.com_s* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = ptrtoint i32* %23 to i64
  %28 = ptrtoint i32* %26 to i64
  %29 = sub i64 %27, %28
  %30 = sdiv exact i64 %29, 4
  %31 = load i32, i32* @cy_events, align 4
  %32 = sext i32 %31 to i64
  %33 = sub nsw i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* @cy_events, align 4
  %35 = load %struct.com_s*, %struct.com_s** %2, align 8
  %36 = getelementptr inbounds %struct.com_s, %struct.com_s* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.com_s*, %struct.com_s** %2, align 8
  %39 = getelementptr inbounds %struct.com_s, %struct.com_s* %38, i32 0, i32 1
  store i32* %37, i32** %39, align 8
  br label %308

40:                                               ; preds = %1
  %41 = load %struct.tty*, %struct.tty** %7, align 8
  %42 = getelementptr inbounds %struct.tty, %struct.tty* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @TS_CAN_BYPASS_L_RINT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %180

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %173, %47
  %49 = call i32 (...) @COM_UNLOCK()
  %50 = call i32 (...) @critical_exit()
  %51 = load %struct.com_s*, %struct.com_s** %2, align 8
  %52 = getelementptr inbounds %struct.com_s, %struct.com_s* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i32*, i32** %3, align 8
  %55 = ptrtoint i32* %53 to i64
  %56 = ptrtoint i32* %54 to i64
  %57 = sub i64 %55, %56
  %58 = sdiv exact i64 %57, 4
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %4, align 4
  %60 = load %struct.tty*, %struct.tty** %7, align 8
  %61 = getelementptr inbounds %struct.tty, %struct.tty* %60, i32 0, i32 6
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %63, %65
  %67 = load %struct.tty*, %struct.tty** %7, align 8
  %68 = getelementptr inbounds %struct.tty, %struct.tty* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp sgt i64 %66, %69
  br i1 %70, label %71, label %95

71:                                               ; preds = %48
  %72 = load %struct.com_s*, %struct.com_s** %2, align 8
  %73 = getelementptr inbounds %struct.com_s, %struct.com_s* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @CS_RTS_IFLOW, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %71
  %79 = load %struct.tty*, %struct.tty** %7, align 8
  %80 = getelementptr inbounds %struct.tty, %struct.tty* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @IXOFF, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %78, %71
  %86 = load %struct.tty*, %struct.tty** %7, align 8
  %87 = getelementptr inbounds %struct.tty, %struct.tty* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @TS_TBLOCK, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %85
  %93 = load %struct.tty*, %struct.tty** %7, align 8
  %94 = call i32 @ttyblock(%struct.tty* %93)
  br label %95

95:                                               ; preds = %92, %85, %78, %48
  %96 = load i32*, i32** %3, align 8
  %97 = bitcast i32* %96 to i8*
  %98 = load i32, i32* %4, align 4
  %99 = load %struct.tty*, %struct.tty** %7, align 8
  %100 = getelementptr inbounds %struct.tty, %struct.tty* %99, i32 0, i32 6
  %101 = call i64 @b_to_q(i8* %97, i32 %98, %struct.TYPE_2__* %100)
  %102 = load %struct.com_s*, %struct.com_s** %2, align 8
  %103 = getelementptr inbounds %struct.com_s, %struct.com_s* %102, i32 0, i32 7
  %104 = load i32*, i32** %103, align 8
  %105 = load i64, i64* @CE_TTY_BUF_OVERFLOW, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %108, %101
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %106, align 4
  %111 = load i32, i32* %4, align 4
  %112 = load i32*, i32** %3, align 8
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  store i32* %114, i32** %3, align 8
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* @tk_nin, align 4
  %117 = add nsw i32 %116, %115
  store i32 %117, i32* @tk_nin, align 4
  %118 = load i32, i32* %4, align 4
  %119 = load i32, i32* @tk_rawcc, align 4
  %120 = add nsw i32 %119, %118
  store i32 %120, i32* @tk_rawcc, align 4
  %121 = load i32, i32* %4, align 4
  %122 = load %struct.tty*, %struct.tty** %7, align 8
  %123 = getelementptr inbounds %struct.tty, %struct.tty* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, %121
  store i32 %125, i32* %123, align 4
  %126 = load %struct.tty*, %struct.tty** %7, align 8
  %127 = call i32 @ttwakeup(%struct.tty* %126)
  %128 = load %struct.tty*, %struct.tty** %7, align 8
  %129 = getelementptr inbounds %struct.tty, %struct.tty* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @TS_TTSTOP, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %170

134:                                              ; preds = %95
  %135 = load %struct.tty*, %struct.tty** %7, align 8
  %136 = getelementptr inbounds %struct.tty, %struct.tty* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @IXANY, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %155, label %141

141:                                              ; preds = %134
  %142 = load %struct.tty*, %struct.tty** %7, align 8
  %143 = getelementptr inbounds %struct.tty, %struct.tty* %142, i32 0, i32 4
  %144 = load i64*, i64** %143, align 8
  %145 = load i64, i64* @VSTART, align 8
  %146 = getelementptr inbounds i64, i64* %144, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.tty*, %struct.tty** %7, align 8
  %149 = getelementptr inbounds %struct.tty, %struct.tty* %148, i32 0, i32 4
  %150 = load i64*, i64** %149, align 8
  %151 = load i64, i64* @VSTOP, align 8
  %152 = getelementptr inbounds i64, i64* %150, i64 %151
  %153 = load i64, i64* %152, align 8
  %154 = icmp eq i64 %147, %153
  br i1 %154, label %155, label %170

155:                                              ; preds = %141, %134
  %156 = load i32, i32* @TS_TTSTOP, align 4
  %157 = xor i32 %156, -1
  %158 = load %struct.tty*, %struct.tty** %7, align 8
  %159 = getelementptr inbounds %struct.tty, %struct.tty* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = and i32 %160, %157
  store i32 %161, i32* %159, align 8
  %162 = load i32, i32* @FLUSHO, align 4
  %163 = xor i32 %162, -1
  %164 = load %struct.tty*, %struct.tty** %7, align 8
  %165 = getelementptr inbounds %struct.tty, %struct.tty* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 8
  %167 = and i32 %166, %163
  store i32 %167, i32* %165, align 8
  %168 = load %struct.tty*, %struct.tty** %7, align 8
  %169 = call i32 @cystart(%struct.tty* %168)
  br label %170

170:                                              ; preds = %155, %141, %95
  %171 = call i32 (...) @critical_enter()
  %172 = call i32 (...) @COM_LOCK()
  br label %173

173:                                              ; preds = %170
  %174 = load i32*, i32** %3, align 8
  %175 = load %struct.com_s*, %struct.com_s** %2, align 8
  %176 = getelementptr inbounds %struct.com_s, %struct.com_s* %175, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = icmp ult i32* %174, %177
  br i1 %178, label %48, label %179

179:                                              ; preds = %173
  br label %253

180:                                              ; preds = %40
  br label %181

181:                                              ; preds = %246, %180
  %182 = call i32 (...) @COM_UNLOCK()
  %183 = call i32 (...) @critical_exit()
  %184 = load i32*, i32** %3, align 8
  %185 = load %struct.com_s*, %struct.com_s** %2, align 8
  %186 = getelementptr inbounds %struct.com_s, %struct.com_s* %185, i32 0, i32 3
  %187 = load i64, i64* %186, align 8
  %188 = getelementptr inbounds i32, i32* %184, i64 %187
  %189 = load i32, i32* %188, align 4
  store i32 %189, i32* %5, align 4
  %190 = load i32*, i32** %3, align 8
  %191 = getelementptr inbounds i32, i32* %190, i32 1
  store i32* %191, i32** %3, align 8
  %192 = load i32, i32* %190, align 4
  store i32 %192, i32* %6, align 4
  %193 = load i32, i32* %5, align 4
  %194 = load i32, i32* @CD1400_RDSR_BREAK, align 4
  %195 = load i32, i32* @CD1400_RDSR_FE, align 4
  %196 = or i32 %194, %195
  %197 = load i32, i32* @CD1400_RDSR_OE, align 4
  %198 = or i32 %196, %197
  %199 = load i32, i32* @CD1400_RDSR_PE, align 4
  %200 = or i32 %198, %199
  %201 = and i32 %193, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %240

203:                                              ; preds = %181
  %204 = load i32, i32* %5, align 4
  %205 = load i32, i32* @CD1400_RDSR_BREAK, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %203
  %209 = load i32, i32* @TTY_BI, align 4
  %210 = load i32, i32* %6, align 4
  %211 = or i32 %210, %209
  store i32 %211, i32* %6, align 4
  br label %212

212:                                              ; preds = %208, %203
  %213 = load i32, i32* %5, align 4
  %214 = load i32, i32* @CD1400_RDSR_FE, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %212
  %218 = load i32, i32* @TTY_FE, align 4
  %219 = load i32, i32* %6, align 4
  %220 = or i32 %219, %218
  store i32 %220, i32* %6, align 4
  br label %221

221:                                              ; preds = %217, %212
  %222 = load i32, i32* %5, align 4
  %223 = load i32, i32* @CD1400_RDSR_OE, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %221
  %227 = load i32, i32* @TTY_OE, align 4
  %228 = load i32, i32* %6, align 4
  %229 = or i32 %228, %227
  store i32 %229, i32* %6, align 4
  br label %230

230:                                              ; preds = %226, %221
  %231 = load i32, i32* %5, align 4
  %232 = load i32, i32* @CD1400_RDSR_PE, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %239

235:                                              ; preds = %230
  %236 = load i32, i32* @TTY_PE, align 4
  %237 = load i32, i32* %6, align 4
  %238 = or i32 %237, %236
  store i32 %238, i32* %6, align 4
  br label %239

239:                                              ; preds = %235, %230
  br label %240

240:                                              ; preds = %239, %181
  %241 = load %struct.tty*, %struct.tty** %7, align 8
  %242 = load i32, i32* %6, align 4
  %243 = call i32 @ttyld_rint(%struct.tty* %241, i32 %242)
  %244 = call i32 (...) @critical_enter()
  %245 = call i32 (...) @COM_LOCK()
  br label %246

246:                                              ; preds = %240
  %247 = load i32*, i32** %3, align 8
  %248 = load %struct.com_s*, %struct.com_s** %2, align 8
  %249 = getelementptr inbounds %struct.com_s, %struct.com_s* %248, i32 0, i32 1
  %250 = load i32*, i32** %249, align 8
  %251 = icmp ult i32* %247, %250
  br i1 %251, label %181, label %252

252:                                              ; preds = %246
  br label %253

253:                                              ; preds = %252, %179
  %254 = load %struct.com_s*, %struct.com_s** %2, align 8
  %255 = getelementptr inbounds %struct.com_s, %struct.com_s* %254, i32 0, i32 1
  %256 = load i32*, i32** %255, align 8
  %257 = load %struct.com_s*, %struct.com_s** %2, align 8
  %258 = getelementptr inbounds %struct.com_s, %struct.com_s* %257, i32 0, i32 0
  %259 = load i32*, i32** %258, align 8
  %260 = ptrtoint i32* %256 to i64
  %261 = ptrtoint i32* %259 to i64
  %262 = sub i64 %260, %261
  %263 = sdiv exact i64 %262, 4
  %264 = load i32, i32* @cy_events, align 4
  %265 = sext i32 %264 to i64
  %266 = sub nsw i64 %265, %263
  %267 = trunc i64 %266 to i32
  store i32 %267, i32* @cy_events, align 4
  %268 = load %struct.com_s*, %struct.com_s** %2, align 8
  %269 = getelementptr inbounds %struct.com_s, %struct.com_s* %268, i32 0, i32 0
  %270 = load i32*, i32** %269, align 8
  %271 = load %struct.com_s*, %struct.com_s** %2, align 8
  %272 = getelementptr inbounds %struct.com_s, %struct.com_s* %271, i32 0, i32 1
  store i32* %270, i32** %272, align 8
  %273 = load %struct.com_s*, %struct.com_s** %2, align 8
  %274 = getelementptr inbounds %struct.com_s, %struct.com_s* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 8
  %276 = load i32, i32* @CS_RTS_IFLOW, align 4
  %277 = and i32 %275, %276
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %308

279:                                              ; preds = %253
  %280 = load %struct.com_s*, %struct.com_s** %2, align 8
  %281 = getelementptr inbounds %struct.com_s, %struct.com_s* %280, i32 0, i32 4
  %282 = load i32, i32* %281, align 8
  %283 = load %struct.com_s*, %struct.com_s** %2, align 8
  %284 = getelementptr inbounds %struct.com_s, %struct.com_s* %283, i32 0, i32 5
  %285 = load i32, i32* %284, align 4
  %286 = and i32 %282, %285
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %308, label %288

288:                                              ; preds = %279
  %289 = load %struct.tty*, %struct.tty** %7, align 8
  %290 = getelementptr inbounds %struct.tty, %struct.tty* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = load i32, i32* @TS_TBLOCK, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %308, label %295

295:                                              ; preds = %288
  %296 = load %struct.com_s*, %struct.com_s** %2, align 8
  %297 = load %struct.com_s*, %struct.com_s** %2, align 8
  %298 = getelementptr inbounds %struct.com_s, %struct.com_s* %297, i32 0, i32 6
  %299 = load i32, i32* %298, align 8
  %300 = load %struct.com_s*, %struct.com_s** %2, align 8
  %301 = getelementptr inbounds %struct.com_s, %struct.com_s* %300, i32 0, i32 5
  %302 = load i32, i32* %301, align 4
  %303 = load %struct.com_s*, %struct.com_s** %2, align 8
  %304 = getelementptr inbounds %struct.com_s, %struct.com_s* %303, i32 0, i32 4
  %305 = load i32, i32* %304, align 8
  %306 = or i32 %305, %302
  store i32 %306, i32* %304, align 8
  %307 = call i32 @cd_setreg(%struct.com_s* %296, i32 %299, i32 %306)
  br label %308

308:                                              ; preds = %20, %295, %288, %279, %253
  ret void
}

declare dso_local i32 @COM_UNLOCK(...) #1

declare dso_local i32 @critical_exit(...) #1

declare dso_local i32 @ttyblock(%struct.tty*) #1

declare dso_local i64 @b_to_q(i8*, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @ttwakeup(%struct.tty*) #1

declare dso_local i32 @cystart(%struct.tty*) #1

declare dso_local i32 @critical_enter(...) #1

declare dso_local i32 @COM_LOCK(...) #1

declare dso_local i32 @ttyld_rint(%struct.tty*, i32) #1

declare dso_local i32 @cd_setreg(%struct.com_s*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
