; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwohci.c_fwohci_itxbuf_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwohci.c_fwohci_itxbuf_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firewire_comm = type { i32 (%struct.firewire_comm*)* }
%struct.fwohci_softc = type { %struct.TYPE_6__, %struct.fwohci_dbch* }
%struct.TYPE_6__ = type { i32 }
%struct.fwohci_dbch = type { i32, i32, i32, i32, %struct.fw_xferq }
%struct.fw_xferq = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.fw_bulkxfer = type { i64, i64, i32 }
%struct.fwohcidb = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.fwohcidb_tr = type { i32, %struct.fwohcidb* }

@FWOHCI_DBCH_INIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@fw_bulkxfer = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@firewire_debug = common dso_local global i32 0, align 4
@OHCI_CNTL_CYCMATCH_S = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"stat 0x%x\0A\00", align 1
@OHCI_CNTL_DMA_ACTIVE = common dso_local global i32 0, align 4
@OHCI_IT_MASKCLR = common dso_local global i32 0, align 4
@OHCI_IT_STATCLR = common dso_local global i32 0, align 4
@OHCI_IT_MASK = common dso_local global i32 0, align 4
@FWOHCI_INTMASK = common dso_local global i32 0, align 4
@OHCI_INT_DMA_IT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"fwohci_itxbuf_enable: kick 0x%08x\0A\00", align 1
@ITX_CH = common dso_local global i64 0, align 8
@OHCI_CNTL_DMA_RUN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"cycle_match: 0x%04x->0x%04x\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"IT DMA underrun (0x%08x)\0A\00", align 1
@OHCI_CNTL_DMA_WAKE = common dso_local global i32 0, align 4
@OHCI_BRANCH_ALWAYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.firewire_comm*, i32)* @fwohci_itxbuf_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fwohci_itxbuf_enable(%struct.firewire_comm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.firewire_comm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fwohci_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca %struct.fwohci_dbch*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.fw_bulkxfer*, align 8
  %17 = alloca %struct.fw_bulkxfer*, align 8
  %18 = alloca %struct.fw_bulkxfer*, align 8
  %19 = alloca %struct.fw_xferq*, align 8
  %20 = alloca %struct.fwohcidb*, align 8
  store %struct.firewire_comm* %0, %struct.firewire_comm** %4, align 8
  store i32 %1, i32* %5, align 4
  %21 = load %struct.firewire_comm*, %struct.firewire_comm** %4, align 8
  %22 = bitcast %struct.firewire_comm* %21 to %struct.fwohci_softc*
  store %struct.fwohci_softc* %22, %struct.fwohci_softc** %6, align 8
  store i32 0, i32* %7, align 4
  %23 = load %struct.fwohci_softc*, %struct.fwohci_softc** %6, align 8
  %24 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %23, i32 0, i32 1
  %25 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %25, i64 %27
  store %struct.fwohci_dbch* %28, %struct.fwohci_dbch** %10, align 8
  %29 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %10, align 8
  %30 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %29, i32 0, i32 4
  store %struct.fw_xferq* %30, %struct.fw_xferq** %19, align 8
  %31 = load %struct.fw_xferq*, %struct.fw_xferq** %19, align 8
  %32 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = ashr i32 %33, 6
  %35 = and i32 %34, 3
  %36 = trunc i32 %35 to i16
  store i16 %36, i16* %8, align 2
  %37 = load %struct.fw_xferq*, %struct.fw_xferq** %19, align 8
  %38 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 63
  %41 = trunc i32 %40 to i16
  store i16 %41, i16* %9, align 2
  %42 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %10, align 8
  %43 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @FWOHCI_DBCH_INIT, align 4
  %46 = and i32 %44, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %75

48:                                               ; preds = %2
  %49 = load %struct.fw_xferq*, %struct.fw_xferq** %19, align 8
  %50 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.fw_xferq*, %struct.fw_xferq** %19, align 8
  %53 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %51, %54
  %56 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %10, align 8
  %57 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %10, align 8
  %59 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %58, i32 0, i32 2
  store i32 3, i32* %59, align 4
  %60 = load %struct.fwohci_softc*, %struct.fwohci_softc** %6, align 8
  %61 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %10, align 8
  %62 = call i32 @fwohci_db_init(%struct.fwohci_softc* %60, %struct.fwohci_dbch* %61)
  %63 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %10, align 8
  %64 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @FWOHCI_DBCH_INIT, align 4
  %67 = and i32 %65, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %48
  %70 = load i32, i32* @ENOMEM, align 4
  store i32 %70, i32* %3, align 4
  br label %317

71:                                               ; preds = %48
  %72 = load %struct.fwohci_softc*, %struct.fwohci_softc** %6, align 8
  %73 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %10, align 8
  %74 = call i32 @fwohci_tx_enable(%struct.fwohci_softc* %72, %struct.fwohci_dbch* %73)
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %71, %2
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load i32, i32* %7, align 4
  store i32 %79, i32* %3, align 4
  br label %317

80:                                               ; preds = %75
  %81 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %10, align 8
  %82 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = sub nsw i32 %83, 1
  store i32 %84, i32* %14, align 4
  %85 = call i32 (...) @splfw()
  store i32 %85, i32* %13, align 4
  %86 = load %struct.firewire_comm*, %struct.firewire_comm** %4, align 8
  %87 = call i32 @FW_GLOCK(%struct.firewire_comm* %86)
  %88 = load %struct.fw_xferq*, %struct.fw_xferq** %19, align 8
  %89 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %88, i32 0, i32 4
  %90 = load i32, i32* @fw_bulkxfer, align 4
  %91 = load i32, i32* @link, align 4
  %92 = call %struct.fw_bulkxfer* @STAILQ_LAST(i32* %89, i32 %90, i32 %91)
  store %struct.fw_bulkxfer* %92, %struct.fw_bulkxfer** %18, align 8
  br label %93

93:                                               ; preds = %145, %80
  %94 = load %struct.fw_xferq*, %struct.fw_xferq** %19, align 8
  %95 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %94, i32 0, i32 5
  %96 = call %struct.fw_bulkxfer* @STAILQ_FIRST(i32* %95)
  store %struct.fw_bulkxfer* %96, %struct.fw_bulkxfer** %17, align 8
  %97 = icmp ne %struct.fw_bulkxfer* %96, null
  br i1 %97, label %98, label %156

98:                                               ; preds = %93
  %99 = load %struct.fw_xferq*, %struct.fw_xferq** %19, align 8
  %100 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.fw_bulkxfer*, %struct.fw_bulkxfer** %17, align 8
  %103 = getelementptr inbounds %struct.fw_bulkxfer, %struct.fw_bulkxfer* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.fw_xferq*, %struct.fw_xferq** %19, align 8
  %106 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %109 = call i32 @fwdma_sync_multiseg(i32 %101, i32 %104, i32 %107, i32 %108)
  %110 = load %struct.fwohci_softc*, %struct.fwohci_softc** %6, align 8
  %111 = load i32, i32* %5, align 4
  %112 = load %struct.fw_bulkxfer*, %struct.fw_bulkxfer** %17, align 8
  %113 = call i32 @fwohci_txbufdb(%struct.fwohci_softc* %110, i32 %111, %struct.fw_bulkxfer* %112)
  %114 = load %struct.fw_bulkxfer*, %struct.fw_bulkxfer** %18, align 8
  %115 = icmp ne %struct.fw_bulkxfer* %114, null
  br i1 %115, label %116, label %145

116:                                              ; preds = %98
  %117 = load %struct.fw_bulkxfer*, %struct.fw_bulkxfer** %18, align 8
  %118 = getelementptr inbounds %struct.fw_bulkxfer, %struct.fw_bulkxfer* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = inttoptr i64 %119 to %struct.fwohcidb_tr*
  %121 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %120, i32 0, i32 1
  %122 = load %struct.fwohcidb*, %struct.fwohcidb** %121, align 8
  store %struct.fwohcidb* %122, %struct.fwohcidb** %20, align 8
  %123 = load %struct.fwohcidb*, %struct.fwohcidb** %20, align 8
  %124 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %123, i64 0
  %125 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %10, align 8
  %130 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @FWOHCI_DMA_SET(i32 %128, i32 %131)
  %133 = load %struct.fwohcidb*, %struct.fwohcidb** %20, align 8
  %134 = load i32, i32* %14, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %133, i64 %135
  %137 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %10, align 8
  %142 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @FWOHCI_DMA_SET(i32 %140, i32 %143)
  br label %145

145:                                              ; preds = %116, %98
  %146 = load %struct.fw_xferq*, %struct.fw_xferq** %19, align 8
  %147 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %146, i32 0, i32 5
  %148 = load i32, i32* @link, align 4
  %149 = call i32 @STAILQ_REMOVE_HEAD(i32* %147, i32 %148)
  %150 = load %struct.fw_xferq*, %struct.fw_xferq** %19, align 8
  %151 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %150, i32 0, i32 4
  %152 = load %struct.fw_bulkxfer*, %struct.fw_bulkxfer** %17, align 8
  %153 = load i32, i32* @link, align 4
  %154 = call i32 @STAILQ_INSERT_TAIL(i32* %151, %struct.fw_bulkxfer* %152, i32 %153)
  %155 = load %struct.fw_bulkxfer*, %struct.fw_bulkxfer** %17, align 8
  store %struct.fw_bulkxfer* %155, %struct.fw_bulkxfer** %18, align 8
  br label %93

156:                                              ; preds = %93
  %157 = load %struct.firewire_comm*, %struct.firewire_comm** %4, align 8
  %158 = call i32 @FW_GUNLOCK(%struct.firewire_comm* %157)
  %159 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %10, align 8
  %160 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %163 = call i32 @fwdma_sync_multiseg_all(i32 %161, i32 %162)
  %164 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %10, align 8
  %165 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %168 = call i32 @fwdma_sync_multiseg_all(i32 %166, i32 %167)
  %169 = load i32, i32* %13, align 4
  %170 = call i32 @splx(i32 %169)
  %171 = load %struct.fwohci_softc*, %struct.fwohci_softc** %6, align 8
  %172 = load i32, i32* %5, align 4
  %173 = call i32 @OHCI_ITCTL(i32 %172)
  %174 = call i32 @OREAD(%struct.fwohci_softc* %171, i32 %173)
  store i32 %174, i32* %15, align 4
  %175 = load i32, i32* @firewire_debug, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %185

177:                                              ; preds = %156
  %178 = load i32, i32* %15, align 4
  %179 = load i32, i32* @OHCI_CNTL_CYCMATCH_S, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %177
  %183 = load i32, i32* %15, align 4
  %184 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %183)
  br label %185

