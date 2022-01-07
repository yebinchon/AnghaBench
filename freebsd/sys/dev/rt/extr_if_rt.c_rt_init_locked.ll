; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rt/extr_if_rt.c_rt_init_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rt/extr_if_rt.c_rt_init_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt_softc = type { i64, i64, i64, i64*, i64*, i64*, i32, i64*, i64*, i64*, i64, i64, i64, i32, i64, i32, i64, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i32, %struct.ifnet* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ifnet = type { i32 }

@RT_DEBUG_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"initializing\0A\00", align 1
@GDMA_FWD_CFG = common dso_local global i64 0, align 8
@GDM_ICS_EN = common dso_local global i32 0, align 4
@GDM_TCS_EN = common dso_local global i32 0, align 4
@GDM_UCS_EN = common dso_local global i32 0, align 4
@GDM_STRPCRC = common dso_local global i32 0, align 4
@GDM_DST_PORT_CPU = common dso_local global i32 0, align 4
@GDM_UFRC_P_SHIFT = common dso_local global i32 0, align 4
@GDM_BFRC_P_SHIFT = common dso_local global i32 0, align 4
@GDM_MFRC_P_SHIFT = common dso_local global i32 0, align 4
@GDM_OFRC_P_SHIFT = common dso_local global i32 0, align 4
@FE_TX_DMA_BUSY = common dso_local global i32 0, align 4
@FE_RX_DMA_BUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"timeout waiting for DMA engine\0A\00", align 1
@FE_RST_DRX_IDX0 = common dso_local global i32 0, align 4
@FE_RST_DTX_IDX3 = common dso_local global i32 0, align 4
@FE_RST_DTX_IDX2 = common dso_local global i32 0, align 4
@FE_RST_DTX_IDX1 = common dso_local global i32 0, align 4
@FE_RST_DTX_IDX0 = common dso_local global i32 0, align 4
@RT_SOFTC_TX_RING_COUNT = common dso_local global i32 0, align 4
@RT_SOFTC_TX_RING_DESC_COUNT = common dso_local global i32 0, align 4
@RT_SOFTC_RX_RING_DATA_COUNT = common dso_local global i32 0, align 4
@FE_TX_WB_DDONE = common dso_local global i32 0, align 4
@FE_DMA_BT_SIZE16 = common dso_local global i32 0, align 4
@FE_RX_DMA_EN = common dso_local global i32 0, align 4
@FE_TX_DMA_EN = common dso_local global i32 0, align 4
@RT_CHIPID_MT7620 = common dso_local global i64 0, align 8
@RT_CHIPID_MT7621 = common dso_local global i64 0, align 8
@RT_CHIPID_RT5350 = common dso_local global i64 0, align 8
@RT5350_INT_TX_COHERENT = common dso_local global i32 0, align 4
@RT5350_INT_RX_COHERENT = common dso_local global i32 0, align 4
@RT5350_INT_TXQ3_DONE = common dso_local global i32 0, align 4
@RT5350_INT_TXQ2_DONE = common dso_local global i32 0, align 4
@RT5350_INT_TXQ1_DONE = common dso_local global i32 0, align 4
@RT5350_INT_TXQ0_DONE = common dso_local global i32 0, align 4
@RT5350_INT_RXQ1_DONE = common dso_local global i32 0, align 4
@RT5350_INT_RXQ0_DONE = common dso_local global i32 0, align 4
@CNT_PPE_AF = common dso_local global i32 0, align 4
@CNT_GDM_AF = common dso_local global i32 0, align 4
@PSE_P2_FC = common dso_local global i32 0, align 4
@GDM_CRC_DROP = common dso_local global i32 0, align 4
@PSE_BUF_DROP = common dso_local global i32 0, align 4
@GDM_OTHER_DROP = common dso_local global i32 0, align 4
@PSE_P1_FC = common dso_local global i32 0, align 4
@PSE_P0_FC = common dso_local global i32 0, align 4
@PSE_FQ_EMPTY = common dso_local global i32 0, align 4
@INT_TX_COHERENT = common dso_local global i32 0, align 4
@INT_RX_COHERENT = common dso_local global i32 0, align 4
@INT_TXQ3_DONE = common dso_local global i32 0, align 4
@INT_TXQ2_DONE = common dso_local global i32 0, align 4
@INT_TXQ1_DONE = common dso_local global i32 0, align 4
@INT_TXQ0_DONE = common dso_local global i32 0, align 4
@INT_RX_DONE = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@rt_periodic = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @rt_init_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt_init_locked(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.rt_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.rt_softc*
  store %struct.rt_softc* %9, %struct.rt_softc** %3, align 8
  %10 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %11 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %10, i32 0, i32 21
  %12 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  store %struct.ifnet* %12, %struct.ifnet** %4, align 8
  %13 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %14 = load i32, i32* @RT_DEBUG_ANY, align 4
  %15 = call i32 @RT_DPRINTF(%struct.rt_softc* %13, i32 %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %17 = call i32 @RT_SOFTC_ASSERT_LOCKED(%struct.rt_softc* %16)
  %18 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %19 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %53

22:                                               ; preds = %1
  %23 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %24 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %25 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @GDMA_FWD_CFG, align 8
  %28 = add nsw i64 %26, %27
  %29 = load i32, i32* @GDM_ICS_EN, align 4
  %30 = load i32, i32* @GDM_TCS_EN, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @GDM_UCS_EN, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @GDM_STRPCRC, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @GDM_DST_PORT_CPU, align 4
  %37 = load i32, i32* @GDM_UFRC_P_SHIFT, align 4
  %38 = shl i32 %36, %37
  %39 = or i32 %35, %38
  %40 = load i32, i32* @GDM_DST_PORT_CPU, align 4
  %41 = load i32, i32* @GDM_BFRC_P_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = or i32 %39, %42
  %44 = load i32, i32* @GDM_DST_PORT_CPU, align 4
  %45 = load i32, i32* @GDM_MFRC_P_SHIFT, align 4
  %46 = shl i32 %44, %45
  %47 = or i32 %43, %46
  %48 = load i32, i32* @GDM_DST_PORT_CPU, align 4
  %49 = load i32, i32* @GDM_OFRC_P_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = or i32 %47, %50
  %52 = call i32 @RT_WRITE(%struct.rt_softc* %23, i64 %28, i32 %51)
  br label %53

53:                                               ; preds = %22, %1
  %54 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %55 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %56 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @RT_WRITE(%struct.rt_softc* %54, i64 %57, i32 0)
  %59 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %60 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %61 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @RT_WRITE(%struct.rt_softc* %59, i64 %62, i32 -1)
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %82, %53
  %65 = load i32, i32* %6, align 4
  %66 = icmp slt i32 %65, 100
  br i1 %66, label %67, label %85

67:                                               ; preds = %64
  %68 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %69 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %70 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @RT_READ(%struct.rt_softc* %68, i64 %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @FE_TX_DMA_BUSY, align 4
  %75 = load i32, i32* @FE_RX_DMA_BUSY, align 4
  %76 = or i32 %74, %75
  %77 = and i32 %73, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %67
  br label %85

80:                                               ; preds = %67
  %81 = call i32 @DELAY(i32 1000)
  br label %82

82:                                               ; preds = %80
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %6, align 4
  br label %64

85:                                               ; preds = %79, %64
  %86 = load i32, i32* %6, align 4
  %87 = icmp eq i32 %86, 100
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %90 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %89, i32 0, i32 19
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @device_printf(i32 %91, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %377

93:                                               ; preds = %85
  %94 = load i32, i32* @FE_RST_DRX_IDX0, align 4
  %95 = load i32, i32* @FE_RST_DTX_IDX3, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @FE_RST_DTX_IDX2, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @FE_RST_DTX_IDX1, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @FE_RST_DTX_IDX0, align 4
  %102 = or i32 %100, %101
  store i32 %102, i32* %7, align 4
  %103 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %104 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %105 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @RT_WRITE(%struct.rt_softc* %103, i64 %106, i32 %107)
  store i32 0, i32* %5, align 4
  br label %109

109:                                              ; preds = %122, %93
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* @RT_SOFTC_TX_RING_COUNT, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %125

113:                                              ; preds = %109
  %114 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %115 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %116 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %115, i32 0, i32 18
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %116, align 8
  %118 = load i32, i32* %5, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i64 %119
  %121 = call i32 @rt_reset_tx_ring(%struct.rt_softc* %114, %struct.TYPE_3__* %120)
  br label %122

122:                                              ; preds = %113
  %123 = load i32, i32* %5, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %5, align 4
  br label %109

125:                                              ; preds = %109
  store i32 0, i32* %5, align 4
  br label %126

126:                                              ; preds = %167, %125
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* @RT_SOFTC_TX_RING_COUNT, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %170

130:                                              ; preds = %126
  %131 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %132 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %133 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %132, i32 0, i32 3
  %134 = load i64*, i64** %133, align 8
  %135 = load i32, i32* %5, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %134, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %140 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %139, i32 0, i32 18
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %140, align 8
  %142 = load i32, i32* %5, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @RT_WRITE(%struct.rt_softc* %131, i64 %138, i32 %146)
  %148 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %149 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %150 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %149, i32 0, i32 4
  %151 = load i64*, i64** %150, align 8
  %152 = load i32, i32* %5, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i64, i64* %151, i64 %153
  %155 = load i64, i64* %154, align 8
  %156 = load i32, i32* @RT_SOFTC_TX_RING_DESC_COUNT, align 4
  %157 = call i32 @RT_WRITE(%struct.rt_softc* %148, i64 %155, i32 %156)
  %158 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %159 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %160 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %159, i32 0, i32 5
  %161 = load i64*, i64** %160, align 8
  %162 = load i32, i32* %5, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i64, i64* %161, i64 %163
  %165 = load i64, i64* %164, align 8
  %166 = call i32 @RT_WRITE(%struct.rt_softc* %158, i64 %165, i32 0)
  br label %167

167:                                              ; preds = %130
  %168 = load i32, i32* %5, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %5, align 4
  br label %126

170:                                              ; preds = %126
  store i32 0, i32* %5, align 4
  br label %171

171:                                              ; preds = %186, %170
  %172 = load i32, i32* %5, align 4
  %173 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %174 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %173, i32 0, i32 6
  %175 = load i32, i32* %174, align 8
  %176 = icmp slt i32 %172, %175
  br i1 %176, label %177, label %189

177:                                              ; preds = %171
  %178 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %179 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %180 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %179, i32 0, i32 17
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %180, align 8
  %182 = load i32, i32* %5, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i64 %183
  %185 = call i32 @rt_reset_rx_ring(%struct.rt_softc* %178, %struct.TYPE_4__* %184)
  br label %186

186:                                              ; preds = %177
  %187 = load i32, i32* %5, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %5, align 4
  br label %171

189:                                              ; preds = %171
  store i32 0, i32* %5, align 4
  br label %190

190:                                              ; preds = %235, %189
  %191 = load i32, i32* %5, align 4
  %192 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %193 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %192, i32 0, i32 6
  %194 = load i32, i32* %193, align 8
  %195 = icmp slt i32 %191, %194
  br i1 %195, label %196, label %238

196:                                              ; preds = %190
  %197 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %198 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %199 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %198, i32 0, i32 7
  %200 = load i64*, i64** %199, align 8
  %201 = load i32, i32* %5, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i64, i64* %200, i64 %202
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %206 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %205, i32 0, i32 17
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** %206, align 8
  %208 = load i32, i32* %5, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @RT_WRITE(%struct.rt_softc* %197, i64 %204, i32 %212)
  %214 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %215 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %216 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %215, i32 0, i32 8
  %217 = load i64*, i64** %216, align 8
  %218 = load i32, i32* %5, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i64, i64* %217, i64 %219
  %221 = load i64, i64* %220, align 8
  %222 = load i32, i32* @RT_SOFTC_RX_RING_DATA_COUNT, align 4
  %223 = call i32 @RT_WRITE(%struct.rt_softc* %214, i64 %221, i32 %222)
  %224 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %225 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %226 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %225, i32 0, i32 9
  %227 = load i64*, i64** %226, align 8
  %228 = load i32, i32* %5, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i64, i64* %227, i64 %229
  %231 = load i64, i64* %230, align 8
  %232 = load i32, i32* @RT_SOFTC_RX_RING_DATA_COUNT, align 4
  %233 = sub nsw i32 %232, 1
  %234 = call i32 @RT_WRITE(%struct.rt_softc* %224, i64 %231, i32 %233)
  br label %235

235:                                              ; preds = %196
  %236 = load i32, i32* %5, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %5, align 4
  br label %190

238:                                              ; preds = %190
  %239 = load i32, i32* @FE_TX_WB_DDONE, align 4
  %240 = load i32, i32* @FE_DMA_BT_SIZE16, align 4
  %241 = or i32 %239, %240
  %242 = load i32, i32* @FE_RX_DMA_EN, align 4
  %243 = or i32 %241, %242
  %244 = load i32, i32* @FE_TX_DMA_EN, align 4
  %245 = or i32 %243, %244
  store i32 %245, i32* %7, align 4
  %246 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %247 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %246, i32 0, i32 10
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* @RT_CHIPID_MT7620, align 8
  %250 = icmp eq i64 %248, %249
  br i1 %250, label %257, label %251

251:                                              ; preds = %238
  %252 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %253 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %252, i32 0, i32 10
  %254 = load i64, i64* %253, align 8
  %255 = load i64, i64* @RT_CHIPID_MT7621, align 8
  %256 = icmp eq i64 %254, %255
  br i1 %256, label %257, label %260

257:                                              ; preds = %251, %238
  %258 = load i32, i32* %7, align 4
  %259 = or i32 %258, -2147483648
  store i32 %259, i32* %7, align 4
  br label %260

260:                                              ; preds = %257, %251
  %261 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %262 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %263 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %262, i32 0, i32 1
  %264 = load i64, i64* %263, align 8
  %265 = load i32, i32* %7, align 4
  %266 = call i32 @RT_WRITE(%struct.rt_softc* %261, i64 %264, i32 %265)
  %267 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %268 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %269 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %268, i32 0, i32 11
  %270 = load i64, i64* %269, align 8
  %271 = call i32 @RT_WRITE(%struct.rt_softc* %267, i64 %270, i32 0)
  %272 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %273 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %274 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %273, i32 0, i32 12
  %275 = load i64, i64* %274, align 8
  %276 = call i32 @RT_WRITE(%struct.rt_softc* %272, i64 %275, i32 -1)
  %277 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %278 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %277, i32 0, i32 10
  %279 = load i64, i64* %278, align 8
  %280 = load i64, i64* @RT_CHIPID_RT5350, align 8
  %281 = icmp eq i64 %279, %280
  br i1 %281, label %294, label %282

282:                                              ; preds = %260
  %283 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %284 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %283, i32 0, i32 10
  %285 = load i64, i64* %284, align 8
  %286 = load i64, i64* @RT_CHIPID_MT7620, align 8
  %287 = icmp eq i64 %285, %286
  br i1 %287, label %294, label %288

288:                                              ; preds = %282
  %289 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %290 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %289, i32 0, i32 10
  %291 = load i64, i64* %290, align 8
  %292 = load i64, i64* @RT_CHIPID_MT7621, align 8
  %293 = icmp eq i64 %291, %292
  br i1 %293, label %294, label %310

294:                                              ; preds = %288, %282, %260
  %295 = load i32, i32* @RT5350_INT_TX_COHERENT, align 4
  %296 = load i32, i32* @RT5350_INT_RX_COHERENT, align 4
  %297 = or i32 %295, %296
  %298 = load i32, i32* @RT5350_INT_TXQ3_DONE, align 4
  %299 = or i32 %297, %298
  %300 = load i32, i32* @RT5350_INT_TXQ2_DONE, align 4
  %301 = or i32 %299, %300
  %302 = load i32, i32* @RT5350_INT_TXQ1_DONE, align 4
  %303 = or i32 %301, %302
  %304 = load i32, i32* @RT5350_INT_TXQ0_DONE, align 4
  %305 = or i32 %303, %304
  %306 = load i32, i32* @RT5350_INT_RXQ1_DONE, align 4
  %307 = or i32 %305, %306
  %308 = load i32, i32* @RT5350_INT_RXQ0_DONE, align 4
  %309 = or i32 %307, %308
  store i32 %309, i32* %7, align 4
  br label %342

310:                                              ; preds = %288
  %311 = load i32, i32* @CNT_PPE_AF, align 4
  %312 = load i32, i32* @CNT_GDM_AF, align 4
  %313 = or i32 %311, %312
  %314 = load i32, i32* @PSE_P2_FC, align 4
  %315 = or i32 %313, %314
  %316 = load i32, i32* @GDM_CRC_DROP, align 4
  %317 = or i32 %315, %316
  %318 = load i32, i32* @PSE_BUF_DROP, align 4
  %319 = or i32 %317, %318
  %320 = load i32, i32* @GDM_OTHER_DROP, align 4
  %321 = or i32 %319, %320
  %322 = load i32, i32* @PSE_P1_FC, align 4
  %323 = or i32 %321, %322
  %324 = load i32, i32* @PSE_P0_FC, align 4
  %325 = or i32 %323, %324
  %326 = load i32, i32* @PSE_FQ_EMPTY, align 4
  %327 = or i32 %325, %326
  %328 = load i32, i32* @INT_TX_COHERENT, align 4
  %329 = or i32 %327, %328
  %330 = load i32, i32* @INT_RX_COHERENT, align 4
  %331 = or i32 %329, %330
  %332 = load i32, i32* @INT_TXQ3_DONE, align 4
  %333 = or i32 %331, %332
  %334 = load i32, i32* @INT_TXQ2_DONE, align 4
  %335 = or i32 %333, %334
  %336 = load i32, i32* @INT_TXQ1_DONE, align 4
  %337 = or i32 %335, %336
  %338 = load i32, i32* @INT_TXQ0_DONE, align 4
  %339 = or i32 %337, %338
  %340 = load i32, i32* @INT_RX_DONE, align 4
  %341 = or i32 %339, %340
  store i32 %341, i32* %7, align 4
  br label %342

342:                                              ; preds = %310, %294
  %343 = load i32, i32* %7, align 4
  %344 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %345 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %344, i32 0, i32 13
  store i32 %343, i32* %345, align 8
  %346 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %347 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %348 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %347, i32 0, i32 14
  %349 = load i64, i64* %348, align 8
  %350 = load i32, i32* %7, align 4
  %351 = call i32 @RT_WRITE(%struct.rt_softc* %346, i64 %349, i32 %350)
  %352 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %353 = call i64 @rt_txrx_enable(%struct.rt_softc* %352)
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %356

355:                                              ; preds = %342
  br label %377

356:                                              ; preds = %342
  %357 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %358 = xor i32 %357, -1
  %359 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %360 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 4
  %362 = and i32 %361, %358
  store i32 %362, i32* %360, align 4
  %363 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %364 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %365 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 4
  %367 = or i32 %366, %363
  store i32 %367, i32* %365, align 4
  %368 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %369 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %368, i32 0, i32 16
  store i64 0, i64* %369, align 8
  %370 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %371 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %370, i32 0, i32 15
  %372 = load i32, i32* @hz, align 4
  %373 = sdiv i32 %372, 10
  %374 = load i32, i32* @rt_periodic, align 4
  %375 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %376 = call i32 @callout_reset(i32* %371, i32 %373, i32 %374, %struct.rt_softc* %375)
  br label %380

377:                                              ; preds = %355, %88
  %378 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %379 = call i32 @rt_stop_locked(%struct.rt_softc* %378)
  br label %380

380:                                              ; preds = %377, %356
  ret void
}

declare dso_local i32 @RT_DPRINTF(%struct.rt_softc*, i32, i8*) #1

declare dso_local i32 @RT_SOFTC_ASSERT_LOCKED(%struct.rt_softc*) #1

declare dso_local i32 @RT_WRITE(%struct.rt_softc*, i64, i32) #1

declare dso_local i32 @RT_READ(%struct.rt_softc*, i64) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rt_reset_tx_ring(%struct.rt_softc*, %struct.TYPE_3__*) #1

declare dso_local i32 @rt_reset_rx_ring(%struct.rt_softc*, %struct.TYPE_4__*) #1

declare dso_local i64 @rt_txrx_enable(%struct.rt_softc*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.rt_softc*) #1

declare dso_local i32 @rt_stop_locked(%struct.rt_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
