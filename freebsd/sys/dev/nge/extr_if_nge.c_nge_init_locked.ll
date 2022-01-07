; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nge/extr_if_nge.c_nge_init_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nge/extr_if_nge.c_nge_init_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nge_softc = type { i32, i32, i64, i32, %struct.TYPE_2__, i32, %struct.ifnet*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ifnet = type { i32, i32 }
%struct.mii_data = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@NGE_RXFILT_CTL = common dso_local global i32 0, align 4
@BUS_SPACE_BARRIER_WRITE = common dso_local global i32 0, align 4
@NGE_FILTADDR_PAR0 = common dso_local global i32 0, align 4
@NGE_RXFILT_DATA = common dso_local global i32 0, align 4
@NGE_FILTADDR_PAR1 = common dso_local global i32 0, align 4
@NGE_FILTADDR_PAR2 = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"initialization failed: no memory for rx buffers\0A\00", align 1
@NGE_PRIOQCTL = common dso_local global i32 0, align 4
@NGE_PAUSECSR = common dso_local global i32 0, align 4
@NGE_PAUSECSR_PAUSE_ON_MCAST = common dso_local global i32 0, align 4
@NGE_PAUSECSR_PAUSE_ON_DA = common dso_local global i32 0, align 4
@NGE_PAUSECSR_RX_STATFIFO_THR_HI = common dso_local global i32 0, align 4
@NGE_PAUSECSR_RX_STATFIFO_THR_LO = common dso_local global i32 0, align 4
@NGE_PAUSECSR_RX_DATAFIFO_THR_HI = common dso_local global i32 0, align 4
@NGE_PAUSECSR_RX_DATAFIFO_THR_LO = common dso_local global i32 0, align 4
@NGE_PAUSECSR_CNT = common dso_local global i32 0, align 4
@NGE_RX_LISTPTR_HI = common dso_local global i32 0, align 4
@NGE_RX_LISTPTR_LO = common dso_local global i32 0, align 4
@NGE_TX_LISTPTR_HI = common dso_local global i32 0, align 4
@NGE_TX_LISTPTR_LO = common dso_local global i32 0, align 4
@NGE_RX_CFG = common dso_local global i32 0, align 4
@NGE_RXCFG = common dso_local global i32 0, align 4
@NGE_VLAN_IP_RXCTL = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@NGE_VIPRXCTL_IPCSUM_ENB = common dso_local global i32 0, align 4
@NGE_VIPRXCTL_TAG_DETECT_ENB = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@NGE_VIPRXCTL_TAG_STRIP_ENB = common dso_local global i32 0, align 4
@NGE_TX_CFG = common dso_local global i32 0, align 4
@NGE_TXCFG = common dso_local global i32 0, align 4
@NGE_VLAN_IP_TXCTL = common dso_local global i32 0, align 4
@NGE_VIPTXCTL_CSUM_PER_PKT = common dso_local global i32 0, align 4
@NGE_VIPTXCTL_TAG_PER_PKT = common dso_local global i32 0, align 4
@NGE_CFG = common dso_local global i32 0, align 4
@NGE_CFG_PHYINTR_SPD = common dso_local global i32 0, align 4
@NGE_CFG_PHYINTR_LNK = common dso_local global i32 0, align 4
@NGE_CFG_PHYINTR_DUP = common dso_local global i32 0, align 4
@NGE_CFG_EXTSTS_ENB = common dso_local global i32 0, align 4
@NGE_IHR = common dso_local global i32 0, align 4
@NGE_MIBCTL = common dso_local global i32 0, align 4
@NGE_MIBCTL_FREEZE_CNT = common dso_local global i32 0, align 4
@NGE_MIBCTL_CLEAR_CNT = common dso_local global i32 0, align 4
@NGE_IMR = common dso_local global i32 0, align 4
@NGE_INTRS = common dso_local global i32 0, align 4
@NGE_IER = common dso_local global i32 0, align 4
@NGE_FLAG_LINK = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@nge_tick = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nge_softc*)* @nge_init_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nge_init_locked(%struct.nge_softc* %0) #0 {
  %2 = alloca %struct.nge_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.mii_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.nge_softc* %0, %struct.nge_softc** %2, align 8
  %7 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %8 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %7, i32 0, i32 6
  %9 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %9, %struct.ifnet** %3, align 8
  %10 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %11 = call i32 @NGE_LOCK_ASSERT(%struct.nge_softc* %10)
  %12 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %13 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %266

