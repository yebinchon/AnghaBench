; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_setcfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_setcfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_softc = type { i64, i64, i32 }

@IFM_NONE = common dso_local global i64 0, align 8
@DC_NETCFG = common dso_local global i32 0, align 4
@DC_NETCFG_TX_ON = common dso_local global i32 0, align 4
@DC_NETCFG_RX_ON = common dso_local global i32 0, align 4
@IFM_100_TX = common dso_local global i64 0, align 8
@DC_NETCFG_SPEEDSEL = common dso_local global i32 0, align 4
@DC_NETCFG_HEARTBEAT = common dso_local global i32 0, align 4
@DC_PMODE_MII = common dso_local global i64 0, align 8
@DC_WATCHDOG = common dso_local global i32 0, align 4
@DC_WDOG_CTLWREN = common dso_local global i32 0, align 4
@DC_WDOG_JABBERDIS = common dso_local global i32 0, align 4
@DC_NETCFG_PCS = common dso_local global i32 0, align 4
@DC_NETCFG_PORTSEL = common dso_local global i32 0, align 4
@DC_NETCFG_SCRAMBLER = common dso_local global i32 0, align 4
@DC_TYPE_98713 = common dso_local global i64 0, align 8
@DC_10BTCTRL = common dso_local global i32 0, align 4
@DC_PN_GPIO_SPEEDSEL = common dso_local global i32 0, align 4
@DC_PN_GPIO_100TX_LOOP = common dso_local global i32 0, align 4
@DC_PN_NWAY = common dso_local global i32 0, align 4
@DC_PN_NWAY_SPEEDSEL = common dso_local global i32 0, align 4
@IFM_10_T = common dso_local global i64 0, align 8
@DC_SIARESET = common dso_local global i32 0, align 4
@DC_SIA_RESET = common dso_local global i32 0, align 4
@IFM_GMASK = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@DC_TCTL_AUTONEGENBL = common dso_local global i32 0, align 4
@IFM_HPNA_1 = common dso_local global i64 0, align 8
@DC_NETCFG_FULLDUPLEX = common dso_local global i32 0, align 4
@DC_PMODE_SYM = common dso_local global i64 0, align 8
@DC_PN_NWAY_DUPLEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc_softc*, i32)* @dc_setcfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dc_setcfg(%struct.dc_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.dc_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dc_softc* %0, %struct.dc_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i64 @IFM_SUBTYPE(i32 %7)
  %9 = load i64, i64* @IFM_NONE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %353

12:                                               ; preds = %2
  %13 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %14 = load i32, i32* @DC_NETCFG, align 4
  %15 = call i32 @CSR_READ_4(%struct.dc_softc* %13, i32 %14)
  %16 = load i32, i32* @DC_NETCFG_TX_ON, align 4
  %17 = load i32, i32* @DC_NETCFG_RX_ON, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %15, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %12
  store i32 1, i32* %5, align 4
  %22 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %23 = load i32, i32* @DC_NETCFG, align 4
  %24 = load i32, i32* @DC_NETCFG_TX_ON, align 4
  %25 = load i32, i32* @DC_NETCFG_RX_ON, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @DC_CLRBIT(%struct.dc_softc* %22, i32 %23, i32 %26)
  %28 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %29 = call i32 @dc_netcfg_wait(%struct.dc_softc* %28)
  br label %30

30:                                               ; preds = %21, %12
  %31 = load i32, i32* %4, align 4
  %32 = call i64 @IFM_SUBTYPE(i32 %31)
  %33 = load i64, i64* @IFM_100_TX, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %136

35:                                               ; preds = %30
  %36 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %37 = load i32, i32* @DC_NETCFG, align 4
  %38 = load i32, i32* @DC_NETCFG_SPEEDSEL, align 4
  %39 = call i32 @DC_CLRBIT(%struct.dc_softc* %36, i32 %37, i32 %38)
  %40 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %41 = load i32, i32* @DC_NETCFG, align 4
  %42 = load i32, i32* @DC_NETCFG_HEARTBEAT, align 4
  %43 = call i32 @DC_SETBIT(%struct.dc_softc* %40, i32 %41, i32 %42)
  %44 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %45 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @DC_PMODE_MII, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %107

49:                                               ; preds = %35
  %50 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %51 = call i64 @DC_IS_INTEL(%struct.dc_softc* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %49
  %54 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %55 = load i32, i32* @DC_WATCHDOG, align 4
  %56 = call i32 @CSR_READ_4(%struct.dc_softc* %54, i32 %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* @DC_WDOG_CTLWREN, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %6, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* @DC_WDOG_JABBERDIS, align 4
  %62 = load i32, i32* %6, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %6, align 4
  %64 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %65 = load i32, i32* @DC_WATCHDOG, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @CSR_WRITE_4(%struct.dc_softc* %64, i32 %65, i32 %66)
  br label %73

68:                                               ; preds = %49
  %69 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %70 = load i32, i32* @DC_WATCHDOG, align 4
  %71 = load i32, i32* @DC_WDOG_JABBERDIS, align 4
  %72 = call i32 @DC_SETBIT(%struct.dc_softc* %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %68, %53
  %74 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %75 = load i32, i32* @DC_NETCFG, align 4
  %76 = load i32, i32* @DC_NETCFG_PCS, align 4
  %77 = load i32, i32* @DC_NETCFG_PORTSEL, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @DC_NETCFG_SCRAMBLER, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @DC_CLRBIT(%struct.dc_softc* %74, i32 %75, i32 %80)
  %82 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %83 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @DC_TYPE_98713, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %73
  %88 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %89 = load i32, i32* @DC_NETCFG, align 4
  %90 = load i32, i32* @DC_NETCFG_PCS, align 4
  %91 = load i32, i32* @DC_NETCFG_SCRAMBLER, align 4
  %92 = or i32 %90, %91
  %93 = call i32 @DC_SETBIT(%struct.dc_softc* %88, i32 %89, i32 %92)
  br label %94

94:                                               ; preds = %87, %73
  %95 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %96 = call i64 @DC_IS_DAVICOM(%struct.dc_softc* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %94
  %99 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %100 = load i32, i32* @DC_NETCFG, align 4
  %101 = load i32, i32* @DC_NETCFG_PORTSEL, align 4
  %102 = call i32 @DC_SETBIT(%struct.dc_softc* %99, i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %98, %94
  %104 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %105 = load i32, i32* @DC_10BTCTRL, align 4
  %106 = call i32 @DC_CLRBIT(%struct.dc_softc* %104, i32 %105, i32 65535)
  br label %135

107:                                              ; preds = %35
  %108 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %109 = call i64 @DC_IS_PNIC(%struct.dc_softc* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %122

111:                                              ; preds = %107
  %112 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %113 = load i32, i32* @DC_PN_GPIO_SPEEDSEL, align 4
  %114 = call i32 @DC_PN_GPIO_SETBIT(%struct.dc_softc* %112, i32 %113)
  %115 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %116 = load i32, i32* @DC_PN_GPIO_100TX_LOOP, align 4
  %117 = call i32 @DC_PN_GPIO_SETBIT(%struct.dc_softc* %115, i32 %116)
  %118 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %119 = load i32, i32* @DC_PN_NWAY, align 4
  %120 = load i32, i32* @DC_PN_NWAY_SPEEDSEL, align 4
  %121 = call i32 @DC_SETBIT(%struct.dc_softc* %118, i32 %119, i32 %120)
  br label %122

122:                                              ; preds = %111, %107
  %123 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %124 = load i32, i32* @DC_NETCFG, align 4
  %125 = load i32, i32* @DC_NETCFG_PORTSEL, align 4
  %126 = call i32 @DC_SETBIT(%struct.dc_softc* %123, i32 %124, i32 %125)
  %127 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %128 = load i32, i32* @DC_NETCFG, align 4
  %129 = load i32, i32* @DC_NETCFG_PCS, align 4
  %130 = call i32 @DC_SETBIT(%struct.dc_softc* %127, i32 %128, i32 %129)
  %131 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %132 = load i32, i32* @DC_NETCFG, align 4
  %133 = load i32, i32* @DC_NETCFG_SCRAMBLER, align 4
  %134 = call i32 @DC_SETBIT(%struct.dc_softc* %131, i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %122, %103
  br label %136

136:                                              ; preds = %135, %30
  %137 = load i32, i32* %4, align 4
  %138 = call i64 @IFM_SUBTYPE(i32 %137)
  %139 = load i64, i64* @IFM_10_T, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %275

141:                                              ; preds = %136
  %142 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %143 = load i32, i32* @DC_NETCFG, align 4
  %144 = load i32, i32* @DC_NETCFG_SPEEDSEL, align 4
  %145 = call i32 @DC_SETBIT(%struct.dc_softc* %142, i32 %143, i32 %144)
  %146 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %147 = load i32, i32* @DC_NETCFG, align 4
  %148 = load i32, i32* @DC_NETCFG_HEARTBEAT, align 4
  %149 = call i32 @DC_CLRBIT(%struct.dc_softc* %146, i32 %147, i32 %148)
  %150 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %151 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @DC_PMODE_MII, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %211

155:                                              ; preds = %141
  %156 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %157 = call i64 @DC_IS_INTEL(%struct.dc_softc* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %174

159:                                              ; preds = %155
  %160 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %161 = load i32, i32* @DC_WATCHDOG, align 4
  %162 = call i32 @CSR_READ_4(%struct.dc_softc* %160, i32 %161)
  store i32 %162, i32* %6, align 4
  %163 = load i32, i32* @DC_WDOG_CTLWREN, align 4
  %164 = xor i32 %163, -1
  %165 = load i32, i32* %6, align 4
  %166 = and i32 %165, %164
  store i32 %166, i32* %6, align 4
  %167 = load i32, i32* @DC_WDOG_JABBERDIS, align 4
  %168 = load i32, i32* %6, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %6, align 4
  %170 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %171 = load i32, i32* @DC_WATCHDOG, align 4
  %172 = load i32, i32* %6, align 4
  %173 = call i32 @CSR_WRITE_4(%struct.dc_softc* %170, i32 %171, i32 %172)
  br label %179

174:                                              ; preds = %155
  %175 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %176 = load i32, i32* @DC_WATCHDOG, align 4
  %177 = load i32, i32* @DC_WDOG_JABBERDIS, align 4
  %178 = call i32 @DC_SETBIT(%struct.dc_softc* %175, i32 %176, i32 %177)
  br label %179

179:                                              ; preds = %174, %159
  %180 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %181 = load i32, i32* @DC_NETCFG, align 4
  %182 = load i32, i32* @DC_NETCFG_PCS, align 4
  %183 = load i32, i32* @DC_NETCFG_PORTSEL, align 4
  %184 = or i32 %182, %183
  %185 = load i32, i32* @DC_NETCFG_SCRAMBLER, align 4
  %186 = or i32 %184, %185
  %187 = call i32 @DC_CLRBIT(%struct.dc_softc* %180, i32 %181, i32 %186)
  %188 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %189 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @DC_TYPE_98713, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %198

193:                                              ; preds = %179
  %194 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %195 = load i32, i32* @DC_NETCFG, align 4
  %196 = load i32, i32* @DC_NETCFG_PCS, align 4
  %197 = call i32 @DC_SETBIT(%struct.dc_softc* %194, i32 %195, i32 %196)
  br label %198

198:                                              ; preds = %193, %179
  %199 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %200 = call i64 @DC_IS_DAVICOM(%struct.dc_softc* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %207, label %202

202:                                              ; preds = %198
  %203 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %204 = load i32, i32* @DC_NETCFG, align 4
  %205 = load i32, i32* @DC_NETCFG_PORTSEL, align 4
  %206 = call i32 @DC_SETBIT(%struct.dc_softc* %203, i32 %204, i32 %205)
  br label %207

207:                                              ; preds = %202, %198
  %208 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %209 = load i32, i32* @DC_10BTCTRL, align 4
  %210 = call i32 @DC_CLRBIT(%struct.dc_softc* %208, i32 %209, i32 65535)
  br label %274

211:                                              ; preds = %141
  %212 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %213 = call i64 @DC_IS_PNIC(%struct.dc_softc* %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %226

215:                                              ; preds = %211
  %216 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %217 = load i32, i32* @DC_PN_GPIO_SPEEDSEL, align 4
  %218 = call i32 @DC_PN_GPIO_CLRBIT(%struct.dc_softc* %216, i32 %217)
  %219 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %220 = load i32, i32* @DC_PN_GPIO_100TX_LOOP, align 4
  %221 = call i32 @DC_PN_GPIO_SETBIT(%struct.dc_softc* %219, i32 %220)
  %222 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %223 = load i32, i32* @DC_PN_NWAY, align 4
  %224 = load i32, i32* @DC_PN_NWAY_SPEEDSEL, align 4
  %225 = call i32 @DC_CLRBIT(%struct.dc_softc* %222, i32 %223, i32 %224)
  br label %226

226:                                              ; preds = %215, %211
  %227 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %228 = load i32, i32* @DC_NETCFG, align 4
  %229 = load i32, i32* @DC_NETCFG_PORTSEL, align 4
  %230 = call i32 @DC_CLRBIT(%struct.dc_softc* %227, i32 %228, i32 %229)
  %231 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %232 = load i32, i32* @DC_NETCFG, align 4
  %233 = load i32, i32* @DC_NETCFG_PCS, align 4
  %234 = call i32 @DC_CLRBIT(%struct.dc_softc* %231, i32 %232, i32 %233)
  %235 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %236 = load i32, i32* @DC_NETCFG, align 4
  %237 = load i32, i32* @DC_NETCFG_SCRAMBLER, align 4
  %238 = call i32 @DC_CLRBIT(%struct.dc_softc* %235, i32 %236, i32 %237)
  %239 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %240 = call i64 @DC_IS_INTEL(%struct.dc_softc* %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %273

242:                                              ; preds = %226
  %243 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %244 = load i32, i32* @DC_SIARESET, align 4
  %245 = load i32, i32* @DC_SIA_RESET, align 4
  %246 = call i32 @DC_CLRBIT(%struct.dc_softc* %243, i32 %244, i32 %245)
  %247 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %248 = load i32, i32* @DC_10BTCTRL, align 4
  %249 = call i32 @DC_CLRBIT(%struct.dc_softc* %247, i32 %248, i32 65535)
  %250 = load i32, i32* %4, align 4
  %251 = load i32, i32* @IFM_GMASK, align 4
  %252 = and i32 %250, %251
  %253 = load i32, i32* @IFM_FDX, align 4
  %254 = icmp eq i32 %252, %253
  br i1 %254, label %255, label %259

255:                                              ; preds = %242
  %256 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %257 = load i32, i32* @DC_10BTCTRL, align 4
  %258 = call i32 @DC_SETBIT(%struct.dc_softc* %256, i32 %257, i32 32573)
  br label %263

259:                                              ; preds = %242
  %260 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %261 = load i32, i32* @DC_10BTCTRL, align 4
  %262 = call i32 @DC_SETBIT(%struct.dc_softc* %260, i32 %261, i32 32575)
  br label %263

263:                                              ; preds = %259, %255
  %264 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %265 = load i32, i32* @DC_SIARESET, align 4
  %266 = load i32, i32* @DC_SIA_RESET, align 4
  %267 = call i32 @DC_SETBIT(%struct.dc_softc* %264, i32 %265, i32 %266)
  %268 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %269 = load i32, i32* @DC_10BTCTRL, align 4
  %270 = load i32, i32* @DC_TCTL_AUTONEGENBL, align 4
  %271 = call i32 @DC_CLRBIT(%struct.dc_softc* %268, i32 %269, i32 %270)
  %272 = call i32 @DELAY(i32 20000)
  br label %273

273:                                              ; preds = %263, %226
  br label %274

274:                                              ; preds = %273, %207
  br label %275

275:                                              ; preds = %274, %136
  %276 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %277 = call i64 @DC_IS_DAVICOM(%struct.dc_softc* %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %297

279:                                              ; preds = %275
  %280 = load i32, i32* %4, align 4
  %281 = call i64 @IFM_SUBTYPE(i32 %280)
  %282 = load i64, i64* @IFM_HPNA_1, align 8
  %283 = icmp eq i64 %281, %282
  br i1 %283, label %284, label %291

284:                                              ; preds = %279
  %285 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %286 = load i32, i32* @DC_NETCFG, align 4
  %287 = load i32, i32* @DC_NETCFG_PORTSEL, align 4
  %288 = call i32 @DC_SETBIT(%struct.dc_softc* %285, i32 %286, i32 %287)
  %289 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %290 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %289, i32 0, i32 2
  store i32 1, i32* %290, align 8
  br label %296

291:                                              ; preds = %279
  %292 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %293 = load i32, i32* @DC_NETCFG, align 4
  %294 = load i32, i32* @DC_NETCFG_PORTSEL, align 4
  %295 = call i32 @DC_CLRBIT(%struct.dc_softc* %292, i32 %293, i32 %294)
  br label %296

296:                                              ; preds = %291, %284
  br label %297

297:                                              ; preds = %296, %275
  %298 = load i32, i32* %4, align 4
  %299 = load i32, i32* @IFM_GMASK, align 4
  %300 = and i32 %298, %299
  %301 = load i32, i32* @IFM_FDX, align 4
  %302 = icmp eq i32 %300, %301
  br i1 %302, label %303, label %323

303:                                              ; preds = %297
  %304 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %305 = load i32, i32* @DC_NETCFG, align 4
  %306 = load i32, i32* @DC_NETCFG_FULLDUPLEX, align 4
  %307 = call i32 @DC_SETBIT(%struct.dc_softc* %304, i32 %305, i32 %306)
  %308 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %309 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %308, i32 0, i32 0
  %310 = load i64, i64* %309, align 8
  %311 = load i64, i64* @DC_PMODE_SYM, align 8
  %312 = icmp eq i64 %310, %311
  br i1 %312, label %313, label %322

313:                                              ; preds = %303
  %314 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %315 = call i64 @DC_IS_PNIC(%struct.dc_softc* %314)
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %322

317:                                              ; preds = %313
  %318 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %319 = load i32, i32* @DC_PN_NWAY, align 4
  %320 = load i32, i32* @DC_PN_NWAY_DUPLEX, align 4
  %321 = call i32 @DC_SETBIT(%struct.dc_softc* %318, i32 %319, i32 %320)
  br label %322

322:                                              ; preds = %317, %313, %303
  br label %343

323:                                              ; preds = %297
  %324 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %325 = load i32, i32* @DC_NETCFG, align 4
  %326 = load i32, i32* @DC_NETCFG_FULLDUPLEX, align 4
  %327 = call i32 @DC_CLRBIT(%struct.dc_softc* %324, i32 %325, i32 %326)
  %328 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %329 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %328, i32 0, i32 0
  %330 = load i64, i64* %329, align 8
  %331 = load i64, i64* @DC_PMODE_SYM, align 8
  %332 = icmp eq i64 %330, %331
  br i1 %332, label %333, label %342

333:                                              ; preds = %323
  %334 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %335 = call i64 @DC_IS_PNIC(%struct.dc_softc* %334)
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %337, label %342

337:                                              ; preds = %333
  %338 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %339 = load i32, i32* @DC_PN_NWAY, align 4
  %340 = load i32, i32* @DC_PN_NWAY_DUPLEX, align 4
  %341 = call i32 @DC_CLRBIT(%struct.dc_softc* %338, i32 %339, i32 %340)
  br label %342

342:                                              ; preds = %337, %333, %323
  br label %343

343:                                              ; preds = %342, %322
  %344 = load i32, i32* %5, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %353

346:                                              ; preds = %343
  %347 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %348 = load i32, i32* @DC_NETCFG, align 4
  %349 = load i32, i32* @DC_NETCFG_TX_ON, align 4
  %350 = load i32, i32* @DC_NETCFG_RX_ON, align 4
  %351 = or i32 %349, %350
  %352 = call i32 @DC_SETBIT(%struct.dc_softc* %347, i32 %348, i32 %351)
  br label %353

353:                                              ; preds = %11, %346, %343
  ret void
}

declare dso_local i64 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @CSR_READ_4(%struct.dc_softc*, i32) #1

declare dso_local i32 @DC_CLRBIT(%struct.dc_softc*, i32, i32) #1

declare dso_local i32 @dc_netcfg_wait(%struct.dc_softc*) #1

declare dso_local i32 @DC_SETBIT(%struct.dc_softc*, i32, i32) #1

declare dso_local i64 @DC_IS_INTEL(%struct.dc_softc*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.dc_softc*, i32, i32) #1

declare dso_local i64 @DC_IS_DAVICOM(%struct.dc_softc*) #1

declare dso_local i64 @DC_IS_PNIC(%struct.dc_softc*) #1

declare dso_local i32 @DC_PN_GPIO_SETBIT(%struct.dc_softc*, i32) #1

declare dso_local i32 @DC_PN_GPIO_CLRBIT(%struct.dc_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