185:                                              ; preds = %182, %177, %156
  %186 = load i32, i32* %15, align 4
  %187 = load i32, i32* @OHCI_CNTL_DMA_ACTIVE, align 4
  %188 = load i32, i32* @OHCI_CNTL_CYCMATCH_S, align 4
  %189 = or i32 %187, %188
  %190 = and i32 %186, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %185
  store i32 0, i32* %3, align 4
  br label %317

193:                                              ; preds = %185
  %194 = load %struct.fwohci_softc*, %struct.fwohci_softc** %6, align 8
  %195 = load i32, i32* @OHCI_IT_MASKCLR, align 4
  %196 = load i32, i32* %5, align 4
  %197 = shl i32 1, %196
  %198 = call i32 @OWRITE(%struct.fwohci_softc* %194, i32 %195, i32 %197)
  %199 = load %struct.fwohci_softc*, %struct.fwohci_softc** %6, align 8
  %200 = load i32, i32* @OHCI_IT_STATCLR, align 4
  %201 = load i32, i32* %5, align 4
  %202 = shl i32 1, %201
  %203 = call i32 @OWRITE(%struct.fwohci_softc* %199, i32 %200, i32 %202)
  %204 = load %struct.fwohci_softc*, %struct.fwohci_softc** %6, align 8
  %205 = load i32, i32* @OHCI_IT_MASK, align 4
  %206 = load i32, i32* %5, align 4
  %207 = shl i32 1, %206
  %208 = call i32 @OWRITE(%struct.fwohci_softc* %204, i32 %205, i32 %207)
  %209 = load %struct.fwohci_softc*, %struct.fwohci_softc** %6, align 8
  %210 = load i32, i32* @FWOHCI_INTMASK, align 4
  %211 = load i32, i32* @OHCI_INT_DMA_IT, align 4
  %212 = call i32 @OWRITE(%struct.fwohci_softc* %209, i32 %210, i32 %211)
  %213 = load %struct.fw_xferq*, %struct.fw_xferq** %19, align 8
  %214 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %213, i32 0, i32 4
  %215 = call %struct.fw_bulkxfer* @STAILQ_FIRST(i32* %214)
  store %struct.fw_bulkxfer* %215, %struct.fw_bulkxfer** %16, align 8
  %216 = load %struct.fwohci_softc*, %struct.fwohci_softc** %6, align 8
  %217 = load i32, i32* %5, align 4
  %218 = call i32 @OHCI_ITCMD(i32 %217)
  %219 = load %struct.fw_bulkxfer*, %struct.fw_bulkxfer** %16, align 8
  %220 = getelementptr inbounds %struct.fw_bulkxfer, %struct.fw_bulkxfer* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = inttoptr i64 %221 to %struct.fwohcidb_tr*
  %223 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %10, align 8
  %226 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 4
  %228 = or i32 %224, %227
  %229 = call i32 @OWRITE(%struct.fwohci_softc* %216, i32 %218, i32 %228)
  %230 = load i32, i32* @firewire_debug, align 4
  %231 = icmp sgt i32 %230, 1
  br i1 %231, label %232, label %241