19:                                               ; preds = %1
  %20 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %21 = call i32 @nge_stop(%struct.nge_softc* %20)
  %22 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %23 = call i32 @nge_reset(%struct.nge_softc* %22)
  %24 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %25 = load i32, i32* @NGE_RXFILT_CTL, align 4
  %26 = call i32 @CSR_WRITE_4(%struct.nge_softc* %24, i32 %25, i32 0)
  %27 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %28 = load i32, i32* @NGE_RXFILT_CTL, align 4
  %29 = load i32, i32* @BUS_SPACE_BARRIER_WRITE, align 4
  %30 = call i32 @CSR_BARRIER_4(%struct.nge_softc* %27, i32 %28, i32 %29)
  %31 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %32 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 8
  %34 = call %struct.mii_data* @device_get_softc(i32 %33)
  store %struct.mii_data* %34, %struct.mii_data** %4, align 8
  %35 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %36 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %35, i32 0, i32 6
  %37 = load %struct.ifnet*, %struct.ifnet** %36, align 8
  %38 = call i32* @IF_LLADDR(%struct.ifnet* %37)
  store i32* %38, i32** %5, align 8
  %39 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %40 = load i32, i32* @NGE_RXFILT_CTL, align 4
  %41 = load i32, i32* @NGE_FILTADDR_PAR0, align 4
  %42 = call i32 @CSR_WRITE_4(%struct.nge_softc* %39, i32 %40, i32 %41)
  %43 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %44 = load i32, i32* @NGE_RXFILT_DATA, align 4
  %45 = load i32*, i32** %5, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 8
  %49 = load i32*, i32** %5, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %48, %51
  %53 = call i32 @CSR_WRITE_4(%struct.nge_softc* %43, i32 %44, i32 %52)
  %54 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %55 = load i32, i32* @NGE_RXFILT_CTL, align 4
  %56 = load i32, i32* @NGE_FILTADDR_PAR1, align 4
  %57 = call i32 @CSR_WRITE_4(%struct.nge_softc* %54, i32 %55, i32 %56)
  %58 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %59 = load i32, i32* @NGE_RXFILT_DATA, align 4
  %60 = load i32*, i32** %5, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 3
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %62, 8
  %64 = load i32*, i32** %5, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 2
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %63, %66
  %68 = call i32 @CSR_WRITE_4(%struct.nge_softc* %58, i32 %59, i32 %67)
  %69 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %70 = load i32, i32* @NGE_RXFILT_CTL, align 4
  %71 = load i32, i32* @NGE_FILTADDR_PAR2, align 4
  %72 = call i32 @CSR_WRITE_4(%struct.nge_softc* %69, i32 %70, i32 %71)
  %73 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %74 = load i32, i32* @NGE_RXFILT_DATA, align 4
  %75 = load i32*, i32** %5, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 5
  %77 = load i32, i32* %76, align 4
  %78 = shl i32 %77, 8
  %79 = load i32*, i32** %5, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 4
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %78, %81
  %83 = call i32 @CSR_WRITE_4(%struct.nge_softc* %73, i32 %74, i32 %82)
  %84 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %85 = call i64 @nge_list_rx_init(%struct.nge_softc* %84)
  %86 = load i64, i64* @ENOBUFS, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %19
  %89 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %90 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @device_printf(i32 %91, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %93 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %94 = call i32 @nge_stop(%struct.nge_softc* %93)
  br label %266

95:                                               ; preds = %19
  %96 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %97 = call i32 @nge_list_tx_init(%struct.nge_softc* %96)
  %98 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %99 = call i32 @nge_rxfilter(%struct.nge_softc* %98)
  %100 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %101 = load i32, i32* @NGE_PRIOQCTL, align 4
  %102 = call i32 @CSR_WRITE_4(%struct.nge_softc* %100, i32 %101, i32 0)
  %103 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %104 = load i32, i32* @NGE_PAUSECSR, align 4
  %105 = load i32, i32* @NGE_PAUSECSR_PAUSE_ON_MCAST, align 4
  %106 = load i32, i32* @NGE_PAUSECSR_PAUSE_ON_DA, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @NGE_PAUSECSR_RX_STATFIFO_THR_HI, align 4
  %109 = and i32 16777216, %108
  %110 = or i32 %107, %109
  %111 = load i32, i32* @NGE_PAUSECSR_RX_STATFIFO_THR_LO, align 4
  %112 = and i32 4194304, %111
  %113 = or i32 %110, %112
  %114 = load i32, i32* @NGE_PAUSECSR_RX_DATAFIFO_THR_HI, align 4
  %115 = and i32 1048576, %114
  %116 = or i32 %113, %115
  %117 = load i32, i32* @NGE_PAUSECSR_RX_DATAFIFO_THR_LO, align 4
  %118 = and i32 262144, %117
  %119 = or i32 %116, %118
  %120 = load i32, i32* @NGE_PAUSECSR_CNT, align 4
  %121 = or i32 %119, %120
  %122 = call i32 @CSR_WRITE_4(%struct.nge_softc* %103, i32 %104, i32 %121)
  %123 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %124 = load i32, i32* @NGE_RX_LISTPTR_HI, align 4
  %125 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %126 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %125, i32 0, i32 4
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @NGE_ADDR_HI(i32 %128)
  %130 = call i32 @CSR_WRITE_4(%struct.nge_softc* %123, i32 %124, i32 %129)
  %131 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %132 = load i32, i32* @NGE_RX_LISTPTR_LO, align 4
  %133 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %134 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @NGE_ADDR_LO(i32 %136)
  %138 = call i32 @CSR_WRITE_4(%struct.nge_softc* %131, i32 %132, i32 %137)
  %139 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %140 = load i32, i32* @NGE_TX_LISTPTR_HI, align 4
  %141 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %142 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %141, i32 0, i32 4
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @NGE_ADDR_HI(i32 %144)
  %146 = call i32 @CSR_WRITE_4(%struct.nge_softc* %139, i32 %140, i32 %145)
  %147 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %148 = load i32, i32* @NGE_TX_LISTPTR_LO, align 4
  %149 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %150 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %149, i32 0, i32 4
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @NGE_ADDR_LO(i32 %152)
  %154 = call i32 @CSR_WRITE_4(%struct.nge_softc* %147, i32 %148, i32 %153)
  %155 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %156 = load i32, i32* @NGE_RX_CFG, align 4
  %157 = load i32, i32* @NGE_RXCFG, align 4
  %158 = call i32 @CSR_WRITE_4(%struct.nge_softc* %155, i32 %156, i32 %157)
  %159 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %160 = load i32, i32* @NGE_VLAN_IP_RXCTL, align 4
  %161 = call i32 @CSR_WRITE_4(%struct.nge_softc* %159, i32 %160, i32 0)
  %162 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %163 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @IFCAP_RXCSUM, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %95
  %169 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %170 = load i32, i32* @NGE_VLAN_IP_RXCTL, align 4
  %171 = load i32, i32* @NGE_VIPRXCTL_IPCSUM_ENB, align 4
  %172 = call i32 @NGE_SETBIT(%struct.nge_softc* %169, i32 %170, i32 %171)
  br label %173

173:                                              ; preds = %168, %95
  %174 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %175 = load i32, i32* @NGE_VLAN_IP_RXCTL, align 4
  %176 = load i32, i32* @NGE_VIPRXCTL_TAG_DETECT_ENB, align 4
  %177 = call i32 @NGE_SETBIT(%struct.nge_softc* %174, i32 %175, i32 %176)
  %178 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %179 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %173
  %185 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %186 = load i32, i32* @NGE_VLAN_IP_RXCTL, align 4
  %187 = load i32, i32* @NGE_VIPRXCTL_TAG_STRIP_ENB, align 4
  %188 = call i32 @NGE_SETBIT(%struct.nge_softc* %185, i32 %186, i32 %187)
  br label %189

189:                                              ; preds = %184, %173
  %190 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %191 = load i32, i32* @NGE_TX_CFG, align 4
  %192 = load i32, i32* @NGE_TXCFG, align 4
  %193 = call i32 @CSR_WRITE_4(%struct.nge_softc* %190, i32 %191, i32 %192)
  %194 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %195 = load i32, i32* @NGE_VLAN_IP_TXCTL, align 4
  %196 = load i32, i32* @NGE_VIPTXCTL_CSUM_PER_PKT, align 4
  %197 = call i32 @CSR_WRITE_4(%struct.nge_softc* %194, i32 %195, i32 %196)
  %198 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %199 = load i32, i32* @NGE_VLAN_IP_TXCTL, align 4
  %200 = load i32, i32* @NGE_VIPTXCTL_TAG_PER_PKT, align 4
  %201 = call i32 @NGE_SETBIT(%struct.nge_softc* %198, i32 %199, i32 %200)
  %202 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %203 = load i32, i32* @NGE_CFG, align 4
  %204 = load i32, i32* @NGE_CFG_PHYINTR_SPD, align 4
  %205 = load i32, i32* @NGE_CFG_PHYINTR_LNK, align 4
  %206 = or i32 %204, %205
  %207 = load i32, i32* @NGE_CFG_PHYINTR_DUP, align 4
  %208 = or i32 %206, %207
  %209 = load i32, i32* @NGE_CFG_EXTSTS_ENB, align 4
  %210 = or i32 %208, %209
  %211 = call i32 @NGE_SETBIT(%struct.nge_softc* %202, i32 %203, i32 %210)
  %212 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %213 = load i32, i32* @NGE_IHR, align 4
  %214 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %215 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @CSR_WRITE_4(%struct.nge_softc* %212, i32 %213, i32 %216)
  %218 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %219 = load i32, i32* @NGE_MIBCTL, align 4
  %220 = call i32 @CSR_READ_4(%struct.nge_softc* %218, i32 %219)
  store i32 %220, i32* %6, align 4
  %221 = load i32, i32* @NGE_MIBCTL_FREEZE_CNT, align 4
  %222 = xor i32 %221, -1
  %223 = load i32, i32* %6, align 4
  %224 = and i32 %223, %222
  store i32 %224, i32* %6, align 4
  %225 = load i32, i32* @NGE_MIBCTL_CLEAR_CNT, align 4
  %226 = load i32, i32* %6, align 4
  %227 = or i32 %226, %225
  store i32 %227, i32* %6, align 4
  %228 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %229 = load i32, i32* @NGE_MIBCTL, align 4
  %230 = load i32, i32* %6, align 4
  %231 = call i32 @CSR_WRITE_4(%struct.nge_softc* %228, i32 %229, i32 %230)
  %232 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %233 = load i32, i32* @NGE_IMR, align 4
  %234 = load i32, i32* @NGE_INTRS, align 4
  %235 = call i32 @CSR_WRITE_4(%struct.nge_softc* %232, i32 %233, i32 %234)
  %236 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %237 = load i32, i32* @NGE_IER, align 4
  %238 = call i32 @CSR_WRITE_4(%struct.nge_softc* %236, i32 %237, i32 1)
  %239 = load i32, i32* @NGE_FLAG_LINK, align 4
  %240 = xor i32 %239, -1
  %241 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %242 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 8
  %244 = and i32 %243, %240
  store i32 %244, i32* %242, align 8
  %245 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %246 = call i32 @mii_mediachg(%struct.mii_data* %245)
  %247 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %248 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %247, i32 0, i32 2
  store i64 0, i64* %248, align 8
  %249 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %250 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %249, i32 0, i32 1
  %251 = load i32, i32* @hz, align 4
  %252 = load i32, i32* @nge_tick, align 4
  %253 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %254 = call i32 @callout_reset(i32* %250, i32 %251, i32 %252, %struct.nge_softc* %253)
  %255 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %256 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %257 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = or i32 %258, %255
  store i32 %259, i32* %257, align 4
  %260 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %261 = xor i32 %260, -1
  %262 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %263 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = and i32 %264, %261
  store i32 %265, i32* %263, align 4
  br label %266

266:                                              ; preds = %189, %88, %18
  ret void
}

declare dso_local i32 @NGE_LOCK_ASSERT(%struct.nge_softc*) #1

declare dso_local i32 @nge_stop(%struct.nge_softc*) #1

declare dso_local i32 @nge_reset(%struct.nge_softc*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.nge_softc*, i32, i32) #1

declare dso_local i32 @CSR_BARRIER_4(%struct.nge_softc*, i32, i32) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32* @IF_LLADDR(%struct.ifnet*) #1

declare dso_local i64 @nge_list_rx_init(%struct.nge_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @nge_list_tx_init(%struct.nge_softc*) #1

declare dso_local i32 @nge_rxfilter(%struct.nge_softc*) #1

declare dso_local i32 @NGE_ADDR_HI(i32) #1

declare dso_local i32 @NGE_ADDR_LO(i32) #1

declare dso_local i32 @NGE_SETBIT(%struct.nge_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.nge_softc*, i32) #1

declare dso_local i32 @mii_mediachg(%struct.mii_data*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.nge_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
