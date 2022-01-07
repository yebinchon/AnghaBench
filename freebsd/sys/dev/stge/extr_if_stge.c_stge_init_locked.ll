; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/stge/extr_if_stge.c_stge_init_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/stge/extr_if_stge.c_stge_init_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stge_softc = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, %struct.ifnet* }
%struct.ifnet = type { i32, i32, i32 }
%struct.mii_data = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@STGE_RESET_FULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"initialization failed: no memory for rx buffers\0A\00", align 1
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@STGE_StationAddress0 = common dso_local global i32 0, align 4
@STGE_StationAddress1 = common dso_local global i32 0, align 4
@STGE_StationAddress2 = common dso_local global i32 0, align 4
@STGE_RMONStatisticsMask = common dso_local global i32 0, align 4
@STGE_StatisticsMask = common dso_local global i32 0, align 4
@STGE_TFDListPtrHi = common dso_local global i32 0, align 4
@STGE_TFDListPtrLo = common dso_local global i32 0, align 4
@STGE_RFDListPtrHi = common dso_local global i32 0, align 4
@STGE_RFDListPtrLo = common dso_local global i32 0, align 4
@STGE_TxDMAPollPeriod = common dso_local global i32 0, align 4
@STGE_RxDMAPollPeriod = common dso_local global i32 0, align 4
@STGE_TxStartThresh = common dso_local global i32 0, align 4
@STGE_RxDMABurstThresh = common dso_local global i32 0, align 4
@STGE_RxDMAUrgentThresh = common dso_local global i32 0, align 4
@STGE_RxEarlyThresh = common dso_local global i32 0, align 4
@STGE_TxDMABurstThresh = common dso_local global i32 0, align 4
@STGE_TxDMAUrgentThresh = common dso_local global i32 0, align 4
@STGE_RxDMAIntCtrl = common dso_local global i32 0, align 4
@IS_HostError = common dso_local global i32 0, align 4
@IS_TxComplete = common dso_local global i32 0, align 4
@IS_TxDMAComplete = common dso_local global i32 0, align 4
@IS_RxDMAComplete = common dso_local global i32 0, align 4
@IS_RFDListEnd = common dso_local global i32 0, align 4
@STGE_IntEnable = common dso_local global i32 0, align 4
@STGE_DMACtrl = common dso_local global i32 0, align 4
@STGE_FlowOnTresh = common dso_local global i32 0, align 4
@STGE_FlowOffThresh = common dso_local global i32 0, align 4
@ETHER_HDR_LEN = common dso_local global i32 0, align 4
@ETHER_CRC_LEN = common dso_local global i32 0, align 4
@STGE_MaxFrameSize = common dso_local global i32 0, align 4
@STGE_MACCtrl = common dso_local global i32 0, align 4
@MC_IFS96bit = common dso_local global i32 0, align 4
@STGE_DebugCtrl = common dso_local global i32 0, align 4
@MC_MASK = common dso_local global i32 0, align 4
@MC_StatisticsEnable = common dso_local global i32 0, align 4
@MC_TxEnable = common dso_local global i32 0, align 4
@MC_RxEnable = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@stge_tick = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"interface not running\0A\00", align 1
@IFCAP_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stge_softc*)* @stge_init_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stge_init_locked(%struct.stge_softc* %0) #0 {
  %2 = alloca %struct.stge_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.mii_data*, align 8
  %5 = alloca [3 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.stge_softc* %0, %struct.stge_softc** %2, align 8
  %8 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %9 = call i32 @STGE_LOCK_ASSERT(%struct.stge_softc* %8)
  %10 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %11 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %10, i32 0, i32 11
  %12 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  store %struct.ifnet* %12, %struct.ifnet** %3, align 8
  %13 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %14 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %270

20:                                               ; preds = %1
  %21 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %22 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %21, i32 0, i32 10
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.mii_data* @device_get_softc(i32 %23)
  store %struct.mii_data* %24, %struct.mii_data** %4, align 8
  %25 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %26 = call i32 @stge_stop(%struct.stge_softc* %25)
  %27 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %28 = load i32, i32* @STGE_RESET_FULL, align 4
  %29 = call i32 @stge_reset(%struct.stge_softc* %27, i32 %28)
  %30 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %31 = call i32 @stge_init_rx_ring(%struct.stge_softc* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %20
  %35 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %36 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @device_printf(i32 %37, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %40 = call i32 @stge_stop(%struct.stge_softc* %39)
  br label %262

41:                                               ; preds = %20
  %42 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %43 = call i32 @stge_init_tx_ring(%struct.stge_softc* %42)
  %44 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %45 = call i32 @IF_LLADDR(%struct.ifnet* %44)
  %46 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %47 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %48 = call i32 @bcopy(i32 %45, i32* %46, i32 %47)
  %49 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %50 = load i32, i32* @STGE_StationAddress0, align 4
  %51 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @htole16(i32 %52)
  %54 = call i32 @CSR_WRITE_2(%struct.stge_softc* %49, i32 %50, i32 %53)
  %55 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %56 = load i32, i32* @STGE_StationAddress1, align 4
  %57 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @htole16(i32 %58)
  %60 = call i32 @CSR_WRITE_2(%struct.stge_softc* %55, i32 %56, i32 %59)
  %61 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %62 = load i32, i32* @STGE_StationAddress2, align 4
  %63 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @htole16(i32 %64)
  %66 = call i32 @CSR_WRITE_2(%struct.stge_softc* %61, i32 %62, i32 %65)
  %67 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %68 = load i32, i32* @STGE_RMONStatisticsMask, align 4
  %69 = call i32 @CSR_WRITE_4(%struct.stge_softc* %67, i32 %68, i32 -1)
  %70 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %71 = load i32, i32* @STGE_StatisticsMask, align 4
  %72 = call i32 @CSR_WRITE_4(%struct.stge_softc* %70, i32 %71, i32 3729406)
  %73 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %74 = call i32 @stge_set_filter(%struct.stge_softc* %73)
  %75 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %76 = call i32 @stge_set_multi(%struct.stge_softc* %75)
  %77 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %78 = load i32, i32* @STGE_TFDListPtrHi, align 4
  %79 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %80 = call i32 @STGE_TX_RING_ADDR(%struct.stge_softc* %79, i32 0)
  %81 = call i32 @STGE_ADDR_HI(i32 %80)
  %82 = call i32 @CSR_WRITE_4(%struct.stge_softc* %77, i32 %78, i32 %81)
  %83 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %84 = load i32, i32* @STGE_TFDListPtrLo, align 4
  %85 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %86 = call i32 @STGE_TX_RING_ADDR(%struct.stge_softc* %85, i32 0)
  %87 = call i32 @STGE_ADDR_LO(i32 %86)
  %88 = call i32 @CSR_WRITE_4(%struct.stge_softc* %83, i32 %84, i32 %87)
  %89 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %90 = load i32, i32* @STGE_RFDListPtrHi, align 4
  %91 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %92 = call i32 @STGE_RX_RING_ADDR(%struct.stge_softc* %91, i32 0)
  %93 = call i32 @STGE_ADDR_HI(i32 %92)
  %94 = call i32 @CSR_WRITE_4(%struct.stge_softc* %89, i32 %90, i32 %93)
  %95 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %96 = load i32, i32* @STGE_RFDListPtrLo, align 4
  %97 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %98 = call i32 @STGE_RX_RING_ADDR(%struct.stge_softc* %97, i32 0)
  %99 = call i32 @STGE_ADDR_LO(i32 %98)
  %100 = call i32 @CSR_WRITE_4(%struct.stge_softc* %95, i32 %96, i32 %99)
  %101 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %102 = load i32, i32* @STGE_TxDMAPollPeriod, align 4
  %103 = call i32 @CSR_WRITE_1(%struct.stge_softc* %101, i32 %102, i32 127)
  %104 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %105 = load i32, i32* @STGE_RxDMAPollPeriod, align 4
  %106 = call i32 @CSR_WRITE_1(%struct.stge_softc* %104, i32 %105, i32 1)
  %107 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %108 = load i32, i32* @STGE_TxStartThresh, align 4
  %109 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %110 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @CSR_WRITE_2(%struct.stge_softc* %107, i32 %108, i32 %111)
  %113 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %114 = load i32, i32* @STGE_RxDMABurstThresh, align 4
  %115 = call i32 @CSR_WRITE_1(%struct.stge_softc* %113, i32 %114, i32 48)
  %116 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %117 = load i32, i32* @STGE_RxDMAUrgentThresh, align 4
  %118 = call i32 @CSR_WRITE_1(%struct.stge_softc* %116, i32 %117, i32 48)
  %119 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %120 = load i32, i32* @STGE_RxEarlyThresh, align 4
  %121 = call i32 @CSR_WRITE_2(%struct.stge_softc* %119, i32 %120, i32 2047)
  %122 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %123 = load i32, i32* @STGE_TxDMABurstThresh, align 4
  %124 = call i32 @CSR_WRITE_1(%struct.stge_softc* %122, i32 %123, i32 48)
  %125 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %126 = load i32, i32* @STGE_TxDMAUrgentThresh, align 4
  %127 = call i32 @CSR_WRITE_1(%struct.stge_softc* %125, i32 %126, i32 4)
  %128 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %129 = load i32, i32* @STGE_RxDMAIntCtrl, align 4
  %130 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %131 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %130, i32 0, i32 9
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @RDIC_RxFrameCount(i32 %132)
  %134 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %135 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %134, i32 0, i32 8
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @STGE_RXINT_USECS2TICK(i32 %136)
  %138 = call i32 @RDIC_RxDMAWaitTime(i32 %137)
  %139 = or i32 %133, %138
  %140 = call i32 @CSR_WRITE_4(%struct.stge_softc* %128, i32 %129, i32 %139)
  %141 = load i32, i32* @IS_HostError, align 4
  %142 = load i32, i32* @IS_TxComplete, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @IS_TxDMAComplete, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @IS_RxDMAComplete, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @IS_RFDListEnd, align 4
  %149 = or i32 %147, %148
  %150 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %151 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 4
  %152 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %153 = load i32, i32* @STGE_IntEnable, align 4
  %154 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %155 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @CSR_WRITE_2(%struct.stge_softc* %152, i32 %153, i32 %156)
  %158 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %159 = load i32, i32* @STGE_DMACtrl, align 4
  %160 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %161 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @DMAC_TxBurstLimit(i32 3)
  %164 = or i32 %162, %163
  %165 = call i32 @CSR_WRITE_4(%struct.stge_softc* %158, i32 %159, i32 %164)
  %166 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %167 = load i32, i32* @STGE_FlowOnTresh, align 4
  %168 = call i32 @CSR_WRITE_2(%struct.stge_softc* %166, i32 %167, i32 1856)
  %169 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %170 = load i32, i32* @STGE_FlowOffThresh, align 4
  %171 = call i32 @CSR_WRITE_2(%struct.stge_softc* %169, i32 %170, i32 191)
  %172 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %173 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @ETHER_HDR_LEN, align 4
  %176 = add nsw i32 %174, %175
  %177 = load i32, i32* @ETHER_CRC_LEN, align 4
  %178 = add nsw i32 %176, %177
  %179 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %180 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %179, i32 0, i32 3
  store i32 %178, i32* %180, align 4
  %181 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %182 = load i32, i32* @STGE_MaxFrameSize, align 4
  %183 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %184 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @CSR_WRITE_2(%struct.stge_softc* %181, i32 %182, i32 %185)
  %187 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %188 = load i32, i32* @STGE_MACCtrl, align 4
  %189 = load i32, i32* @MC_IFS96bit, align 4
  %190 = call i32 @MC_IFSSelect(i32 %189)
  %191 = call i32 @CSR_WRITE_4(%struct.stge_softc* %187, i32 %188, i32 %190)
  %192 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %193 = call i32 @stge_vlan_setup(%struct.stge_softc* %192)
  %194 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %195 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 8
  %197 = icmp sge i32 %196, 6
  br i1 %197, label %198, label %220

198:                                              ; preds = %41
  %199 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %200 = load i32, i32* @STGE_DebugCtrl, align 4
  %201 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %202 = load i32, i32* @STGE_DebugCtrl, align 4
  %203 = call i32 @CSR_READ_2(%struct.stge_softc* %201, i32 %202)
  %204 = or i32 %203, 512
  %205 = call i32 @CSR_WRITE_2(%struct.stge_softc* %199, i32 %200, i32 %204)
  %206 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %207 = load i32, i32* @STGE_DebugCtrl, align 4
  %208 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %209 = load i32, i32* @STGE_DebugCtrl, align 4
  %210 = call i32 @CSR_READ_2(%struct.stge_softc* %208, i32 %209)
  %211 = or i32 %210, 16
  %212 = call i32 @CSR_WRITE_2(%struct.stge_softc* %206, i32 %207, i32 %211)
  %213 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %214 = load i32, i32* @STGE_DebugCtrl, align 4
  %215 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %216 = load i32, i32* @STGE_DebugCtrl, align 4
  %217 = call i32 @CSR_READ_2(%struct.stge_softc* %215, i32 %216)
  %218 = or i32 %217, 32
  %219 = call i32 @CSR_WRITE_2(%struct.stge_softc* %213, i32 %214, i32 %218)
  br label %220

220:                                              ; preds = %198, %41
  %221 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %222 = load i32, i32* @STGE_MACCtrl, align 4
  %223 = call i32 @CSR_READ_4(%struct.stge_softc* %221, i32 %222)
  %224 = load i32, i32* @MC_MASK, align 4
  %225 = and i32 %223, %224
  store i32 %225, i32* %6, align 4
  %226 = load i32, i32* @MC_StatisticsEnable, align 4
  %227 = load i32, i32* @MC_TxEnable, align 4
  %228 = or i32 %226, %227
  %229 = load i32, i32* @MC_RxEnable, align 4
  %230 = or i32 %228, %229
  %231 = load i32, i32* %6, align 4
  %232 = or i32 %231, %230
  store i32 %232, i32* %6, align 4
  %233 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %234 = load i32, i32* @STGE_MACCtrl, align 4
  %235 = load i32, i32* %6, align 4
  %236 = call i32 @CSR_WRITE_4(%struct.stge_softc* %233, i32 %234, i32 %235)
  %237 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %238 = call i32 @stge_start_tx(%struct.stge_softc* %237)
  %239 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %240 = call i32 @stge_start_rx(%struct.stge_softc* %239)
  %241 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %242 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %241, i32 0, i32 7
  store i64 0, i64* %242, align 8
  %243 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %244 = call i32 @mii_mediachg(%struct.mii_data* %243)
  %245 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %246 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %245, i32 0, i32 6
  %247 = load i32, i32* @hz, align 4
  %248 = load i32, i32* @stge_tick, align 4
  %249 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %250 = call i32 @callout_reset(i32* %246, i32 %247, i32 %248, %struct.stge_softc* %249)
  %251 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %252 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %253 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = or i32 %254, %251
  store i32 %255, i32* %253, align 4
  %256 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %257 = xor i32 %256, -1
  %258 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %259 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = and i32 %260, %257
  store i32 %261, i32* %259, align 4
  br label %262

262:                                              ; preds = %220, %34
  %263 = load i32, i32* %7, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %270

265:                                              ; preds = %262
  %266 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %267 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %266, i32 0, i32 5
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @device_printf(i32 %268, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %270

270:                                              ; preds = %19, %265, %262
  ret void
}

declare dso_local i32 @STGE_LOCK_ASSERT(%struct.stge_softc*) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @stge_stop(%struct.stge_softc*) #1

declare dso_local i32 @stge_reset(%struct.stge_softc*, i32) #1

declare dso_local i32 @stge_init_rx_ring(%struct.stge_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @stge_init_tx_ring(%struct.stge_softc*) #1

declare dso_local i32 @bcopy(i32, i32*, i32) #1

declare dso_local i32 @IF_LLADDR(%struct.ifnet*) #1

declare dso_local i32 @CSR_WRITE_2(%struct.stge_softc*, i32, i32) #1

declare dso_local i32 @htole16(i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.stge_softc*, i32, i32) #1

declare dso_local i32 @stge_set_filter(%struct.stge_softc*) #1

declare dso_local i32 @stge_set_multi(%struct.stge_softc*) #1

declare dso_local i32 @STGE_ADDR_HI(i32) #1

declare dso_local i32 @STGE_TX_RING_ADDR(%struct.stge_softc*, i32) #1

declare dso_local i32 @STGE_ADDR_LO(i32) #1

declare dso_local i32 @STGE_RX_RING_ADDR(%struct.stge_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_1(%struct.stge_softc*, i32, i32) #1

declare dso_local i32 @RDIC_RxFrameCount(i32) #1

declare dso_local i32 @RDIC_RxDMAWaitTime(i32) #1

declare dso_local i32 @STGE_RXINT_USECS2TICK(i32) #1

declare dso_local i32 @DMAC_TxBurstLimit(i32) #1

declare dso_local i32 @MC_IFSSelect(i32) #1

declare dso_local i32 @stge_vlan_setup(%struct.stge_softc*) #1

declare dso_local i32 @CSR_READ_2(%struct.stge_softc*, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.stge_softc*, i32) #1

declare dso_local i32 @stge_start_tx(%struct.stge_softc*) #1

declare dso_local i32 @stge_start_rx(%struct.stge_softc*) #1

declare dso_local i32 @mii_mediachg(%struct.mii_data*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.stge_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
