; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mge/extr_if_mge.c_mge_init_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mge/extr_if_mge.c_mge_init_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mge_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.TYPE_4__*, i32, %struct.mge_desc_wrapper*, i64, i64, i64, i64, i64, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.mge_desc_wrapper = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@MGE_PORT_SERIAL_CTRL1 = common dso_local global i32 0, align 4
@MGE_RGMII_EN = common dso_local global i32 0, align 4
@MGE_FIXED_PRIO_CONF = common dso_local global i32 0, align 4
@MGE_PORT_CONFIG = common dso_local global i32 0, align 4
@PORT_CONFIG_RXCS = common dso_local global i32 0, align 4
@MGE_PORT_EXT_CONFIG = common dso_local global i32 0, align 4
@MGE_RX_DEFAULT_QUEUE = common dso_local global i32 0, align 4
@IFM_TMASK = common dso_local global i32 0, align 4
@IFM_1000_T = common dso_local global i32 0, align 4
@MGE_PORT_SERIAL_CTRL = common dso_local global i32 0, align 4
@MGE_SDMA_CONFIG = common dso_local global i32 0, align 4
@MGE_SDMA_RX_BYTE_SWAP = common dso_local global i32 0, align 4
@MGE_SDMA_TX_BYTE_SWAP = common dso_local global i32 0, align 4
@MGE_SDMA_BURST_16_WORD = common dso_local global i32 0, align 4
@MGE_TX_FIFO_URGENT_TRSH = common dso_local global i32 0, align 4
@MGE_TX_CUR_DESC_PTR = common dso_local global i32 0, align 4
@MGE_RX_DESC_NUM = common dso_local global i32 0, align 4
@MGE_RX_ENABLE_INT = common dso_local global i32 0, align 4
@MGE_DMA_OWNED = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@MGE_RX_QUEUE_CMD = common dso_local global i32 0, align 4
@PORT_SERIAL_ENABLE = common dso_local global i32 0, align 4
@MGE_PORT_STATUS = common dso_local global i32 0, align 4
@MGE_STATUS_LINKUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Timeout on link-up\0A\00", align 1
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@mge_tick = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @mge_init_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mge_init_locked(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mge_softc*, align 8
  %4 = alloca %struct.mge_desc_wrapper*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.mge_softc*
  store %struct.mge_softc* %10, %struct.mge_softc** %3, align 8
  %11 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %12 = call i32 @MGE_GLOBAL_LOCK_ASSERT(%struct.mge_softc* %11)
  %13 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %14 = call i32 @mge_stop(%struct.mge_softc* %13)
  %15 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %16 = call i32 @mge_intrs_ctrl(%struct.mge_softc* %15, i32 0)
  %17 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %18 = call i32 @mge_set_mac_address(%struct.mge_softc* %17)
  %19 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %20 = call i32 @mge_setup_multicast(%struct.mge_softc* %19)
  %21 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %22 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %34

25:                                               ; preds = %1
  %26 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %27 = load i32, i32* @MGE_PORT_SERIAL_CTRL1, align 4
  %28 = load volatile i32, i32* @MGE_RGMII_EN, align 4
  %29 = call i32 @MGE_WRITE(%struct.mge_softc* %26, i32 %27, i32 %28)
  %30 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %31 = load i32, i32* @MGE_FIXED_PRIO_CONF, align 4
  %32 = call i32 @MGE_FIXED_PRIO_EN(i32 0)
  %33 = call i32 @MGE_WRITE(%struct.mge_softc* %30, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %25, %1
  %35 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %36 = call i32 @MGE_TX_TOKEN_COUNT(i32 0)
  %37 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %38 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %37, i32 0, i32 1
  %39 = load volatile i32, i32* %38, align 4
  %40 = call i32 @MGE_WRITE(%struct.mge_softc* %35, i32 %36, i32 %39)
  %41 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %42 = call i32 @MGE_TX_TOKEN_CONF(i32 0)
  %43 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %44 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %43, i32 0, i32 2
  %45 = load volatile i32, i32* %44, align 8
  %46 = call i32 @MGE_WRITE(%struct.mge_softc* %41, i32 %42, i32 %45)
  %47 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %48 = call i32 @MGE_TX_ARBITER_CONF(i32 0)
  %49 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %50 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %49, i32 0, i32 3
  %51 = load volatile i32, i32* %50, align 4
  %52 = call i32 @MGE_WRITE(%struct.mge_softc* %47, i32 %48, i32 %51)
  store i32 1, i32* %6, align 4
  br label %53

53:                                               ; preds = %69, %34
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %54, 7
  br i1 %55, label %56, label %72

56:                                               ; preds = %53
  %57 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @MGE_TX_TOKEN_COUNT(i32 %58)
  %60 = call i32 @MGE_WRITE(%struct.mge_softc* %57, i32 %59, i32 0)
  %61 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @MGE_TX_TOKEN_CONF(i32 %62)
  %64 = call i32 @MGE_WRITE(%struct.mge_softc* %61, i32 %63, i32 0)
  %65 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @MGE_TX_ARBITER_CONF(i32 %66)
  %68 = call i32 @MGE_WRITE(%struct.mge_softc* %65, i32 %67, i32 0)
  br label %69

69:                                               ; preds = %56
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %53

72:                                               ; preds = %53
  %73 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %74 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %75 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %74, i32 0, i32 18
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @MGE_WRITE(%struct.mge_softc* %73, i32 %76, i32 0)
  %78 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %79 = load i32, i32* @MGE_PORT_CONFIG, align 4
  %80 = load volatile i32, i32* @PORT_CONFIG_RXCS, align 4
  %81 = call i32 @PORT_CONFIG_DFLT_RXQ(i32 0)
  %82 = or i32 %80, %81
  %83 = call i32 @PORT_CONFIG_ARO_RXQ(i32 0)
  %84 = or i32 %82, %83
  %85 = call i32 @MGE_WRITE(%struct.mge_softc* %78, i32 %79, i32 %84)
  %86 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %87 = load i32, i32* @MGE_PORT_EXT_CONFIG, align 4
  %88 = call i32 @MGE_WRITE(%struct.mge_softc* %86, i32 %87, i32 0)
  %89 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %90 = load i32, i32* @MGE_RX_DEFAULT_QUEUE, align 4
  %91 = call i32 @mge_set_prom_mode(%struct.mge_softc* %89, i32 %90)
  %92 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %93 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  store i32 %94, i32* %8, align 4
  %95 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %96 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %95, i32 0, i32 17
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %72
  %100 = load i32, i32* @IFM_TMASK, align 4
  %101 = xor i32 %100, -1
  %102 = load i32, i32* %8, align 4
  %103 = and i32 %102, %101
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* @IFM_1000_T, align 4
  %105 = load i32, i32* %8, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %8, align 4
  br label %107

107:                                              ; preds = %99, %72
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @mge_set_port_serial_control(i32 %108)
  store volatile i32 %109, i32* %5, align 4
  %110 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %111 = load i32, i32* @MGE_PORT_SERIAL_CTRL, align 4
  %112 = load volatile i32, i32* %5, align 4
  %113 = call i32 @MGE_WRITE(%struct.mge_softc* %110, i32 %111, i32 %112)
  %114 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %115 = load i32, i32* @MGE_SDMA_CONFIG, align 4
  %116 = load volatile i32, i32* @MGE_SDMA_RX_BYTE_SWAP, align 4
  %117 = load volatile i32, i32* @MGE_SDMA_TX_BYTE_SWAP, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @MGE_SDMA_BURST_16_WORD, align 4
  %120 = call i32 @MGE_SDMA_RX_BURST_SIZE(i32 %119)
  %121 = or i32 %118, %120
  %122 = load i32, i32* @MGE_SDMA_BURST_16_WORD, align 4
  %123 = call i32 @MGE_SDMA_TX_BURST_SIZE(i32 %122)
  %124 = or i32 %121, %123
  %125 = call i32 @MGE_WRITE(%struct.mge_softc* %114, i32 %115, i32 %124)
  %126 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %127 = load i32, i32* @MGE_TX_FIFO_URGENT_TRSH, align 4
  %128 = call i32 @MGE_WRITE(%struct.mge_softc* %126, i32 %127, i32 0)
  %129 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %130 = load i32, i32* @MGE_TX_CUR_DESC_PTR, align 4
  %131 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %132 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %131, i32 0, i32 5
  %133 = load volatile i32, i32* %132, align 4
  %134 = call i32 @MGE_WRITE(%struct.mge_softc* %129, i32 %130, i32 %133)
  %135 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %136 = load i32, i32* @MGE_RX_DEFAULT_QUEUE, align 4
  %137 = call i32 @MGE_RX_CUR_DESC_PTR(i32 %136)
  %138 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %139 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %138, i32 0, i32 6
  %140 = load volatile i32, i32* %139, align 8
  %141 = call i32 @MGE_WRITE(%struct.mge_softc* %135, i32 %137, i32 %140)
  %142 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %143 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %142, i32 0, i32 16
  store i64 0, i64* %143, align 8
  %144 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %145 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %144, i32 0, i32 15
  store i64 0, i64* %145, align 8
  %146 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %147 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %146, i32 0, i32 14
  store i64 0, i64* %147, align 8
  %148 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %149 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %148, i32 0, i32 13
  store i64 0, i64* %149, align 8
  store i32 0, i32* %6, align 4
  br label %150

150:                                              ; preds = %183, %107
  %151 = load i32, i32* %6, align 4
  %152 = load i32, i32* @MGE_RX_DESC_NUM, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %186

154:                                              ; preds = %150
  %155 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %156 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %155, i32 0, i32 12
  %157 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %156, align 8
  %158 = load i32, i32* %6, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %157, i64 %159
  store %struct.mge_desc_wrapper* %160, %struct.mge_desc_wrapper** %4, align 8
  %161 = load i32, i32* @MGE_RX_ENABLE_INT, align 4
  %162 = load i32, i32* @MGE_DMA_OWNED, align 4
  %163 = or i32 %161, %162
  %164 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %4, align 8
  %165 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %164, i32 0, i32 1
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 0
  store i32 %163, i32* %167, align 4
  %168 = load i32, i32* @MCLBYTES, align 4
  %169 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %4, align 8
  %170 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %169, i32 0, i32 1
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 1
  store i32 %168, i32* %172, align 4
  %173 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %174 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %173, i32 0, i32 11
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %4, align 8
  %177 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %180 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %181 = or i32 %179, %180
  %182 = call i32 @bus_dmamap_sync(i32 %175, i32 %178, i32 %181)
  br label %183

183:                                              ; preds = %154
  %184 = load i32, i32* %6, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %6, align 4
  br label %150

186:                                              ; preds = %150
  %187 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %188 = load i32, i32* @MGE_RX_QUEUE_CMD, align 4
  %189 = load i32, i32* @MGE_RX_DEFAULT_QUEUE, align 4
  %190 = call i32 @MGE_ENABLE_RXQ(i32 %189)
  %191 = call i32 @MGE_WRITE(%struct.mge_softc* %187, i32 %188, i32 %190)
  %192 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %193 = load i32, i32* @MGE_PORT_SERIAL_CTRL, align 4
  %194 = call i32 @MGE_READ(%struct.mge_softc* %192, i32 %193)
  store volatile i32 %194, i32* %5, align 4
  %195 = load volatile i32, i32* @PORT_SERIAL_ENABLE, align 4
  %196 = load volatile i32, i32* %5, align 4
  %197 = or i32 %196, %195
  store volatile i32 %197, i32* %5, align 4
  %198 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %199 = load i32, i32* @MGE_PORT_SERIAL_CTRL, align 4
  %200 = load volatile i32, i32* %5, align 4
  %201 = call i32 @MGE_WRITE(%struct.mge_softc* %198, i32 %199, i32 %200)
  store i32 1048576, i32* %7, align 4
  br label %202

202:                                              ; preds = %221, %186
  %203 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %204 = load i32, i32* @MGE_PORT_STATUS, align 4
  %205 = call i32 @MGE_READ(%struct.mge_softc* %203, i32 %204)
  store volatile i32 %205, i32* %5, align 4
  %206 = load volatile i32, i32* %5, align 4
  %207 = load volatile i32, i32* @MGE_STATUS_LINKUP, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %202
  br label %222

211:                                              ; preds = %202
  %212 = call i32 @DELAY(i32 100)
  %213 = load i32, i32* %7, align 4
  %214 = add nsw i32 %213, -1
  store i32 %214, i32* %7, align 4
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %221

216:                                              ; preds = %211
  %217 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %218 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %217, i32 0, i32 10
  %219 = load %struct.TYPE_4__*, %struct.TYPE_4__** %218, align 8
  %220 = call i32 @if_printf(%struct.TYPE_4__* %219, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %222

221:                                              ; preds = %211
  br label %202

222:                                              ; preds = %216, %210
  %223 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %224 = call i32 @mge_set_rxic(%struct.mge_softc* %223)
  %225 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %226 = call i32 @mge_set_txic(%struct.mge_softc* %225)
  %227 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %228 = call i32 @mge_intrs_ctrl(%struct.mge_softc* %227, i32 1)
  %229 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %230 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %231 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %230, i32 0, i32 10
  %232 = load %struct.TYPE_4__*, %struct.TYPE_4__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = or i32 %234, %229
  store i32 %235, i32* %233, align 4
  %236 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %237 = xor i32 %236, -1
  %238 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %239 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %238, i32 0, i32 10
  %240 = load %struct.TYPE_4__*, %struct.TYPE_4__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = and i32 %242, %237
  store i32 %243, i32* %241, align 4
  %244 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %245 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %244, i32 0, i32 9
  store i64 0, i64* %245, align 8
  %246 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %247 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %246, i32 0, i32 8
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %257

250:                                              ; preds = %222
  %251 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %252 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %251, i32 0, i32 7
  %253 = load i32, i32* @hz, align 4
  %254 = load i32, i32* @mge_tick, align 4
  %255 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %256 = call i32 @callout_reset(i32* %252, i32 %253, i32 %254, %struct.mge_softc* %255)
  br label %257

257:                                              ; preds = %250, %222
  ret void
}

declare dso_local i32 @MGE_GLOBAL_LOCK_ASSERT(%struct.mge_softc*) #1

declare dso_local i32 @mge_stop(%struct.mge_softc*) #1

declare dso_local i32 @mge_intrs_ctrl(%struct.mge_softc*, i32) #1

declare dso_local i32 @mge_set_mac_address(%struct.mge_softc*) #1

declare dso_local i32 @mge_setup_multicast(%struct.mge_softc*) #1

declare dso_local i32 @MGE_WRITE(%struct.mge_softc*, i32, i32) #1

declare dso_local i32 @MGE_FIXED_PRIO_EN(i32) #1

declare dso_local i32 @MGE_TX_TOKEN_COUNT(i32) #1

declare dso_local i32 @MGE_TX_TOKEN_CONF(i32) #1

declare dso_local i32 @MGE_TX_ARBITER_CONF(i32) #1

declare dso_local i32 @PORT_CONFIG_DFLT_RXQ(i32) #1

declare dso_local i32 @PORT_CONFIG_ARO_RXQ(i32) #1

declare dso_local i32 @mge_set_prom_mode(%struct.mge_softc*, i32) #1

declare dso_local i32 @mge_set_port_serial_control(i32) #1

declare dso_local i32 @MGE_SDMA_RX_BURST_SIZE(i32) #1

declare dso_local i32 @MGE_SDMA_TX_BURST_SIZE(i32) #1

declare dso_local i32 @MGE_RX_CUR_DESC_PTR(i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @MGE_ENABLE_RXQ(i32) #1

declare dso_local i32 @MGE_READ(%struct.mge_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @if_printf(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @mge_set_rxic(%struct.mge_softc*) #1

declare dso_local i32 @mge_set_txic(%struct.mge_softc*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.mge_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
