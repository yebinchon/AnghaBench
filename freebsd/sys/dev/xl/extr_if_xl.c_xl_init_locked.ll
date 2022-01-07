; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xl/extr_if_xl.c_xl_init_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xl/extr_if_xl.c_xl_init_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xl_softc = type { i32, i64, i32, i64, i32, i64, i32, i32, %struct.TYPE_6__, %struct.TYPE_4__, i32, %struct.ifnet*, i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ifnet = type { i32, i32 }
%struct.mii_data = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@XL_COMMAND = common dso_local global i64 0, align 8
@XL_CMD_RX_RESET = common dso_local global i32 0, align 4
@XL_CMD_TX_RESET = common dso_local global i32 0, align 4
@XL_FLAG_WOL = common dso_local global i32 0, align 4
@XL_W7_BM_PME = common dso_local global i64 0, align 8
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@XL_W2_STATION_ADDR_LO = common dso_local global i64 0, align 8
@XL_W2_STATION_MASK_LO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"initialization of the rx ring failed (%d)\0A\00", align 1
@XL_TYPE_905B = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"initialization of the tx ring failed (%d)\0A\00", align 1
@XL_TX_FREETHRESH = common dso_local global i64 0, align 8
@XL_PACKET_SIZE = common dso_local global i32 0, align 4
@XL_CMD_TX_SET_START = common dso_local global i32 0, align 4
@XL_CMD_SET_TX_RECLAIM = common dso_local global i32 0, align 4
@XL_CMD_UP_STALL = common dso_local global i32 0, align 4
@XL_UPLIST_PTR = common dso_local global i32 0, align 4
@XL_CMD_UP_UNSTALL = common dso_local global i32 0, align 4
@XL_DOWN_POLL = common dso_local global i64 0, align 8
@XL_CMD_DOWN_STALL = common dso_local global i32 0, align 4
@XL_DOWNLIST_PTR = common dso_local global i32 0, align 4
@XL_CMD_DOWN_UNSTALL = common dso_local global i32 0, align 4
@XL_XCVR_COAX = common dso_local global i64 0, align 8
@XL_CMD_COAX_START = common dso_local global i32 0, align 4
@XL_CMD_COAX_STOP = common dso_local global i32 0, align 4
@XL_W3_MAXPKTSIZE = common dso_local global i64 0, align 8
@XL_W3_MAC_CTRL = common dso_local global i64 0, align 8
@XL_MACCTRL_ALLOW_LARGE_PACK = common dso_local global i32 0, align 4
@XL_CMD_STATS_DISABLE = common dso_local global i32 0, align 4
@XL_W4_NET_DIAG = common dso_local global i64 0, align 8
@XL_NETDIAG_UPPER_BYTES_ENABLE = common dso_local global i32 0, align 4
@XL_CMD_STATS_ENABLE = common dso_local global i32 0, align 4
@XL_CMD_INTR_ACK = common dso_local global i32 0, align 4
@XL_CMD_STAT_ENB = common dso_local global i32 0, align 4
@XL_INTRS = common dso_local global i32 0, align 4
@XL_CMD_INTR_ENB = common dso_local global i32 0, align 4
@XL_FLAG_FUNCREG = common dso_local global i32 0, align 4
@XL_CMD_RX_SET_THRESH = common dso_local global i32 0, align 4
@XL_DMACTL = common dso_local global i32 0, align 4
@XL_DMACTL_UP_RX_EARLY = common dso_local global i32 0, align 4
@XL_CMD_TX_ENABLE = common dso_local global i32 0, align 4
@XL_CMD_RX_ENABLE = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@xl_tick = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xl_softc*)* @xl_init_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xl_init_locked(%struct.xl_softc* %0) #0 {
  %2 = alloca %struct.xl_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mii_data*, align 8
  %7 = alloca i32, align 4
  store %struct.xl_softc* %0, %struct.xl_softc** %2, align 8
  %8 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %9 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %8, i32 0, i32 11
  %10 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  store %struct.ifnet* %10, %struct.ifnet** %3, align 8
  store %struct.mii_data* null, %struct.mii_data** %6, align 8
  %11 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %12 = call i32 @XL_LOCK_ASSERT(%struct.xl_softc* %11)
  %13 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %14 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %359

