; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_dcphy.c_dcphy_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_dcphy.c_dcphy_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { i32, %struct.mii_data* }
%struct.mii_data = type { i32, i32, i32 }
%struct.dc_softc = type { i32 }

@IFM_AVALID = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@DC_10BTSTAT = common dso_local global i32 0, align 4
@DC_TSTAT_LS10 = common dso_local global i32 0, align 4
@DC_TSTAT_LS100 = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@DC_10BTCTRL = common dso_local global i32 0, align 4
@DC_TCTL_AUTONEGENBL = common dso_local global i32 0, align 4
@DC_TSTAT_ANEGSTAT = common dso_local global i32 0, align 4
@DC_ASTAT_AUTONEGCMP = common dso_local global i32 0, align 4
@DC_ASTAT_DISABLE = common dso_local global i32 0, align 4
@IFM_NONE = common dso_local global i32 0, align 4
@DC_TSTAT_LP_CAN_NWAY = common dso_local global i32 0, align 4
@ANLPAR_TX_FD = common dso_local global i32 0, align 4
@BMSR_100TXFDX = common dso_local global i32 0, align 4
@IFM_100_TX = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@ANLPAR_T4 = common dso_local global i32 0, align 4
@BMSR_100T4 = common dso_local global i32 0, align 4
@IFM_100_T4 = common dso_local global i32 0, align 4
@IFM_HDX = common dso_local global i32 0, align 4
@ANLPAR_TX = common dso_local global i32 0, align 4
@BMSR_100TXHDX = common dso_local global i32 0, align 4
@ANLPAR_10_FD = common dso_local global i32 0, align 4
@IFM_10_T = common dso_local global i32 0, align 4
@ANLPAR_10 = common dso_local global i32 0, align 4
@DC_NETCFG = common dso_local global i32 0, align 4
@DC_NETCFG_SPEEDSEL = common dso_local global i32 0, align 4
@DC_NETCFG_FULLDUPLEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mii_softc*)* @dcphy_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcphy_status(%struct.mii_softc* %0) #0 {
  %2 = alloca %struct.mii_softc*, align 8
  %3 = alloca %struct.mii_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.dc_softc*, align 8
  store %struct.mii_softc* %0, %struct.mii_softc** %2, align 8
  %7 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %8 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %7, i32 0, i32 1
  %9 = load %struct.mii_data*, %struct.mii_data** %8, align 8
  store %struct.mii_data* %9, %struct.mii_data** %3, align 8
  %10 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %11 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.dc_softc* @if_getsoftc(i32 %12)
  store %struct.dc_softc* %13, %struct.dc_softc** %6, align 8
  %14 = load i32, i32* @IFM_AVALID, align 4
  %15 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %16 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @IFM_ETHER, align 4
  %18 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %19 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %21 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @if_getflags(i32 %22)
  %24 = load i32, i32* @IFF_UP, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  br label %276

