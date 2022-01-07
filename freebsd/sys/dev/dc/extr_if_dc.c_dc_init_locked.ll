; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_init_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_init_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_softc = type { i32, i32, i64, i64, i32, i32, i64, i32, i32, i32, %struct.ifnet* }
%struct.ifnet = type { i32, i32 }
%struct.mii_data = type { %struct.ifmedia }
%struct.ifmedia = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@DC_BUSCTL = common dso_local global i32 0, align 4
@DC_BUSCTL_MRME = common dso_local global i32 0, align 4
@DC_BUSCTL_MRLE = common dso_local global i32 0, align 4
@DC_BUSCTL_ARBITRATION = common dso_local global i32 0, align 4
@DC_BURSTLEN_USECA = common dso_local global i32 0, align 4
@DC_BURSTLEN_16LONG = common dso_local global i32 0, align 4
@DC_TX_POLL = common dso_local global i32 0, align 4
@DC_TXPOLL_1 = common dso_local global i32 0, align 4
@DC_CACHEALIGN_32LONG = common dso_local global i32 0, align 4
@DC_CACHEALIGN_16LONG = common dso_local global i32 0, align 4
@DC_CACHEALIGN_8LONG = common dso_local global i32 0, align 4
@DC_CACHEALIGN_NONE = common dso_local global i32 0, align 4
@DC_TX_STORENFWD = common dso_local global i32 0, align 4
@DC_NETCFG = common dso_local global i32 0, align 4
@DC_NETCFG_STORENFWD = common dso_local global i32 0, align 4
@DC_TXTHRESH_MAX = common dso_local global i64 0, align 8
@DC_NETCFG_NO_RXCRC = common dso_local global i32 0, align 4
@DC_NETCFG_TX_BACKOFF = common dso_local global i32 0, align 4
@DC_MX_MAGICPACKET = common dso_local global i32 0, align 4
@DC_TYPE_98713 = common dso_local global i64 0, align 8
@DC_MX_MAGIC_98713 = common dso_local global i32 0, align 4
@DC_MX_MAGIC_98715 = common dso_local global i32 0, align 4
@DC_SIAGP = common dso_local global i32 0, align 4
@DC_SIAGP_WRITE_EN = common dso_local global i32 0, align 4
@DC_SIAGP_INT1_EN = common dso_local global i32 0, align 4
@DC_SIAGP_MD_GP2_OUTPUT = common dso_local global i32 0, align 4
@DC_SIAGP_MD_GP0_OUTPUT = common dso_local global i32 0, align 4
@DC_NETCFG_TX_THRESH = common dso_local global i32 0, align 4
@DC_TXTHRESH_MIN = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"initialization failed: no memory for rx buffers\0A\00", align 1
@DC_RXADDR = common dso_local global i32 0, align 4
@DC_TXADDR = common dso_local global i32 0, align 4
@DC_IMR = common dso_local global i32 0, align 4
@DC_INTRS = common dso_local global i32 0, align 4
@DC_ISR = common dso_local global i32 0, align 4
@DC_WATCHDOG = common dso_local global i32 0, align 4
@DC_WDOG_JABBERCLK = common dso_local global i32 0, align 4
@DC_WDOG_HOSTUNJAB = common dso_local global i32 0, align 4
@DC_NETCFG_TX_ON = common dso_local global i32 0, align 4
@DC_TULIP_LEDS = common dso_local global i32 0, align 4
@DC_WDOG_CTLWREN = common dso_local global i32 0, align 4
@DC_WDOG_LINK = common dso_local global i32 0, align 4
@DC_WDOG_ACTIVITY = common dso_local global i32 0, align 4
@DC_NETCFG_RX_ON = common dso_local global i32 0, align 4
@DC_RXSTART = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@DC_FRAMESDISCARDED = common dso_local global i32 0, align 4
@IFM_HPNA_1 = common dso_local global i64 0, align 8
@DC_21143_NWAY = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@dc_tick = common dso_local global i32 0, align 4
@dc_watchdog = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc_softc*)* @dc_init_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dc_init_locked(%struct.dc_softc* %0) #0 {
  %2 = alloca %struct.dc_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.mii_data*, align 8
  %5 = alloca %struct.ifmedia*, align 8
  store %struct.dc_softc* %0, %struct.dc_softc** %2, align 8
  %6 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %7 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %6, i32 0, i32 10
  %8 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  store %struct.ifnet* %8, %struct.ifnet** %3, align 8
  %9 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %10 = call i32 @DC_LOCK_ASSERT(%struct.dc_softc* %9)
  %11 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %12 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %363