20:                                               ; preds = %1
  %21 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %22 = call i32 @xl_stop(%struct.xl_softc* %21)
  %23 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %24 = call i32 @xl_reset(%struct.xl_softc* %23)
  %25 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %26 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %25, i32 0, i32 12
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %20
  %30 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %31 = load i64, i64* @XL_COMMAND, align 8
  %32 = load i32, i32* @XL_CMD_RX_RESET, align 4
  %33 = call i32 @CSR_WRITE_2(%struct.xl_softc* %30, i64 %31, i32 %32)
  %34 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %35 = call i32 @xl_wait(%struct.xl_softc* %34)
  br label %36

36:                                               ; preds = %29, %20
  %37 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %38 = load i64, i64* @XL_COMMAND, align 8
  %39 = load i32, i32* @XL_CMD_TX_RESET, align 4
  %40 = call i32 @CSR_WRITE_2(%struct.xl_softc* %37, i64 %38, i32 %39)
  %41 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %42 = call i32 @xl_wait(%struct.xl_softc* %41)
  %43 = call i32 @DELAY(i32 10000)
  %44 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %45 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %44, i32 0, i32 12
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %36
  %49 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %50 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %49, i32 0, i32 12
  %51 = load i32*, i32** %50, align 8
  %52 = call %struct.mii_data* @device_get_softc(i32* %51)
  store %struct.mii_data* %52, %struct.mii_data** %6, align 8
  br label %53

53:                                               ; preds = %48, %36
  %54 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %55 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @XL_FLAG_WOL, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %53
  %61 = call i32 @XL_SEL_WIN(i32 7)
  %62 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %63 = load i64, i64* @XL_W7_BM_PME, align 8
  %64 = call i32 @CSR_READ_2(%struct.xl_softc* %62, i64 %63)
  %65 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %66 = load i64, i64* @XL_W7_BM_PME, align 8
  %67 = call i32 @CSR_WRITE_2(%struct.xl_softc* %65, i64 %66, i32 0)
  br label %68

68:                                               ; preds = %60, %53
  %69 = call i32 @XL_SEL_WIN(i32 2)
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %89, %68
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %92

74:                                               ; preds = %70
  %75 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %76 = load i64, i64* @XL_W2_STATION_ADDR_LO, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %76, %78
  %80 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %81 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %80, i32 0, i32 11
  %82 = load %struct.ifnet*, %struct.ifnet** %81, align 8
  %83 = call i32* @IF_LLADDR(%struct.ifnet* %82)
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @CSR_WRITE_1(%struct.xl_softc* %75, i64 %79, i32 %87)
  br label %89

89:                                               ; preds = %74
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %5, align 4
  br label %70

92:                                               ; preds = %70
  store i32 0, i32* %5, align 4
  br label %93

93:                                               ; preds = %104, %92
  %94 = load i32, i32* %5, align 4
  %95 = icmp slt i32 %94, 3
  br i1 %95, label %96, label %107

96:                                               ; preds = %93
  %97 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %98 = load i64, i64* @XL_W2_STATION_MASK_LO, align 8
  %99 = load i32, i32* %5, align 4
  %100 = mul nsw i32 %99, 2
  %101 = sext i32 %100 to i64
  %102 = add nsw i64 %98, %101
  %103 = call i32 @CSR_WRITE_2(%struct.xl_softc* %97, i64 %102, i32 0)
  br label %104

104:                                              ; preds = %96
  %105 = load i32, i32* %5, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %5, align 4
  br label %93

107:                                              ; preds = %93
  %108 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %109 = call i32 @xl_list_rx_init(%struct.xl_softc* %108)
  store i32 %109, i32* %4, align 4
  %110 = load i32, i32* %4, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %107
  %113 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %114 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %113, i32 0, i32 10
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %4, align 4
  %117 = call i32 @device_printf(i32 %115, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %116)
  %118 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %119 = call i32 @xl_stop(%struct.xl_softc* %118)
  br label %359

120:                                              ; preds = %107
  %121 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %122 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @XL_TYPE_905B, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %120
  %127 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %128 = call i32 @xl_list_tx_init_90xB(%struct.xl_softc* %127)
  store i32 %128, i32* %4, align 4
  br label %132

129:                                              ; preds = %120
  %130 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %131 = call i32 @xl_list_tx_init(%struct.xl_softc* %130)
  store i32 %131, i32* %4, align 4
  br label %132