232:                                              ; preds = %193
  %233 = load i32, i32* %15, align 4
  %234 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %233)
  %235 = load %struct.fwohci_softc*, %struct.fwohci_softc** %6, align 8
  %236 = load i64, i64* @ITX_CH, align 8
  %237 = load i32, i32* %5, align 4
  %238 = sext i32 %237 to i64
  %239 = add nsw i64 %236, %238
  %240 = call i32 @dump_dma(%struct.fwohci_softc* %235, i64 %239)
  br label %241

241:                                              ; preds = %232, %193
  %242 = load i32, i32* %15, align 4
  %243 = load i32, i32* @OHCI_CNTL_DMA_RUN, align 4
  %244 = and i32 %242, %243
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %296

246:                                              ; preds = %241
  %247 = load %struct.fw_xferq*, %struct.fw_xferq** %19, align 8
  %248 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %247, i32 0, i32 3
  %249 = call %struct.fw_bulkxfer* @STAILQ_FIRST(i32* %248)
  %250 = icmp ne %struct.fw_bulkxfer* %249, null
  br i1 %250, label %251, label %252

251:                                              ; preds = %246
  br label %315

252:                                              ; preds = %246
  %253 = load %struct.fwohci_softc*, %struct.fwohci_softc** %6, align 8
  %254 = load i32, i32* %5, align 4
  %255 = call i32 @OHCI_ITCTLCLR(i32 %254)
  %256 = call i32 @OWRITE(%struct.fwohci_softc* %253, i32 %255, i32 -65536)
  %257 = load %struct.firewire_comm*, %struct.firewire_comm** %4, align 8
  %258 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %257, i32 0, i32 0
  %259 = load i32 (%struct.firewire_comm*)*, i32 (%struct.firewire_comm*)** %258, align 8
  %260 = load %struct.firewire_comm*, %struct.firewire_comm** %4, align 8
  %261 = call i32 %259(%struct.firewire_comm* %260)
  %262 = ashr i32 %261, 12
  %263 = and i32 %262, 32767
  store i32 %263, i32* %12, align 4
  %264 = load %struct.firewire_comm*, %struct.firewire_comm** %4, align 8
  %265 = load i32, i32* %12, align 4
  %266 = call i32 @fwohci_next_cycle(%struct.firewire_comm* %264, i32 %265)
  store i32 %266, i32* %11, align 4
  %267 = load %struct.fwohci_softc*, %struct.fwohci_softc** %6, align 8
  %268 = load i32, i32* %5, align 4
  %269 = call i32 @OHCI_ITCTL(i32 %268)
  %270 = load i32, i32* @OHCI_CNTL_CYCMATCH_S, align 4
  %271 = load i32, i32* %11, align 4
  %272 = shl i32 %271, 16
  %273 = or i32 %270, %272
  %274 = load i32, i32* @OHCI_CNTL_DMA_RUN, align 4
  %275 = or i32 %273, %274
  %276 = call i32 @OWRITE(%struct.fwohci_softc* %267, i32 %269, i32 %275)
  %277 = load i32, i32* @firewire_debug, align 4
  %278 = icmp sgt i32 %277, 1
  br i1 %278, label %279, label %295

