; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_stats_update_regs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_stats_update_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bge_softc = type { i64, i64, i32, %struct.bge_mac_stats, i32 }
%struct.bge_mac_stats = type { i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@BGE_TX_MAC_STATS_OCTETS = common dso_local global i32 0, align 4
@BGE_TX_MAC_STATS_COLLS = common dso_local global i32 0, align 4
@BGE_TX_MAC_STATS_XON_SENT = common dso_local global i32 0, align 4
@BGE_TX_MAC_STATS_XOFF_SENT = common dso_local global i32 0, align 4
@BGE_TX_MAC_STATS_ERRORS = common dso_local global i32 0, align 4
@BGE_TX_MAC_STATS_SINGLE_COLL = common dso_local global i32 0, align 4
@BGE_TX_MAC_STATS_MULTI_COLL = common dso_local global i32 0, align 4
@BGE_TX_MAC_STATS_DEFERRED = common dso_local global i32 0, align 4
@BGE_TX_MAC_STATS_EXCESS_COLL = common dso_local global i32 0, align 4
@BGE_TX_MAC_STATS_LATE_COLL = common dso_local global i32 0, align 4
@BGE_TX_MAC_STATS_UCAST = common dso_local global i32 0, align 4
@BGE_TX_MAC_STATS_MCAST = common dso_local global i32 0, align 4
@BGE_TX_MAC_STATS_BCAST = common dso_local global i32 0, align 4
@BGE_RX_MAC_STATS_OCTESTS = common dso_local global i32 0, align 4
@BGE_RX_MAC_STATS_FRAGMENTS = common dso_local global i32 0, align 4
@BGE_RX_MAC_STATS_UCAST = common dso_local global i32 0, align 4
@BGE_RX_MAC_STATS_MCAST = common dso_local global i32 0, align 4
@BGE_RX_MAC_STATS_BCAST = common dso_local global i32 0, align 4
@BGE_RX_MAC_STATS_FCS_ERRORS = common dso_local global i32 0, align 4
@BGE_RX_MAC_STATS_ALGIN_ERRORS = common dso_local global i32 0, align 4
@BGE_RX_MAC_STATS_XON_RCVD = common dso_local global i32 0, align 4
@BGE_RX_MAC_STATS_XOFF_RCVD = common dso_local global i32 0, align 4
@BGE_RX_MAC_STATS_CTRL_RCVD = common dso_local global i32 0, align 4
@BGE_RX_MAC_STATS_XOFF_ENTERED = common dso_local global i32 0, align 4
@BGE_RX_MAC_STATS_FRAME_TOO_LONG = common dso_local global i32 0, align 4
@BGE_RX_MAC_STATS_JABBERS = common dso_local global i32 0, align 4
@BGE_RX_MAC_STATS_UNDERSIZE = common dso_local global i32 0, align 4
@BGE_RXLP_LOCSTAT_FILTDROP = common dso_local global i32 0, align 4
@BGE_RXLP_LOCSTAT_DMA_WRQ_FULL = common dso_local global i32 0, align 4
@BGE_RXLP_LOCSTAT_DMA_HPWRQ_FULL = common dso_local global i32 0, align 4
@BGE_RXLP_LOCSTAT_OUT_OF_BDS = common dso_local global i32 0, align 4
@BGE_ASICREV_BCM5717 = common dso_local global i64 0, align 8
@BGE_CHIPID_BCM5719_A0 = common dso_local global i64 0, align 8
@BGE_CHIPID_BCM5720_A0 = common dso_local global i64 0, align 8
@BGE_RXLP_LOCSTAT_IFIN_DROPS = common dso_local global i32 0, align 4
@BGE_RXLP_LOCSTAT_IFIN_ERRORS = common dso_local global i32 0, align 4
@BGE_RXLP_LOCSTAT_RXTHRESH_HIT = common dso_local global i32 0, align 4
@BGE_FLAG_RDMA_BUG = common dso_local global i32 0, align 4
@BGE_NUM_RDMA_CHANNELS = common dso_local global i64 0, align 8
@BGE_RDMA_LSO_CRPTEN_CTRL = common dso_local global i32 0, align 4
@BGE_ASICREV_BCM5719 = common dso_local global i64 0, align 8
@BGE_RDMA_TX_LENGTH_WA_5719 = common dso_local global i64 0, align 8
@BGE_RDMA_TX_LENGTH_WA_5720 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bge_softc*)* @bge_stats_update_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bge_stats_update_regs(%struct.bge_softc* %0) #0 {
  %2 = alloca %struct.bge_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bge_mac_stats*, align 8
  %5 = alloca i64, align 8
  store %struct.bge_softc* %0, %struct.bge_softc** %2, align 8
  %6 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %7 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %3, align 4
  %9 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %10 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %9, i32 0, i32 3
  store %struct.bge_mac_stats* %10, %struct.bge_mac_stats** %4, align 8
  %11 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %12 = load i32, i32* @BGE_TX_MAC_STATS_OCTETS, align 4
  %13 = call i64 @CSR_READ_4(%struct.bge_softc* %11, i32 %12)
  %14 = load %struct.bge_mac_stats*, %struct.bge_mac_stats** %4, align 8
  %15 = getelementptr inbounds %struct.bge_mac_stats, %struct.bge_mac_stats* %14, i32 0, i32 33
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %17, %13
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %15, align 8
  %20 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %21 = load i32, i32* @BGE_TX_MAC_STATS_COLLS, align 4
  %22 = call i64 @CSR_READ_4(%struct.bge_softc* %20, i32 %21)
  %23 = load %struct.bge_mac_stats*, %struct.bge_mac_stats** %4, align 8
  %24 = getelementptr inbounds %struct.bge_mac_stats, %struct.bge_mac_stats* %23, i32 0, i32 32
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %22
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %24, align 4
  %29 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %30 = load i32, i32* @BGE_TX_MAC_STATS_XON_SENT, align 4
  %31 = call i64 @CSR_READ_4(%struct.bge_softc* %29, i32 %30)
  %32 = load %struct.bge_mac_stats*, %struct.bge_mac_stats** %4, align 8
  %33 = getelementptr inbounds %struct.bge_mac_stats, %struct.bge_mac_stats* %32, i32 0, i32 31
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %31
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %33, align 8
  %38 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %39 = load i32, i32* @BGE_TX_MAC_STATS_XOFF_SENT, align 4
  %40 = call i64 @CSR_READ_4(%struct.bge_softc* %38, i32 %39)
  %41 = load %struct.bge_mac_stats*, %struct.bge_mac_stats** %4, align 8
  %42 = getelementptr inbounds %struct.bge_mac_stats, %struct.bge_mac_stats* %41, i32 0, i32 30
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %40
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %42, align 4
  %47 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %48 = load i32, i32* @BGE_TX_MAC_STATS_ERRORS, align 4
  %49 = call i64 @CSR_READ_4(%struct.bge_softc* %47, i32 %48)
  %50 = load %struct.bge_mac_stats*, %struct.bge_mac_stats** %4, align 8
  %51 = getelementptr inbounds %struct.bge_mac_stats, %struct.bge_mac_stats* %50, i32 0, i32 29
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %49
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %51, align 8
  %56 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %57 = load i32, i32* @BGE_TX_MAC_STATS_SINGLE_COLL, align 4
  %58 = call i64 @CSR_READ_4(%struct.bge_softc* %56, i32 %57)
  %59 = load %struct.bge_mac_stats*, %struct.bge_mac_stats** %4, align 8
  %60 = getelementptr inbounds %struct.bge_mac_stats, %struct.bge_mac_stats* %59, i32 0, i32 28
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, %58
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %60, align 4
  %65 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %66 = load i32, i32* @BGE_TX_MAC_STATS_MULTI_COLL, align 4
  %67 = call i64 @CSR_READ_4(%struct.bge_softc* %65, i32 %66)
  %68 = load %struct.bge_mac_stats*, %struct.bge_mac_stats** %4, align 8
  %69 = getelementptr inbounds %struct.bge_mac_stats, %struct.bge_mac_stats* %68, i32 0, i32 27
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %67
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %69, align 8
  %74 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %75 = load i32, i32* @BGE_TX_MAC_STATS_DEFERRED, align 4
  %76 = call i64 @CSR_READ_4(%struct.bge_softc* %74, i32 %75)
  %77 = load %struct.bge_mac_stats*, %struct.bge_mac_stats** %4, align 8
  %78 = getelementptr inbounds %struct.bge_mac_stats, %struct.bge_mac_stats* %77, i32 0, i32 26
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %80, %76
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %78, align 4
  %83 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %84 = load i32, i32* @BGE_TX_MAC_STATS_EXCESS_COLL, align 4
  %85 = call i64 @CSR_READ_4(%struct.bge_softc* %83, i32 %84)
  %86 = load %struct.bge_mac_stats*, %struct.bge_mac_stats** %4, align 8
  %87 = getelementptr inbounds %struct.bge_mac_stats, %struct.bge_mac_stats* %86, i32 0, i32 25
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %89, %85
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %87, align 8
  %92 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %93 = load i32, i32* @BGE_TX_MAC_STATS_LATE_COLL, align 4
  %94 = call i64 @CSR_READ_4(%struct.bge_softc* %92, i32 %93)
  %95 = load %struct.bge_mac_stats*, %struct.bge_mac_stats** %4, align 8
  %96 = getelementptr inbounds %struct.bge_mac_stats, %struct.bge_mac_stats* %95, i32 0, i32 24
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %98, %94
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %96, align 4
  %101 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %102 = load i32, i32* @BGE_TX_MAC_STATS_UCAST, align 4
  %103 = call i64 @CSR_READ_4(%struct.bge_softc* %101, i32 %102)
  %104 = load %struct.bge_mac_stats*, %struct.bge_mac_stats** %4, align 8
  %105 = getelementptr inbounds %struct.bge_mac_stats, %struct.bge_mac_stats* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %106, %103
  store i64 %107, i64* %105, align 8
  %108 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %109 = load i32, i32* @BGE_TX_MAC_STATS_MCAST, align 4
  %110 = call i64 @CSR_READ_4(%struct.bge_softc* %108, i32 %109)
  %111 = load %struct.bge_mac_stats*, %struct.bge_mac_stats** %4, align 8
  %112 = getelementptr inbounds %struct.bge_mac_stats, %struct.bge_mac_stats* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %113, %110
  store i64 %114, i64* %112, align 8
  %115 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %116 = load i32, i32* @BGE_TX_MAC_STATS_BCAST, align 4
  %117 = call i64 @CSR_READ_4(%struct.bge_softc* %115, i32 %116)
  %118 = load %struct.bge_mac_stats*, %struct.bge_mac_stats** %4, align 8
  %119 = getelementptr inbounds %struct.bge_mac_stats, %struct.bge_mac_stats* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %120, %117
  store i64 %121, i64* %119, align 8
  %122 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %123 = load i32, i32* @BGE_RX_MAC_STATS_OCTESTS, align 4
  %124 = call i64 @CSR_READ_4(%struct.bge_softc* %122, i32 %123)
  %125 = load %struct.bge_mac_stats*, %struct.bge_mac_stats** %4, align 8
  %126 = getelementptr inbounds %struct.bge_mac_stats, %struct.bge_mac_stats* %125, i32 0, i32 23
  %127 = load i32, i32* %126, align 8
  %128 = sext i32 %127 to i64
  %129 = add nsw i64 %128, %124
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %126, align 8
  %131 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %132 = load i32, i32* @BGE_RX_MAC_STATS_FRAGMENTS, align 4
  %133 = call i64 @CSR_READ_4(%struct.bge_softc* %131, i32 %132)
  %134 = load %struct.bge_mac_stats*, %struct.bge_mac_stats** %4, align 8
  %135 = getelementptr inbounds %struct.bge_mac_stats, %struct.bge_mac_stats* %134, i32 0, i32 22
  %136 = load i32, i32* %135, align 4
  %137 = sext i32 %136 to i64
  %138 = add nsw i64 %137, %133
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %135, align 4
  %140 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %141 = load i32, i32* @BGE_RX_MAC_STATS_UCAST, align 4
  %142 = call i64 @CSR_READ_4(%struct.bge_softc* %140, i32 %141)
  %143 = load %struct.bge_mac_stats*, %struct.bge_mac_stats** %4, align 8
  %144 = getelementptr inbounds %struct.bge_mac_stats, %struct.bge_mac_stats* %143, i32 0, i32 21
  %145 = load i32, i32* %144, align 8
  %146 = sext i32 %145 to i64
  %147 = add nsw i64 %146, %142
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %144, align 8
  %149 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %150 = load i32, i32* @BGE_RX_MAC_STATS_MCAST, align 4
  %151 = call i64 @CSR_READ_4(%struct.bge_softc* %149, i32 %150)
  %152 = load %struct.bge_mac_stats*, %struct.bge_mac_stats** %4, align 8
  %153 = getelementptr inbounds %struct.bge_mac_stats, %struct.bge_mac_stats* %152, i32 0, i32 20
  %154 = load i32, i32* %153, align 4
  %155 = sext i32 %154 to i64
  %156 = add nsw i64 %155, %151
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %153, align 4
  %158 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %159 = load i32, i32* @BGE_RX_MAC_STATS_BCAST, align 4
  %160 = call i64 @CSR_READ_4(%struct.bge_softc* %158, i32 %159)
  %161 = load %struct.bge_mac_stats*, %struct.bge_mac_stats** %4, align 8
  %162 = getelementptr inbounds %struct.bge_mac_stats, %struct.bge_mac_stats* %161, i32 0, i32 19
  %163 = load i32, i32* %162, align 8
  %164 = sext i32 %163 to i64
  %165 = add nsw i64 %164, %160
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %162, align 8
  %167 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %168 = load i32, i32* @BGE_RX_MAC_STATS_FCS_ERRORS, align 4
  %169 = call i64 @CSR_READ_4(%struct.bge_softc* %167, i32 %168)
  %170 = load %struct.bge_mac_stats*, %struct.bge_mac_stats** %4, align 8
  %171 = getelementptr inbounds %struct.bge_mac_stats, %struct.bge_mac_stats* %170, i32 0, i32 18
  %172 = load i32, i32* %171, align 4
  %173 = sext i32 %172 to i64
  %174 = add nsw i64 %173, %169
  %175 = trunc i64 %174 to i32
  store i32 %175, i32* %171, align 4
  %176 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %177 = load i32, i32* @BGE_RX_MAC_STATS_ALGIN_ERRORS, align 4
  %178 = call i64 @CSR_READ_4(%struct.bge_softc* %176, i32 %177)
  %179 = load %struct.bge_mac_stats*, %struct.bge_mac_stats** %4, align 8
  %180 = getelementptr inbounds %struct.bge_mac_stats, %struct.bge_mac_stats* %179, i32 0, i32 17
  %181 = load i32, i32* %180, align 8
  %182 = sext i32 %181 to i64
  %183 = add nsw i64 %182, %178
  %184 = trunc i64 %183 to i32
  store i32 %184, i32* %180, align 8
  %185 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %186 = load i32, i32* @BGE_RX_MAC_STATS_XON_RCVD, align 4
  %187 = call i64 @CSR_READ_4(%struct.bge_softc* %185, i32 %186)
  %188 = load %struct.bge_mac_stats*, %struct.bge_mac_stats** %4, align 8
  %189 = getelementptr inbounds %struct.bge_mac_stats, %struct.bge_mac_stats* %188, i32 0, i32 16
  %190 = load i32, i32* %189, align 4
  %191 = sext i32 %190 to i64
  %192 = add nsw i64 %191, %187
  %193 = trunc i64 %192 to i32
  store i32 %193, i32* %189, align 4
  %194 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %195 = load i32, i32* @BGE_RX_MAC_STATS_XOFF_RCVD, align 4
  %196 = call i64 @CSR_READ_4(%struct.bge_softc* %194, i32 %195)
  %197 = load %struct.bge_mac_stats*, %struct.bge_mac_stats** %4, align 8
  %198 = getelementptr inbounds %struct.bge_mac_stats, %struct.bge_mac_stats* %197, i32 0, i32 15
  %199 = load i32, i32* %198, align 8
  %200 = sext i32 %199 to i64
  %201 = add nsw i64 %200, %196
  %202 = trunc i64 %201 to i32
  store i32 %202, i32* %198, align 8
  %203 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %204 = load i32, i32* @BGE_RX_MAC_STATS_CTRL_RCVD, align 4
  %205 = call i64 @CSR_READ_4(%struct.bge_softc* %203, i32 %204)
  %206 = load %struct.bge_mac_stats*, %struct.bge_mac_stats** %4, align 8
  %207 = getelementptr inbounds %struct.bge_mac_stats, %struct.bge_mac_stats* %206, i32 0, i32 14
  %208 = load i32, i32* %207, align 4
  %209 = sext i32 %208 to i64
  %210 = add nsw i64 %209, %205
  %211 = trunc i64 %210 to i32
  store i32 %211, i32* %207, align 4
  %212 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %213 = load i32, i32* @BGE_RX_MAC_STATS_XOFF_ENTERED, align 4
  %214 = call i64 @CSR_READ_4(%struct.bge_softc* %212, i32 %213)
  %215 = load %struct.bge_mac_stats*, %struct.bge_mac_stats** %4, align 8
  %216 = getelementptr inbounds %struct.bge_mac_stats, %struct.bge_mac_stats* %215, i32 0, i32 13
  %217 = load i32, i32* %216, align 8
  %218 = sext i32 %217 to i64
  %219 = add nsw i64 %218, %214
  %220 = trunc i64 %219 to i32
  store i32 %220, i32* %216, align 8
  %221 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %222 = load i32, i32* @BGE_RX_MAC_STATS_FRAME_TOO_LONG, align 4
  %223 = call i64 @CSR_READ_4(%struct.bge_softc* %221, i32 %222)
  %224 = load %struct.bge_mac_stats*, %struct.bge_mac_stats** %4, align 8
  %225 = getelementptr inbounds %struct.bge_mac_stats, %struct.bge_mac_stats* %224, i32 0, i32 12
  %226 = load i32, i32* %225, align 4
  %227 = sext i32 %226 to i64
  %228 = add nsw i64 %227, %223
  %229 = trunc i64 %228 to i32
  store i32 %229, i32* %225, align 4
  %230 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %231 = load i32, i32* @BGE_RX_MAC_STATS_JABBERS, align 4
  %232 = call i64 @CSR_READ_4(%struct.bge_softc* %230, i32 %231)
  %233 = load %struct.bge_mac_stats*, %struct.bge_mac_stats** %4, align 8
  %234 = getelementptr inbounds %struct.bge_mac_stats, %struct.bge_mac_stats* %233, i32 0, i32 11
  %235 = load i32, i32* %234, align 8
  %236 = sext i32 %235 to i64
  %237 = add nsw i64 %236, %232
  %238 = trunc i64 %237 to i32
  store i32 %238, i32* %234, align 8
  %239 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %240 = load i32, i32* @BGE_RX_MAC_STATS_UNDERSIZE, align 4
  %241 = call i64 @CSR_READ_4(%struct.bge_softc* %239, i32 %240)
  %242 = load %struct.bge_mac_stats*, %struct.bge_mac_stats** %4, align 8
  %243 = getelementptr inbounds %struct.bge_mac_stats, %struct.bge_mac_stats* %242, i32 0, i32 10
  %244 = load i32, i32* %243, align 4
  %245 = sext i32 %244 to i64
  %246 = add nsw i64 %245, %241
  %247 = trunc i64 %246 to i32
  store i32 %247, i32* %243, align 4
  %248 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %249 = load i32, i32* @BGE_RXLP_LOCSTAT_FILTDROP, align 4
  %250 = call i64 @CSR_READ_4(%struct.bge_softc* %248, i32 %249)
  %251 = load %struct.bge_mac_stats*, %struct.bge_mac_stats** %4, align 8
  %252 = getelementptr inbounds %struct.bge_mac_stats, %struct.bge_mac_stats* %251, i32 0, i32 9
  %253 = load i32, i32* %252, align 8
  %254 = sext i32 %253 to i64
  %255 = add nsw i64 %254, %250
  %256 = trunc i64 %255 to i32
  store i32 %256, i32* %252, align 8
  %257 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %258 = load i32, i32* @BGE_RXLP_LOCSTAT_DMA_WRQ_FULL, align 4
  %259 = call i64 @CSR_READ_4(%struct.bge_softc* %257, i32 %258)
  %260 = load %struct.bge_mac_stats*, %struct.bge_mac_stats** %4, align 8
  %261 = getelementptr inbounds %struct.bge_mac_stats, %struct.bge_mac_stats* %260, i32 0, i32 8
  %262 = load i32, i32* %261, align 4
  %263 = sext i32 %262 to i64
  %264 = add nsw i64 %263, %259
  %265 = trunc i64 %264 to i32
  store i32 %265, i32* %261, align 4
  %266 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %267 = load i32, i32* @BGE_RXLP_LOCSTAT_DMA_HPWRQ_FULL, align 4
  %268 = call i64 @CSR_READ_4(%struct.bge_softc* %266, i32 %267)
  %269 = load %struct.bge_mac_stats*, %struct.bge_mac_stats** %4, align 8
  %270 = getelementptr inbounds %struct.bge_mac_stats, %struct.bge_mac_stats* %269, i32 0, i32 7
  %271 = load i32, i32* %270, align 8
  %272 = sext i32 %271 to i64
  %273 = add nsw i64 %272, %268
  %274 = trunc i64 %273 to i32
  store i32 %274, i32* %270, align 8
  %275 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %276 = load i32, i32* @BGE_RXLP_LOCSTAT_OUT_OF_BDS, align 4
  %277 = call i64 @CSR_READ_4(%struct.bge_softc* %275, i32 %276)
  %278 = load %struct.bge_mac_stats*, %struct.bge_mac_stats** %4, align 8
  %279 = getelementptr inbounds %struct.bge_mac_stats, %struct.bge_mac_stats* %278, i32 0, i32 6
  %280 = load i32, i32* %279, align 4
  %281 = sext i32 %280 to i64
  %282 = add nsw i64 %281, %277
  %283 = trunc i64 %282 to i32
  store i32 %283, i32* %279, align 4
  %284 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %285 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = load i64, i64* @BGE_ASICREV_BCM5717, align 8
  %288 = icmp ne i64 %286, %287
  br i1 %288, label %289, label %311

