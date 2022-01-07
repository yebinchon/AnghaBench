; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_init_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_init_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfe_softc = type { i32, i32, i32, i32, i32, i64, %struct.TYPE_4__, %struct.TYPE_5__, %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.mii_data = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@NFE_RX_HEADERS = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@ETHER_HDR_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"initialization failed: no memory for rx buffers\0A\00", align 1
@NFE_CORRECT_MACADDR = common dso_local global i32 0, align 4
@NFE_MAC_ADDR_INORDER = common dso_local global i32 0, align 4
@NFE_TX_UNK = common dso_local global i32 0, align 4
@NFE_STATUS = common dso_local global i32 0, align 4
@NFE_TX_FLOW_CTRL = common dso_local global i32 0, align 4
@NFE_TX_PAUSE_FRAME = common dso_local global i32 0, align 4
@NFE_TX_PAUSE_FRAME_DISABLE = common dso_local global i32 0, align 4
@NFE_RXTX_BIT2 = common dso_local global i32 0, align 4
@NFE_40BIT_ADDR = common dso_local global i32 0, align 4
@NFE_RXTX_V3MAGIC = common dso_local global i32 0, align 4
@NFE_JUMBO_SUP = common dso_local global i32 0, align 4
@NFE_RXTX_V2MAGIC = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@NFE_RXTX_RXCSUM = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@NFE_RXTX_VTAG_INSERT = common dso_local global i32 0, align 4
@NFE_RXTX_VTAG_STRIP = common dso_local global i32 0, align 4
@NFE_RXTX_CTL = common dso_local global i32 0, align 4
@NFE_RXTX_RESET = common dso_local global i32 0, align 4
@NFE_VTAG_CTL = common dso_local global i32 0, align 4
@NFE_VTAG_ENABLE = common dso_local global i32 0, align 4
@NFE_SETUP_R6 = common dso_local global i32 0, align 4
@NFE_RX_RING_ADDR_HI = common dso_local global i32 0, align 4
@NFE_RX_RING_ADDR_LO = common dso_local global i32 0, align 4
@NFE_TX_RING_ADDR_HI = common dso_local global i32 0, align 4
@NFE_TX_RING_ADDR_LO = common dso_local global i32 0, align 4
@NFE_RING_SIZE = common dso_local global i32 0, align 4
@NFE_RX_RING_COUNT = common dso_local global i32 0, align 4
@NFE_TX_RING_COUNT = common dso_local global i32 0, align 4
@NFE_RXBUFSZ = common dso_local global i32 0, align 4
@NFE_PWR_STATE = common dso_local global i32 0, align 4
@NFE_PWR_WAKEUP = common dso_local global i32 0, align 4
@NFE_PWR_VALID = common dso_local global i32 0, align 4
@NFE_IMTIMER = common dso_local global i32 0, align 4
@NFE_IM_DEFAULT = common dso_local global i32 0, align 4
@NFE_SETUP_R1 = common dso_local global i32 0, align 4
@NFE_R1_MAGIC_10_100 = common dso_local global i32 0, align 4
@NFE_SETUP_R2 = common dso_local global i32 0, align 4
@NFE_R2_MAGIC = common dso_local global i32 0, align 4
@NFE_R6_MAGIC = common dso_local global i32 0, align 4
@NFE_STATUS_MAGIC = common dso_local global i32 0, align 4
@NFE_SETUP_R4 = common dso_local global i32 0, align 4
@NFE_R4_MAGIC = common dso_local global i32 0, align 4
@NFE_WOL_CTL = common dso_local global i32 0, align 4
@NFE_RXTX_BIT1 = common dso_local global i32 0, align 4
@NFE_RX_CTL = common dso_local global i32 0, align 4
@NFE_RX_START = common dso_local global i32 0, align 4
@NFE_TX_CTL = common dso_local global i32 0, align 4
@NFE_TX_START = common dso_local global i32 0, align 4
@NFE_PHY_STATUS = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@nfe_tick = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @nfe_init_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfe_init_locked(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.nfe_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.nfe_softc*
  store %struct.nfe_softc* %9, %struct.nfe_softc** %3, align 8
  %10 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %11 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %10, i32 0, i32 11
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  %13 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %14 = call i32 @NFE_LOCK_ASSERT(%struct.nfe_softc* %13)
  %15 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %16 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %15, i32 0, i32 10
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.mii_data* @device_get_softc(i32 %17)
  store %struct.mii_data* %18, %struct.mii_data** %5, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @if_getdrvflags(i32 %19)
  %21 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %375

25:                                               ; preds = %1
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @nfe_stop(i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @if_getmtu(i32 %28)
  %30 = load i32, i32* @NFE_RX_HEADERS, align 4
  %31 = add nsw i32 %29, %30
  %32 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %33 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %35 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %36 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %35, i32 0, i32 6
  %37 = call i32 @nfe_init_tx_ring(%struct.nfe_softc* %34, %struct.TYPE_4__* %36)
  %38 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %39 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @MCLBYTES, align 4
  %42 = load i32, i32* @ETHER_HDR_LEN, align 4
  %43 = sub nsw i32 %41, %42
  %44 = icmp sgt i32 %40, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %25
  %46 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %47 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %48 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %47, i32 0, i32 8
  %49 = call i32 @nfe_init_jrx_ring(%struct.nfe_softc* %46, %struct.TYPE_6__* %48)
  store i32 %49, i32* %7, align 4
  br label %55

50:                                               ; preds = %25
  %51 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %52 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %53 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %52, i32 0, i32 7
  %54 = call i32 @nfe_init_rx_ring(%struct.nfe_softc* %51, %struct.TYPE_5__* %53)
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %50, %45
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %60 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %59, i32 0, i32 9
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @device_printf(i32 %61, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @nfe_stop(i32 %63)
  br label %375

65:                                               ; preds = %55
  store i32 0, i32* %6, align 4
  %66 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %67 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @NFE_CORRECT_MACADDR, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %65
  %73 = load i32, i32* @NFE_MAC_ADDR_INORDER, align 4
  %74 = load i32, i32* %6, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %72, %65
  %77 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %78 = load i32, i32* @NFE_TX_UNK, align 4
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @NFE_WRITE(%struct.nfe_softc* %77, i32 %78, i32 %79)
  %81 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %82 = load i32, i32* @NFE_STATUS, align 4
  %83 = call i32 @NFE_WRITE(%struct.nfe_softc* %81, i32 %82, i32 0)
  %84 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %85 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @NFE_TX_FLOW_CTRL, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %76
  %91 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %92 = load i32, i32* @NFE_TX_PAUSE_FRAME, align 4
  %93 = load i32, i32* @NFE_TX_PAUSE_FRAME_DISABLE, align 4
  %94 = call i32 @NFE_WRITE(%struct.nfe_softc* %91, i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %90, %76
  %96 = load i32, i32* @NFE_RXTX_BIT2, align 4
  %97 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %98 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  %99 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %100 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @NFE_40BIT_ADDR, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %95
  %106 = load i32, i32* @NFE_RXTX_V3MAGIC, align 4
  %107 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %108 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 8
  br label %125

111:                                              ; preds = %95
  %112 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %113 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @NFE_JUMBO_SUP, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %111
  %119 = load i32, i32* @NFE_RXTX_V2MAGIC, align 4
  %120 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %121 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 8
  br label %124

124:                                              ; preds = %118, %111
  br label %125

125:                                              ; preds = %124, %105
  %126 = load i32, i32* %4, align 4
  %127 = call i32 @if_getcapenable(i32 %126)
  %128 = load i32, i32* @IFCAP_RXCSUM, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %125
  %132 = load i32, i32* @NFE_RXTX_RXCSUM, align 4
  %133 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %134 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 8
  br label %137

137:                                              ; preds = %131, %125
  %138 = load i32, i32* %4, align 4
  %139 = call i32 @if_getcapenable(i32 %138)
  %140 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %151

143:                                              ; preds = %137
  %144 = load i32, i32* @NFE_RXTX_VTAG_INSERT, align 4
  %145 = load i32, i32* @NFE_RXTX_VTAG_STRIP, align 4
  %146 = or i32 %144, %145
  %147 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %148 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 8
  br label %151

151:                                              ; preds = %143, %137
  %152 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %153 = load i32, i32* @NFE_RXTX_CTL, align 4
  %154 = load i32, i32* @NFE_RXTX_RESET, align 4
  %155 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %156 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = or i32 %154, %157
  %159 = call i32 @NFE_WRITE(%struct.nfe_softc* %152, i32 %153, i32 %158)
  %160 = call i32 @DELAY(i32 10)
  %161 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %162 = load i32, i32* @NFE_RXTX_CTL, align 4
  %163 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %164 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @NFE_WRITE(%struct.nfe_softc* %161, i32 %162, i32 %165)
  %167 = load i32, i32* %4, align 4
  %168 = call i32 @if_getcapenable(i32 %167)
  %169 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %151
  %173 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %174 = load i32, i32* @NFE_VTAG_CTL, align 4
  %175 = load i32, i32* @NFE_VTAG_ENABLE, align 4
  %176 = call i32 @NFE_WRITE(%struct.nfe_softc* %173, i32 %174, i32 %175)
  br label %181

177:                                              ; preds = %151
  %178 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %179 = load i32, i32* @NFE_VTAG_CTL, align 4
  %180 = call i32 @NFE_WRITE(%struct.nfe_softc* %178, i32 %179, i32 0)
  br label %181

181:                                              ; preds = %177, %172
  %182 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %183 = load i32, i32* @NFE_SETUP_R6, align 4
  %184 = call i32 @NFE_WRITE(%struct.nfe_softc* %182, i32 %183, i32 0)
  %185 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %186 = load i32, i32* %4, align 4
  %187 = call i32 @if_getlladdr(i32 %186)
  %188 = call i32 @nfe_set_macaddr(%struct.nfe_softc* %185, i32 %187)
  %189 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %190 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @MCLBYTES, align 4
  %193 = load i32, i32* @ETHER_HDR_LEN, align 4
  %194 = sub nsw i32 %192, %193
  %195 = icmp sgt i32 %191, %194
  br i1 %195, label %196, label %213

196:                                              ; preds = %181
  %197 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %198 = load i32, i32* @NFE_RX_RING_ADDR_HI, align 4
  %199 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %200 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %199, i32 0, i32 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @NFE_ADDR_HI(i32 %202)
  %204 = call i32 @NFE_WRITE(%struct.nfe_softc* %197, i32 %198, i32 %203)
  %205 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %206 = load i32, i32* @NFE_RX_RING_ADDR_LO, align 4
  %207 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %208 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %207, i32 0, i32 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @NFE_ADDR_LO(i32 %210)
  %212 = call i32 @NFE_WRITE(%struct.nfe_softc* %205, i32 %206, i32 %211)
  br label %230

213:                                              ; preds = %181
  %214 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %215 = load i32, i32* @NFE_RX_RING_ADDR_HI, align 4
  %216 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %217 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %216, i32 0, i32 7
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @NFE_ADDR_HI(i32 %219)
  %221 = call i32 @NFE_WRITE(%struct.nfe_softc* %214, i32 %215, i32 %220)
  %222 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %223 = load i32, i32* @NFE_RX_RING_ADDR_LO, align 4
  %224 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %225 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %224, i32 0, i32 7
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @NFE_ADDR_LO(i32 %227)
  %229 = call i32 @NFE_WRITE(%struct.nfe_softc* %222, i32 %223, i32 %228)
  br label %230

230:                                              ; preds = %213, %196
  %231 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %232 = load i32, i32* @NFE_TX_RING_ADDR_HI, align 4
  %233 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %234 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %233, i32 0, i32 6
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = call i32 @NFE_ADDR_HI(i32 %236)
  %238 = call i32 @NFE_WRITE(%struct.nfe_softc* %231, i32 %232, i32 %237)
  %239 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %240 = load i32, i32* @NFE_TX_RING_ADDR_LO, align 4
  %241 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %242 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %241, i32 0, i32 6
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = call i32 @NFE_ADDR_LO(i32 %244)
  %246 = call i32 @NFE_WRITE(%struct.nfe_softc* %239, i32 %240, i32 %245)
  %247 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %248 = load i32, i32* @NFE_RING_SIZE, align 4
  %249 = load i32, i32* @NFE_RX_RING_COUNT, align 4
  %250 = sub nsw i32 %249, 1
  %251 = shl i32 %250, 16
  %252 = load i32, i32* @NFE_TX_RING_COUNT, align 4
  %253 = sub nsw i32 %252, 1
  %254 = or i32 %251, %253
  %255 = call i32 @NFE_WRITE(%struct.nfe_softc* %247, i32 %248, i32 %254)
  %256 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %257 = load i32, i32* @NFE_RXBUFSZ, align 4
  %258 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %259 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = call i32 @NFE_WRITE(%struct.nfe_softc* %256, i32 %257, i32 %260)
  %262 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %263 = load i32, i32* @NFE_PWR_STATE, align 4
  %264 = call i32 @NFE_READ(%struct.nfe_softc* %262, i32 %263)
  store i32 %264, i32* %6, align 4
  %265 = load i32, i32* %6, align 4
  %266 = load i32, i32* @NFE_PWR_WAKEUP, align 4
  %267 = and i32 %265, %266
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %276

269:                                              ; preds = %230
  %270 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %271 = load i32, i32* @NFE_PWR_STATE, align 4
  %272 = load i32, i32* %6, align 4
  %273 = load i32, i32* @NFE_PWR_WAKEUP, align 4
  %274 = or i32 %272, %273
  %275 = call i32 @NFE_WRITE(%struct.nfe_softc* %270, i32 %271, i32 %274)
  br label %276

276:                                              ; preds = %269, %230
  %277 = call i32 @DELAY(i32 10)
  %278 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %279 = load i32, i32* @NFE_PWR_STATE, align 4
  %280 = call i32 @NFE_READ(%struct.nfe_softc* %278, i32 %279)
  store i32 %280, i32* %6, align 4
  %281 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %282 = load i32, i32* @NFE_PWR_STATE, align 4
  %283 = load i32, i32* %6, align 4
  %284 = load i32, i32* @NFE_PWR_VALID, align 4
  %285 = or i32 %283, %284
  %286 = call i32 @NFE_WRITE(%struct.nfe_softc* %281, i32 %282, i32 %285)
  %287 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %288 = load i32, i32* @NFE_IMTIMER, align 4
  %289 = load i32, i32* @NFE_IM_DEFAULT, align 4
  %290 = call i32 @NFE_WRITE(%struct.nfe_softc* %287, i32 %288, i32 %289)
  %291 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %292 = load i32, i32* @NFE_SETUP_R1, align 4
  %293 = load i32, i32* @NFE_R1_MAGIC_10_100, align 4
  %294 = call i32 @NFE_WRITE(%struct.nfe_softc* %291, i32 %292, i32 %293)
  %295 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %296 = load i32, i32* @NFE_SETUP_R2, align 4
  %297 = load i32, i32* @NFE_R2_MAGIC, align 4
  %298 = call i32 @NFE_WRITE(%struct.nfe_softc* %295, i32 %296, i32 %297)
  %299 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %300 = load i32, i32* @NFE_SETUP_R6, align 4
  %301 = load i32, i32* @NFE_R6_MAGIC, align 4
  %302 = call i32 @NFE_WRITE(%struct.nfe_softc* %299, i32 %300, i32 %301)
  %303 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %304 = load i32, i32* @NFE_STATUS, align 4
  %305 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %306 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %305, i32 0, i32 3
  %307 = load i32, i32* %306, align 4
  %308 = shl i32 %307, 24
  %309 = load i32, i32* @NFE_STATUS_MAGIC, align 4
  %310 = or i32 %308, %309
  %311 = call i32 @NFE_WRITE(%struct.nfe_softc* %303, i32 %304, i32 %310)
  %312 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %313 = load i32, i32* @NFE_SETUP_R4, align 4
  %314 = load i32, i32* @NFE_R4_MAGIC, align 4
  %315 = call i32 @NFE_WRITE(%struct.nfe_softc* %312, i32 %313, i32 %314)
  %316 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %317 = load i32, i32* @NFE_WOL_CTL, align 4
  %318 = call i32 @NFE_WRITE(%struct.nfe_softc* %316, i32 %317, i32 0)
  %319 = load i32, i32* @NFE_RXTX_BIT2, align 4
  %320 = xor i32 %319, -1
  %321 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %322 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %321, i32 0, i32 2
  %323 = load i32, i32* %322, align 8
  %324 = and i32 %323, %320
  store i32 %324, i32* %322, align 8
  %325 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %326 = load i32, i32* @NFE_RXTX_CTL, align 4
  %327 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %328 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %327, i32 0, i32 2
  %329 = load i32, i32* %328, align 8
  %330 = call i32 @NFE_WRITE(%struct.nfe_softc* %325, i32 %326, i32 %329)
  %331 = call i32 @DELAY(i32 10)
  %332 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %333 = load i32, i32* @NFE_RXTX_CTL, align 4
  %334 = load i32, i32* @NFE_RXTX_BIT1, align 4
  %335 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %336 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %335, i32 0, i32 2
  %337 = load i32, i32* %336, align 8
  %338 = or i32 %334, %337
  %339 = call i32 @NFE_WRITE(%struct.nfe_softc* %332, i32 %333, i32 %338)
  %340 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %341 = call i32 @nfe_setmulti(%struct.nfe_softc* %340)
  %342 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %343 = load i32, i32* @NFE_RX_CTL, align 4
  %344 = load i32, i32* @NFE_RX_START, align 4
  %345 = call i32 @NFE_WRITE(%struct.nfe_softc* %342, i32 %343, i32 %344)
  %346 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %347 = load i32, i32* @NFE_TX_CTL, align 4
  %348 = load i32, i32* @NFE_TX_START, align 4
  %349 = call i32 @NFE_WRITE(%struct.nfe_softc* %346, i32 %347, i32 %348)
  %350 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %351 = load i32, i32* @NFE_PHY_STATUS, align 4
  %352 = call i32 @NFE_WRITE(%struct.nfe_softc* %350, i32 %351, i32 15)
  %353 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %354 = call i32 @nfe_stats_clear(%struct.nfe_softc* %353)
  %355 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %356 = call i32 @nfe_set_intr(%struct.nfe_softc* %355)
  %357 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %358 = call i32 @nfe_enable_intr(%struct.nfe_softc* %357)
  %359 = load i32, i32* %4, align 4
  %360 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %361 = call i32 @if_setdrvflagbits(i32 %359, i32 %360, i32 0)
  %362 = load i32, i32* %4, align 4
  %363 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %364 = call i32 @if_setdrvflagbits(i32 %362, i32 0, i32 %363)
  %365 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %366 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %365, i32 0, i32 5
  store i64 0, i64* %366, align 8
  %367 = load %struct.mii_data*, %struct.mii_data** %5, align 8
  %368 = call i32 @mii_mediachg(%struct.mii_data* %367)
  %369 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %370 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %369, i32 0, i32 4
  %371 = load i32, i32* @hz, align 4
  %372 = load i32, i32* @nfe_tick, align 4
  %373 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %374 = call i32 @callout_reset(i32* %370, i32 %371, i32 %372, %struct.nfe_softc* %373)
  br label %375

375:                                              ; preds = %276, %58, %24
  ret void
}

declare dso_local i32 @NFE_LOCK_ASSERT(%struct.nfe_softc*) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @if_getdrvflags(i32) #1

declare dso_local i32 @nfe_stop(i32) #1

declare dso_local i32 @if_getmtu(i32) #1

declare dso_local i32 @nfe_init_tx_ring(%struct.nfe_softc*, %struct.TYPE_4__*) #1

declare dso_local i32 @nfe_init_jrx_ring(%struct.nfe_softc*, %struct.TYPE_6__*) #1

declare dso_local i32 @nfe_init_rx_ring(%struct.nfe_softc*, %struct.TYPE_5__*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @NFE_WRITE(%struct.nfe_softc*, i32, i32) #1

declare dso_local i32 @if_getcapenable(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @nfe_set_macaddr(%struct.nfe_softc*, i32) #1

declare dso_local i32 @if_getlladdr(i32) #1

declare dso_local i32 @NFE_ADDR_HI(i32) #1

declare dso_local i32 @NFE_ADDR_LO(i32) #1

declare dso_local i32 @NFE_READ(%struct.nfe_softc*, i32) #1

declare dso_local i32 @nfe_setmulti(%struct.nfe_softc*) #1

declare dso_local i32 @nfe_stats_clear(%struct.nfe_softc*) #1

declare dso_local i32 @nfe_set_intr(%struct.nfe_softc*) #1

declare dso_local i32 @nfe_enable_intr(%struct.nfe_softc*) #1

declare dso_local i32 @if_setdrvflagbits(i32, i32, i32) #1

declare dso_local i32 @mii_mediachg(%struct.mii_data*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.nfe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
