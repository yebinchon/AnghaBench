; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hme/extr_if_hme.c_hme_init_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hme/extr_if_hme.c_hme_init_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hme_softc = type { i32, i32, i64, %struct.TYPE_2__, i32, %struct.ifnet* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ifnet = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"out of buffers; init aborted.\00", align 1
@HME_MACI_NCCNT = common dso_local global i32 0, align 4
@HME_MACI_FCCNT = common dso_local global i32 0, align 4
@HME_MACI_EXCNT = common dso_local global i32 0, align 4
@HME_MACI_LTCNT = common dso_local global i32 0, align 4
@HME_MACI_TXSIZE = common dso_local global i32 0, align 4
@HME_MAX_FRAMESIZE = common dso_local global i32 0, align 4
@HME_MACI_MACADDR0 = common dso_local global i32 0, align 4
@HME_MACI_MACADDR1 = common dso_local global i32 0, align 4
@HME_MACI_MACADDR2 = common dso_local global i32 0, align 4
@HME_MACI_RANDSEED = common dso_local global i32 0, align 4
@HME_ETXI_RING = common dso_local global i32 0, align 4
@HME_ETXI_RSIZE = common dso_local global i32 0, align 4
@HME_NTXDESC = common dso_local global i32 0, align 4
@HME_ERXI_RING = common dso_local global i32 0, align 4
@HME_MACI_RXSIZE = common dso_local global i32 0, align 4
@HME_SEBI_IMASK = common dso_local global i32 0, align 4
@HME_SEB_STAT_HOSTTOTX = common dso_local global i32 0, align 4
@HME_SEB_STAT_RXTOHOST = common dso_local global i32 0, align 4
@HME_SEB_STAT_TXALL = common dso_local global i32 0, align 4
@HME_SEB_STAT_TXPERR = common dso_local global i32 0, align 4
@HME_SEB_STAT_RCNTEXP = common dso_local global i32 0, align 4
@HME_SEB_STAT_ALL_ERRORS = common dso_local global i32 0, align 4
@HME_SEB_CFG_BURST16 = common dso_local global i32 0, align 4
@HME_SEB_CFG_BURST32 = common dso_local global i32 0, align 4
@HME_SEB_CFG_BURST64 = common dso_local global i32 0, align 4
@HME_SEBI_CFG = common dso_local global i32 0, align 4
@HME_ETXI_CFG = common dso_local global i32 0, align 4
@HME_ETX_CFG_DMAENABLE = common dso_local global i32 0, align 4
@HME_ERXI_CFG = common dso_local global i32 0, align 4
@HME_ERX_CFG_RINGSIZEMSK = common dso_local global i32 0, align 4
@HME_NRXDESC = common dso_local global i32 0, align 4
@HME_ERX_CFG_RINGSIZE32 = common dso_local global i32 0, align 4
@HME_ERX_CFG_RINGSIZE64 = common dso_local global i32 0, align 4
@HME_ERX_CFG_RINGSIZE128 = common dso_local global i32 0, align 4
@HME_ERX_CFG_RINGSIZE256 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"hme: invalid Receive Descriptor ring size\0A\00", align 1
@HME_ERX_CFG_FBO_MASK = common dso_local global i32 0, align 4
@HME_ERX_CFG_DMAENABLE = common dso_local global i32 0, align 4
@HME_RXOFFS = common dso_local global i32 0, align 4
@HME_ERX_CFG_FBO_SHIFT = common dso_local global i32 0, align 4
@ETHER_HDR_LEN = common dso_local global i32 0, align 4
@HME_ERX_CFG_CSUMSTART_SHIFT = common dso_local global i32 0, align 4
@HME_ERX_CFG_CSUMSTART_MASK = common dso_local global i32 0, align 4
@KTR_HME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"hme_init: programming ERX_CFG to %x\00", align 1
@HME_MACI_XIF = common dso_local global i32 0, align 4
@HME_MAC_XIF_OE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"hme_init: programming XIF to %x\00", align 1
@HME_MACI_RXCFG = common dso_local global i32 0, align 4
@HME_MAC_RXCFG_ENABLE = common dso_local global i32 0, align 4
@HME_MAC_RXCFG_DCRCS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"hme_init: programming RX_MAC to %x\00", align 1
@HME_MACI_TXCFG = common dso_local global i32 0, align 4
@HME_MAC_TXCFG_ENABLE = common dso_local global i32 0, align 4
@HME_MAC_TXCFG_DGIVEUP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"hme_init: programming TX_MAC to %x\00", align 1
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@hme_tick = common dso_local global i32 0, align 4
@HME_MIFI_IMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hme_softc*)* @hme_init_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hme_init_locked(%struct.hme_softc* %0) #0 {
  %2 = alloca %struct.hme_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hme_softc* %0, %struct.hme_softc** %2, align 8
  %7 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %8 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %7, i32 0, i32 5
  %9 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %9, %struct.ifnet** %3, align 8
  %10 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %11 = load i32, i32* @MA_OWNED, align 4
  %12 = call i32 @HME_LOCK_ASSERT(%struct.hme_softc* %10, i32 %11)
  %13 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %14 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %288

