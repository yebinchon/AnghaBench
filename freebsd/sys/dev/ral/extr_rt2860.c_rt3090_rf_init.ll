; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt3090_rf_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt3090_rf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.rt2860_softc = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, i64 }

@RT3070_LDO_CFG0 = common dso_local global i32 0, align 4
@RT3070_GPIO_SWITCH = common dso_local global i32 0, align 4
@rt3090_def_rf = common dso_local global %struct.TYPE_3__* null, align 8
@RT3070_OPT_14 = common dso_local global i32 0, align 4
@RT3070_RF_3020 = common dso_local global i64 0, align 8
@RT3070_RX0_PD = common dso_local global i32 0, align 4
@RT3070_TX0_PD = common dso_local global i32 0, align 4
@RT3070_RF_BLOCK = common dso_local global i32 0, align 4
@RT3070_RX1_PD = common dso_local global i32 0, align 4
@RT3070_TX1_PD = common dso_local global i32 0, align 4
@RT3070_TX_LO2 = common dso_local global i32 0, align 4
@RT3070_TX_LO1 = common dso_local global i32 0, align 4
@RT3070_RX_LO1 = common dso_local global i32 0, align 4
@RT3070_RX_LO2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2860_softc*)* @rt3090_rf_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt3090_rf_init(%struct.rt2860_softc* %0) #0 {
  %2 = alloca %struct.rt2860_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rt2860_softc* %0, %struct.rt2860_softc** %2, align 8
  %7 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %8 = call i32 @rt3090_rf_read(%struct.rt2860_softc* %7, i32 30)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %10 = load i32, i32* %4, align 4
  %11 = or i32 %10, 128
  %12 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %9, i32 30, i32 %11)
  %13 = call i32 @DELAY(i32 1000)
  %14 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, -129
  %17 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %14, i32 30, i32 %16)
  %18 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %19 = load i32, i32* @RT3070_LDO_CFG0, align 4
  %20 = call i32 @RAL_READ(%struct.rt2860_softc* %18, i32 %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, -520093697
  store i32 %22, i32* %3, align 4
  %23 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %24 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %23, i32 0, i32 9
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %1
  %28 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %29 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %30, 529
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* %3, align 4
  %34 = or i32 %33, 218103808
  store i32 %34, i32* %3, align 4
  br label %38

35:                                               ; preds = %27, %1
  %36 = load i32, i32* %3, align 4
  %37 = or i32 %36, 16777216
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %35, %32
  %39 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %40 = load i32, i32* @RT3070_LDO_CFG0, align 4
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @RAL_WRITE(%struct.rt2860_softc* %39, i32 %40, i32 %41)
  %43 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %44 = load i32, i32* @RT3070_GPIO_SWITCH, align 4
  %45 = call i32 @RAL_READ(%struct.rt2860_softc* %43, i32 %44)
  store i32 %45, i32* %3, align 4
  %46 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %47 = load i32, i32* @RT3070_GPIO_SWITCH, align 4
  %48 = load i32, i32* %3, align 4
  %49 = and i32 %48, -33
  %50 = call i32 @RAL_WRITE(%struct.rt2860_softc* %46, i32 %47, i32 %49)
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %71, %38
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rt3090_def_rf, align 8
  %54 = call i32 @nitems(%struct.TYPE_3__* %53)
  %55 = icmp slt i32 %52, %54
  br i1 %55, label %56, label %74

56:                                               ; preds = %51
  %57 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rt3090_def_rf, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rt3090_def_rf, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %57, i32 %63, i32 %69)
  br label %71

71:                                               ; preds = %56
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %51

74:                                               ; preds = %51
  %75 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %76 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %75, i32 31, i32 20)
  %77 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %78 = call i32 @rt3090_rf_read(%struct.rt2860_softc* %77, i32 6)
  store i32 %78, i32* %4, align 4
  %79 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %80 = load i32, i32* %4, align 4
  %81 = or i32 %80, 64
  %82 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %79, i32 6, i32 %81)
  %83 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %84 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 13715
  br i1 %86, label %87, label %119

