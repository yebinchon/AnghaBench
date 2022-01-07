; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_sb16.c_sb_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_sb16.c_sb_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sb_info = type { i32, %struct.sb_chinfo, %struct.sb_chinfo, i32, i32 }
%struct.sb_chinfo = type { i32, i32, i32, i32, i32, i64 }

@BD_F_DMARUN = common dso_local global i32 0, align 4
@PCMTRIG_STOP = common dso_local global i32 0, align 4
@BD_F_DMARUN2 = common dso_local global i32 0, align 4
@BD_F_SB16X = common dso_local global i32 0, align 4
@AFMT_16BIT = common dso_local global i32 0, align 4
@PCMDIR_PLAY = common dso_local global i32 0, align 4
@PCMDIR_REC = common dso_local global i32 0, align 4
@DSP_CMD_OUT16 = common dso_local global i32 0, align 4
@DSP_F16_AUTO = common dso_local global i32 0, align 4
@DSP_F16_FIFO_ON = common dso_local global i32 0, align 4
@DSP_F16_DAC = common dso_local global i32 0, align 4
@DSP_DMA16 = common dso_local global i32 0, align 4
@DSP_DMA8 = common dso_local global i32 0, align 4
@DSP_F16_STEREO = common dso_local global i32 0, align 4
@AFMT_SIGNED = common dso_local global i32 0, align 4
@DSP_F16_SIGNED = common dso_local global i32 0, align 4
@PCMTRIG_START = common dso_local global i32 0, align 4
@DSP_CMD_IN16 = common dso_local global i32 0, align 4
@DSP_F16_ADC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sb_info*)* @sb_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sb_setup(%struct.sb_info* %0) #0 {
  %2 = alloca %struct.sb_info*, align 8
  %3 = alloca %struct.sb_chinfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sb_info* %0, %struct.sb_info** %2, align 8
  %7 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %8 = call i32 @sb_lock(%struct.sb_info* %7)
  %9 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %10 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @BD_F_DMARUN, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %17 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @PCMTRIG_STOP, align 4
  %21 = call i32 @sndbuf_dma(i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %15, %1
  %23 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %24 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @BD_F_DMARUN2, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %22
  %30 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %31 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @PCMTRIG_STOP, align 4
  %35 = call i32 @sndbuf_dma(i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %29, %22
  %37 = load i32, i32* @BD_F_DMARUN, align 4
  %38 = load i32, i32* @BD_F_DMARUN2, align 4
  %39 = or i32 %37, %38
  %40 = xor i32 %39, -1
  %41 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %42 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %46 = call i32 @sb_reset_dsp(%struct.sb_info* %45)
  %47 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %48 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @BD_F_SB16X, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %109

53:                                               ; preds = %36
  %54 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %55 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %55, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 1, i32 0
  store i32 %60, i32* %6, align 4
  %61 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %62 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %53
  %68 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %69 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  br label %75

71:                                               ; preds = %53
  %72 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %73 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  br label %75

75:                                               ; preds = %71, %67
  %76 = phi i32 [ %70, %67 ], [ %74, %71 ]
  %77 = call i32 @sndbuf_dmasetup(i32 %64, i32 %76)
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i32 1, i32 0
  %82 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %83 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %83, i32 0, i32 0
  store i32 %81, i32* %84, align 8
  %85 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %86 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %75
  %92 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %93 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  br label %99

95:                                               ; preds = %75
  %96 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %97 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  br label %99

99:                                               ; preds = %95, %91
  %100 = phi i32 [ %94, %91 ], [ %98, %95 ]
  %101 = call i32 @sndbuf_dmasetup(i32 %88, i32 %100)
  %102 = load i32, i32* %6, align 4
  %103 = icmp ne i32 %102, 0
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i32 2, i32 1
  %106 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %107 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %107, i32 0, i32 0
  store i32 %105, i32* %108, align 8
  br label %332

109:                                              ; preds = %36
  %110 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %111 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %111, i32 0, i32 5
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %179

115:                                              ; preds = %109
  %116 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %117 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %117, i32 0, i32 5
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %179

121:                                              ; preds = %115
  %122 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %123 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @AFMT_16BIT, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i32 0, i32 1
  store i32 %130, i32* %6, align 4
  %131 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %132 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %6, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %121
  %138 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %139 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  br label %145

141:                                              ; preds = %121
  %142 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %143 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  br label %145

145:                                              ; preds = %141, %137
  %146 = phi i32 [ %140, %137 ], [ %144, %141 ]
  %147 = call i32 @sndbuf_dmasetup(i32 %134, i32 %146)
  %148 = load i32, i32* %6, align 4
  %149 = icmp ne i32 %148, 0
  %150 = zext i1 %149 to i64
  %151 = select i1 %149, i32 2, i32 1
  %152 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %153 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %153, i32 0, i32 0
  store i32 %151, i32* %154, align 8
  %155 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %156 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* %6, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %145
  %162 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %163 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 8
  br label %169

165:                                              ; preds = %145
  %166 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %167 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 4
  br label %169

169:                                              ; preds = %165, %161
  %170 = phi i32 [ %164, %161 ], [ %168, %165 ]
  %171 = call i32 @sndbuf_dmasetup(i32 %158, i32 %170)
  %172 = load i32, i32* %6, align 4
  %173 = icmp ne i32 %172, 0
  %174 = zext i1 %173 to i64
  %175 = select i1 %173, i32 1, i32 2
  %176 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %177 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %177, i32 0, i32 0
  store i32 %175, i32* %178, align 8
  br label %331

179:                                              ; preds = %115, %109
  %180 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %181 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %181, i32 0, i32 5
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %254

185:                                              ; preds = %179
  %186 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %187 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %191 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @AFMT_16BIT, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %185
  %198 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %199 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %198, i32 0, i32 4
  %200 = load i32, i32* %199, align 4
  br label %205

201:                                              ; preds = %185
  %202 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %203 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 8
  br label %205

205:                                              ; preds = %201, %197
  %206 = phi i32 [ %200, %197 ], [ %204, %201 ]
  %207 = call i32 @sndbuf_dmasetup(i32 %189, i32 %206)
  %208 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %209 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @AFMT_16BIT, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  %215 = zext i1 %214 to i64
  %216 = select i1 %214, i32 2, i32 1
  %217 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %218 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %217, i32 0, i32 2
  %219 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %218, i32 0, i32 0
  store i32 %216, i32* %219, align 8
  %220 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %221 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %221, i32 0, i32 4
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %225 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %224, i32 0, i32 2
  %226 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @AFMT_16BIT, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %205
  %232 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %233 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 8
  br label %239

235:                                              ; preds = %205
  %236 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %237 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %236, i32 0, i32 4
  %238 = load i32, i32* %237, align 4
  br label %239

239:                                              ; preds = %235, %231
  %240 = phi i32 [ %234, %231 ], [ %238, %235 ]
  %241 = call i32 @sndbuf_dmasetup(i32 %223, i32 %240)
  %242 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %243 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %242, i32 0, i32 2
  %244 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* @AFMT_16BIT, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  %249 = zext i1 %248 to i64
  %250 = select i1 %248, i32 1, i32 2
  %251 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %252 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %252, i32 0, i32 0
  store i32 %250, i32* %253, align 8
  br label %330

254:                                              ; preds = %179
  %255 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %256 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %256, i32 0, i32 5
  %258 = load i64, i64* %257, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %329

260:                                              ; preds = %254
  %261 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %262 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %261, i32 0, i32 2
  %263 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %262, i32 0, i32 4
  %264 = load i32, i32* %263, align 8
  %265 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %266 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* @AFMT_16BIT, align 4
  %270 = and i32 %268, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %276

272:                                              ; preds = %260
  %273 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %274 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %273, i32 0, i32 3
  %275 = load i32, i32* %274, align 8
  br label %280

276:                                              ; preds = %260
  %277 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %278 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %277, i32 0, i32 4
  %279 = load i32, i32* %278, align 4
  br label %280

280:                                              ; preds = %276, %272
  %281 = phi i32 [ %275, %272 ], [ %279, %276 ]
  %282 = call i32 @sndbuf_dmasetup(i32 %264, i32 %281)
  %283 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %284 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %283, i32 0, i32 1
  %285 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = load i32, i32* @AFMT_16BIT, align 4
  %288 = and i32 %286, %287
  %289 = icmp ne i32 %288, 0
  %290 = zext i1 %289 to i64
  %291 = select i1 %289, i32 1, i32 2
  %292 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %293 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %292, i32 0, i32 2
  %294 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %293, i32 0, i32 0
  store i32 %291, i32* %294, align 8
  %295 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %296 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %295, i32 0, i32 1
  %297 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %296, i32 0, i32 4
  %298 = load i32, i32* %297, align 8
  %299 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %300 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %299, i32 0, i32 1
  %301 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = load i32, i32* @AFMT_16BIT, align 4
  %304 = and i32 %302, %303
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %310

306:                                              ; preds = %280
  %307 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %308 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %307, i32 0, i32 4
  %309 = load i32, i32* %308, align 4
  br label %314

310:                                              ; preds = %280
  %311 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %312 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %311, i32 0, i32 3
  %313 = load i32, i32* %312, align 8
  br label %314

314:                                              ; preds = %310, %306
  %315 = phi i32 [ %309, %306 ], [ %313, %310 ]
  %316 = call i32 @sndbuf_dmasetup(i32 %298, i32 %315)
  %317 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %318 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %317, i32 0, i32 1
  %319 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 4
  %321 = load i32, i32* @AFMT_16BIT, align 4
  %322 = and i32 %320, %321
  %323 = icmp ne i32 %322, 0
  %324 = zext i1 %323 to i64
  %325 = select i1 %323, i32 2, i32 1
  %326 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %327 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %326, i32 0, i32 1
  %328 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %327, i32 0, i32 0
  store i32 %325, i32* %328, align 8
  br label %329

329:                                              ; preds = %314, %254
  br label %330

330:                                              ; preds = %329, %239
  br label %331

331:                                              ; preds = %330, %169
  br label %332

332:                                              ; preds = %331, %99
  %333 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %334 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %333, i32 0, i32 2
  %335 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %334, i32 0, i32 4
  %336 = load i32, i32* %335, align 8
  %337 = load i32, i32* @PCMDIR_PLAY, align 4
  %338 = call i32 @sndbuf_dmasetdir(i32 %336, i32 %337)
  %339 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %340 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %339, i32 0, i32 1
  %341 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %340, i32 0, i32 4
  %342 = load i32, i32* %341, align 8
  %343 = load i32, i32* @PCMDIR_REC, align 4
  %344 = call i32 @sndbuf_dmasetdir(i32 %342, i32 %343)
  %345 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %346 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %345, i32 0, i32 2
  store %struct.sb_chinfo* %346, %struct.sb_chinfo** %3, align 8
  %347 = load %struct.sb_chinfo*, %struct.sb_chinfo** %3, align 8
  %348 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %347, i32 0, i32 5
  %349 = load i64, i64* %348, align 8
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %445

351:                                              ; preds = %332
  %352 = load %struct.sb_chinfo*, %struct.sb_chinfo** %3, align 8
  %353 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %352, i32 0, i32 2
  %354 = load i32, i32* %353, align 8
  store i32 %354, i32* %5, align 4
  %355 = load %struct.sb_chinfo*, %struct.sb_chinfo** %3, align 8
  %356 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %355, i32 0, i32 1
  %357 = load i32, i32* %356, align 4
  %358 = load i32, i32* @AFMT_16BIT, align 4
  %359 = and i32 %357, %358
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %364

361:                                              ; preds = %351
  %362 = load i32, i32* %5, align 4
  %363 = ashr i32 %362, 1
  store i32 %363, i32* %5, align 4
  br label %364

364:                                              ; preds = %361, %351
  %365 = load i32, i32* %5, align 4
  %366 = add nsw i32 %365, -1
  store i32 %366, i32* %5, align 4
  %367 = load %struct.sb_chinfo*, %struct.sb_chinfo** %3, align 8
  %368 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %367, i32 0, i32 3
  %369 = load i32, i32* %368, align 4
  %370 = call i32 @RANGE(i32 %369, i32 5000, i32 45000)
  %371 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %372 = load i32, i32* @DSP_CMD_OUT16, align 4
  %373 = call i32 @sb_cmd(%struct.sb_info* %371, i32 %372)
  %374 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %375 = load %struct.sb_chinfo*, %struct.sb_chinfo** %3, align 8
  %376 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %375, i32 0, i32 3
  %377 = load i32, i32* %376, align 4
  %378 = ashr i32 %377, 8
  %379 = call i32 @sb_cmd(%struct.sb_info* %374, i32 %378)
  %380 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %381 = load %struct.sb_chinfo*, %struct.sb_chinfo** %3, align 8
  %382 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %381, i32 0, i32 3
  %383 = load i32, i32* %382, align 4
  %384 = and i32 %383, 255
  %385 = call i32 @sb_cmd(%struct.sb_info* %380, i32 %384)
  %386 = load i32, i32* @DSP_F16_AUTO, align 4
  %387 = load i32, i32* @DSP_F16_FIFO_ON, align 4
  %388 = or i32 %386, %387
  %389 = load i32, i32* @DSP_F16_DAC, align 4
  %390 = or i32 %388, %389
  store i32 %390, i32* %4, align 4
  %391 = load %struct.sb_chinfo*, %struct.sb_chinfo** %3, align 8
  %392 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %391, i32 0, i32 1
  %393 = load i32, i32* %392, align 4
  %394 = load i32, i32* @AFMT_16BIT, align 4
  %395 = and i32 %393, %394
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %399

397:                                              ; preds = %364
  %398 = load i32, i32* @DSP_DMA16, align 4
  br label %401

399:                                              ; preds = %364
  %400 = load i32, i32* @DSP_DMA8, align 4
  br label %401

401:                                              ; preds = %399, %397
  %402 = phi i32 [ %398, %397 ], [ %400, %399 ]
  %403 = load i32, i32* %4, align 4
  %404 = or i32 %403, %402
  store i32 %404, i32* %4, align 4
  %405 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %406 = load i32, i32* %4, align 4
  %407 = call i32 @sb_cmd(%struct.sb_info* %405, i32 %406)
  %408 = load %struct.sb_chinfo*, %struct.sb_chinfo** %3, align 8
  %409 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %408, i32 0, i32 1
  %410 = load i32, i32* %409, align 4
  %411 = call i32 @AFMT_CHANNEL(i32 %410)
  %412 = icmp sgt i32 %411, 1
  br i1 %412, label %413, label %415

413:                                              ; preds = %401
  %414 = load i32, i32* @DSP_F16_STEREO, align 4
  br label %416

415:                                              ; preds = %401
  br label %416

416:                                              ; preds = %415, %413
  %417 = phi i32 [ %414, %413 ], [ 0, %415 ]
  store i32 %417, i32* %4, align 4
  %418 = load %struct.sb_chinfo*, %struct.sb_chinfo** %3, align 8
  %419 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %418, i32 0, i32 1
  %420 = load i32, i32* %419, align 4
  %421 = load i32, i32* @AFMT_SIGNED, align 4
  %422 = and i32 %420, %421
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %426

424:                                              ; preds = %416
  %425 = load i32, i32* @DSP_F16_SIGNED, align 4
  br label %427

426:                                              ; preds = %416
  br label %427

427:                                              ; preds = %426, %424
  %428 = phi i32 [ %425, %424 ], [ 0, %426 ]
  %429 = load i32, i32* %4, align 4
  %430 = or i32 %429, %428
  store i32 %430, i32* %4, align 4
  %431 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %432 = load i32, i32* %4, align 4
  %433 = load i32, i32* %5, align 4
  %434 = call i32 @sb_cmd2(%struct.sb_info* %431, i32 %432, i32 %433)
  %435 = load %struct.sb_chinfo*, %struct.sb_chinfo** %3, align 8
  %436 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %435, i32 0, i32 4
  %437 = load i32, i32* %436, align 8
  %438 = load i32, i32* @PCMTRIG_START, align 4
  %439 = call i32 @sndbuf_dma(i32 %437, i32 %438)
  %440 = load i32, i32* @BD_F_DMARUN, align 4
  %441 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %442 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %441, i32 0, i32 0
  %443 = load i32, i32* %442, align 8
  %444 = or i32 %443, %440
  store i32 %444, i32* %442, align 8
  br label %445

445:                                              ; preds = %427, %332
  %446 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %447 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %446, i32 0, i32 1
  store %struct.sb_chinfo* %447, %struct.sb_chinfo** %3, align 8
  %448 = load %struct.sb_chinfo*, %struct.sb_chinfo** %3, align 8
  %449 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %448, i32 0, i32 5
  %450 = load i64, i64* %449, align 8
  %451 = icmp ne i64 %450, 0
  br i1 %451, label %452, label %546

452:                                              ; preds = %445
  %453 = load %struct.sb_chinfo*, %struct.sb_chinfo** %3, align 8
  %454 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %453, i32 0, i32 2
  %455 = load i32, i32* %454, align 8
  store i32 %455, i32* %5, align 4
  %456 = load %struct.sb_chinfo*, %struct.sb_chinfo** %3, align 8
  %457 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %456, i32 0, i32 1
  %458 = load i32, i32* %457, align 4
  %459 = load i32, i32* @AFMT_16BIT, align 4
  %460 = and i32 %458, %459
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %465

462:                                              ; preds = %452
  %463 = load i32, i32* %5, align 4
  %464 = ashr i32 %463, 1
  store i32 %464, i32* %5, align 4
  br label %465

465:                                              ; preds = %462, %452
  %466 = load i32, i32* %5, align 4
  %467 = add nsw i32 %466, -1
  store i32 %467, i32* %5, align 4
  %468 = load %struct.sb_chinfo*, %struct.sb_chinfo** %3, align 8
  %469 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %468, i32 0, i32 3
  %470 = load i32, i32* %469, align 4
  %471 = call i32 @RANGE(i32 %470, i32 5000, i32 45000)
  %472 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %473 = load i32, i32* @DSP_CMD_IN16, align 4
  %474 = call i32 @sb_cmd(%struct.sb_info* %472, i32 %473)
  %475 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %476 = load %struct.sb_chinfo*, %struct.sb_chinfo** %3, align 8
  %477 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %476, i32 0, i32 3
  %478 = load i32, i32* %477, align 4
  %479 = ashr i32 %478, 8
  %480 = call i32 @sb_cmd(%struct.sb_info* %475, i32 %479)
  %481 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %482 = load %struct.sb_chinfo*, %struct.sb_chinfo** %3, align 8
  %483 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %482, i32 0, i32 3
  %484 = load i32, i32* %483, align 4
  %485 = and i32 %484, 255
  %486 = call i32 @sb_cmd(%struct.sb_info* %481, i32 %485)
  %487 = load i32, i32* @DSP_F16_AUTO, align 4
  %488 = load i32, i32* @DSP_F16_FIFO_ON, align 4
  %489 = or i32 %487, %488
  %490 = load i32, i32* @DSP_F16_ADC, align 4
  %491 = or i32 %489, %490
  store i32 %491, i32* %4, align 4
  %492 = load %struct.sb_chinfo*, %struct.sb_chinfo** %3, align 8
  %493 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %492, i32 0, i32 1
  %494 = load i32, i32* %493, align 4
  %495 = load i32, i32* @AFMT_16BIT, align 4
  %496 = and i32 %494, %495
  %497 = icmp ne i32 %496, 0
  br i1 %497, label %498, label %500

498:                                              ; preds = %465
  %499 = load i32, i32* @DSP_DMA16, align 4
  br label %502

500:                                              ; preds = %465
  %501 = load i32, i32* @DSP_DMA8, align 4
  br label %502

502:                                              ; preds = %500, %498
  %503 = phi i32 [ %499, %498 ], [ %501, %500 ]
  %504 = load i32, i32* %4, align 4
  %505 = or i32 %504, %503
  store i32 %505, i32* %4, align 4
  %506 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %507 = load i32, i32* %4, align 4
  %508 = call i32 @sb_cmd(%struct.sb_info* %506, i32 %507)
  %509 = load %struct.sb_chinfo*, %struct.sb_chinfo** %3, align 8
  %510 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %509, i32 0, i32 1
  %511 = load i32, i32* %510, align 4
  %512 = call i32 @AFMT_CHANNEL(i32 %511)
  %513 = icmp sgt i32 %512, 1
  br i1 %513, label %514, label %516

514:                                              ; preds = %502
  %515 = load i32, i32* @DSP_F16_STEREO, align 4
  br label %517

516:                                              ; preds = %502
  br label %517

517:                                              ; preds = %516, %514
  %518 = phi i32 [ %515, %514 ], [ 0, %516 ]
  store i32 %518, i32* %4, align 4
  %519 = load %struct.sb_chinfo*, %struct.sb_chinfo** %3, align 8
  %520 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %519, i32 0, i32 1
  %521 = load i32, i32* %520, align 4
  %522 = load i32, i32* @AFMT_SIGNED, align 4
  %523 = and i32 %521, %522
  %524 = icmp ne i32 %523, 0
  br i1 %524, label %525, label %527

525:                                              ; preds = %517
  %526 = load i32, i32* @DSP_F16_SIGNED, align 4
  br label %528

527:                                              ; preds = %517
  br label %528

528:                                              ; preds = %527, %525
  %529 = phi i32 [ %526, %525 ], [ 0, %527 ]
  %530 = load i32, i32* %4, align 4
  %531 = or i32 %530, %529
  store i32 %531, i32* %4, align 4
  %532 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %533 = load i32, i32* %4, align 4
  %534 = load i32, i32* %5, align 4
  %535 = call i32 @sb_cmd2(%struct.sb_info* %532, i32 %533, i32 %534)
  %536 = load %struct.sb_chinfo*, %struct.sb_chinfo** %3, align 8
  %537 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %536, i32 0, i32 4
  %538 = load i32, i32* %537, align 8
  %539 = load i32, i32* @PCMTRIG_START, align 4
  %540 = call i32 @sndbuf_dma(i32 %538, i32 %539)
  %541 = load i32, i32* @BD_F_DMARUN2, align 4
  %542 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %543 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %542, i32 0, i32 0
  %544 = load i32, i32* %543, align 8
  %545 = or i32 %544, %541
  store i32 %545, i32* %543, align 8
  br label %546

546:                                              ; preds = %528, %445
  %547 = load %struct.sb_info*, %struct.sb_info** %2, align 8
  %548 = call i32 @sb_unlock(%struct.sb_info* %547)
  ret i32 0
}

declare dso_local i32 @sb_lock(%struct.sb_info*) #1

declare dso_local i32 @sndbuf_dma(i32, i32) #1

declare dso_local i32 @sb_reset_dsp(%struct.sb_info*) #1

declare dso_local i32 @sndbuf_dmasetup(i32, i32) #1

declare dso_local i32 @sndbuf_dmasetdir(i32, i32) #1

declare dso_local i32 @RANGE(i32, i32, i32) #1

declare dso_local i32 @sb_cmd(%struct.sb_info*, i32) #1

declare dso_local i32 @AFMT_CHANNEL(i32) #1

declare dso_local i32 @sb_cmd2(%struct.sb_info*, i32, i32) #1

declare dso_local i32 @sb_unlock(%struct.sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
