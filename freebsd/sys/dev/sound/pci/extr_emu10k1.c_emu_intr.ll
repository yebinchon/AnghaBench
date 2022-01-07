; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10k1.c_emu_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10k1.c_emu_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i32, i32 (i32)* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64, i64 }

@EMU_IPR = common dso_local global i32 0, align 4
@EMU_IPR_INTERVALTIMER = common dso_local global i32 0, align 4
@EMU_IPR_ADCBUFFULL = common dso_local global i32 0, align 4
@EMU_IPR_ADCBUFHALFFULL = common dso_local global i32 0, align 4
@EMU_IPR_EFXBUFFULL = common dso_local global i32 0, align 4
@EMU_IPR_EFXBUFHALFFULL = common dso_local global i32 0, align 4
@EMU_IPR_MICBUFFULL = common dso_local global i32 0, align 4
@EMU_IPR_MICBUFHALFFULL = common dso_local global i32 0, align 4
@EMU_PCIERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"pci error\0A\00", align 1
@EMU_IPR_RATETRCHANGE = common dso_local global i32 0, align 4
@EMU_IPR_MIDIRECVBUFE = common dso_local global i32 0, align 4
@EMU_IPR_MIDITRANSBUFE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"dodgy irq: %x (harmless)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @emu_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emu_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sc_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.sc_info*
  store %struct.sc_info* %9, %struct.sc_info** %3, align 8
  %10 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %11 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @snd_mtxlock(i32 %12)
  br label %14

14:                                               ; preds = %1, %267
  %15 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %16 = load i32, i32* @EMU_IPR, align 4
  %17 = call i32 @emu_rd(%struct.sc_info* %15, i32 %16, i32 4)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %268

21:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @EMU_IPR_INTERVALTIMER, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32, i32* @EMU_IPR_INTERVALTIMER, align 4
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %26, %21
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @EMU_IPR_ADCBUFFULL, align 4
  %33 = load i32, i32* @EMU_IPR_ADCBUFHALFFULL, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %31, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %30
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @EMU_IPR_ADCBUFFULL, align 4
  %40 = load i32, i32* @EMU_IPR_ADCBUFHALFFULL, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %38, %41
  %43 = load i32, i32* %5, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %37, %30
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @EMU_IPR_EFXBUFFULL, align 4
  %48 = load i32, i32* @EMU_IPR_EFXBUFHALFFULL, align 4
  %49 = or i32 %47, %48
  %50 = and i32 %46, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %45
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @EMU_IPR_EFXBUFFULL, align 4
  %55 = load i32, i32* @EMU_IPR_EFXBUFHALFFULL, align 4
  %56 = or i32 %54, %55
  %57 = and i32 %53, %56
  %58 = load i32, i32* %5, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %52, %45
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @EMU_IPR_MICBUFFULL, align 4
  %63 = load i32, i32* @EMU_IPR_MICBUFHALFFULL, align 4
  %64 = or i32 %62, %63
  %65 = and i32 %61, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %60
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @EMU_IPR_MICBUFFULL, align 4
  %70 = load i32, i32* @EMU_IPR_MICBUFHALFFULL, align 4
  %71 = or i32 %69, %70
  %72 = and i32 %68, %71
  %73 = load i32, i32* %5, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %67, %60
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @EMU_PCIERROR, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %75
  %81 = load i32, i32* @EMU_PCIERROR, align 4
  %82 = load i32, i32* %5, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %5, align 4
  %84 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %85 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = call i32 (i32, i8*, ...) @device_printf(i32 %86, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %88

88:                                               ; preds = %80, %75
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @EMU_IPR_RATETRCHANGE, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load i32, i32* @EMU_IPR_RATETRCHANGE, align 4
  %95 = load i32, i32* %5, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %93, %88
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* @EMU_IPR_MIDIRECVBUFE, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %121

102:                                              ; preds = %97
  %103 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %104 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %103, i32 0, i32 6
  %105 = load i32 (i32)*, i32 (i32)** %104, align 8
  %106 = icmp ne i32 (i32)* %105, null
  br i1 %106, label %107, label %120

107:                                              ; preds = %102
  %108 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %109 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %108, i32 0, i32 6
  %110 = load i32 (i32)*, i32 (i32)** %109, align 8
  %111 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %112 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 4
  %114 = call i32 %110(i32 %113)
  %115 = load i32, i32* @EMU_IPR_MIDIRECVBUFE, align 4
  %116 = load i32, i32* @EMU_IPR_MIDITRANSBUFE, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* %5, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %5, align 4
  br label %120

120:                                              ; preds = %107, %102
  br label %121

121:                                              ; preds = %120, %97
  %122 = load i32, i32* %4, align 4
  %123 = load i32, i32* %5, align 4
  %124 = xor i32 %123, -1
  %125 = and i32 %122, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %121
  %128 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %129 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %4, align 4
  %132 = load i32, i32* %5, align 4
  %133 = xor i32 %132, -1
  %134 = and i32 %131, %133
  %135 = call i32 (i32, i8*, ...) @device_printf(i32 %130, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %134)
  br label %136

136:                                              ; preds = %127, %121
  %137 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %138 = load i32, i32* @EMU_IPR, align 4
  %139 = load i32, i32* %4, align 4
  %140 = call i32 @emu_wr(%struct.sc_info* %137, i32 %138, i32 %139, i32 4)
  %141 = load i32, i32* %5, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %267

143:                                              ; preds = %136
  %144 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %145 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @snd_mtxunlock(i32 %146)
  %148 = load i32, i32* %5, align 4
  %149 = load i32, i32* @EMU_IPR_INTERVALTIMER, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %190

152:                                              ; preds = %143
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %153

153:                                              ; preds = %180, %152
  %154 = load i32, i32* %6, align 4
  %155 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %156 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp slt i32 %154, %157
  br i1 %158, label %159, label %183

159:                                              ; preds = %153
  %160 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %161 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %160, i32 0, i32 3
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %161, align 8
  %163 = load i32, i32* %6, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %179

169:                                              ; preds = %159
  store i32 1, i32* %7, align 4
  %170 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %171 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %170, i32 0, i32 3
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %171, align 8
  %173 = load i32, i32* %6, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = call i32 @chn_intr(i64 %177)
  br label %179

179:                                              ; preds = %169, %159
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %6, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %6, align 4
  br label %153

183:                                              ; preds = %153
  %184 = load i32, i32* %7, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %183
  %187 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %188 = call i32 @emu_enatimer(%struct.sc_info* %187, i32 0)
  br label %189

189:                                              ; preds = %186, %183
  br label %190

190:                                              ; preds = %189, %143
  %191 = load i32, i32* %5, align 4
  %192 = load i32, i32* @EMU_IPR_ADCBUFFULL, align 4
  %193 = load i32, i32* @EMU_IPR_ADCBUFHALFFULL, align 4
  %194 = or i32 %192, %193
  %195 = and i32 %191, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %214

197:                                              ; preds = %190
  %198 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %199 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %198, i32 0, i32 2
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i64 0
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %213

205:                                              ; preds = %197
  %206 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %207 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %206, i32 0, i32 2
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i64 0
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = call i32 @chn_intr(i64 %211)
  br label %213

213:                                              ; preds = %205, %197
  br label %214

214:                                              ; preds = %213, %190
  %215 = load i32, i32* %5, align 4
  %216 = load i32, i32* @EMU_IPR_EFXBUFFULL, align 4
  %217 = load i32, i32* @EMU_IPR_EFXBUFHALFFULL, align 4
  %218 = or i32 %216, %217
  %219 = and i32 %215, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %238

221:                                              ; preds = %214
  %222 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %223 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %222, i32 0, i32 2
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i64 1
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %237

229:                                              ; preds = %221
  %230 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %231 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %230, i32 0, i32 2
  %232 = load %struct.TYPE_4__*, %struct.TYPE_4__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i64 1
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = call i32 @chn_intr(i64 %235)
  br label %237

237:                                              ; preds = %229, %221
  br label %238

238:                                              ; preds = %237, %214
  %239 = load i32, i32* %5, align 4
  %240 = load i32, i32* @EMU_IPR_MICBUFFULL, align 4
  %241 = load i32, i32* @EMU_IPR_MICBUFHALFFULL, align 4
  %242 = or i32 %240, %241
  %243 = and i32 %239, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %262

245:                                              ; preds = %238
  %246 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %247 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %246, i32 0, i32 2
  %248 = load %struct.TYPE_4__*, %struct.TYPE_4__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i64 2
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %261

253:                                              ; preds = %245
  %254 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %255 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %254, i32 0, i32 2
  %256 = load %struct.TYPE_4__*, %struct.TYPE_4__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i64 2
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = call i32 @chn_intr(i64 %259)
  br label %261

261:                                              ; preds = %253, %245
  br label %262

262:                                              ; preds = %261, %238
  %263 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %264 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = call i32 @snd_mtxlock(i32 %265)
  br label %267

267:                                              ; preds = %262, %136
  br label %14

268:                                              ; preds = %20
  %269 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %270 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @snd_mtxunlock(i32 %271)
  ret void
}

declare dso_local i32 @snd_mtxlock(i32) #1

declare dso_local i32 @emu_rd(%struct.sc_info*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @emu_wr(%struct.sc_info*, i32, i32, i32) #1

declare dso_local i32 @snd_mtxunlock(i32) #1

declare dso_local i32 @chn_intr(i64) #1

declare dso_local i32 @emu_enatimer(%struct.sc_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