87:                                               ; preds = %74
  %88 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %89 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %88, i32 0, i32 2
  store i32 31, i32* %89, align 8
  %90 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %91 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %92 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %91, i32 0, i32 2
  %93 = call i32 @rt3090_filter_calib(%struct.rt2860_softc* %90, i32 7, i32 22, i32* %92)
  %94 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %95 = call i32 @rt2860_mcu_bbp_read(%struct.rt2860_softc* %94, i32 4)
  store i32 %95, i32* %5, align 4
  %96 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %97 = load i32, i32* %5, align 4
  %98 = and i32 %97, -9
  %99 = or i32 %98, 16
  %100 = call i32 @rt2860_mcu_bbp_write(%struct.rt2860_softc* %96, i32 4, i32 %99)
  %101 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %102 = call i32 @rt3090_rf_read(%struct.rt2860_softc* %101, i32 31)
  store i32 %102, i32* %4, align 4
  %103 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %104 = load i32, i32* %4, align 4
  %105 = or i32 %104, 32
  %106 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %103, i32 31, i32 %105)
  %107 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %108 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %107, i32 0, i32 3
  store i32 47, i32* %108, align 4
  %109 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %110 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %111 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %110, i32 0, i32 3
  %112 = call i32 @rt3090_filter_calib(%struct.rt2860_softc* %109, i32 39, i32 25, i32* %111)
  %113 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %114 = call i32 @rt2860_mcu_bbp_read(%struct.rt2860_softc* %113, i32 4)
  store i32 %114, i32* %5, align 4
  %115 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %116 = load i32, i32* %5, align 4
  %117 = and i32 %116, -25
  %118 = call i32 @rt2860_mcu_bbp_write(%struct.rt2860_softc* %115, i32 4, i32 %117)
  br label %119

119:                                              ; preds = %87, %74
  %120 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %121 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp slt i32 %122, 529
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %126 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %125, i32 27, i32 3)
  br label %127

127:                                              ; preds = %124, %119
  %128 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %129 = load i32, i32* @RT3070_OPT_14, align 4
  %130 = call i32 @RAL_READ(%struct.rt2860_softc* %128, i32 %129)
  store i32 %130, i32* %3, align 4
  %131 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %132 = load i32, i32* @RT3070_OPT_14, align 4
  %133 = load i32, i32* %3, align 4
  %134 = or i32 %133, 1
  %135 = call i32 @RAL_WRITE(%struct.rt2860_softc* %131, i32 %132, i32 %134)
  %136 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %137 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %136, i32 0, i32 4
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @RT3070_RF_3020, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %127
  %142 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %143 = call i32 @rt3090_set_rx_antenna(%struct.rt2860_softc* %142, i32 0)
  br label %144

144:                                              ; preds = %141, %127
  %145 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %146 = call i32 @rt2860_mcu_bbp_read(%struct.rt2860_softc* %145, i32 138)
  store i32 %146, i32* %5, align 4
  %147 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %148 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = icmp eq i32 %149, 13715
  br i1 %150, label %151, label %186

151:                                              ; preds = %144
  %152 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %153 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %152, i32 0, i32 5
  %154 = load i32, i32* %153, align 8
  %155 = icmp eq i32 %154, 1
  br i1 %155, label %156, label %159

156:                                              ; preds = %151
  %157 = load i32, i32* %5, align 4
  %158 = or i32 %157, 96
  store i32 %158, i32* %5, align 4
  br label %168

159:                                              ; preds = %151
  %160 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %161 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 8
  %163 = icmp eq i32 %162, 2
  br i1 %163, label %164, label %167

164:                                              ; preds = %159
  %165 = load i32, i32* %5, align 4
  %166 = or i32 %165, 64
  store i32 %166, i32* %5, align 4
  br label %167

167:                                              ; preds = %164, %159
  br label %168

168:                                              ; preds = %167, %156
  %169 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %170 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %169, i32 0, i32 6
  %171 = load i32, i32* %170, align 4
  %172 = icmp eq i32 %171, 1
  br i1 %172, label %173, label %176

173:                                              ; preds = %168
  %174 = load i32, i32* %5, align 4
  %175 = and i32 %174, -7
  store i32 %175, i32* %5, align 4
  br label %185

176:                                              ; preds = %168
  %177 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %178 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %177, i32 0, i32 6
  %179 = load i32, i32* %178, align 4
  %180 = icmp eq i32 %179, 2
  br i1 %180, label %181, label %184

181:                                              ; preds = %176
  %182 = load i32, i32* %5, align 4
  %183 = and i32 %182, -5
  store i32 %183, i32* %5, align 4
  br label %184

184:                                              ; preds = %181, %176
  br label %185

185:                                              ; preds = %184, %173
  br label %203

186:                                              ; preds = %144
  %187 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %188 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %187, i32 0, i32 5
  %189 = load i32, i32* %188, align 8
  %190 = icmp eq i32 %189, 1
  br i1 %190, label %191, label %194

191:                                              ; preds = %186
  %192 = load i32, i32* %5, align 4
  %193 = or i32 %192, 32
  store i32 %193, i32* %5, align 4
  br label %194

194:                                              ; preds = %191, %186
  %195 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %196 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %195, i32 0, i32 6
  %197 = load i32, i32* %196, align 4
  %198 = icmp eq i32 %197, 1
  br i1 %198, label %199, label %202

199:                                              ; preds = %194
  %200 = load i32, i32* %5, align 4
  %201 = and i32 %200, -3
  store i32 %201, i32* %5, align 4
  br label %202

202:                                              ; preds = %199, %194
  br label %203

