; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt2860_select_chan_group.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt2860_select_chan_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2860_softc = type { i32*, i32, i32, i32, i32, i64, i64 }

@RT2860_TX_BAND_CFG = common dso_local global i32 0, align 4
@RT2860_5G_BAND_SEL_N = common dso_local global i32 0, align 4
@RT2860_5G_BAND_SEL_P = common dso_local global i32 0, align 4
@RT2860_RFTR_EN = common dso_local global i32 0, align 4
@RT2860_TRSW_EN = common dso_local global i32 0, align 4
@RT2860_LNA_PE0_EN = common dso_local global i32 0, align 4
@RT2860_LNA_PE1_EN = common dso_local global i32 0, align 4
@RT3593_LNA_PE2_EN = common dso_local global i32 0, align 4
@RT2860_PA_PE_G0_EN = common dso_local global i32 0, align 4
@RT2860_PA_PE_G1_EN = common dso_local global i32 0, align 4
@RT3593_PA_PE_G2_EN = common dso_local global i32 0, align 4
@RT2860_PA_PE_A0_EN = common dso_local global i32 0, align 4
@RT2860_PA_PE_A1_EN = common dso_local global i32 0, align 4
@RT3593_PA_PE_A2_EN = common dso_local global i32 0, align 4
@RT2860_TX_PIN_CFG = common dso_local global i32 0, align 4
@RT2860_GPIO_CTRL = common dso_local global i32 0, align 4
@RT2860_PCIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2860_softc*, i32)* @rt2860_select_chan_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2860_select_chan_group(%struct.rt2860_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.rt2860_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rt2860_softc* %0, %struct.rt2860_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %8 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %9 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = sub nsw i32 55, %14
  %16 = call i32 @rt2860_mcu_bbp_write(%struct.rt2860_softc* %7, i32 62, i32 %15)
  %17 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %18 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %19 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 55, %24
  %26 = call i32 @rt2860_mcu_bbp_write(%struct.rt2860_softc* %17, i32 63, i32 %25)
  %27 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %28 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %29 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 55, %34
  %36 = call i32 @rt2860_mcu_bbp_write(%struct.rt2860_softc* %27, i32 64, i32 %35)
  %37 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %38 = call i32 @rt2860_mcu_bbp_write(%struct.rt2860_softc* %37, i32 86, i32 0)
  %39 = load i32, i32* %4, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %2
  %42 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %43 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %42, i32 0, i32 6
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %48 = call i32 @rt2860_mcu_bbp_write(%struct.rt2860_softc* %47, i32 82, i32 98)
  %49 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %50 = call i32 @rt2860_mcu_bbp_write(%struct.rt2860_softc* %49, i32 75, i32 70)
  br label %56

51:                                               ; preds = %41
  %52 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %53 = call i32 @rt2860_mcu_bbp_write(%struct.rt2860_softc* %52, i32 82, i32 132)
  %54 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %55 = call i32 @rt2860_mcu_bbp_write(%struct.rt2860_softc* %54, i32 75, i32 80)
  br label %56

56:                                               ; preds = %51, %46
  br label %73

57:                                               ; preds = %2
  %58 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %59 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %58, i32 0, i32 5
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %64 = call i32 @rt2860_mcu_bbp_write(%struct.rt2860_softc* %63, i32 82, i32 242)
  %65 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %66 = call i32 @rt2860_mcu_bbp_write(%struct.rt2860_softc* %65, i32 75, i32 70)
  br label %72

67:                                               ; preds = %57
  %68 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %69 = call i32 @rt2860_mcu_bbp_write(%struct.rt2860_softc* %68, i32 82, i32 242)
  %70 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %71 = call i32 @rt2860_mcu_bbp_write(%struct.rt2860_softc* %70, i32 75, i32 80)
  br label %72

72:                                               ; preds = %67, %62
  br label %73

73:                                               ; preds = %72, %56
  %74 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %75 = load i32, i32* @RT2860_TX_BAND_CFG, align 4
  %76 = call i32 @RAL_READ(%struct.rt2860_softc* %74, i32 %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* @RT2860_5G_BAND_SEL_N, align 4
  %78 = load i32, i32* @RT2860_5G_BAND_SEL_P, align 4
  %79 = or i32 %77, %78
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %5, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %4, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %73
  %86 = load i32, i32* @RT2860_5G_BAND_SEL_N, align 4
  br label %89

87:                                               ; preds = %73
  %88 = load i32, i32* @RT2860_5G_BAND_SEL_P, align 4
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i32 [ %86, %85 ], [ %88, %87 ]
  %91 = load i32, i32* %5, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %5, align 4
  %93 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %94 = load i32, i32* @RT2860_TX_BAND_CFG, align 4
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @RAL_WRITE(%struct.rt2860_softc* %93, i32 %94, i32 %95)
  %97 = load i32, i32* @RT2860_RFTR_EN, align 4
  %98 = load i32, i32* @RT2860_TRSW_EN, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @RT2860_LNA_PE0_EN, align 4
  %101 = or i32 %99, %100
  store i32 %101, i32* %5, align 4
  %102 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %103 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = icmp sgt i32 %104, 1
  br i1 %105, label %106, label %110

106:                                              ; preds = %89
  %107 = load i32, i32* @RT2860_LNA_PE1_EN, align 4
  %108 = load i32, i32* %5, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %106, %89
  %111 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %112 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %113, 13715
  br i1 %114, label %115, label %124

115:                                              ; preds = %110
  %116 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %117 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = icmp sgt i32 %118, 2
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load i32, i32* @RT3593_LNA_PE2_EN, align 4
  %122 = load i32, i32* %5, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %120, %115, %110
  %125 = load i32, i32* %4, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %154

127:                                              ; preds = %124
  %128 = load i32, i32* @RT2860_PA_PE_G0_EN, align 4
  %129 = load i32, i32* %5, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %5, align 4
  %131 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %132 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = icmp sgt i32 %133, 1
  br i1 %134, label %135, label %139

135:                                              ; preds = %127
  %136 = load i32, i32* @RT2860_PA_PE_G1_EN, align 4
  %137 = load i32, i32* %5, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %5, align 4
  br label %139

139:                                              ; preds = %135, %127
  %140 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %141 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = icmp eq i32 %142, 13715
  br i1 %143, label %144, label %153

144:                                              ; preds = %139
  %145 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %146 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = icmp sgt i32 %147, 2
  br i1 %148, label %149, label %153

149:                                              ; preds = %144
  %150 = load i32, i32* @RT3593_PA_PE_G2_EN, align 4
  %151 = load i32, i32* %5, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %5, align 4
  br label %153

153:                                              ; preds = %149, %144, %139
  br label %181

154:                                              ; preds = %124
  %155 = load i32, i32* @RT2860_PA_PE_A0_EN, align 4
  %156 = load i32, i32* %5, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %5, align 4
  %158 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %159 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 8
  %161 = icmp sgt i32 %160, 1
  br i1 %161, label %162, label %166

162:                                              ; preds = %154
  %163 = load i32, i32* @RT2860_PA_PE_A1_EN, align 4
  %164 = load i32, i32* %5, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %5, align 4
  br label %166

166:                                              ; preds = %162, %154
  %167 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %168 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = icmp eq i32 %169, 13715
  br i1 %170, label %171, label %180

171:                                              ; preds = %166
  %172 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %173 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 8
  %175 = icmp sgt i32 %174, 2
  br i1 %175, label %176, label %180

176:                                              ; preds = %171
  %177 = load i32, i32* @RT3593_PA_PE_A2_EN, align 4
  %178 = load i32, i32* %5, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %5, align 4
  br label %180

180:                                              ; preds = %176, %171, %166
  br label %181

181:                                              ; preds = %180, %153
  %182 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %183 = load i32, i32* @RT2860_TX_PIN_CFG, align 4
  %184 = load i32, i32* %5, align 4
  %185 = call i32 @RAL_WRITE(%struct.rt2860_softc* %182, i32 %183, i32 %184)
  %186 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %187 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = icmp eq i32 %188, 13715
  br i1 %189, label %190, label %226

190:                                              ; preds = %181
  %191 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %192 = load i32, i32* @RT2860_GPIO_CTRL, align 4
  %193 = call i32 @RAL_READ(%struct.rt2860_softc* %191, i32 %192)
  store i32 %193, i32* %5, align 4
  %194 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %195 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @RT2860_PCIE, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %209

200:                                              ; preds = %190
  %201 = load i32, i32* %5, align 4
  %202 = and i32 %201, -16842753
  store i32 %202, i32* %5, align 4
  %203 = load i32, i32* %4, align 4
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %200
  %206 = load i32, i32* %5, align 4
  %207 = or i32 %206, 65536
  store i32 %207, i32* %5, align 4
  br label %208

208:                                              ; preds = %205, %200
  br label %218

209:                                              ; preds = %190
  %210 = load i32, i32* %5, align 4
  %211 = and i32 %210, -32897
  store i32 %211, i32* %5, align 4
  %212 = load i32, i32* %4, align 4
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %209
  %215 = load i32, i32* %5, align 4
  %216 = or i32 %215, 128
  store i32 %216, i32* %5, align 4
  br label %217

217:                                              ; preds = %214, %209
  br label %218

218:                                              ; preds = %217, %208
  %219 = load i32, i32* %5, align 4
  %220 = and i32 %219, -4097
  %221 = or i32 %220, 16
  store i32 %221, i32* %5, align 4
  %222 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %223 = load i32, i32* @RT2860_GPIO_CTRL, align 4
  %224 = load i32, i32* %5, align 4
  %225 = call i32 @RAL_WRITE(%struct.rt2860_softc* %222, i32 %223, i32 %224)
  br label %226

226:                                              ; preds = %218, %181
  %227 = load i32, i32* %4, align 4
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %250

229:                                              ; preds = %226
  %230 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %231 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 4
  %233 = icmp sge i32 %232, 12401
  br i1 %233, label %234, label %242

234:                                              ; preds = %229
  %235 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %236 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %235, i32 0, i32 0
  %237 = load i32*, i32** %236, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 0
  %239 = load i32, i32* %238, align 4
  %240 = mul nsw i32 %239, 2
  %241 = add nsw i32 28, %240
  store i32 %241, i32* %6, align 4
  br label %249

242:                                              ; preds = %229
  %243 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %244 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %243, i32 0, i32 0
  %245 = load i32*, i32** %244, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 0
  %247 = load i32, i32* %246, align 4
  %248 = add nsw i32 46, %247
  store i32 %248, i32* %6, align 4
  br label %249

249:                                              ; preds = %242, %234
  br label %261

250:                                              ; preds = %226
  %251 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %252 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %251, i32 0, i32 0
  %253 = load i32*, i32** %252, align 8
  %254 = load i32, i32* %4, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %253, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = mul nsw i32 %257, 5
  %259 = sdiv i32 %258, 3
  %260 = add nsw i32 50, %259
  store i32 %260, i32* %6, align 4
  br label %261

261:                                              ; preds = %250, %249
  %262 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %263 = load i32, i32* %6, align 4
  %264 = call i32 @rt2860_mcu_bbp_write(%struct.rt2860_softc* %262, i32 66, i32 %263)
  %265 = call i32 @DELAY(i32 1000)
  ret void
}

declare dso_local i32 @rt2860_mcu_bbp_write(%struct.rt2860_softc*, i32, i32) #1

declare dso_local i32 @RAL_READ(%struct.rt2860_softc*, i32) #1

declare dso_local i32 @RAL_WRITE(%struct.rt2860_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
