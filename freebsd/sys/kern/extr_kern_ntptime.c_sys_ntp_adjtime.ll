; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_ntptime.c_sys_ntp_adjtime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_ntptime.c_sys_ntp_adjtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32* }
%struct.ntp_adjtime_args = type { i64 }
%struct.timex = type { i32, i32, i64, i64, i64, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@PRIV_NTP_ADJTIME = common dso_local global i32 0, align 4
@MOD_MAXERROR = common dso_local global i32 0, align 4
@time_maxerror = common dso_local global i32 0, align 4
@MOD_ESTERROR = common dso_local global i32 0, align 4
@time_esterror = common dso_local global i32 0, align 4
@MOD_STATUS = common dso_local global i32 0, align 4
@time_status = common dso_local global i32 0, align 4
@STA_PLL = common dso_local global i32 0, align 4
@TIME_OK = common dso_local global i32 0, align 4
@time_state = common dso_local global i32 0, align 4
@STA_UNSYNC = common dso_local global i32 0, align 4
@STA_RONLY = common dso_local global i32 0, align 4
@MOD_TIMECONST = common dso_local global i32 0, align 4
@time_constant = common dso_local global i64 0, align 8
@MAXTC = common dso_local global i64 0, align 8
@MOD_TAI = common dso_local global i32 0, align 4
@time_tai = common dso_local global i64 0, align 8
@MOD_NANO = common dso_local global i32 0, align 4
@STA_NANO = common dso_local global i32 0, align 4
@MOD_MICRO = common dso_local global i32 0, align 4
@MOD_CLKB = common dso_local global i32 0, align 4
@STA_CLK = common dso_local global i32 0, align 4
@MOD_CLKA = common dso_local global i32 0, align 4
@MOD_FREQUENCY = common dso_local global i32 0, align 4
@MAXFREQ = common dso_local global i64 0, align 8
@time_freq = common dso_local global i64 0, align 8
@MOD_OFFSET = common dso_local global i32 0, align 4
@time_offset = common dso_local global i64 0, align 8
@time_precision = common dso_local global i32 0, align 4
@SCALE_PPM = common dso_local global i64 0, align 8
@TIME_ERROR = common dso_local global i32 0, align 4
@MOD_PPSMAX = common dso_local global i32 0, align 4
@PPS_FAVG = common dso_local global i64 0, align 8
@PPS_FAVGMAX = common dso_local global i64 0, align 8
@pps_calcnt = common dso_local global i32 0, align 4
@pps_errcnt = common dso_local global i32 0, align 4
@pps_freq = common dso_local global i64 0, align 8
@pps_jitcnt = common dso_local global i32 0, align 4
@pps_jitter = common dso_local global i32 0, align 4
@pps_shift = common dso_local global i64 0, align 8
@pps_shiftmax = common dso_local global i64 0, align 8
@pps_stabil = common dso_local global i32 0, align 4
@pps_stbcnt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_ntp_adjtime(%struct.thread* %0, %struct.ntp_adjtime_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.ntp_adjtime_args*, align 8
  %6 = alloca %struct.timex, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.ntp_adjtime_args* %1, %struct.ntp_adjtime_args** %5, align 8
  %11 = load %struct.ntp_adjtime_args*, %struct.ntp_adjtime_args** %5, align 8
  %12 = getelementptr inbounds %struct.ntp_adjtime_args, %struct.ntp_adjtime_args* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = trunc i64 %13 to i32
  %15 = ptrtoint %struct.timex* %6 to i32
  %16 = call i32 @copyin(i32 %14, i32 %15, i32 88)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %3, align 4
  br label %280

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.timex, %struct.timex* %6, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load %struct.thread*, %struct.thread** %4, align 8
  %28 = load i32, i32* @PRIV_NTP_ADJTIME, align 4
  %29 = call i32 @priv_check(%struct.thread* %27, i32 %28)
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %26, %21
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %3, align 4
  br label %280

35:                                               ; preds = %30
  %36 = call i32 (...) @NTP_LOCK()
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @MOD_MAXERROR, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.timex, %struct.timex* %6, i32 0, i32 16
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* @time_maxerror, align 4
  br label %44

44:                                               ; preds = %41, %35
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @MOD_ESTERROR, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.timex, %struct.timex* %6, i32 0, i32 15
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* @time_esterror, align 4
  br label %52

52:                                               ; preds = %49, %44
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @MOD_STATUS, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %82

57:                                               ; preds = %52
  %58 = load i32, i32* @time_status, align 4
  %59 = load i32, i32* @STA_PLL, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.timex, %struct.timex* %6, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @STA_PLL, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %62
  %69 = load i32, i32* @TIME_OK, align 4
  store i32 %69, i32* @time_state, align 4
  %70 = load i32, i32* @STA_UNSYNC, align 4
  store i32 %70, i32* @time_status, align 4
  br label %71

71:                                               ; preds = %68, %62, %57
  %72 = load i32, i32* @STA_RONLY, align 4
  %73 = load i32, i32* @time_status, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* @time_status, align 4
  %75 = getelementptr inbounds %struct.timex, %struct.timex* %6, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @STA_RONLY, align 4
  %78 = xor i32 %77, -1
  %79 = and i32 %76, %78
  %80 = load i32, i32* @time_status, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* @time_status, align 4
  br label %82

82:                                               ; preds = %71, %52
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @MOD_TIMECONST, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %104

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.timex, %struct.timex* %6, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  store i64 0, i64* @time_constant, align 8
  br label %103

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.timex, %struct.timex* %6, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @MAXTC, align 8
  %96 = icmp sgt i64 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = load i64, i64* @MAXTC, align 8
  store i64 %98, i64* @time_constant, align 8
  br label %102

99:                                               ; preds = %92
  %100 = getelementptr inbounds %struct.timex, %struct.timex* %6, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  store i64 %101, i64* @time_constant, align 8
  br label %102

102:                                              ; preds = %99, %97
  br label %103

103:                                              ; preds = %102, %91
  br label %104

104:                                              ; preds = %103, %82
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @MOD_TAI, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.timex, %struct.timex* %6, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = icmp sgt i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.timex, %struct.timex* %6, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* @time_tai, align 8
  br label %116

116:                                              ; preds = %113, %109
  br label %117

117:                                              ; preds = %116, %104
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* @MOD_NANO, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  %123 = load i32, i32* @STA_NANO, align 4
  %124 = load i32, i32* @time_status, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* @time_status, align 4
  br label %126

126:                                              ; preds = %122, %117
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* @MOD_MICRO, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %126
  %132 = load i32, i32* @STA_NANO, align 4
  %133 = xor i32 %132, -1
  %134 = load i32, i32* @time_status, align 4
  %135 = and i32 %134, %133
  store i32 %135, i32* @time_status, align 4
  br label %136

136:                                              ; preds = %131, %126
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* @MOD_CLKB, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %136
  %142 = load i32, i32* @STA_CLK, align 4
  %143 = load i32, i32* @time_status, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* @time_status, align 4
  br label %145

145:                                              ; preds = %141, %136
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* @MOD_CLKA, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %145
  %151 = load i32, i32* @STA_CLK, align 4
  %152 = xor i32 %151, -1
  %153 = load i32, i32* @time_status, align 4
  %154 = and i32 %153, %152
  store i32 %154, i32* @time_status, align 4
  br label %155

155:                                              ; preds = %150, %145
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* @MOD_FREQUENCY, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %189

160:                                              ; preds = %155
  %161 = getelementptr inbounds %struct.timex, %struct.timex* %6, i32 0, i32 4
  %162 = load i64, i64* %161, align 8
  %163 = mul nsw i64 %162, 1000
  %164 = ashr i64 %163, 16
  store i64 %164, i64* %7, align 8
  %165 = load i64, i64* %7, align 8
  %166 = load i64, i64* @MAXFREQ, align 8
  %167 = icmp sgt i64 %165, %166
  br i1 %167, label %168, label %172

168:                                              ; preds = %160
  %169 = load i64, i64* @time_freq, align 8
  %170 = load i64, i64* @MAXFREQ, align 8
  %171 = call i32 @L_LINT(i64 %169, i64 %170)
  br label %188

172:                                              ; preds = %160
  %173 = load i64, i64* %7, align 8
  %174 = load i64, i64* @MAXFREQ, align 8
  %175 = sub nsw i64 0, %174
  %176 = icmp slt i64 %173, %175
  br i1 %176, label %177, label %182

177:                                              ; preds = %172
  %178 = load i64, i64* @time_freq, align 8
  %179 = load i64, i64* @MAXFREQ, align 8
  %180 = sub nsw i64 0, %179
  %181 = call i32 @L_LINT(i64 %178, i64 %180)
  br label %187

182:                                              ; preds = %172
  %183 = getelementptr inbounds %struct.timex, %struct.timex* %6, i32 0, i32 4
  %184 = load i64, i64* %183, align 8
  %185 = mul nsw i64 %184, 1000
  %186 = mul nsw i64 %185, 65536
  store i64 %186, i64* @time_freq, align 8
  br label %187

187:                                              ; preds = %182, %177
  br label %188

188:                                              ; preds = %187, %168
  br label %189

189:                                              ; preds = %188, %155
  %190 = load i32, i32* %8, align 4
  %191 = load i32, i32* @MOD_OFFSET, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %209

194:                                              ; preds = %189
  %195 = load i32, i32* @time_status, align 4
  %196 = load i32, i32* @STA_NANO, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %194
  %200 = getelementptr inbounds %struct.timex, %struct.timex* %6, i32 0, i32 5
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @hardupdate(i32 %201)
  br label %208

203:                                              ; preds = %194
  %204 = getelementptr inbounds %struct.timex, %struct.timex* %6, i32 0, i32 5
  %205 = load i32, i32* %204, align 8
  %206 = mul nsw i32 %205, 1000
  %207 = call i32 @hardupdate(i32 %206)
  br label %208

208:                                              ; preds = %203, %199
  br label %209

209:                                              ; preds = %208, %189
  %210 = load i32, i32* @time_status, align 4
  %211 = load i32, i32* @STA_NANO, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %209
  %215 = load i64, i64* @time_offset, align 8
  %216 = call i32 @L_GINT(i64 %215)
  %217 = getelementptr inbounds %struct.timex, %struct.timex* %6, i32 0, i32 5
  store i32 %216, i32* %217, align 8
  br label %223

218:                                              ; preds = %209
  %219 = load i64, i64* @time_offset, align 8
  %220 = call i32 @L_GINT(i64 %219)
  %221 = sdiv i32 %220, 1000
  %222 = getelementptr inbounds %struct.timex, %struct.timex* %6, i32 0, i32 5
  store i32 %221, i32* %222, align 8
  br label %223

223:                                              ; preds = %218, %214
  %224 = load i64, i64* @time_freq, align 8
  %225 = sdiv i64 %224, 1000
  %226 = shl i64 %225, 16
  %227 = call i32 @L_GINT(i64 %226)
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.timex, %struct.timex* %6, i32 0, i32 4
  store i64 %228, i64* %229, align 8
  %230 = load i32, i32* @time_maxerror, align 4
  %231 = getelementptr inbounds %struct.timex, %struct.timex* %6, i32 0, i32 16
  store i32 %230, i32* %231, align 8
  %232 = load i32, i32* @time_esterror, align 4
  %233 = getelementptr inbounds %struct.timex, %struct.timex* %6, i32 0, i32 15
  store i32 %232, i32* %233, align 4
  %234 = load i32, i32* @time_status, align 4
  %235 = getelementptr inbounds %struct.timex, %struct.timex* %6, i32 0, i32 1
  store i32 %234, i32* %235, align 4
  %236 = load i64, i64* @time_constant, align 8
  %237 = getelementptr inbounds %struct.timex, %struct.timex* %6, i32 0, i32 2
  store i64 %236, i64* %237, align 8
  %238 = load i32, i32* @time_status, align 4
  %239 = load i32, i32* @STA_NANO, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %245

242:                                              ; preds = %223
  %243 = load i32, i32* @time_precision, align 4
  %244 = getelementptr inbounds %struct.timex, %struct.timex* %6, i32 0, i32 6
  store i32 %243, i32* %244, align 4
  br label %249

245:                                              ; preds = %223
  %246 = load i32, i32* @time_precision, align 4
  %247 = sdiv i32 %246, 1000
  %248 = getelementptr inbounds %struct.timex, %struct.timex* %6, i32 0, i32 6
  store i32 %247, i32* %248, align 4
  br label %249

249:                                              ; preds = %245, %242
  %250 = load i64, i64* @MAXFREQ, align 8
  %251 = load i64, i64* @SCALE_PPM, align 8
  %252 = mul nsw i64 %250, %251
  %253 = getelementptr inbounds %struct.timex, %struct.timex* %6, i32 0, i32 7
  store i64 %252, i64* %253, align 8
  %254 = load i32, i32* @time_status, align 4
  %255 = call i64 @ntp_is_time_error(i32 %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %259

257:                                              ; preds = %249
  %258 = load i32, i32* @TIME_ERROR, align 4
  br label %261

259:                                              ; preds = %249
  %260 = load i32, i32* @time_state, align 4
  br label %261

261:                                              ; preds = %259, %257
  %262 = phi i32 [ %258, %257 ], [ %260, %259 ]
  store i32 %262, i32* %10, align 4
  %263 = call i32 (...) @NTP_UNLOCK()
  %264 = ptrtoint %struct.timex* %6 to i32
  %265 = load %struct.ntp_adjtime_args*, %struct.ntp_adjtime_args** %5, align 8
  %266 = getelementptr inbounds %struct.ntp_adjtime_args, %struct.ntp_adjtime_args* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = trunc i64 %267 to i32
  %269 = call i32 @copyout(i32 %264, i32 %268, i32 88)
  store i32 %269, i32* %9, align 4
  %270 = load i32, i32* %9, align 4
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %272, label %278

272:                                              ; preds = %261
  %273 = load i32, i32* %10, align 4
  %274 = load %struct.thread*, %struct.thread** %4, align 8
  %275 = getelementptr inbounds %struct.thread, %struct.thread* %274, i32 0, i32 0
  %276 = load i32*, i32** %275, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 0
  store i32 %273, i32* %277, align 4
  br label %278

278:                                              ; preds = %272, %261
  %279 = load i32, i32* %9, align 4
  store i32 %279, i32* %3, align 4
  br label %280

280:                                              ; preds = %278, %33, %19
  %281 = load i32, i32* %3, align 4
  ret i32 %281
}

declare dso_local i32 @copyin(i32, i32, i32) #1

declare dso_local i32 @priv_check(%struct.thread*, i32) #1

declare dso_local i32 @NTP_LOCK(...) #1

declare dso_local i32 @L_LINT(i64, i64) #1

declare dso_local i32 @hardupdate(i32) #1

declare dso_local i32 @L_GINT(i64) #1

declare dso_local i64 @ntp_is_time_error(i32) #1

declare dso_local i32 @NTP_UNLOCK(...) #1

declare dso_local i32 @copyout(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