289:                                              ; preds = %1
  %290 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %291 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %290, i32 0, i32 1
  %292 = load i64, i64* %291, align 8
  %293 = load i64, i64* @BGE_CHIPID_BCM5719_A0, align 8
  %294 = icmp ne i64 %292, %293
  br i1 %294, label %295, label %311

295:                                              ; preds = %289
  %296 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %297 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %296, i32 0, i32 1
  %298 = load i64, i64* %297, align 8
  %299 = load i64, i64* @BGE_CHIPID_BCM5720_A0, align 8
  %300 = icmp ne i64 %298, %299
  br i1 %300, label %301, label %311

301:                                              ; preds = %295
  %302 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %303 = load i32, i32* @BGE_RXLP_LOCSTAT_IFIN_DROPS, align 4
  %304 = call i64 @CSR_READ_4(%struct.bge_softc* %302, i32 %303)
  %305 = load %struct.bge_mac_stats*, %struct.bge_mac_stats** %4, align 8
  %306 = getelementptr inbounds %struct.bge_mac_stats, %struct.bge_mac_stats* %305, i32 0, i32 5
  %307 = load i32, i32* %306, align 8
  %308 = sext i32 %307 to i64
  %309 = add nsw i64 %308, %304
  %310 = trunc i64 %309 to i32
  store i32 %310, i32* %306, align 8
  br label %311