132:                                              ; preds = %129, %126
  %133 = load i32, i32* %4, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %132
  %136 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %137 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %136, i32 0, i32 10
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %4, align 4
  %140 = call i32 @device_printf(i32 %138, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %139)
  %141 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %142 = call i32 @xl_stop(%struct.xl_softc* %141)
  br label %359

143:                                              ; preds = %132
  %144 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %145 = load i64, i64* @XL_TX_FREETHRESH, align 8
  %146 = load i32, i32* @XL_PACKET_SIZE, align 4
  %147 = ashr i32 %146, 8
  %148 = call i32 @CSR_WRITE_1(%struct.xl_softc* %144, i64 %145, i32 %147)
  %149 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %150 = load i64, i64* @XL_COMMAND, align 8
  %151 = load i32, i32* @XL_CMD_TX_SET_START, align 4
  %152 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %153 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = or i32 %151, %154
  %156 = call i32 @CSR_WRITE_2(%struct.xl_softc* %149, i64 %150, i32 %155)
  %157 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %158 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @XL_TYPE_905B, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %170

162:                                              ; preds = %143
  %163 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %164 = load i64, i64* @XL_COMMAND, align 8
  %165 = load i32, i32* @XL_CMD_SET_TX_RECLAIM, align 4
  %166 = load i32, i32* @XL_PACKET_SIZE, align 4
  %167 = ashr i32 %166, 4
  %168 = or i32 %165, %167
  %169 = call i32 @CSR_WRITE_2(%struct.xl_softc* %163, i64 %164, i32 %168)
  br label %170

170:                                              ; preds = %162, %143
  %171 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %172 = call i32 @xl_rxfilter(%struct.xl_softc* %171)
  %173 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %174 = load i64, i64* @XL_COMMAND, align 8
  %175 = load i32, i32* @XL_CMD_UP_STALL, align 4
  %176 = call i32 @CSR_WRITE_2(%struct.xl_softc* %173, i64 %174, i32 %175)
  %177 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %178 = call i32 @xl_wait(%struct.xl_softc* %177)
  %179 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %180 = load i32, i32* @XL_UPLIST_PTR, align 4
  %181 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %182 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %181, i32 0, i32 9
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @CSR_WRITE_4(%struct.xl_softc* %179, i32 %180, i32 %184)
  %186 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %187 = load i64, i64* @XL_COMMAND, align 8
  %188 = load i32, i32* @XL_CMD_UP_UNSTALL, align 4
  %189 = call i32 @CSR_WRITE_2(%struct.xl_softc* %186, i64 %187, i32 %188)
  %190 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %191 = call i32 @xl_wait(%struct.xl_softc* %190)
  %192 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %193 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @XL_TYPE_905B, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %223

197:                                              ; preds = %170
  %198 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %199 = load i64, i64* @XL_DOWN_POLL, align 8
  %200 = call i32 @CSR_WRITE_1(%struct.xl_softc* %198, i64 %199, i32 64)
  %201 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %202 = load i64, i64* @XL_COMMAND, align 8
  %203 = load i32, i32* @XL_CMD_DOWN_STALL, align 4
  %204 = call i32 @CSR_WRITE_2(%struct.xl_softc* %201, i64 %202, i32 %203)
  %205 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %206 = call i32 @xl_wait(%struct.xl_softc* %205)
  %207 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %208 = load i32, i32* @XL_DOWNLIST_PTR, align 4
  %209 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %210 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %209, i32 0, i32 8
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 0
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i64 0
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @CSR_WRITE_4(%struct.xl_softc* %207, i32 %208, i32 %215)
  %217 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %218 = load i64, i64* @XL_COMMAND, align 8
  %219 = load i32, i32* @XL_CMD_DOWN_UNSTALL, align 4
  %220 = call i32 @CSR_WRITE_2(%struct.xl_softc* %217, i64 %218, i32 %219)
  %221 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %222 = call i32 @xl_wait(%struct.xl_softc* %221)
  br label %223

223:                                              ; preds = %197, %170
  %224 = call i32 @XL_SEL_WIN(i32 3)
  %225 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %226 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %225, i32 0, i32 3
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @XL_XCVR_COAX, align 8
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %230, label %235