18:                                               ; preds = %1
  %19 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %20 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %19, i32 0, i32 9
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.mii_data* @device_get_softc(i32 %21)
  store %struct.mii_data* %22, %struct.mii_data** %4, align 8
  %23 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %24 = call i32 @dc_stop(%struct.dc_softc* %23)
  %25 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %26 = call i32 @dc_reset(%struct.dc_softc* %25)
  %27 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %28 = call i64 @DC_IS_INTEL(%struct.dc_softc* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %18
  %31 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %32 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %31, i32 0, i32 0
  store %struct.ifmedia* %32, %struct.ifmedia** %5, align 8
  %33 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %34 = load %struct.ifmedia*, %struct.ifmedia** %5, align 8
  %35 = getelementptr inbounds %struct.ifmedia, %struct.ifmedia* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dc_apply_fixup(%struct.dc_softc* %33, i32 %36)
  br label %38

38:                                               ; preds = %30, %18
  %39 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %40 = call i64 @DC_IS_ASIX(%struct.dc_softc* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %38
  %43 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %44 = call i64 @DC_IS_DAVICOM(%struct.dc_softc* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %48 = call i64 @DC_IS_ULI(%struct.dc_softc* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46, %42, %38
  %51 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %52 = load i32, i32* @DC_BUSCTL, align 4
  %53 = call i32 @CSR_WRITE_4(%struct.dc_softc* %51, i32 %52, i32 0)
  br label %61

54:                                               ; preds = %46
  %55 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %56 = load i32, i32* @DC_BUSCTL, align 4
  %57 = load i32, i32* @DC_BUSCTL_MRME, align 4
  %58 = load i32, i32* @DC_BUSCTL_MRLE, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @CSR_WRITE_4(%struct.dc_softc* %55, i32 %56, i32 %59)
  br label %61

61:                                               ; preds = %54, %50
  %62 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %63 = call i64 @DC_IS_INTEL(%struct.dc_softc* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %67 = load i32, i32* @DC_BUSCTL, align 4
  %68 = load i32, i32* @DC_BUSCTL_ARBITRATION, align 4
  %69 = call i32 @DC_SETBIT(%struct.dc_softc* %66, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %65, %61
  %71 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %72 = call i64 @DC_IS_DAVICOM(%struct.dc_softc* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %76 = call i64 @DC_IS_INTEL(%struct.dc_softc* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %74, %70
  %79 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %80 = load i32, i32* @DC_BUSCTL, align 4
  %81 = load i32, i32* @DC_BURSTLEN_USECA, align 4
  %82 = call i32 @DC_SETBIT(%struct.dc_softc* %79, i32 %80, i32 %81)
  br label %88

83:                                               ; preds = %74
  %84 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %85 = load i32, i32* @DC_BUSCTL, align 4
  %86 = load i32, i32* @DC_BURSTLEN_16LONG, align 4
  %87 = call i32 @DC_SETBIT(%struct.dc_softc* %84, i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %83, %78
  %89 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %90 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @DC_TX_POLL, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %88
  %96 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %97 = load i32, i32* @DC_BUSCTL, align 4
  %98 = load i32, i32* @DC_TXPOLL_1, align 4
  %99 = call i32 @DC_SETBIT(%struct.dc_softc* %96, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %95, %88
  %101 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %102 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  switch i32 %103, label %120 [
    i32 32, label %104
    i32 16, label %109
    i32 8, label %114
    i32 0, label %119
  ]

104:                                              ; preds = %100
  %105 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %106 = load i32, i32* @DC_BUSCTL, align 4
  %107 = load i32, i32* @DC_CACHEALIGN_32LONG, align 4
  %108 = call i32 @DC_SETBIT(%struct.dc_softc* %105, i32 %106, i32 %107)
  br label %125

109:                                              ; preds = %100
  %110 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %111 = load i32, i32* @DC_BUSCTL, align 4
  %112 = load i32, i32* @DC_CACHEALIGN_16LONG, align 4
  %113 = call i32 @DC_SETBIT(%struct.dc_softc* %110, i32 %111, i32 %112)
  br label %125

114:                                              ; preds = %100
  %115 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %116 = load i32, i32* @DC_BUSCTL, align 4
  %117 = load i32, i32* @DC_CACHEALIGN_8LONG, align 4
  %118 = call i32 @DC_SETBIT(%struct.dc_softc* %115, i32 %116, i32 %117)
  br label %125

119:                                              ; preds = %100
  br label %120

120:                                              ; preds = %100, %119
  %121 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %122 = load i32, i32* @DC_BUSCTL, align 4
  %123 = load i32, i32* @DC_CACHEALIGN_NONE, align 4
  %124 = call i32 @DC_SETBIT(%struct.dc_softc* %121, i32 %122, i32 %123)
  br label %125

125:                                              ; preds = %120, %114, %109, %104
  %126 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %127 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @DC_TX_STORENFWD, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %125
  %133 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %134 = load i32, i32* @DC_NETCFG, align 4
  %135 = load i32, i32* @DC_NETCFG_STORENFWD, align 4
  %136 = call i32 @DC_SETBIT(%struct.dc_softc* %133, i32 %134, i32 %135)
  br label %161

137:                                              ; preds = %125
  %138 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %139 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @DC_TXTHRESH_MAX, align 8
  %142 = icmp sgt i64 %140, %141
  br i1 %142, label %143, label %148

143:                                              ; preds = %137
  %144 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %145 = load i32, i32* @DC_NETCFG, align 4
  %146 = load i32, i32* @DC_NETCFG_STORENFWD, align 4
  %147 = call i32 @DC_SETBIT(%struct.dc_softc* %144, i32 %145, i32 %146)
  br label %160

148:                                              ; preds = %137
  %149 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %150 = load i32, i32* @DC_NETCFG, align 4
  %151 = load i32, i32* @DC_NETCFG_STORENFWD, align 4
  %152 = call i32 @DC_CLRBIT(%struct.dc_softc* %149, i32 %150, i32 %151)
  %153 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %154 = load i32, i32* @DC_NETCFG, align 4
  %155 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %156 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = trunc i64 %157 to i32
  %159 = call i32 @DC_SETBIT(%struct.dc_softc* %153, i32 %154, i32 %158)
  br label %160

160:                                              ; preds = %148, %143
  br label %161

161:                                              ; preds = %160, %132
  %162 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %163 = load i32, i32* @DC_NETCFG, align 4
  %164 = load i32, i32* @DC_NETCFG_NO_RXCRC, align 4
  %165 = call i32 @DC_SETBIT(%struct.dc_softc* %162, i32 %163, i32 %164)
  %166 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %167 = load i32, i32* @DC_NETCFG, align 4
  %168 = load i32, i32* @DC_NETCFG_TX_BACKOFF, align 4
  %169 = call i32 @DC_CLRBIT(%struct.dc_softc* %166, i32 %167, i32 %168)
  %170 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %171 = call i64 @DC_IS_MACRONIX(%struct.dc_softc* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %177, label %173

173:                                              ; preds = %161
  %174 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %175 = call i64 @DC_IS_PNICII(%struct.dc_softc* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %197

177:                                              ; preds = %173, %161
  %178 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %179 = load i32, i32* @DC_MX_MAGICPACKET, align 4
  %180 = call i32 @DC_CLRBIT(%struct.dc_softc* %178, i32 %179, i32 -65536)
  %181 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %182 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %181, i32 0, i32 3
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @DC_TYPE_98713, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %191

186:                                              ; preds = %177
  %187 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %188 = load i32, i32* @DC_MX_MAGICPACKET, align 4
  %189 = load i32, i32* @DC_MX_MAGIC_98713, align 4
  %190 = call i32 @DC_SETBIT(%struct.dc_softc* %187, i32 %188, i32 %189)
  br label %196

191:                                              ; preds = %177
  %192 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %193 = load i32, i32* @DC_MX_MAGICPACKET, align 4
  %194 = load i32, i32* @DC_MX_MAGIC_98715, align 4
  %195 = call i32 @DC_SETBIT(%struct.dc_softc* %192, i32 %193, i32 %194)
  br label %196

196:                                              ; preds = %191, %186
  br label %197

197:                                              ; preds = %196, %173
  %198 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %199 = call i64 @DC_IS_XIRCOM(%struct.dc_softc* %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %222

201:                                              ; preds = %197
  %202 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %203 = load i32, i32* @DC_SIAGP, align 4
  %204 = load i32, i32* @DC_SIAGP_WRITE_EN, align 4
  %205 = load i32, i32* @DC_SIAGP_INT1_EN, align 4
  %206 = or i32 %204, %205
  %207 = load i32, i32* @DC_SIAGP_MD_GP2_OUTPUT, align 4
  %208 = or i32 %206, %207
  %209 = load i32, i32* @DC_SIAGP_MD_GP0_OUTPUT, align 4
  %210 = or i32 %208, %209
  %211 = call i32 @CSR_WRITE_4(%struct.dc_softc* %202, i32 %203, i32 %210)
  %212 = call i32 @DELAY(i32 10)
  %213 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %214 = load i32, i32* @DC_SIAGP, align 4
  %215 = load i32, i32* @DC_SIAGP_INT1_EN, align 4
  %216 = load i32, i32* @DC_SIAGP_MD_GP2_OUTPUT, align 4
  %217 = or i32 %215, %216
  %218 = load i32, i32* @DC_SIAGP_MD_GP0_OUTPUT, align 4
  %219 = or i32 %217, %218
  %220 = call i32 @CSR_WRITE_4(%struct.dc_softc* %213, i32 %214, i32 %219)
  %221 = call i32 @DELAY(i32 10)
  br label %222

222:                                              ; preds = %201, %197
  %223 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %224 = load i32, i32* @DC_NETCFG, align 4
  %225 = load i32, i32* @DC_NETCFG_TX_THRESH, align 4
  %226 = call i32 @DC_CLRBIT(%struct.dc_softc* %223, i32 %224, i32 %225)
  %227 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %228 = load i32, i32* @DC_NETCFG, align 4
  %229 = load i32, i32* @DC_TXTHRESH_MIN, align 4
  %230 = call i32 @DC_SETBIT(%struct.dc_softc* %227, i32 %228, i32 %229)
  %231 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %232 = call i64 @dc_list_rx_init(%struct.dc_softc* %231)
  %233 = load i64, i64* @ENOBUFS, align 8
  %234 = icmp eq i64 %232, %233
  br i1 %234, label %235, label %242

235:                                              ; preds = %222
  %236 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %237 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %236, i32 0, i32 8
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @device_printf(i32 %238, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %240 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %241 = call i32 @dc_stop(%struct.dc_softc* %240)
  br label %363

242:                                              ; preds = %222
  %243 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %244 = call i32 @dc_list_tx_init(%struct.dc_softc* %243)
  %245 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %246 = load i32, i32* @DC_RXADDR, align 4
  %247 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %248 = call i32 @DC_RXDESC(%struct.dc_softc* %247, i32 0)
  %249 = call i32 @CSR_WRITE_4(%struct.dc_softc* %245, i32 %246, i32 %248)
  %250 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %251 = load i32, i32* @DC_TXADDR, align 4
  %252 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %253 = call i32 @DC_TXDESC(%struct.dc_softc* %252, i32 0)
  %254 = call i32 @CSR_WRITE_4(%struct.dc_softc* %250, i32 %251, i32 %253)
  %255 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %256 = load i32, i32* @DC_IMR, align 4
  %257 = load i32, i32* @DC_INTRS, align 4
  %258 = call i32 @CSR_WRITE_4(%struct.dc_softc* %255, i32 %256, i32 %257)
  %259 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %260 = load i32, i32* @DC_ISR, align 4
  %261 = call i32 @CSR_WRITE_4(%struct.dc_softc* %259, i32 %260, i32 -1)
  %262 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %263 = call i64 @DC_IS_ULI(%struct.dc_softc* %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %272

265:                                              ; preds = %242
  %266 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %267 = load i32, i32* @DC_WATCHDOG, align 4
  %268 = load i32, i32* @DC_WDOG_JABBERCLK, align 4
  %269 = load i32, i32* @DC_WDOG_HOSTUNJAB, align 4
  %270 = or i32 %268, %269
  %271 = call i32 @CSR_WRITE_4(%struct.dc_softc* %266, i32 %267, i32 %270)
  br label %272

272:                                              ; preds = %265, %242
  %273 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %274 = load i32, i32* @DC_NETCFG, align 4
  %275 = load i32, i32* @DC_NETCFG_TX_ON, align 4
  %276 = call i32 @DC_SETBIT(%struct.dc_softc* %273, i32 %274, i32 %275)
  %277 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %278 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = load i32, i32* @DC_TULIP_LEDS, align 4
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %295

283:                                              ; preds = %272
  %284 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %285 = load i32, i32* @DC_WATCHDOG, align 4
  %286 = load i32, i32* @DC_WDOG_CTLWREN, align 4
  %287 = load i32, i32* @DC_WDOG_LINK, align 4
  %288 = or i32 %286, %287
  %289 = load i32, i32* @DC_WDOG_ACTIVITY, align 4
  %290 = or i32 %288, %289
  %291 = call i32 @CSR_WRITE_4(%struct.dc_softc* %284, i32 %285, i32 %290)
  %292 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %293 = load i32, i32* @DC_WATCHDOG, align 4
  %294 = call i32 @CSR_WRITE_4(%struct.dc_softc* %292, i32 %293, i32 0)
  br label %295

295:                                              ; preds = %283, %272
  %296 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %297 = call i32 @dc_setfilt(%struct.dc_softc* %296)
  %298 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %299 = load i32, i32* @DC_NETCFG, align 4
  %300 = load i32, i32* @DC_NETCFG_RX_ON, align 4
  %301 = call i32 @DC_SETBIT(%struct.dc_softc* %298, i32 %299, i32 %300)
  %302 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %303 = load i32, i32* @DC_RXSTART, align 4
  %304 = call i32 @CSR_WRITE_4(%struct.dc_softc* %302, i32 %303, i32 -1)
  %305 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %306 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %307 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 4
  %309 = or i32 %308, %305
  store i32 %309, i32* %307, align 4
  %310 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %311 = xor i32 %310, -1
  %312 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %313 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 4
  %315 = and i32 %314, %311
  store i32 %315, i32* %313, align 4
  %316 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %317 = call i32 @dc_ifmedia_upd_locked(%struct.dc_softc* %316)
  %318 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %319 = load i32, i32* @DC_FRAMESDISCARDED, align 4
  %320 = call i32 @CSR_READ_4(%struct.dc_softc* %318, i32 %319)
  %321 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %322 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.ifmedia, %struct.ifmedia* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 4
  %325 = call i64 @IFM_SUBTYPE(i32 %324)
  %326 = load i64, i64* @IFM_HPNA_1, align 8
  %327 = icmp eq i64 %325, %326
  br i1 %327, label %328, label %331

328:                                              ; preds = %295
  %329 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %330 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %329, i32 0, i32 4
  store i32 1, i32* %330, align 8
  br label %354

331:                                              ; preds = %295
  %332 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %333 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  %335 = load i32, i32* @DC_21143_NWAY, align 4
  %336 = and i32 %334, %335
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %346

338:                                              ; preds = %331
  %339 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %340 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %339, i32 0, i32 7
  %341 = load i32, i32* @hz, align 4
  %342 = sdiv i32 %341, 10
  %343 = load i32, i32* @dc_tick, align 4
  %344 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %345 = call i32 @callout_reset(i32* %340, i32 %342, i32 %343, %struct.dc_softc* %344)
  br label %353

346:                                              ; preds = %331
  %347 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %348 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %347, i32 0, i32 7
  %349 = load i32, i32* @hz, align 4
  %350 = load i32, i32* @dc_tick, align 4
  %351 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %352 = call i32 @callout_reset(i32* %348, i32 %349, i32 %350, %struct.dc_softc* %351)
  br label %353

353:                                              ; preds = %346, %338
  br label %354

354:                                              ; preds = %353, %328
  %355 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %356 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %355, i32 0, i32 6
  store i64 0, i64* %356, align 8
  %357 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %358 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %357, i32 0, i32 5
  %359 = load i32, i32* @hz, align 4
  %360 = load i32, i32* @dc_watchdog, align 4
  %361 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %362 = call i32 @callout_reset(i32* %358, i32 %359, i32 %360, %struct.dc_softc* %361)
  br label %363

363:                                              ; preds = %354, %235, %17
  ret void
}

declare dso_local i32 @DC_LOCK_ASSERT(%struct.dc_softc*) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @dc_stop(%struct.dc_softc*) #1

declare dso_local i32 @dc_reset(%struct.dc_softc*) #1

declare dso_local i64 @DC_IS_INTEL(%struct.dc_softc*) #1

declare dso_local i32 @dc_apply_fixup(%struct.dc_softc*, i32) #1

declare dso_local i64 @DC_IS_ASIX(%struct.dc_softc*) #1

declare dso_local i64 @DC_IS_DAVICOM(%struct.dc_softc*) #1

declare dso_local i64 @DC_IS_ULI(%struct.dc_softc*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.dc_softc*, i32, i32) #1

declare dso_local i32 @DC_SETBIT(%struct.dc_softc*, i32, i32) #1

declare dso_local i32 @DC_CLRBIT(%struct.dc_softc*, i32, i32) #1

declare dso_local i64 @DC_IS_MACRONIX(%struct.dc_softc*) #1

declare dso_local i64 @DC_IS_PNICII(%struct.dc_softc*) #1

declare dso_local i64 @DC_IS_XIRCOM(%struct.dc_softc*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i64 @dc_list_rx_init(%struct.dc_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @dc_list_tx_init(%struct.dc_softc*) #1

declare dso_local i32 @DC_RXDESC(%struct.dc_softc*, i32) #1

declare dso_local i32 @DC_TXDESC(%struct.dc_softc*, i32) #1

declare dso_local i32 @dc_setfilt(%struct.dc_softc*) #1

declare dso_local i32 @dc_ifmedia_upd_locked(%struct.dc_softc*) #1

declare dso_local i32 @CSR_READ_4(%struct.dc_softc*, i32) #1

declare dso_local i64 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.dc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