311:                                              ; preds = %301, %295, %289, %1
  %312 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %313 = load i32, i32* @BGE_RXLP_LOCSTAT_IFIN_ERRORS, align 4
  %314 = call i64 @CSR_READ_4(%struct.bge_softc* %312, i32 %313)
  %315 = load %struct.bge_mac_stats*, %struct.bge_mac_stats** %4, align 8
  %316 = getelementptr inbounds %struct.bge_mac_stats, %struct.bge_mac_stats* %315, i32 0, i32 4
  %317 = load i32, i32* %316, align 4
  %318 = sext i32 %317 to i64
  %319 = add nsw i64 %318, %314
  %320 = trunc i64 %319 to i32
  store i32 %320, i32* %316, align 4
  %321 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %322 = load i32, i32* @BGE_RXLP_LOCSTAT_RXTHRESH_HIT, align 4
  %323 = call i64 @CSR_READ_4(%struct.bge_softc* %321, i32 %322)
  %324 = load %struct.bge_mac_stats*, %struct.bge_mac_stats** %4, align 8
  %325 = getelementptr inbounds %struct.bge_mac_stats, %struct.bge_mac_stats* %324, i32 0, i32 3
  %326 = load i32, i32* %325, align 8
  %327 = sext i32 %326 to i64
  %328 = add nsw i64 %327, %323
  %329 = trunc i64 %328 to i32
  store i32 %329, i32* %325, align 8
  %330 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %331 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %330, i32 0, i32 2
  %332 = load i32, i32* %331, align 8
  %333 = load i32, i32* @BGE_FLAG_RDMA_BUG, align 4
  %334 = and i32 %332, %333
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %381

