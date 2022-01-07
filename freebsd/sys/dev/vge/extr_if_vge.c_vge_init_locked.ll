; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vge/extr_if_vge.c_vge_init_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vge/extr_if_vge.c_vge_init_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vge_softc = type { i32, i32, %struct.TYPE_2__, %struct.ifnet*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ifnet = type { i32, i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"no memory for Rx buffers.\0A\00", align 1
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@VGE_PAR0 = common dso_local global i64 0, align 8
@VGE_RXCFG = common dso_local global i32 0, align 4
@VGE_RXCFG_FIFO_THR = common dso_local global i32 0, align 4
@VGE_RXCFG_VTAGOPT = common dso_local global i32 0, align 4
@VGE_RXFIFOTHR_128BYTES = common dso_local global i32 0, align 4
@VGE_DMACFG0 = common dso_local global i32 0, align 4
@VGE_DMACFG0_BURSTLEN = common dso_local global i32 0, align 4
@VGE_DMABURST_128 = common dso_local global i32 0, align 4
@VGE_TXCFG = common dso_local global i32 0, align 4
@VGE_TXCFG_ARB_PRIO = common dso_local global i32 0, align 4
@VGE_TXCFG_NONBLK = common dso_local global i32 0, align 4
@VGE_CHIPCFG1 = common dso_local global i32 0, align 4
@VGE_CHIPCFG1_CRANDOM = common dso_local global i32 0, align 4
@VGE_CHIPCFG1_CAP = common dso_local global i32 0, align 4
@VGE_CHIPCFG1_MBA = common dso_local global i32 0, align 4
@VGE_CHIPCFG1_BAKOPT = common dso_local global i32 0, align 4
@VGE_CHIPCFG1_OFSET = common dso_local global i32 0, align 4
@VGE_DIAGCTL = common dso_local global i32 0, align 4
@VGE_DIAGCTL_LPSEL_DIS = common dso_local global i32 0, align 4
@VGE_TXDESC_HIADDR = common dso_local global i32 0, align 4
@VGE_TXDESC_ADDR_LO0 = common dso_local global i32 0, align 4
@VGE_TXDESCNUM = common dso_local global i32 0, align 4
@VGE_TX_DESC_CNT = common dso_local global i32 0, align 4
@VGE_RXDESC_ADDR_LO = common dso_local global i32 0, align 4
@VGE_RXDESCNUM = common dso_local global i32 0, align 4
@VGE_RX_DESC_CNT = common dso_local global i32 0, align 4
@VGE_RXDESC_RESIDUECNT = common dso_local global i32 0, align 4
@VGE_RXQCSRS = common dso_local global i64 0, align 8
@VGE_RXQCSR_RUN = common dso_local global i32 0, align 4
@VGE_RXQCSR_WAK = common dso_local global i32 0, align 4
@VGE_TXQCSRS = common dso_local global i32 0, align 4
@VGE_TXQCSR_RUN0 = common dso_local global i32 0, align 4
@VGE_TX_PAUSE_TIMER = common dso_local global i32 0, align 4
@VGE_CRC2 = common dso_local global i64 0, align 8
@VGE_CRS2 = common dso_local global i64 0, align 8
@VGE_CR2_XON_ENABLE = common dso_local global i32 0, align 4
@VGE_CRC0 = common dso_local global i64 0, align 8
@VGE_CR0_STOP = common dso_local global i32 0, align 4
@VGE_CRS1 = common dso_local global i64 0, align 8
@VGE_CR1_NOPOLL = common dso_local global i32 0, align 4
@VGE_CRS0 = common dso_local global i64 0, align 8
@VGE_CR0_TX_ENABLE = common dso_local global i32 0, align 4
@VGE_CR0_RX_ENABLE = common dso_local global i32 0, align 4
@VGE_CR0_START = common dso_local global i32 0, align 4
@VGE_IMR = common dso_local global i32 0, align 4
@VGE_INTRS = common dso_local global i32 0, align 4
@VGE_ISR = common dso_local global i32 0, align 4
@VGE_CRS3 = common dso_local global i64 0, align 8
@VGE_CR3_INT_GMSK = common dso_local global i32 0, align 4
@VGE_FLAG_LINK = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@vge_watchdog = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@VGE_INTRS_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vge_softc*)* @vge_init_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vge_init_locked(%struct.vge_softc* %0) #0 {
  %2 = alloca %struct.vge_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vge_softc* %0, %struct.vge_softc** %2, align 8
  %6 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %7 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %6, i32 0, i32 3
  %8 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  store %struct.ifnet* %8, %struct.ifnet** %3, align 8
  %9 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %10 = call i32 @VGE_LOCK_ASSERT(%struct.vge_softc* %9)
  %11 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %12 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %225

18:                                               ; preds = %1
  %19 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %20 = call i32 @vge_stop(%struct.vge_softc* %19)
  %21 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %22 = call i32 @vge_reset(%struct.vge_softc* %21)
  %23 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %24 = call i32 @vge_miipoll_start(%struct.vge_softc* %23)
  %25 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %26 = call i32 @vge_rx_list_init(%struct.vge_softc* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %18
  %30 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %31 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @device_printf(i32 %32, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %225

34:                                               ; preds = %18
  %35 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %36 = call i32 @vge_tx_list_init(%struct.vge_softc* %35)
  %37 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %38 = call i32 @vge_stats_clear(%struct.vge_softc* %37)
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %58, %34
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %61

43:                                               ; preds = %39
  %44 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %45 = load i64, i64* @VGE_PAR0, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %45, %47
  %49 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %50 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %49, i32 0, i32 3
  %51 = load %struct.ifnet*, %struct.ifnet** %50, align 8
  %52 = call i32* @IF_LLADDR(%struct.ifnet* %51)
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @CSR_WRITE_1(%struct.vge_softc* %44, i64 %48, i32 %56)
  br label %58

58:                                               ; preds = %43
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %39

61:                                               ; preds = %39
  %62 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %63 = load i32, i32* @VGE_RXCFG, align 4
  %64 = load i32, i32* @VGE_RXCFG_FIFO_THR, align 4
  %65 = load i32, i32* @VGE_RXCFG_VTAGOPT, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @CSR_CLRBIT_1(%struct.vge_softc* %62, i32 %63, i32 %66)
  %68 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %69 = load i32, i32* @VGE_RXCFG, align 4
  %70 = load i32, i32* @VGE_RXFIFOTHR_128BYTES, align 4
  %71 = call i32 @CSR_SETBIT_1(%struct.vge_softc* %68, i32 %69, i32 %70)
  %72 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %73 = load i32, i32* @VGE_DMACFG0, align 4
  %74 = load i32, i32* @VGE_DMACFG0_BURSTLEN, align 4
  %75 = call i32 @CSR_CLRBIT_1(%struct.vge_softc* %72, i32 %73, i32 %74)
  %76 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %77 = load i32, i32* @VGE_DMACFG0, align 4
  %78 = load i32, i32* @VGE_DMABURST_128, align 4
  %79 = call i32 @CSR_SETBIT_1(%struct.vge_softc* %76, i32 %77, i32 %78)
  %80 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %81 = load i32, i32* @VGE_TXCFG, align 4
  %82 = load i32, i32* @VGE_TXCFG_ARB_PRIO, align 4
  %83 = load i32, i32* @VGE_TXCFG_NONBLK, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @CSR_SETBIT_1(%struct.vge_softc* %80, i32 %81, i32 %84)
  %86 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %87 = load i32, i32* @VGE_CHIPCFG1, align 4
  %88 = load i32, i32* @VGE_CHIPCFG1_CRANDOM, align 4
  %89 = load i32, i32* @VGE_CHIPCFG1_CAP, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @VGE_CHIPCFG1_MBA, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @VGE_CHIPCFG1_BAKOPT, align 4
  %94 = or i32 %92, %93
  %95 = call i32 @CSR_CLRBIT_1(%struct.vge_softc* %86, i32 %87, i32 %94)
  %96 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %97 = load i32, i32* @VGE_CHIPCFG1, align 4
  %98 = load i32, i32* @VGE_CHIPCFG1_OFSET, align 4
  %99 = call i32 @CSR_SETBIT_1(%struct.vge_softc* %96, i32 %97, i32 %98)
  %100 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %101 = load i32, i32* @VGE_DIAGCTL, align 4
  %102 = load i32, i32* @VGE_DIAGCTL_LPSEL_DIS, align 4
  %103 = call i32 @CSR_SETBIT_1(%struct.vge_softc* %100, i32 %101, i32 %102)
  %104 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %105 = load i32, i32* @VGE_TXDESC_HIADDR, align 4
  %106 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %107 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @VGE_ADDR_HI(i32 %109)
  %111 = call i32 @CSR_WRITE_4(%struct.vge_softc* %104, i32 %105, i32 %110)
  %112 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %113 = load i32, i32* @VGE_TXDESC_ADDR_LO0, align 4
  %114 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %115 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @VGE_ADDR_LO(i32 %117)
  %119 = call i32 @CSR_WRITE_4(%struct.vge_softc* %112, i32 %113, i32 %118)
  %120 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %121 = load i32, i32* @VGE_TXDESCNUM, align 4
  %122 = load i32, i32* @VGE_TX_DESC_CNT, align 4
  %123 = sub nsw i32 %122, 1
  %124 = call i32 @CSR_WRITE_2(%struct.vge_softc* %120, i32 %121, i32 %123)
  %125 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %126 = load i32, i32* @VGE_RXDESC_ADDR_LO, align 4
  %127 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %128 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @VGE_ADDR_LO(i32 %130)
  %132 = call i32 @CSR_WRITE_4(%struct.vge_softc* %125, i32 %126, i32 %131)
  %133 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %134 = load i32, i32* @VGE_RXDESCNUM, align 4
  %135 = load i32, i32* @VGE_RX_DESC_CNT, align 4
  %136 = sub nsw i32 %135, 1
  %137 = call i32 @CSR_WRITE_2(%struct.vge_softc* %133, i32 %134, i32 %136)
  %138 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %139 = load i32, i32* @VGE_RXDESC_RESIDUECNT, align 4
  %140 = load i32, i32* @VGE_RX_DESC_CNT, align 4
  %141 = call i32 @CSR_WRITE_2(%struct.vge_softc* %138, i32 %139, i32 %140)
  %142 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %143 = call i32 @vge_intr_holdoff(%struct.vge_softc* %142)
  %144 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %145 = load i64, i64* @VGE_RXQCSRS, align 8
  %146 = load i32, i32* @VGE_RXQCSR_RUN, align 4
  %147 = call i32 @CSR_WRITE_1(%struct.vge_softc* %144, i64 %145, i32 %146)
  %148 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %149 = load i64, i64* @VGE_RXQCSRS, align 8
  %150 = load i32, i32* @VGE_RXQCSR_WAK, align 4
  %151 = call i32 @CSR_WRITE_1(%struct.vge_softc* %148, i64 %149, i32 %150)
  %152 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %153 = load i32, i32* @VGE_TXQCSRS, align 4
  %154 = load i32, i32* @VGE_TXQCSR_RUN0, align 4
  %155 = call i32 @CSR_WRITE_2(%struct.vge_softc* %152, i32 %153, i32 %154)
  %156 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %157 = call i32 @vge_cam_clear(%struct.vge_softc* %156)
  %158 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %159 = call i32 @vge_rxfilter(%struct.vge_softc* %158)
  %160 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %161 = call i32 @vge_setvlan(%struct.vge_softc* %160)
  %162 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %163 = load i32, i32* @VGE_TX_PAUSE_TIMER, align 4
  %164 = call i32 @CSR_WRITE_2(%struct.vge_softc* %162, i32 %163, i32 65535)
  %165 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %166 = load i64, i64* @VGE_CRC2, align 8
  %167 = call i32 @CSR_WRITE_1(%struct.vge_softc* %165, i64 %166, i32 255)
  %168 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %169 = load i64, i64* @VGE_CRS2, align 8
  %170 = load i32, i32* @VGE_CR2_XON_ENABLE, align 4
  %171 = or i32 %170, 11
  %172 = call i32 @CSR_WRITE_1(%struct.vge_softc* %168, i64 %169, i32 %171)
  %173 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %174 = load i64, i64* @VGE_CRC0, align 8
  %175 = load i32, i32* @VGE_CR0_STOP, align 4
  %176 = call i32 @CSR_WRITE_1(%struct.vge_softc* %173, i64 %174, i32 %175)
  %177 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %178 = load i64, i64* @VGE_CRS1, align 8
  %179 = load i32, i32* @VGE_CR1_NOPOLL, align 4
  %180 = call i32 @CSR_WRITE_1(%struct.vge_softc* %177, i64 %178, i32 %179)
  %181 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %182 = load i64, i64* @VGE_CRS0, align 8
  %183 = load i32, i32* @VGE_CR0_TX_ENABLE, align 4
  %184 = load i32, i32* @VGE_CR0_RX_ENABLE, align 4
  %185 = or i32 %183, %184
  %186 = load i32, i32* @VGE_CR0_START, align 4
  %187 = or i32 %185, %186
  %188 = call i32 @CSR_WRITE_1(%struct.vge_softc* %181, i64 %182, i32 %187)
  %189 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %190 = load i32, i32* @VGE_IMR, align 4
  %191 = load i32, i32* @VGE_INTRS, align 4
  %192 = call i32 @CSR_WRITE_4(%struct.vge_softc* %189, i32 %190, i32 %191)
  %193 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %194 = load i32, i32* @VGE_ISR, align 4
  %195 = call i32 @CSR_WRITE_4(%struct.vge_softc* %193, i32 %194, i32 -1)
  %196 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %197 = load i64, i64* @VGE_CRS3, align 8
  %198 = load i32, i32* @VGE_CR3_INT_GMSK, align 4
  %199 = call i32 @CSR_WRITE_1(%struct.vge_softc* %196, i64 %197, i32 %198)
  %200 = load i32, i32* @VGE_FLAG_LINK, align 4
  %201 = xor i32 %200, -1
  %202 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %203 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = and i32 %204, %201
  store i32 %205, i32* %203, align 4
  %206 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %207 = call i32 @vge_ifmedia_upd_locked(%struct.vge_softc* %206)
  %208 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %209 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %210 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = or i32 %211, %208
  store i32 %212, i32* %210, align 4
  %213 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %214 = xor i32 %213, -1
  %215 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %216 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = and i32 %217, %214
  store i32 %218, i32* %216, align 4
  %219 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %220 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %219, i32 0, i32 0
  %221 = load i32, i32* @hz, align 4
  %222 = load i32, i32* @vge_watchdog, align 4
  %223 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %224 = call i32 @callout_reset(i32* %220, i32 %221, i32 %222, %struct.vge_softc* %223)
  br label %225

225:                                              ; preds = %61, %29, %17
  ret void
}

declare dso_local i32 @VGE_LOCK_ASSERT(%struct.vge_softc*) #1

declare dso_local i32 @vge_stop(%struct.vge_softc*) #1

declare dso_local i32 @vge_reset(%struct.vge_softc*) #1

declare dso_local i32 @vge_miipoll_start(%struct.vge_softc*) #1

declare dso_local i32 @vge_rx_list_init(%struct.vge_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @vge_tx_list_init(%struct.vge_softc*) #1

declare dso_local i32 @vge_stats_clear(%struct.vge_softc*) #1

declare dso_local i32 @CSR_WRITE_1(%struct.vge_softc*, i64, i32) #1

declare dso_local i32* @IF_LLADDR(%struct.ifnet*) #1

declare dso_local i32 @CSR_CLRBIT_1(%struct.vge_softc*, i32, i32) #1

declare dso_local i32 @CSR_SETBIT_1(%struct.vge_softc*, i32, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.vge_softc*, i32, i32) #1

declare dso_local i32 @VGE_ADDR_HI(i32) #1

declare dso_local i32 @VGE_ADDR_LO(i32) #1

declare dso_local i32 @CSR_WRITE_2(%struct.vge_softc*, i32, i32) #1

declare dso_local i32 @vge_intr_holdoff(%struct.vge_softc*) #1

declare dso_local i32 @vge_cam_clear(%struct.vge_softc*) #1

declare dso_local i32 @vge_rxfilter(%struct.vge_softc*) #1

declare dso_local i32 @vge_setvlan(%struct.vge_softc*) #1

declare dso_local i32 @vge_ifmedia_upd_locked(%struct.vge_softc*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.vge_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