28:                                               ; preds = %1
  %29 = load %struct.dc_softc*, %struct.dc_softc** %6, align 8
  %30 = load i32, i32* @DC_10BTSTAT, align 4
  %31 = call i32 @CSR_READ_4(%struct.dc_softc* %29, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @DC_TSTAT_LS10, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %28
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @DC_TSTAT_LS100, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %36, %28
  %42 = load i32, i32* @IFM_ACTIVE, align 4
  %43 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %44 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %41, %36
  %48 = load %struct.dc_softc*, %struct.dc_softc** %6, align 8
  %49 = load i32, i32* @DC_10BTCTRL, align 4
  %50 = call i32 @CSR_READ_4(%struct.dc_softc* %48, i32 %49)
  %51 = load i32, i32* @DC_TCTL_AUTONEGENBL, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %237

54:                                               ; preds = %47
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @DC_TSTAT_ANEGSTAT, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @DC_ASTAT_AUTONEGCMP, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %81

60:                                               ; preds = %54
  %61 = load %struct.dc_softc*, %struct.dc_softc** %6, align 8
  %62 = call i64 @DC_IS_MACRONIX(%struct.dc_softc* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = load %struct.dc_softc*, %struct.dc_softc** %6, align 8
  %66 = call i64 @DC_IS_PNICII(%struct.dc_softc* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %64, %60
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @DC_TSTAT_ANEGSTAT, align 4
  %71 = and i32 %69, %70
  %72 = load i32, i32* @DC_ASTAT_DISABLE, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %238

75:                                               ; preds = %68, %64
  %76 = load i32, i32* @IFM_NONE, align 4
  %77 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %78 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  br label %276

81:                                               ; preds = %54
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* @DC_TSTAT_LP_CAN_NWAY, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %194

86:                                               ; preds = %81
  %87 = load i32, i32* %5, align 4
  %88 = ashr i32 %87, 16
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @ANLPAR_TX_FD, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %108

93:                                               ; preds = %86
  %94 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %95 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @BMSR_100TXFDX, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %93
  %101 = load i32, i32* @IFM_100_TX, align 4
  %102 = load i32, i32* @IFM_FDX, align 4
  %103 = or i32 %101, %102
  %104 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %105 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 4
  br label %184

108:                                              ; preds = %93, %86
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* @ANLPAR_T4, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %128

113:                                              ; preds = %108
  %114 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %115 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @BMSR_100T4, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %113
  %121 = load i32, i32* @IFM_100_T4, align 4
  %122 = load i32, i32* @IFM_HDX, align 4
  %123 = or i32 %121, %122
  %124 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %125 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 4
  br label %183

128:                                              ; preds = %113, %108
  %129 = load i32, i32* %4, align 4
  %130 = load i32, i32* @ANLPAR_TX, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %148

133:                                              ; preds = %128
  %134 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %135 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @BMSR_100TXHDX, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %133
  %141 = load i32, i32* @IFM_100_TX, align 4
  %142 = load i32, i32* @IFM_HDX, align 4
  %143 = or i32 %141, %142
  %144 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %145 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = or i32 %146, %143
  store i32 %147, i32* %145, align 4
  br label %182

148:                                              ; preds = %133, %128
  %149 = load i32, i32* %4, align 4
  %150 = load i32, i32* @ANLPAR_10_FD, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %148
  %154 = load i32, i32* @IFM_10_T, align 4
  %155 = load i32, i32* @IFM_FDX, align 4
  %156 = or i32 %154, %155
  %157 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %158 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 4
  br label %181

161:                                              ; preds = %148
  %162 = load i32, i32* %4, align 4
  %163 = load i32, i32* @ANLPAR_10, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %174

166:                                              ; preds = %161
  %167 = load i32, i32* @IFM_10_T, align 4
  %168 = load i32, i32* @IFM_HDX, align 4
  %169 = or i32 %167, %168
  %170 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %171 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = or i32 %172, %169
  store i32 %173, i32* %171, align 4
  br label %180

174:                                              ; preds = %161
  %175 = load i32, i32* @IFM_NONE, align 4
  %176 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %177 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = or i32 %178, %175
  store i32 %179, i32* %177, align 4
  br label %180

180:                                              ; preds = %174, %166
  br label %181

181:                                              ; preds = %180, %153
  br label %182

182:                                              ; preds = %181, %140
  br label %183

183:                                              ; preds = %182, %120
  br label %184

184:                                              ; preds = %183, %100
  %185 = load %struct.dc_softc*, %struct.dc_softc** %6, align 8
  %186 = call i64 @DC_IS_INTEL(%struct.dc_softc* %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %184
  %189 = load %struct.dc_softc*, %struct.dc_softc** %6, align 8
  %190 = load i32, i32* @DC_10BTCTRL, align 4
  %191 = load i32, i32* @DC_TCTL_AUTONEGENBL, align 4
  %192 = call i32 @DC_CLRBIT(%struct.dc_softc* %189, i32 %190, i32 %191)
  br label %193

193:                                              ; preds = %188, %184
  br label %276

194:                                              ; preds = %81
  %195 = load i32, i32* %5, align 4
  %196 = load i32, i32* @DC_TSTAT_LS100, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %207, label %199

199:                                              ; preds = %194
  %200 = load i32, i32* @IFM_100_TX, align 4
  %201 = load i32, i32* @IFM_HDX, align 4
  %202 = or i32 %200, %201
  %203 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %204 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = or i32 %205, %202
  store i32 %206, i32* %204, align 4
  br label %227

207:                                              ; preds = %194
  %208 = load i32, i32* %5, align 4
  %209 = load i32, i32* @DC_TSTAT_LS10, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %220, label %212

212:                                              ; preds = %207
  %213 = load i32, i32* @IFM_10_T, align 4
  %214 = load i32, i32* @IFM_HDX, align 4
  %215 = or i32 %213, %214
  %216 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %217 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = or i32 %218, %215
  store i32 %219, i32* %217, align 4
  br label %226

220:                                              ; preds = %207
  %221 = load i32, i32* @IFM_NONE, align 4
  %222 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %223 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = or i32 %224, %221
  store i32 %225, i32* %223, align 4
  br label %226

226:                                              ; preds = %220, %212
  br label %227

227:                                              ; preds = %226, %199
  %228 = load %struct.dc_softc*, %struct.dc_softc** %6, align 8
  %229 = call i64 @DC_IS_INTEL(%struct.dc_softc* %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %236

231:                                              ; preds = %227
  %232 = load %struct.dc_softc*, %struct.dc_softc** %6, align 8
  %233 = load i32, i32* @DC_10BTCTRL, align 4
  %234 = load i32, i32* @DC_TCTL_AUTONEGENBL, align 4
  %235 = call i32 @DC_CLRBIT(%struct.dc_softc* %232, i32 %233, i32 %234)
  br label %236

236:                                              ; preds = %231, %227
  br label %276

237:                                              ; preds = %47
  br label %238

238:                                              ; preds = %237, %74
  %239 = load %struct.dc_softc*, %struct.dc_softc** %6, align 8
  %240 = load i32, i32* @DC_NETCFG, align 4
  %241 = call i32 @CSR_READ_4(%struct.dc_softc* %239, i32 %240)
  %242 = load i32, i32* @DC_NETCFG_SPEEDSEL, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %251

245:                                              ; preds = %238
  %246 = load i32, i32* @IFM_10_T, align 4
  %247 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %248 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = or i32 %249, %246
  store i32 %250, i32* %248, align 4
  br label %257

251:                                              ; preds = %238
  %252 = load i32, i32* @IFM_100_TX, align 4
  %253 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %254 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = or i32 %255, %252
  store i32 %256, i32* %254, align 4
  br label %257

257:                                              ; preds = %251, %245
  %258 = load %struct.dc_softc*, %struct.dc_softc** %6, align 8
  %259 = load i32, i32* @DC_NETCFG, align 4
  %260 = call i32 @CSR_READ_4(%struct.dc_softc* %258, i32 %259)
  %261 = load i32, i32* @DC_NETCFG_FULLDUPLEX, align 4
  %262 = and i32 %260, %261
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %270

264:                                              ; preds = %257
  %265 = load i32, i32* @IFM_FDX, align 4
  %266 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %267 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = or i32 %268, %265
  store i32 %269, i32* %267, align 4
  br label %276

270:                                              ; preds = %257
  %271 = load i32, i32* @IFM_HDX, align 4
  %272 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %273 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = or i32 %274, %271
  store i32 %275, i32* %273, align 4
  br label %276

276:                                              ; preds = %27, %75, %193, %236, %270, %264
  ret void
}

declare dso_local %struct.dc_softc* @if_getsoftc(i32) #1

declare dso_local i32 @if_getflags(i32) #1

declare dso_local i32 @CSR_READ_4(%struct.dc_softc*, i32) #1

declare dso_local i64 @DC_IS_MACRONIX(%struct.dc_softc*) #1

declare dso_local i64 @DC_IS_PNICII(%struct.dc_softc*) #1

declare dso_local i64 @DC_IS_INTEL(%struct.dc_softc*) #1

declare dso_local i32 @DC_CLRBIT(%struct.dc_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