336:                                              ; preds = %311
  %337 = load %struct.bge_mac_stats*, %struct.bge_mac_stats** %4, align 8
  %338 = getelementptr inbounds %struct.bge_mac_stats, %struct.bge_mac_stats* %337, i32 0, i32 0
  %339 = load i64, i64* %338, align 8
  %340 = load %struct.bge_mac_stats*, %struct.bge_mac_stats** %4, align 8
  %341 = getelementptr inbounds %struct.bge_mac_stats, %struct.bge_mac_stats* %340, i32 0, i32 1
  %342 = load i64, i64* %341, align 8
  %343 = add nsw i64 %339, %342
  %344 = load %struct.bge_mac_stats*, %struct.bge_mac_stats** %4, align 8
  %345 = getelementptr inbounds %struct.bge_mac_stats, %struct.bge_mac_stats* %344, i32 0, i32 2
  %346 = load i64, i64* %345, align 8
  %347 = add nsw i64 %343, %346
  %348 = load i64, i64* @BGE_NUM_RDMA_CHANNELS, align 8
  %349 = icmp sgt i64 %347, %348
  br i1 %349, label %350, label %380

350:                                              ; preds = %336
  %351 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %352 = load i32, i32* @BGE_RDMA_LSO_CRPTEN_CTRL, align 4
  %353 = call i64 @CSR_READ_4(%struct.bge_softc* %351, i32 %352)
  store i64 %353, i64* %5, align 8
  %354 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %355 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %354, i32 0, i32 0
  %356 = load i64, i64* %355, align 8
  %357 = load i64, i64* @BGE_ASICREV_BCM5719, align 8
  %358 = icmp eq i64 %356, %357
  br i1 %358, label %359, label %364