279:                                              ; preds = %252
  %280 = load i32, i32* %12, align 4
  %281 = load i32, i32* %11, align 4
  %282 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %280, i32 %281)
  %283 = load %struct.fwohci_softc*, %struct.fwohci_softc** %6, align 8
  %284 = load i64, i64* @ITX_CH, align 8
  %285 = load i32, i32* %5, align 4
  %286 = sext i32 %285 to i64
  %287 = add nsw i64 %284, %286
  %288 = call i32 @dump_dma(%struct.fwohci_softc* %283, i64 %287)
  %289 = load %struct.fwohci_softc*, %struct.fwohci_softc** %6, align 8
  %290 = load i64, i64* @ITX_CH, align 8
  %291 = load i32, i32* %5, align 4
  %292 = sext i32 %291 to i64
  %293 = add nsw i64 %290, %292
  %294 = call i32 @dump_db(%struct.fwohci_softc* %289, i64 %293)
  br label %295

295:                                              ; preds = %279, %252
  br label %314

296:                                              ; preds = %241
  %297 = load i32, i32* %15, align 4
  %298 = load i32, i32* @OHCI_CNTL_CYCMATCH_S, align 4
  %299 = and i32 %297, %298
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %301, label %313

301:                                              ; preds = %296
  %302 = load %struct.fwohci_softc*, %struct.fwohci_softc** %6, align 8
  %303 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = load i32, i32* %15, align 4
  %307 = call i32 @device_printf(i32 %305, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %306)
  %308 = load %struct.fwohci_softc*, %struct.fwohci_softc** %6, align 8
  %309 = load i32, i32* %5, align 4
  %310 = call i32 @OHCI_ITCTL(i32 %309)
  %311 = load i32, i32* @OHCI_CNTL_DMA_WAKE, align 4
  %312 = call i32 @OWRITE(%struct.fwohci_softc* %308, i32 %310, i32 %311)
  br label %313