20:                                               ; preds = %1
  %21 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %22 = call i32 @hme_stop(%struct.hme_softc* %21)
  %23 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %24 = call i32 @hme_mifinit(%struct.hme_softc* %23)
  %25 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %26 = call i64 @hme_meminit(%struct.hme_softc* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %30 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @device_printf(i32 %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %288

33:                                               ; preds = %20
  %34 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %35 = load i32, i32* @HME_MACI_NCCNT, align 4
  %36 = call i32 @HME_MAC_WRITE_4(%struct.hme_softc* %34, i32 %35, i32 0)
  %37 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %38 = load i32, i32* @HME_MACI_FCCNT, align 4
  %39 = call i32 @HME_MAC_WRITE_4(%struct.hme_softc* %37, i32 %38, i32 0)
  %40 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %41 = load i32, i32* @HME_MACI_EXCNT, align 4
  %42 = call i32 @HME_MAC_WRITE_4(%struct.hme_softc* %40, i32 %41, i32 0)
  %43 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %44 = load i32, i32* @HME_MACI_LTCNT, align 4
  %45 = call i32 @HME_MAC_WRITE_4(%struct.hme_softc* %43, i32 %44, i32 0)
  %46 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %47 = load i32, i32* @HME_MACI_TXSIZE, align 4
  %48 = load i32, i32* @HME_MAX_FRAMESIZE, align 4
  %49 = call i32 @HME_MAC_WRITE_4(%struct.hme_softc* %46, i32 %47, i32 %48)
  %50 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %51 = call i32* @IF_LLADDR(%struct.ifnet* %50)
  store i32* %51, i32** %4, align 8
  %52 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %53 = load i32, i32* @HME_MACI_MACADDR0, align 4
  %54 = load i32*, i32** %4, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %56, 8
  %58 = load i32*, i32** %4, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %57, %60
  %62 = call i32 @HME_MAC_WRITE_4(%struct.hme_softc* %52, i32 %53, i32 %61)
  %63 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %64 = load i32, i32* @HME_MACI_MACADDR1, align 4
  %65 = load i32*, i32** %4, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 2
  %67 = load i32, i32* %66, align 4
  %68 = shl i32 %67, 8
  %69 = load i32*, i32** %4, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 3
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %68, %71
  %73 = call i32 @HME_MAC_WRITE_4(%struct.hme_softc* %63, i32 %64, i32 %72)
  %74 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %75 = load i32, i32* @HME_MACI_MACADDR2, align 4
  %76 = load i32*, i32** %4, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 4
  %78 = load i32, i32* %77, align 4
  %79 = shl i32 %78, 8
  %80 = load i32*, i32** %4, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 5
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %79, %82
  %84 = call i32 @HME_MAC_WRITE_4(%struct.hme_softc* %74, i32 %75, i32 %83)
  %85 = load i32*, i32** %4, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 4
  %87 = load i32, i32* %86, align 4
  %88 = shl i32 %87, 8
  %89 = load i32*, i32** %4, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 5
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %88, %91
  %93 = and i32 %92, 16383
  store i32 %93, i32* %6, align 4
  %94 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %95 = load i32, i32* @HME_MACI_RANDSEED, align 4
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @HME_MAC_WRITE_4(%struct.hme_softc* %94, i32 %95, i32 %96)
  %98 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %99 = call i32 @hme_setladrf(%struct.hme_softc* %98, i32 0)
  %100 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %101 = load i32, i32* @HME_ETXI_RING, align 4
  %102 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %103 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @HME_ETX_WRITE_4(%struct.hme_softc* %100, i32 %101, i32 %105)
  %107 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %108 = load i32, i32* @HME_ETXI_RSIZE, align 4
  %109 = load i32, i32* @HME_NTXDESC, align 4
  %110 = sdiv i32 %109, 16
  %111 = sub nsw i32 %110, 1
  %112 = call i32 @HME_ETX_WRITE_4(%struct.hme_softc* %107, i32 %108, i32 %111)
  %113 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %114 = load i32, i32* @HME_ERXI_RING, align 4
  %115 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %116 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @HME_ERX_WRITE_4(%struct.hme_softc* %113, i32 %114, i32 %118)
  %120 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %121 = load i32, i32* @HME_MACI_RXSIZE, align 4
  %122 = load i32, i32* @HME_MAX_FRAMESIZE, align 4
  %123 = call i32 @HME_MAC_WRITE_4(%struct.hme_softc* %120, i32 %121, i32 %122)
  %124 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %125 = load i32, i32* @HME_SEBI_IMASK, align 4
  %126 = load i32, i32* @HME_SEB_STAT_HOSTTOTX, align 4
  %127 = load i32, i32* @HME_SEB_STAT_RXTOHOST, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @HME_SEB_STAT_TXALL, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @HME_SEB_STAT_TXPERR, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @HME_SEB_STAT_RCNTEXP, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* @HME_SEB_STAT_ALL_ERRORS, align 4
  %136 = or i32 %134, %135
  %137 = xor i32 %136, -1
  %138 = call i32 @HME_SEB_WRITE_4(%struct.hme_softc* %124, i32 %125, i32 %137)
  %139 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %140 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  switch i32 %141, label %142 [
    i32 16, label %143
    i32 32, label %145
    i32 64, label %147
  ]

142:                                              ; preds = %33
  store i32 0, i32* %6, align 4
  br label %149

143:                                              ; preds = %33
  %144 = load i32, i32* @HME_SEB_CFG_BURST16, align 4
  store i32 %144, i32* %6, align 4
  br label %149

145:                                              ; preds = %33
  %146 = load i32, i32* @HME_SEB_CFG_BURST32, align 4
  store i32 %146, i32* %6, align 4
  br label %149

147:                                              ; preds = %33
  %148 = load i32, i32* @HME_SEB_CFG_BURST64, align 4
  store i32 %148, i32* %6, align 4
  br label %149

149:                                              ; preds = %147, %145, %143, %142
  %150 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %151 = load i32, i32* @HME_SEBI_CFG, align 4
  %152 = load i32, i32* %6, align 4
  %153 = call i32 @HME_SEB_WRITE_4(%struct.hme_softc* %150, i32 %151, i32 %152)
  %154 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %155 = load i32, i32* @HME_ETXI_CFG, align 4
  %156 = call i32 @HME_ETX_READ_4(%struct.hme_softc* %154, i32 %155)
  store i32 %156, i32* %6, align 4
  %157 = load i32, i32* @HME_ETX_CFG_DMAENABLE, align 4
  %158 = load i32, i32* %6, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %6, align 4
  %160 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %161 = load i32, i32* @HME_ETXI_CFG, align 4
  %162 = load i32, i32* %6, align 4
  %163 = call i32 @HME_ETX_WRITE_4(%struct.hme_softc* %160, i32 %161, i32 %162)
  %164 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %165 = load i32, i32* @HME_ERXI_CFG, align 4
  %166 = call i32 @HME_ERX_READ_4(%struct.hme_softc* %164, i32 %165)
  store i32 %166, i32* %6, align 4
  %167 = load i32, i32* @HME_ERX_CFG_RINGSIZEMSK, align 4
  %168 = xor i32 %167, -1
  %169 = load i32, i32* %6, align 4
  %170 = and i32 %169, %168
  store i32 %170, i32* %6, align 4
  %171 = load i32, i32* @HME_NRXDESC, align 4
  switch i32 %171, label %188 [
    i32 32, label %172
    i32 64, label %176
    i32 128, label %180
    i32 256, label %184
  ]

172:                                              ; preds = %149
  %173 = load i32, i32* @HME_ERX_CFG_RINGSIZE32, align 4
  %174 = load i32, i32* %6, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %6, align 4
  br label %190

176:                                              ; preds = %149
  %177 = load i32, i32* @HME_ERX_CFG_RINGSIZE64, align 4
  %178 = load i32, i32* %6, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %6, align 4
  br label %190

180:                                              ; preds = %149
  %181 = load i32, i32* @HME_ERX_CFG_RINGSIZE128, align 4
  %182 = load i32, i32* %6, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %6, align 4
  br label %190

184:                                              ; preds = %149
  %185 = load i32, i32* @HME_ERX_CFG_RINGSIZE256, align 4
  %186 = load i32, i32* %6, align 4
  %187 = or i32 %186, %185
  store i32 %187, i32* %6, align 4
  br label %190

188:                                              ; preds = %149
  %189 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %190

190:                                              ; preds = %188, %184, %180, %176, %172
  %191 = load i32, i32* @HME_ERX_CFG_FBO_MASK, align 4
  %192 = xor i32 %191, -1
  %193 = load i32, i32* %6, align 4
  %194 = and i32 %193, %192
  store i32 %194, i32* %6, align 4
  %195 = load i32, i32* @HME_ERX_CFG_DMAENABLE, align 4
  %196 = load i32, i32* @HME_RXOFFS, align 4
  %197 = load i32, i32* @HME_ERX_CFG_FBO_SHIFT, align 4
  %198 = shl i32 %196, %197
  %199 = or i32 %195, %198
  %200 = load i32, i32* %6, align 4
  %201 = or i32 %200, %199
  store i32 %201, i32* %6, align 4
  %202 = load i32, i32* @ETHER_HDR_LEN, align 4
  %203 = sext i32 %202 to i64
  %204 = add i64 %203, 4
  %205 = udiv i64 %204, 2
  %206 = trunc i64 %205 to i32
  store i32 %206, i32* %5, align 4
  %207 = load i32, i32* %5, align 4
  %208 = load i32, i32* @HME_ERX_CFG_CSUMSTART_SHIFT, align 4
  %209 = shl i32 %207, %208
  %210 = load i32, i32* @HME_ERX_CFG_CSUMSTART_MASK, align 4
  %211 = and i32 %209, %210
  store i32 %211, i32* %5, align 4
  %212 = load i32, i32* %5, align 4
  %213 = load i32, i32* %6, align 4
  %214 = or i32 %213, %212
  store i32 %214, i32* %6, align 4
  %215 = load i32, i32* @KTR_HME, align 4
  %216 = load i32, i32* %6, align 4
  %217 = call i32 @CTR1(i32 %215, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %216)
  %218 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %219 = load i32, i32* @HME_ERXI_CFG, align 4
  %220 = load i32, i32* %6, align 4
  %221 = call i32 @HME_ERX_WRITE_4(%struct.hme_softc* %218, i32 %219, i32 %220)
  %222 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %223 = load i32, i32* @HME_MACI_XIF, align 4
  %224 = call i32 @HME_MAC_READ_4(%struct.hme_softc* %222, i32 %223)
  store i32 %224, i32* %6, align 4
  %225 = load i32, i32* @HME_MAC_XIF_OE, align 4
  %226 = load i32, i32* %6, align 4
  %227 = or i32 %226, %225
  store i32 %227, i32* %6, align 4
  %228 = load i32, i32* @KTR_HME, align 4
  %229 = load i32, i32* %6, align 4
  %230 = call i32 @CTR1(i32 %228, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %229)
  %231 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %232 = load i32, i32* @HME_MACI_XIF, align 4
  %233 = load i32, i32* %6, align 4
  %234 = call i32 @HME_MAC_WRITE_4(%struct.hme_softc* %231, i32 %232, i32 %233)
  %235 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %236 = load i32, i32* @HME_MACI_RXCFG, align 4
  %237 = call i32 @HME_MAC_READ_4(%struct.hme_softc* %235, i32 %236)
  store i32 %237, i32* %6, align 4
  %238 = load i32, i32* @HME_MAC_RXCFG_ENABLE, align 4
  %239 = load i32, i32* %6, align 4
  %240 = or i32 %239, %238
  store i32 %240, i32* %6, align 4
  %241 = load i32, i32* @HME_MAC_RXCFG_DCRCS, align 4
  %242 = xor i32 %241, -1
  %243 = load i32, i32* %6, align 4
  %244 = and i32 %243, %242
  store i32 %244, i32* %6, align 4
  %245 = load i32, i32* @KTR_HME, align 4
  %246 = load i32, i32* %6, align 4
  %247 = call i32 @CTR1(i32 %245, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %246)
  %248 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %249 = load i32, i32* @HME_MACI_RXCFG, align 4
  %250 = load i32, i32* %6, align 4
  %251 = call i32 @HME_MAC_WRITE_4(%struct.hme_softc* %248, i32 %249, i32 %250)
  %252 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %253 = load i32, i32* @HME_MACI_TXCFG, align 4
  %254 = call i32 @HME_MAC_READ_4(%struct.hme_softc* %252, i32 %253)
  store i32 %254, i32* %6, align 4
  %255 = load i32, i32* @HME_MAC_TXCFG_ENABLE, align 4
  %256 = load i32, i32* @HME_MAC_TXCFG_DGIVEUP, align 4
  %257 = or i32 %255, %256
  %258 = load i32, i32* %6, align 4
  %259 = or i32 %258, %257
  store i32 %259, i32* %6, align 4
  %260 = load i32, i32* @KTR_HME, align 4
  %261 = load i32, i32* %6, align 4
  %262 = call i32 @CTR1(i32 %260, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %261)
  %263 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %264 = load i32, i32* @HME_MACI_TXCFG, align 4
  %265 = load i32, i32* %6, align 4
  %266 = call i32 @HME_MAC_WRITE_4(%struct.hme_softc* %263, i32 %264, i32 %265)
  %267 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %268 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %269 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = or i32 %270, %267
  store i32 %271, i32* %269, align 4
  %272 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %273 = xor i32 %272, -1
  %274 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %275 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = and i32 %276, %273
  store i32 %277, i32* %275, align 4
  %278 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %279 = call i32 @hme_mediachange_locked(%struct.hme_softc* %278)
  %280 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %281 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %280, i32 0, i32 2
  store i64 0, i64* %281, align 8
  %282 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %283 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %282, i32 0, i32 1
  %284 = load i32, i32* @hz, align 4
  %285 = load i32, i32* @hme_tick, align 4
  %286 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %287 = call i32 @callout_reset(i32* %283, i32 %284, i32 %285, %struct.hme_softc* %286)
  br label %288

288:                                              ; preds = %190, %28, %19
  ret void
}

declare dso_local i32 @HME_LOCK_ASSERT(%struct.hme_softc*, i32) #1

declare dso_local i32 @hme_stop(%struct.hme_softc*) #1

declare dso_local i32 @hme_mifinit(%struct.hme_softc*) #1

declare dso_local i64 @hme_meminit(%struct.hme_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @HME_MAC_WRITE_4(%struct.hme_softc*, i32, i32) #1

declare dso_local i32* @IF_LLADDR(%struct.ifnet*) #1

declare dso_local i32 @hme_setladrf(%struct.hme_softc*, i32) #1

declare dso_local i32 @HME_ETX_WRITE_4(%struct.hme_softc*, i32, i32) #1

declare dso_local i32 @HME_ERX_WRITE_4(%struct.hme_softc*, i32, i32) #1

declare dso_local i32 @HME_SEB_WRITE_4(%struct.hme_softc*, i32, i32) #1

declare dso_local i32 @HME_ETX_READ_4(%struct.hme_softc*, i32) #1

declare dso_local i32 @HME_ERX_READ_4(%struct.hme_softc*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @CTR1(i32, i8*, i32) #1

declare dso_local i32 @HME_MAC_READ_4(%struct.hme_softc*, i32) #1

declare dso_local i32 @hme_mediachange_locked(%struct.hme_softc*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.hme_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