230:                                              ; preds = %223
  %231 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %232 = load i64, i64* @XL_COMMAND, align 8
  %233 = load i32, i32* @XL_CMD_COAX_START, align 4
  %234 = call i32 @CSR_WRITE_2(%struct.xl_softc* %231, i64 %232, i32 %233)
  br label %240

235:                                              ; preds = %223
  %236 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %237 = load i64, i64* @XL_COMMAND, align 8
  %238 = load i32, i32* @XL_CMD_COAX_STOP, align 4
  %239 = call i32 @CSR_WRITE_2(%struct.xl_softc* %236, i64 %237, i32 %238)
  br label %240

240:                                              ; preds = %235, %230
  %241 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %242 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %241, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* @XL_TYPE_905B, align 8
  %245 = icmp eq i64 %243, %244
  br i1 %245, label %246, label %251

246:                                              ; preds = %240
  %247 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %248 = load i64, i64* @XL_W3_MAXPKTSIZE, align 8
  %249 = load i32, i32* @XL_PACKET_SIZE, align 4
  %250 = call i32 @CSR_WRITE_2(%struct.xl_softc* %247, i64 %248, i32 %249)
  br label %262

251:                                              ; preds = %240
  %252 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %253 = load i64, i64* @XL_W3_MAC_CTRL, align 8
  %254 = call i32 @CSR_READ_1(%struct.xl_softc* %252, i64 %253)
  store i32 %254, i32* %7, align 4
  %255 = load i32, i32* @XL_MACCTRL_ALLOW_LARGE_PACK, align 4
  %256 = load i32, i32* %7, align 4
  %257 = or i32 %256, %255
  store i32 %257, i32* %7, align 4
  %258 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %259 = load i64, i64* @XL_W3_MAC_CTRL, align 8
  %260 = load i32, i32* %7, align 4
  %261 = call i32 @CSR_WRITE_1(%struct.xl_softc* %258, i64 %259, i32 %260)
  br label %262

262:                                              ; preds = %251, %246
  %263 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %264 = load i64, i64* @XL_COMMAND, align 8
  %265 = load i32, i32* @XL_CMD_STATS_DISABLE, align 4
  %266 = call i32 @CSR_WRITE_2(%struct.xl_softc* %263, i64 %264, i32 %265)
  %267 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %268 = call i32 @xl_stats_update(%struct.xl_softc* %267)
  %269 = call i32 @XL_SEL_WIN(i32 4)
  %270 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %271 = load i64, i64* @XL_W4_NET_DIAG, align 8
  %272 = load i32, i32* @XL_NETDIAG_UPPER_BYTES_ENABLE, align 4
  %273 = call i32 @CSR_WRITE_2(%struct.xl_softc* %270, i64 %271, i32 %272)
  %274 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %275 = load i64, i64* @XL_COMMAND, align 8
  %276 = load i32, i32* @XL_CMD_STATS_ENABLE, align 4
  %277 = call i32 @CSR_WRITE_2(%struct.xl_softc* %274, i64 %275, i32 %276)
  %278 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %279 = load i64, i64* @XL_COMMAND, align 8
  %280 = load i32, i32* @XL_CMD_INTR_ACK, align 4
  %281 = or i32 %280, 255
  %282 = call i32 @CSR_WRITE_2(%struct.xl_softc* %278, i64 %279, i32 %281)
  %283 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %284 = load i64, i64* @XL_COMMAND, align 8
  %285 = load i32, i32* @XL_CMD_STAT_ENB, align 4
  %286 = load i32, i32* @XL_INTRS, align 4
  %287 = or i32 %285, %286
  %288 = call i32 @CSR_WRITE_2(%struct.xl_softc* %283, i64 %284, i32 %287)
  %289 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %290 = load i64, i64* @XL_COMMAND, align 8
  %291 = load i32, i32* @XL_CMD_INTR_ENB, align 4
  %292 = load i32, i32* @XL_INTRS, align 4
  %293 = or i32 %291, %292
  %294 = call i32 @CSR_WRITE_2(%struct.xl_softc* %289, i64 %290, i32 %293)
  %295 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %296 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = load i32, i32* @XL_FLAG_FUNCREG, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %309