203:                                              ; preds = %202, %185
  %204 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %205 = load i32, i32* %5, align 4
  %206 = call i32 @rt2860_mcu_bbp_write(%struct.rt2860_softc* %204, i32 138, i32 %205)
  %207 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %208 = call i32 @rt3090_rf_read(%struct.rt2860_softc* %207, i32 1)
  store i32 %208, i32* %4, align 4
  %209 = load i32, i32* @RT3070_RX0_PD, align 4
  %210 = load i32, i32* @RT3070_TX0_PD, align 4
  %211 = or i32 %209, %210
  %212 = xor i32 %211, -1
  %213 = load i32, i32* %4, align 4
  %214 = and i32 %213, %212
  store i32 %214, i32* %4, align 4
  %215 = load i32, i32* @RT3070_RF_BLOCK, align 4
  %216 = load i32, i32* @RT3070_RX1_PD, align 4
  %217 = or i32 %215, %216
  %218 = load i32, i32* @RT3070_TX1_PD, align 4
  %219 = or i32 %217, %218
  %220 = load i32, i32* %4, align 4
  %221 = or i32 %220, %219
  store i32 %221, i32* %4, align 4
  %222 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %223 = load i32, i32* %4, align 4
  %224 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %222, i32 1, i32 %223)
  %225 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %226 = call i32 @rt3090_rf_read(%struct.rt2860_softc* %225, i32 15)
  store i32 %226, i32* %4, align 4
  %227 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %228 = load i32, i32* %4, align 4
  %229 = load i32, i32* @RT3070_TX_LO2, align 4
  %230 = xor i32 %229, -1
  %231 = and i32 %228, %230
  %232 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %227, i32 15, i32 %231)
  %233 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %234 = call i32 @rt3090_rf_read(%struct.rt2860_softc* %233, i32 17)
  store i32 %234, i32* %4, align 4
  %235 = load i32, i32* @RT3070_TX_LO1, align 4
  %236 = xor i32 %235, -1
  %237 = load i32, i32* %4, align 4
  %238 = and i32 %237, %236
  store i32 %238, i32* %4, align 4
  %239 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %240 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = icmp sge i32 %241, 529
  br i1 %242, label %243, label %251

243:                                              ; preds = %203
  %244 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %245 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %244, i32 0, i32 8
  %246 = load i32, i32* %245, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %251, label %248

248:                                              ; preds = %243
  %249 = load i32, i32* %4, align 4
  %250 = or i32 %249, 32
  store i32 %250, i32* %4, align 4
  br label %251

251:                                              ; preds = %248, %243, %203
  %252 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %253 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %252, i32 0, i32 7
  %254 = load i32, i32* %253, align 8
  %255 = icmp sge i32 %254, 2
  br i1 %255, label %256, label %263

256:                                              ; preds = %251
  %257 = load i32, i32* %4, align 4
  %258 = and i32 %257, -8
  %259 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %260 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %259, i32 0, i32 7
  %261 = load i32, i32* %260, align 8
  %262 = or i32 %258, %261
  store i32 %262, i32* %4, align 4
  br label %263

263:                                              ; preds = %256, %251
  %264 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %265 = load i32, i32* %4, align 4
  %266 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %264, i32 17, i32 %265)
  %267 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %268 = call i32 @rt3090_rf_read(%struct.rt2860_softc* %267, i32 20)
  store i32 %268, i32* %4, align 4
  %269 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %270 = load i32, i32* %4, align 4
  %271 = load i32, i32* @RT3070_RX_LO1, align 4
  %272 = xor i32 %271, -1
  %273 = and i32 %270, %272
  %274 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %269, i32 20, i32 %273)
  %275 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %276 = call i32 @rt3090_rf_read(%struct.rt2860_softc* %275, i32 21)
  store i32 %276, i32* %4, align 4
  %277 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %278 = load i32, i32* %4, align 4
  %279 = load i32, i32* @RT3070_RX_LO2, align 4
  %280 = xor i32 %279, -1
  %281 = and i32 %278, %280
  %282 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %277, i32 21, i32 %281)
  ret i32 0
}

declare dso_local i32 @rt3090_rf_read(%struct.rt2860_softc*, i32) #1

declare dso_local i32 @rt3090_rf_write(%struct.rt2860_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @RAL_READ(%struct.rt2860_softc*, i32) #1

declare dso_local i32 @RAL_WRITE(%struct.rt2860_softc*, i32, i32) #1

declare dso_local i32 @nitems(%struct.TYPE_3__*) #1

declare dso_local i32 @rt3090_filter_calib(%struct.rt2860_softc*, i32, i32, i32*) #1

declare dso_local i32 @rt2860_mcu_bbp_read(%struct.rt2860_softc*, i32) #1

declare dso_local i32 @rt2860_mcu_bbp_write(%struct.rt2860_softc*, i32, i32) #1

declare dso_local i32 @rt3090_set_rx_antenna(%struct.rt2860_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