313:                                              ; preds = %301, %296
  br label %314

314:                                              ; preds = %313, %295
  br label %315

315:                                              ; preds = %314, %251
  %316 = load i32, i32* %7, align 4
  store i32 %316, i32* %3, align 4
  br label %317

317:                                              ; preds = %315, %192, %78, %69
  %318 = load i32, i32* %3, align 4
  ret i32 %318
}

declare dso_local i32 @fwohci_db_init(%struct.fwohci_softc*, %struct.fwohci_dbch*) #1

declare dso_local i32 @fwohci_tx_enable(%struct.fwohci_softc*, %struct.fwohci_dbch*) #1

declare dso_local i32 @splfw(...) #1

declare dso_local i32 @FW_GLOCK(%struct.firewire_comm*) #1

declare dso_local %struct.fw_bulkxfer* @STAILQ_LAST(i32*, i32, i32) #1

declare dso_local %struct.fw_bulkxfer* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @fwdma_sync_multiseg(i32, i32, i32, i32) #1

declare dso_local i32 @fwohci_txbufdb(%struct.fwohci_softc*, i32, %struct.fw_bulkxfer*) #1

declare dso_local i32 @FWOHCI_DMA_SET(i32, i32) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.fw_bulkxfer*, i32) #1

declare dso_local i32 @FW_GUNLOCK(%struct.firewire_comm*) #1

declare dso_local i32 @fwdma_sync_multiseg_all(i32, i32) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32 @OREAD(%struct.fwohci_softc*, i32) #1

declare dso_local i32 @OHCI_ITCTL(i32) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @OWRITE(%struct.fwohci_softc*, i32, i32) #1

declare dso_local i32 @OHCI_ITCMD(i32) #1

declare dso_local i32 @dump_dma(%struct.fwohci_softc*, i64) #1

declare dso_local i32 @OHCI_ITCTLCLR(i32) #1

declare dso_local i32 @fwohci_next_cycle(%struct.firewire_comm*, i32) #1

declare dso_local i32 @dump_db(%struct.fwohci_softc*, i64) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