301:                                              ; preds = %262
  %302 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %303 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %302, i32 0, i32 7
  %304 = load i32, i32* %303, align 4
  %305 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %306 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %305, i32 0, i32 6
  %307 = load i32, i32* %306, align 8
  %308 = call i32 @bus_space_write_4(i32 %304, i32 %307, i32 4, i32 32768)
  br label %309

309:                                              ; preds = %301, %262
  %310 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %311 = load i64, i64* @XL_COMMAND, align 8
  %312 = load i32, i32* @XL_CMD_RX_SET_THRESH, align 4
  %313 = load i32, i32* @XL_PACKET_SIZE, align 4
  %314 = ashr i32 %313, 2
  %315 = or i32 %312, %314
  %316 = call i32 @CSR_WRITE_2(%struct.xl_softc* %310, i64 %311, i32 %315)
  %317 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %318 = load i32, i32* @XL_DMACTL, align 4
  %319 = load i32, i32* @XL_DMACTL_UP_RX_EARLY, align 4
  %320 = call i32 @CSR_WRITE_4(%struct.xl_softc* %317, i32 %318, i32 %319)
  %321 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %322 = load i64, i64* @XL_COMMAND, align 8
  %323 = load i32, i32* @XL_CMD_TX_ENABLE, align 4
  %324 = call i32 @CSR_WRITE_2(%struct.xl_softc* %321, i64 %322, i32 %323)
  %325 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %326 = call i32 @xl_wait(%struct.xl_softc* %325)
  %327 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %328 = load i64, i64* @XL_COMMAND, align 8
  %329 = load i32, i32* @XL_CMD_RX_ENABLE, align 4
  %330 = call i32 @CSR_WRITE_2(%struct.xl_softc* %327, i64 %328, i32 %329)
  %331 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %332 = call i32 @xl_wait(%struct.xl_softc* %331)
  %333 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %334 = icmp ne %struct.mii_data* %333, null
  br i1 %334, label %335, label %338

335:                                              ; preds = %309
  %336 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %337 = call i32 @mii_mediachg(%struct.mii_data* %336)
  br label %338

338:                                              ; preds = %335, %309
  %339 = call i32 @XL_SEL_WIN(i32 7)
  %340 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %341 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %342 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 4
  %344 = or i32 %343, %340
  store i32 %344, i32* %342, align 4
  %345 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %346 = xor i32 %345, -1
  %347 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %348 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 4
  %350 = and i32 %349, %346
  store i32 %350, i32* %348, align 4
  %351 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %352 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %351, i32 0, i32 5
  store i64 0, i64* %352, align 8
  %353 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %354 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %353, i32 0, i32 4
  %355 = load i32, i32* @hz, align 4
  %356 = load i32, i32* @xl_tick, align 4
  %357 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %358 = call i32 @callout_reset(i32* %354, i32 %355, i32 %356, %struct.xl_softc* %357)
  br label %359

359:                                              ; preds = %338, %135, %112, %19
  ret void
}

declare dso_local i32 @XL_LOCK_ASSERT(%struct.xl_softc*) #1

declare dso_local i32 @xl_stop(%struct.xl_softc*) #1

declare dso_local i32 @xl_reset(%struct.xl_softc*) #1

declare dso_local i32 @CSR_WRITE_2(%struct.xl_softc*, i64, i32) #1

declare dso_local i32 @xl_wait(%struct.xl_softc*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local %struct.mii_data* @device_get_softc(i32*) #1

declare dso_local i32 @XL_SEL_WIN(i32) #1

declare dso_local i32 @CSR_READ_2(%struct.xl_softc*, i64) #1

declare dso_local i32 @CSR_WRITE_1(%struct.xl_softc*, i64, i32) #1

declare dso_local i32* @IF_LLADDR(%struct.ifnet*) #1

declare dso_local i32 @xl_list_rx_init(%struct.xl_softc*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @xl_list_tx_init_90xB(%struct.xl_softc*) #1

declare dso_local i32 @xl_list_tx_init(%struct.xl_softc*) #1

declare dso_local i32 @xl_rxfilter(%struct.xl_softc*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.xl_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_1(%struct.xl_softc*, i64) #1

declare dso_local i32 @xl_stats_update(%struct.xl_softc*) #1

declare dso_local i32 @bus_space_write_4(i32, i32, i32, i32) #1

declare dso_local i32 @mii_mediachg(%struct.mii_data*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.xl_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
