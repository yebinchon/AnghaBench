; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_select_chan_group.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_select_chan_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.run_softc = type { i32*, i32, i32, i32, i64, i64 }

@RT2860_TX_BAND_CFG = common dso_local global i32 0, align 4
@RT2860_5G_BAND_SEL_N = common dso_local global i32 0, align 4
@RT2860_5G_BAND_SEL_P = common dso_local global i32 0, align 4
@RT2860_RFTR_EN = common dso_local global i32 0, align 4
@RT2860_TRSW_EN = common dso_local global i32 0, align 4
@RT2860_LNA_PE0_EN = common dso_local global i32 0, align 4
@RT2860_LNA_PE1_EN = common dso_local global i32 0, align 4
@RT2860_PA_PE_G0_EN = common dso_local global i32 0, align 4
@RT2860_PA_PE_G1_EN = common dso_local global i32 0, align 4
@RT2860_PA_PE_A0_EN = common dso_local global i32 0, align 4
@RT2860_PA_PE_A1_EN = common dso_local global i32 0, align 4
@RT2860_TX_PIN_CFG = common dso_local global i32 0, align 4
@RT2860_GPIO_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.run_softc*, i32)* @run_select_chan_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_select_chan_group(%struct.run_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.run_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.run_softc* %0, %struct.run_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %8 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %9 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = sub nsw i32 55, %14
  %16 = call i32 @run_bbp_write(%struct.run_softc* %7, i32 62, i32 %15)
  %17 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %18 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %19 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 55, %24
  %26 = call i32 @run_bbp_write(%struct.run_softc* %17, i32 63, i32 %25)
  %27 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %28 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %29 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 55, %34
  %36 = call i32 @run_bbp_write(%struct.run_softc* %27, i32 64, i32 %35)
  %37 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %38 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %39, 13682
  br i1 %40, label %41, label %44

41:                                               ; preds = %2
  %42 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %43 = call i32 @run_bbp_write(%struct.run_softc* %42, i32 86, i32 0)
  br label %44

44:                                               ; preds = %41, %2
  %45 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %46 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 13715
  br i1 %48, label %49, label %58

49:                                               ; preds = %44
  %50 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %51 = call i32 @run_bbp_write(%struct.run_softc* %50, i32 77, i32 152)
  %52 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %53 = load i32, i32* %4, align 4
  %54 = icmp eq i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 138, i32 154
  %57 = call i32 @run_bbp_write(%struct.run_softc* %52, i32 83, i32 %56)
  br label %58

58:                                               ; preds = %49, %44
  %59 = load i32, i32* %4, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %140

61:                                               ; preds = %58
  %62 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %63 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %62, i32 0, i32 5
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %61
  %67 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %68 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = icmp sge i32 %69, 21392
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %73 = call i32 @run_bbp_write(%struct.run_softc* %72, i32 75, i32 82)
  br label %79

74:                                               ; preds = %66
  %75 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %76 = call i32 @run_bbp_write(%struct.run_softc* %75, i32 82, i32 98)
  %77 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %78 = call i32 @run_bbp_write(%struct.run_softc* %77, i32 75, i32 70)
  br label %79

79:                                               ; preds = %74, %71
  br label %139

80:                                               ; preds = %61
  %81 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %82 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %83, 21906
  br i1 %84, label %85, label %118

85:                                               ; preds = %80
  %86 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %87 = call i32 @run_bbp_write(%struct.run_softc* %86, i32 79, i32 28)
  %88 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %89 = call i32 @run_bbp_write(%struct.run_softc* %88, i32 80, i32 14)
  %90 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %91 = call i32 @run_bbp_write(%struct.run_softc* %90, i32 81, i32 58)
  %92 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %93 = call i32 @run_bbp_write(%struct.run_softc* %92, i32 82, i32 98)
  %94 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %95 = call i32 @run_bbp_write(%struct.run_softc* %94, i32 195, i32 128)
  %96 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %97 = call i32 @run_bbp_write(%struct.run_softc* %96, i32 196, i32 224)
  %98 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %99 = call i32 @run_bbp_write(%struct.run_softc* %98, i32 195, i32 129)
  %100 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %101 = call i32 @run_bbp_write(%struct.run_softc* %100, i32 196, i32 31)
  %102 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %103 = call i32 @run_bbp_write(%struct.run_softc* %102, i32 195, i32 130)
  %104 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %105 = call i32 @run_bbp_write(%struct.run_softc* %104, i32 196, i32 56)
  %106 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %107 = call i32 @run_bbp_write(%struct.run_softc* %106, i32 195, i32 131)
  %108 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %109 = call i32 @run_bbp_write(%struct.run_softc* %108, i32 196, i32 50)
  %110 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %111 = call i32 @run_bbp_write(%struct.run_softc* %110, i32 195, i32 133)
  %112 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %113 = call i32 @run_bbp_write(%struct.run_softc* %112, i32 196, i32 40)
  %114 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %115 = call i32 @run_bbp_write(%struct.run_softc* %114, i32 195, i32 134)
  %116 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %117 = call i32 @run_bbp_write(%struct.run_softc* %116, i32 196, i32 25)
  br label %138

118:                                              ; preds = %80
  %119 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %120 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = icmp sge i32 %121, 21392
  br i1 %122, label %123, label %126

123:                                              ; preds = %118
  %124 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %125 = call i32 @run_bbp_write(%struct.run_softc* %124, i32 75, i32 80)
  br label %137

126:                                              ; preds = %118
  %127 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %128 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %129 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = icmp eq i32 %130, 13715
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i32 98, i32 132
  %134 = call i32 @run_bbp_write(%struct.run_softc* %127, i32 82, i32 %133)
  %135 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %136 = call i32 @run_bbp_write(%struct.run_softc* %135, i32 75, i32 80)
  br label %137

137:                                              ; preds = %126, %123
  br label %138

138:                                              ; preds = %137, %85
  br label %139

139:                                              ; preds = %138, %79
  br label %208

140:                                              ; preds = %58
  %141 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %142 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = icmp eq i32 %143, 21906
  br i1 %144, label %145, label %178

145:                                              ; preds = %140
  %146 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %147 = call i32 @run_bbp_write(%struct.run_softc* %146, i32 79, i32 24)
  %148 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %149 = call i32 @run_bbp_write(%struct.run_softc* %148, i32 80, i32 8)
  %150 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %151 = call i32 @run_bbp_write(%struct.run_softc* %150, i32 81, i32 56)
  %152 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %153 = call i32 @run_bbp_write(%struct.run_softc* %152, i32 82, i32 146)
  %154 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %155 = call i32 @run_bbp_write(%struct.run_softc* %154, i32 195, i32 128)
  %156 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %157 = call i32 @run_bbp_write(%struct.run_softc* %156, i32 196, i32 240)
  %158 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %159 = call i32 @run_bbp_write(%struct.run_softc* %158, i32 195, i32 129)
  %160 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %161 = call i32 @run_bbp_write(%struct.run_softc* %160, i32 196, i32 30)
  %162 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %163 = call i32 @run_bbp_write(%struct.run_softc* %162, i32 195, i32 130)
  %164 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %165 = call i32 @run_bbp_write(%struct.run_softc* %164, i32 196, i32 40)
  %166 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %167 = call i32 @run_bbp_write(%struct.run_softc* %166, i32 195, i32 131)
  %168 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %169 = call i32 @run_bbp_write(%struct.run_softc* %168, i32 196, i32 32)
  %170 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %171 = call i32 @run_bbp_write(%struct.run_softc* %170, i32 195, i32 133)
  %172 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %173 = call i32 @run_bbp_write(%struct.run_softc* %172, i32 196, i32 127)
  %174 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %175 = call i32 @run_bbp_write(%struct.run_softc* %174, i32 195, i32 134)
  %176 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %177 = call i32 @run_bbp_write(%struct.run_softc* %176, i32 196, i32 127)
  br label %196

178:                                              ; preds = %140
  %179 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %180 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = icmp eq i32 %181, 13682
  br i1 %182, label %183, label %186

183:                                              ; preds = %178
  %184 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %185 = call i32 @run_bbp_write(%struct.run_softc* %184, i32 82, i32 148)
  br label %195

186:                                              ; preds = %178
  %187 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %188 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %189 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = icmp eq i32 %190, 13715
  %192 = zext i1 %191 to i64
  %193 = select i1 %191, i32 130, i32 242
  %194 = call i32 @run_bbp_write(%struct.run_softc* %187, i32 82, i32 %193)
  br label %195

195:                                              ; preds = %186, %183
  br label %196

196:                                              ; preds = %195, %145
  %197 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %198 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %197, i32 0, i32 4
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %196
  %202 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %203 = call i32 @run_bbp_write(%struct.run_softc* %202, i32 75, i32 70)
  br label %207

204:                                              ; preds = %196
  %205 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %206 = call i32 @run_bbp_write(%struct.run_softc* %205, i32 75, i32 80)
  br label %207

207:                                              ; preds = %204, %201
  br label %208

208:                                              ; preds = %207, %139
  %209 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %210 = load i32, i32* @RT2860_TX_BAND_CFG, align 4
  %211 = call i32 @run_read(%struct.run_softc* %209, i32 %210, i32* %5)
  %212 = load i32, i32* @RT2860_5G_BAND_SEL_N, align 4
  %213 = load i32, i32* @RT2860_5G_BAND_SEL_P, align 4
  %214 = or i32 %212, %213
  %215 = xor i32 %214, -1
  %216 = load i32, i32* %5, align 4
  %217 = and i32 %216, %215
  store i32 %217, i32* %5, align 4
  %218 = load i32, i32* %4, align 4
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %208
  %221 = load i32, i32* @RT2860_5G_BAND_SEL_N, align 4
  br label %224

222:                                              ; preds = %208
  %223 = load i32, i32* @RT2860_5G_BAND_SEL_P, align 4
  br label %224

224:                                              ; preds = %222, %220
  %225 = phi i32 [ %221, %220 ], [ %223, %222 ]
  %226 = load i32, i32* %5, align 4
  %227 = or i32 %226, %225
  store i32 %227, i32* %5, align 4
  %228 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %229 = load i32, i32* @RT2860_TX_BAND_CFG, align 4
  %230 = load i32, i32* %5, align 4
  %231 = call i32 @run_write(%struct.run_softc* %228, i32 %229, i32 %230)
  %232 = load i32, i32* @RT2860_RFTR_EN, align 4
  %233 = load i32, i32* @RT2860_TRSW_EN, align 4
  %234 = or i32 %232, %233
  %235 = load i32, i32* @RT2860_LNA_PE0_EN, align 4
  %236 = or i32 %234, %235
  store i32 %236, i32* %5, align 4
  %237 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %238 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 8
  %240 = icmp eq i32 %239, 13715
  br i1 %240, label %241, label %244

241:                                              ; preds = %224
  %242 = load i32, i32* %5, align 4
  %243 = or i32 %242, 805306368
  store i32 %243, i32* %5, align 4
  br label %244

244:                                              ; preds = %241, %224
  %245 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %246 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 4
  %248 = icmp sgt i32 %247, 1
  br i1 %248, label %249, label %253

249:                                              ; preds = %244
  %250 = load i32, i32* @RT2860_LNA_PE1_EN, align 4
  %251 = load i32, i32* %5, align 4
  %252 = or i32 %251, %250
  store i32 %252, i32* %5, align 4
  br label %253

253:                                              ; preds = %249, %244
  %254 = load i32, i32* %4, align 4
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %283

256:                                              ; preds = %253
  %257 = load i32, i32* @RT2860_PA_PE_G0_EN, align 4
  %258 = load i32, i32* %5, align 4
  %259 = or i32 %258, %257
  store i32 %259, i32* %5, align 4
  %260 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %261 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 8
  %263 = icmp sgt i32 %262, 1
  br i1 %263, label %264, label %268

264:                                              ; preds = %256
  %265 = load i32, i32* @RT2860_PA_PE_G1_EN, align 4
  %266 = load i32, i32* %5, align 4
  %267 = or i32 %266, %265
  store i32 %267, i32* %5, align 4
  br label %268

268:                                              ; preds = %264, %256
  %269 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %270 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 8
  %272 = icmp eq i32 %271, 13715
  br i1 %272, label %273, label %282

273:                                              ; preds = %268
  %274 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %275 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %274, i32 0, i32 3
  %276 = load i32, i32* %275, align 8
  %277 = icmp sgt i32 %276, 2
  br i1 %277, label %278, label %281

278:                                              ; preds = %273
  %279 = load i32, i32* %5, align 4
  %280 = or i32 %279, 33554432
  store i32 %280, i32* %5, align 4
  br label %281

281:                                              ; preds = %278, %273
  br label %282

282:                                              ; preds = %281, %268
  br label %296

283:                                              ; preds = %253
  %284 = load i32, i32* @RT2860_PA_PE_A0_EN, align 4
  %285 = load i32, i32* %5, align 4
  %286 = or i32 %285, %284
  store i32 %286, i32* %5, align 4
  %287 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %288 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %287, i32 0, i32 3
  %289 = load i32, i32* %288, align 8
  %290 = icmp sgt i32 %289, 1
  br i1 %290, label %291, label %295

291:                                              ; preds = %283
  %292 = load i32, i32* @RT2860_PA_PE_A1_EN, align 4
  %293 = load i32, i32* %5, align 4
  %294 = or i32 %293, %292
  store i32 %294, i32* %5, align 4
  br label %295

295:                                              ; preds = %291, %283
  br label %296

296:                                              ; preds = %295, %282
  %297 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %298 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 8
  %300 = icmp eq i32 %299, 13682
  br i1 %300, label %301, label %310

301:                                              ; preds = %296
  %302 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %303 = call i32 @run_rt3070_rf_write(%struct.run_softc* %302, i32 8, i32 0)
  %304 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %305 = load i32, i32* @RT2860_TX_PIN_CFG, align 4
  %306 = load i32, i32* %5, align 4
  %307 = call i32 @run_write(%struct.run_softc* %304, i32 %305, i32 %306)
  %308 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %309 = call i32 @run_rt3070_rf_write(%struct.run_softc* %308, i32 8, i32 128)
  br label %315

310:                                              ; preds = %296
  %311 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %312 = load i32, i32* @RT2860_TX_PIN_CFG, align 4
  %313 = load i32, i32* %5, align 4
  %314 = call i32 @run_write(%struct.run_softc* %311, i32 %312, i32 %313)
  br label %315

315:                                              ; preds = %310, %301
  %316 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %317 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 8
  %319 = icmp eq i32 %318, 21906
  br i1 %319, label %320, label %325

320:                                              ; preds = %315
  %321 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %322 = call i32 @run_bbp_write(%struct.run_softc* %321, i32 195, i32 141)
  %323 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %324 = call i32 @run_bbp_write(%struct.run_softc* %323, i32 196, i32 26)
  br label %325

325:                                              ; preds = %320, %315
  %326 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %327 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 8
  %329 = icmp eq i32 %328, 13715
  br i1 %329, label %330, label %349

330:                                              ; preds = %325
  %331 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %332 = load i32, i32* @RT2860_GPIO_CTRL, align 4
  %333 = call i32 @run_read(%struct.run_softc* %331, i32 %332, i32* %5)
  %334 = load i32, i32* %5, align 4
  %335 = and i32 %334, -16842753
  store i32 %335, i32* %5, align 4
  %336 = load i32, i32* %4, align 4
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %338, label %341

338:                                              ; preds = %330
  %339 = load i32, i32* %5, align 4
  %340 = or i32 %339, 65536
  store i32 %340, i32* %5, align 4
  br label %341

341:                                              ; preds = %338, %330
  %342 = load i32, i32* %5, align 4
  %343 = and i32 %342, -37009
  %344 = or i32 %343, 144
  store i32 %344, i32* %5, align 4
  %345 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %346 = load i32, i32* @RT2860_GPIO_CTRL, align 4
  %347 = load i32, i32* %5, align 4
  %348 = call i32 @run_write(%struct.run_softc* %345, i32 %346, i32 %347)
  br label %349

349:                                              ; preds = %341, %325
  %350 = load i32, i32* %4, align 4
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %352, label %373

352:                                              ; preds = %349
  %353 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %354 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %353, i32 0, i32 1
  %355 = load i32, i32* %354, align 8
  %356 = icmp sge i32 %355, 12400
  br i1 %356, label %357, label %365

357:                                              ; preds = %352
  %358 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %359 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %358, i32 0, i32 0
  %360 = load i32*, i32** %359, align 8
  %361 = getelementptr inbounds i32, i32* %360, i64 0
  %362 = load i32, i32* %361, align 4
  %363 = mul nsw i32 %362, 2
  %364 = add nsw i32 28, %363
  store i32 %364, i32* %6, align 4
  br label %372

365:                                              ; preds = %352
  %366 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %367 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %366, i32 0, i32 0
  %368 = load i32*, i32** %367, align 8
  %369 = getelementptr inbounds i32, i32* %368, i64 0
  %370 = load i32, i32* %369, align 4
  %371 = add nsw i32 46, %370
  store i32 %371, i32* %6, align 4
  br label %372

372:                                              ; preds = %365, %357
  br label %422

373:                                              ; preds = %349
  %374 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %375 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %374, i32 0, i32 1
  %376 = load i32, i32* %375, align 8
  %377 = icmp eq i32 %376, 21906
  br i1 %377, label %378, label %388

378:                                              ; preds = %373
  %379 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %380 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %379, i32 0, i32 0
  %381 = load i32*, i32** %380, align 8
  %382 = load i32, i32* %4, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i32, i32* %381, i64 %383
  %385 = load i32, i32* %384, align 4
  %386 = mul nsw i32 %385, 2
  %387 = add nsw i32 36, %386
  store i32 %387, i32* %6, align 4
  br label %421

388:                                              ; preds = %373
  %389 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %390 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %389, i32 0, i32 1
  %391 = load i32, i32* %390, align 8
  %392 = icmp eq i32 %391, 13682
  br i1 %392, label %398, label %393

393:                                              ; preds = %388
  %394 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %395 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %394, i32 0, i32 1
  %396 = load i32, i32* %395, align 8
  %397 = icmp eq i32 %396, 13715
  br i1 %397, label %398, label %409

398:                                              ; preds = %393, %388
  %399 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %400 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %399, i32 0, i32 0
  %401 = load i32*, i32** %400, align 8
  %402 = load i32, i32* %4, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i32, i32* %401, i64 %403
  %405 = load i32, i32* %404, align 4
  %406 = mul nsw i32 %405, 5
  %407 = sdiv i32 %406, 3
  %408 = add nsw i32 34, %407
  store i32 %408, i32* %6, align 4
  br label %420

409:                                              ; preds = %393
  %410 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %411 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %410, i32 0, i32 0
  %412 = load i32*, i32** %411, align 8
  %413 = load i32, i32* %4, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds i32, i32* %412, i64 %414
  %416 = load i32, i32* %415, align 4
  %417 = mul nsw i32 %416, 5
  %418 = sdiv i32 %417, 3
  %419 = add nsw i32 50, %418
  store i32 %419, i32* %6, align 4
  br label %420

420:                                              ; preds = %409, %398
  br label %421

421:                                              ; preds = %420, %378
  br label %422

422:                                              ; preds = %421, %372
  %423 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %424 = load i32, i32* %6, align 4
  %425 = call i32 @run_set_agc(%struct.run_softc* %423, i32 %424)
  ret void
}

declare dso_local i32 @run_bbp_write(%struct.run_softc*, i32, i32) #1

declare dso_local i32 @run_read(%struct.run_softc*, i32, i32*) #1

declare dso_local i32 @run_write(%struct.run_softc*, i32, i32) #1

declare dso_local i32 @run_rt3070_rf_write(%struct.run_softc*, i32, i32) #1

declare dso_local i32 @run_set_agc(%struct.run_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