359:                                              ; preds = %350
  %360 = load i64, i64* @BGE_RDMA_TX_LENGTH_WA_5719, align 8
  %361 = xor i64 %360, -1
  %362 = load i64, i64* %5, align 8
  %363 = and i64 %362, %361
  store i64 %363, i64* %5, align 8
  br label %369

364:                                              ; preds = %350
  %365 = load i64, i64* @BGE_RDMA_TX_LENGTH_WA_5720, align 8
  %366 = xor i64 %365, -1
  %367 = load i64, i64* %5, align 8
  %368 = and i64 %367, %366
  store i64 %368, i64* %5, align 8
  br label %369

369:                                              ; preds = %364, %359
  %370 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %371 = load i32, i32* @BGE_RDMA_LSO_CRPTEN_CTRL, align 4
  %372 = load i64, i64* %5, align 8
  %373 = call i32 @CSR_WRITE_4(%struct.bge_softc* %370, i32 %371, i64 %372)
  %374 = load i32, i32* @BGE_FLAG_RDMA_BUG, align 4
  %375 = xor i32 %374, -1
  %376 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %377 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %376, i32 0, i32 2
  %378 = load i32, i32* %377, align 8
  %379 = and i32 %378, %375
  store i32 %379, i32* %377, align 8
  br label %380

380:                                              ; preds = %369, %336
  br label %381

381:                                              ; preds = %380, %311
  ret void
}

declare dso_local i64 @CSR_READ_4(%struct.bge_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.bge_softc*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
