; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_es137x.c_eschan_trigger.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_es137x.c_eschan_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es_chinfo = type { i32, i32, i64, i64, i32, i32, i64, i64, i32, %struct.es_info* }
%struct.es_info = type { i32, i32, i64, i32, i32 }

@AFMT_16BIT = common dso_local global i32 0, align 4
@PCMDIR_PLAY = common dso_local global i64 0, align 8
@PCMTRIG_START = common dso_local global i32 0, align 4
@ES_DAC1 = common dso_local global i64 0, align 8
@CTRL_DAC1_EN = common dso_local global i32 0, align 4
@SCTRL_P1LOOPSEL = common dso_local global i32 0, align 4
@SCTRL_P1PAUSE = common dso_local global i32 0, align 4
@SCTRL_P1SCTRLD = common dso_local global i32 0, align 4
@SCTRL_P1INTEN = common dso_local global i32 0, align 4
@ES1370_REG_DAC1_SCOUNT = common dso_local global i32 0, align 4
@ES1370_REG_MEMPAGE = common dso_local global i32 0, align 4
@ES1370_REG_DAC1_FRAMECNT = common dso_local global i32 0, align 4
@CTRL_DAC2_EN = common dso_local global i32 0, align 4
@SCTRL_P2ENDINC = common dso_local global i32 0, align 4
@SCTRL_P2STINC = common dso_local global i32 0, align 4
@SCTRL_P2LOOPSEL = common dso_local global i32 0, align 4
@SCTRL_P2PAUSE = common dso_local global i32 0, align 4
@SCTRL_P2DACSEN = common dso_local global i32 0, align 4
@SCTRL_P2INTEN = common dso_local global i32 0, align 4
@SCTRL_SH_P2ENDINC = common dso_local global i32 0, align 4
@ES1370_REG_DAC2_SCOUNT = common dso_local global i32 0, align 4
@ES1370_REG_DAC2_FRAMECNT = common dso_local global i32 0, align 4
@CTRL_ADC_EN = common dso_local global i32 0, align 4
@SCTRL_R1LOOPSEL = common dso_local global i32 0, align 4
@SCTRL_R1INTEN = common dso_local global i32 0, align 4
@ES1370_REG_ADC_SCOUNT = common dso_local global i32 0, align 4
@ES1370_REG_ADC_FRAMECNT = common dso_local global i32 0, align 4
@ES1370_REG_SERIAL_CONTROL = common dso_local global i32 0, align 4
@ES1370_REG_CONTROL = common dso_local global i32 0, align 4
@es_poll_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @eschan_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eschan_trigger(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.es_chinfo*, align 8
  %9 = alloca %struct.es_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.es_chinfo*
  store %struct.es_chinfo* %13, %struct.es_chinfo** %8, align 8
  %14 = load %struct.es_chinfo*, %struct.es_chinfo** %8, align 8
  %15 = getelementptr inbounds %struct.es_chinfo, %struct.es_chinfo* %14, i32 0, i32 9
  %16 = load %struct.es_info*, %struct.es_info** %15, align 8
  store %struct.es_info* %16, %struct.es_info** %9, align 8
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @PCMTRIG_COMMON(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %341

21:                                               ; preds = %3
  %22 = load %struct.es_info*, %struct.es_info** %9, align 8
  %23 = call i32 @ES_LOCK(%struct.es_info* %22)
  %24 = load %struct.es_chinfo*, %struct.es_chinfo** %8, align 8
  %25 = getelementptr inbounds %struct.es_chinfo, %struct.es_chinfo* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.es_chinfo*, %struct.es_chinfo** %8, align 8
  %28 = getelementptr inbounds %struct.es_chinfo, %struct.es_chinfo* %27, i32 0, i32 8
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @sndbuf_getalign(i32 %29)
  %31 = sdiv i32 %26, %30
  %32 = sub nsw i32 %31, 1
  store i32 %32, i32* %10, align 4
  %33 = load %struct.es_chinfo*, %struct.es_chinfo** %8, align 8
  %34 = getelementptr inbounds %struct.es_chinfo, %struct.es_chinfo* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @AFMT_16BIT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %21
  %40 = load i32, i32* %11, align 4
  %41 = or i32 %40, 2
  store i32 %41, i32* %11, align 4
  br label %42

42:                                               ; preds = %39, %21
  %43 = load %struct.es_chinfo*, %struct.es_chinfo** %8, align 8
  %44 = getelementptr inbounds %struct.es_chinfo, %struct.es_chinfo* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @AFMT_CHANNEL(i32 %45)
  %47 = icmp sgt i32 %46, 1
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* %11, align 4
  %50 = or i32 %49, 1
  store i32 %50, i32* %11, align 4
  br label %51

51:                                               ; preds = %48, %42
  %52 = load %struct.es_chinfo*, %struct.es_chinfo** %8, align 8
  %53 = getelementptr inbounds %struct.es_chinfo, %struct.es_chinfo* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @PCMDIR_PLAY, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %212

57:                                               ; preds = %51
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @PCMTRIG_START, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %194

61:                                               ; preds = %57
  %62 = load %struct.es_chinfo*, %struct.es_chinfo** %8, align 8
  %63 = getelementptr inbounds %struct.es_chinfo, %struct.es_chinfo* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @ES_DAC1, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %124

67:                                               ; preds = %61
  %68 = load i32, i32* @CTRL_DAC1_EN, align 4
  %69 = load %struct.es_info*, %struct.es_info** %9, align 8
  %70 = getelementptr inbounds %struct.es_info, %struct.es_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  %73 = load i32, i32* @SCTRL_P1LOOPSEL, align 4
  %74 = load i32, i32* @SCTRL_P1PAUSE, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @SCTRL_P1SCTRLD, align 4
  %77 = or i32 %75, %76
  %78 = xor i32 %77, -1
  %79 = load %struct.es_info*, %struct.es_info** %9, align 8
  %80 = getelementptr inbounds %struct.es_info, %struct.es_info* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, %78
  store i32 %82, i32* %80, align 4
  %83 = load %struct.es_info*, %struct.es_info** %9, align 8
  %84 = getelementptr inbounds %struct.es_info, %struct.es_info* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %67
  %88 = load i32, i32* @SCTRL_P1INTEN, align 4
  %89 = load %struct.es_info*, %struct.es_info** %9, align 8
  %90 = getelementptr inbounds %struct.es_info, %struct.es_info* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  br label %100

93:                                               ; preds = %67
  %94 = load i32, i32* @SCTRL_P1INTEN, align 4
  %95 = xor i32 %94, -1
  %96 = load %struct.es_info*, %struct.es_info** %9, align 8
  %97 = getelementptr inbounds %struct.es_info, %struct.es_info* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, %95
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %93, %87
  %101 = load i32, i32* %11, align 4
  %102 = load %struct.es_info*, %struct.es_info** %9, align 8
  %103 = getelementptr inbounds %struct.es_info, %struct.es_info* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 4
  %106 = load %struct.es_info*, %struct.es_info** %9, align 8
  %107 = load i32, i32* @ES1370_REG_DAC1_SCOUNT, align 4
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @es_wr(%struct.es_info* %106, i32 %107, i32 %108, i32 4)
  %110 = load %struct.es_info*, %struct.es_info** %9, align 8
  %111 = load i32, i32* @ES1370_REG_MEMPAGE, align 4
  %112 = load i32, i32* @ES1370_REG_DAC1_FRAMECNT, align 4
  %113 = ashr i32 %112, 8
  %114 = call i32 @es_wr(%struct.es_info* %110, i32 %111, i32 %113, i32 4)
  %115 = load %struct.es_info*, %struct.es_info** %9, align 8
  %116 = load i32, i32* @ES1370_REG_DAC1_FRAMECNT, align 4
  %117 = and i32 %116, 255
  %118 = load %struct.es_chinfo*, %struct.es_chinfo** %8, align 8
  %119 = getelementptr inbounds %struct.es_chinfo, %struct.es_chinfo* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = ashr i32 %120, 2
  %122 = sub nsw i32 %121, 1
  %123 = call i32 @es_wr(%struct.es_info* %115, i32 %117, i32 %122, i32 4)
  br label %193

124:                                              ; preds = %61
  %125 = load i32, i32* @CTRL_DAC2_EN, align 4
  %126 = load %struct.es_info*, %struct.es_info** %9, align 8
  %127 = getelementptr inbounds %struct.es_info, %struct.es_info* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 8
  %130 = load i32, i32* @SCTRL_P2ENDINC, align 4
  %131 = load i32, i32* @SCTRL_P2STINC, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @SCTRL_P2LOOPSEL, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* @SCTRL_P2PAUSE, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @SCTRL_P2DACSEN, align 4
  %138 = or i32 %136, %137
  %139 = xor i32 %138, -1
  %140 = load %struct.es_info*, %struct.es_info** %9, align 8
  %141 = getelementptr inbounds %struct.es_info, %struct.es_info* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = and i32 %142, %139
  store i32 %143, i32* %141, align 4
  %144 = load %struct.es_info*, %struct.es_info** %9, align 8
  %145 = getelementptr inbounds %struct.es_info, %struct.es_info* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %124
  %149 = load i32, i32* @SCTRL_P2INTEN, align 4
  %150 = load %struct.es_info*, %struct.es_info** %9, align 8
  %151 = getelementptr inbounds %struct.es_info, %struct.es_info* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = or i32 %152, %149
  store i32 %153, i32* %151, align 4
  br label %161

154:                                              ; preds = %124
  %155 = load i32, i32* @SCTRL_P2INTEN, align 4
  %156 = xor i32 %155, -1
  %157 = load %struct.es_info*, %struct.es_info** %9, align 8
  %158 = getelementptr inbounds %struct.es_info, %struct.es_info* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = and i32 %159, %156
  store i32 %160, i32* %158, align 4
  br label %161

161:                                              ; preds = %154, %148
  %162 = load i32, i32* %11, align 4
  %163 = shl i32 %162, 2
  %164 = load i32, i32* %11, align 4
  %165 = ashr i32 %164, 1
  %166 = and i32 %165, 1
  %167 = add nsw i32 %166, 1
  %168 = load i32, i32* @SCTRL_SH_P2ENDINC, align 4
  %169 = shl i32 %167, %168
  %170 = or i32 %163, %169
  %171 = load %struct.es_info*, %struct.es_info** %9, align 8
  %172 = getelementptr inbounds %struct.es_info, %struct.es_info* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = or i32 %173, %170
  store i32 %174, i32* %172, align 4
  %175 = load %struct.es_info*, %struct.es_info** %9, align 8
  %176 = load i32, i32* @ES1370_REG_DAC2_SCOUNT, align 4
  %177 = load i32, i32* %10, align 4
  %178 = call i32 @es_wr(%struct.es_info* %175, i32 %176, i32 %177, i32 4)
  %179 = load %struct.es_info*, %struct.es_info** %9, align 8
  %180 = load i32, i32* @ES1370_REG_MEMPAGE, align 4
  %181 = load i32, i32* @ES1370_REG_DAC2_FRAMECNT, align 4
  %182 = ashr i32 %181, 8
  %183 = call i32 @es_wr(%struct.es_info* %179, i32 %180, i32 %182, i32 4)
  %184 = load %struct.es_info*, %struct.es_info** %9, align 8
  %185 = load i32, i32* @ES1370_REG_DAC2_FRAMECNT, align 4
  %186 = and i32 %185, 255
  %187 = load %struct.es_chinfo*, %struct.es_chinfo** %8, align 8
  %188 = getelementptr inbounds %struct.es_chinfo, %struct.es_chinfo* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 8
  %190 = ashr i32 %189, 2
  %191 = sub nsw i32 %190, 1
  %192 = call i32 @es_wr(%struct.es_info* %184, i32 %186, i32 %191, i32 4)
  br label %193

193:                                              ; preds = %161, %100
  br label %211

194:                                              ; preds = %57
  %195 = load %struct.es_chinfo*, %struct.es_chinfo** %8, align 8
  %196 = getelementptr inbounds %struct.es_chinfo, %struct.es_chinfo* %195, i32 0, i32 3
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @ES_DAC1, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %202

200:                                              ; preds = %194
  %201 = load i32, i32* @CTRL_DAC1_EN, align 4
  br label %204

202:                                              ; preds = %194
  %203 = load i32, i32* @CTRL_DAC2_EN, align 4
  br label %204

204:                                              ; preds = %202, %200
  %205 = phi i32 [ %201, %200 ], [ %203, %202 ]
  %206 = xor i32 %205, -1
  %207 = load %struct.es_info*, %struct.es_info** %9, align 8
  %208 = getelementptr inbounds %struct.es_info, %struct.es_info* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = and i32 %209, %206
  store i32 %210, i32* %208, align 8
  br label %211

211:                                              ; preds = %204, %193
  br label %278

212:                                              ; preds = %51
  %213 = load i32, i32* %7, align 4
  %214 = load i32, i32* @PCMTRIG_START, align 4
  %215 = icmp eq i32 %213, %214
  br i1 %215, label %216, label %270

216:                                              ; preds = %212
  %217 = load i32, i32* @CTRL_ADC_EN, align 4
  %218 = load %struct.es_info*, %struct.es_info** %9, align 8
  %219 = getelementptr inbounds %struct.es_info, %struct.es_info* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = or i32 %220, %217
  store i32 %221, i32* %219, align 8
  %222 = load i32, i32* @SCTRL_R1LOOPSEL, align 4
  %223 = xor i32 %222, -1
  %224 = load %struct.es_info*, %struct.es_info** %9, align 8
  %225 = getelementptr inbounds %struct.es_info, %struct.es_info* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = and i32 %226, %223
  store i32 %227, i32* %225, align 4
  %228 = load %struct.es_info*, %struct.es_info** %9, align 8
  %229 = getelementptr inbounds %struct.es_info, %struct.es_info* %228, i32 0, i32 2
  %230 = load i64, i64* %229, align 8
  %231 = icmp eq i64 %230, 0
  br i1 %231, label %232, label %238

232:                                              ; preds = %216
  %233 = load i32, i32* @SCTRL_R1INTEN, align 4
  %234 = load %struct.es_info*, %struct.es_info** %9, align 8
  %235 = getelementptr inbounds %struct.es_info, %struct.es_info* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = or i32 %236, %233
  store i32 %237, i32* %235, align 4
  br label %245

238:                                              ; preds = %216
  %239 = load i32, i32* @SCTRL_R1INTEN, align 4
  %240 = xor i32 %239, -1
  %241 = load %struct.es_info*, %struct.es_info** %9, align 8
  %242 = getelementptr inbounds %struct.es_info, %struct.es_info* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = and i32 %243, %240
  store i32 %244, i32* %242, align 4
  br label %245

245:                                              ; preds = %238, %232
  %246 = load i32, i32* %11, align 4
  %247 = shl i32 %246, 4
  %248 = load %struct.es_info*, %struct.es_info** %9, align 8
  %249 = getelementptr inbounds %struct.es_info, %struct.es_info* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = or i32 %250, %247
  store i32 %251, i32* %249, align 4
  %252 = load %struct.es_info*, %struct.es_info** %9, align 8
  %253 = load i32, i32* @ES1370_REG_ADC_SCOUNT, align 4
  %254 = load i32, i32* %10, align 4
  %255 = call i32 @es_wr(%struct.es_info* %252, i32 %253, i32 %254, i32 4)
  %256 = load %struct.es_info*, %struct.es_info** %9, align 8
  %257 = load i32, i32* @ES1370_REG_MEMPAGE, align 4
  %258 = load i32, i32* @ES1370_REG_ADC_FRAMECNT, align 4
  %259 = ashr i32 %258, 8
  %260 = call i32 @es_wr(%struct.es_info* %256, i32 %257, i32 %259, i32 4)
  %261 = load %struct.es_info*, %struct.es_info** %9, align 8
  %262 = load i32, i32* @ES1370_REG_ADC_FRAMECNT, align 4
  %263 = and i32 %262, 255
  %264 = load %struct.es_chinfo*, %struct.es_chinfo** %8, align 8
  %265 = getelementptr inbounds %struct.es_chinfo, %struct.es_chinfo* %264, i32 0, i32 4
  %266 = load i32, i32* %265, align 8
  %267 = ashr i32 %266, 2
  %268 = sub nsw i32 %267, 1
  %269 = call i32 @es_wr(%struct.es_info* %261, i32 %263, i32 %268, i32 4)
  br label %277

270:                                              ; preds = %212
  %271 = load i32, i32* @CTRL_ADC_EN, align 4
  %272 = xor i32 %271, -1
  %273 = load %struct.es_info*, %struct.es_info** %9, align 8
  %274 = getelementptr inbounds %struct.es_info, %struct.es_info* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = and i32 %275, %272
  store i32 %276, i32* %274, align 8
  br label %277

277:                                              ; preds = %270, %245
  br label %278

278:                                              ; preds = %277, %211
  %279 = load %struct.es_info*, %struct.es_info** %9, align 8
  %280 = load i32, i32* @ES1370_REG_SERIAL_CONTROL, align 4
  %281 = load %struct.es_info*, %struct.es_info** %9, align 8
  %282 = getelementptr inbounds %struct.es_info, %struct.es_info* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = call i32 @es_wr(%struct.es_info* %279, i32 %280, i32 %283, i32 4)
  %285 = load %struct.es_info*, %struct.es_info** %9, align 8
  %286 = load i32, i32* @ES1370_REG_CONTROL, align 4
  %287 = load %struct.es_info*, %struct.es_info** %9, align 8
  %288 = getelementptr inbounds %struct.es_info, %struct.es_info* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = call i32 @es_wr(%struct.es_info* %285, i32 %286, i32 %289, i32 4)
  %291 = load i32, i32* %7, align 4
  %292 = load i32, i32* @PCMTRIG_START, align 4
  %293 = icmp eq i32 %291, %292
  br i1 %293, label %294, label %319

294:                                              ; preds = %278
  %295 = load %struct.es_info*, %struct.es_info** %9, align 8
  %296 = getelementptr inbounds %struct.es_info, %struct.es_info* %295, i32 0, i32 2
  %297 = load i64, i64* %296, align 8
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %316

299:                                              ; preds = %294
  %300 = load %struct.es_chinfo*, %struct.es_chinfo** %8, align 8
  %301 = getelementptr inbounds %struct.es_chinfo, %struct.es_chinfo* %300, i32 0, i32 7
  store i64 0, i64* %301, align 8
  %302 = load %struct.es_chinfo*, %struct.es_chinfo** %8, align 8
  %303 = getelementptr inbounds %struct.es_chinfo, %struct.es_chinfo* %302, i32 0, i32 6
  store i64 0, i64* %303, align 8
  %304 = load %struct.es_info*, %struct.es_info** %9, align 8
  %305 = call i64 @es_chan_active(%struct.es_info* %304)
  %306 = icmp eq i64 %305, 0
  br i1 %306, label %307, label %315

307:                                              ; preds = %299
  %308 = load %struct.es_info*, %struct.es_info** %9, align 8
  %309 = getelementptr inbounds %struct.es_info, %struct.es_info* %308, i32 0, i32 3
  store i32 1, i32* %309, align 8
  %310 = load %struct.es_info*, %struct.es_info** %9, align 8
  %311 = getelementptr inbounds %struct.es_info, %struct.es_info* %310, i32 0, i32 4
  %312 = load i32, i32* @es_poll_callback, align 4
  %313 = load %struct.es_info*, %struct.es_info** %9, align 8
  %314 = call i32 @callout_reset(i32* %311, i32 1, i32 %312, %struct.es_info* %313)
  br label %315

315:                                              ; preds = %307, %299
  br label %316

316:                                              ; preds = %315, %294
  %317 = load %struct.es_chinfo*, %struct.es_chinfo** %8, align 8
  %318 = getelementptr inbounds %struct.es_chinfo, %struct.es_chinfo* %317, i32 0, i32 5
  store i32 1, i32* %318, align 4
  br label %338

319:                                              ; preds = %278
  %320 = load %struct.es_chinfo*, %struct.es_chinfo** %8, align 8
  %321 = getelementptr inbounds %struct.es_chinfo, %struct.es_chinfo* %320, i32 0, i32 5
  store i32 0, i32* %321, align 4
  %322 = load %struct.es_info*, %struct.es_info** %9, align 8
  %323 = getelementptr inbounds %struct.es_info, %struct.es_info* %322, i32 0, i32 2
  %324 = load i64, i64* %323, align 8
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %337

326:                                              ; preds = %319
  %327 = load %struct.es_info*, %struct.es_info** %9, align 8
  %328 = call i64 @es_chan_active(%struct.es_info* %327)
  %329 = icmp eq i64 %328, 0
  br i1 %329, label %330, label %336

330:                                              ; preds = %326
  %331 = load %struct.es_info*, %struct.es_info** %9, align 8
  %332 = getelementptr inbounds %struct.es_info, %struct.es_info* %331, i32 0, i32 4
  %333 = call i32 @callout_stop(i32* %332)
  %334 = load %struct.es_info*, %struct.es_info** %9, align 8
  %335 = getelementptr inbounds %struct.es_info, %struct.es_info* %334, i32 0, i32 3
  store i32 1, i32* %335, align 8
  br label %336

336:                                              ; preds = %330, %326
  br label %337

337:                                              ; preds = %336, %319
  br label %338

338:                                              ; preds = %337, %316
  %339 = load %struct.es_info*, %struct.es_info** %9, align 8
  %340 = call i32 @ES_UNLOCK(%struct.es_info* %339)
  store i32 0, i32* %4, align 4
  br label %341

341:                                              ; preds = %338, %20
  %342 = load i32, i32* %4, align 4
  ret i32 %342
}

declare dso_local i32 @PCMTRIG_COMMON(i32) #1

declare dso_local i32 @ES_LOCK(%struct.es_info*) #1

declare dso_local i32 @sndbuf_getalign(i32) #1

declare dso_local i32 @AFMT_CHANNEL(i32) #1

declare dso_local i32 @es_wr(%struct.es_info*, i32, i32, i32) #1

declare dso_local i64 @es_chan_active(%struct.es_info*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.es_info*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @ES_UNLOCK(%struct.es_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
