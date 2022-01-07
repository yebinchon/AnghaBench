; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwohci.c_fwohci_txd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwohci.c_fwohci_txd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwohci_softc = type { %struct.TYPE_8__, %struct.fwohci_dbch, %struct.fwohci_dbch }
%struct.TYPE_8__ = type { i32 }
%struct.fwohci_dbch = type { i32, %struct.TYPE_10__, %struct.fwohcidb_tr*, %struct.fwohcidb_tr*, i32, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.fwohcidb_tr = type { %struct.fw_xfer*, i32 }
%struct.fw_xfer = type { i32, i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.fwohcidb = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.firewire_comm = type { i64 }

@OHCI_ATQOFF = common dso_local global i32 0, align 4
@ATRQ_CH = common dso_local global i32 0, align 4
@OHCI_ATSOFF = common dso_local global i32 0, align 4
@ATRS_CH = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@OHCI_STATUS_SHIFT = common dso_local global i32 0, align 4
@OHCI_CNTL_DMA_ACTIVE = common dso_local global i32 0, align 4
@FWBUSINIT = common dso_local global i64 0, align 8
@firewire_debug = common dso_local global i32 0, align 4
@OHCI_CNTL_DMA_DEAD = common dso_local global i32 0, align 4
@OHCI_CNTL_DMA_RUN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"force reset AT FIFO\0A\00", align 1
@OHCI_HCCCTLCLR = common dso_local global i32 0, align 4
@OHCI_HCC_LINKEN = common dso_local global i32 0, align 4
@OHCI_HCCCTL = common dso_local global i32 0, align 4
@OHCI_HCC_LPS = common dso_local global i32 0, align 4
@FWOHCIEV_MASK = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FWXF_RCVD = common dso_local global i32 0, align 4
@FWXF_SENT = common dso_local global i32 0, align 4
@FWXF_BUSY = common dso_local global i32 0, align 4
@FWXF_SENTERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"this shouldn't happen\0A\00", align 1
@link = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"queued > 0\0A\00", align 1
@FWOHCI_DBCH_FULL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"make free slot\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fwohci_txd(%struct.fwohci_softc* %0, %struct.fwohci_dbch* %1) #0 {
  %3 = alloca %struct.fwohci_softc*, align 8
  %4 = alloca %struct.fwohci_dbch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.fwohcidb_tr*, align 8
  %9 = alloca %struct.fwohcidb*, align 8
  %10 = alloca %struct.fw_xfer*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.firewire_comm*, align 8
  store %struct.fwohci_softc* %0, %struct.fwohci_softc** %3, align 8
  store %struct.fwohci_dbch* %1, %struct.fwohci_dbch** %4, align 8
  store i32 0, i32* %7, align 4
  %16 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %17 = bitcast %struct.fwohci_softc* %16 to %struct.firewire_comm*
  store %struct.firewire_comm* %17, %struct.firewire_comm** %15, align 8
  %18 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %19 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %18, i32 0, i32 2
  %20 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %4, align 8
  %21 = icmp eq %struct.fwohci_dbch* %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @OHCI_ATQOFF, align 4
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* @ATRQ_CH, align 4
  store i32 %24, i32* %6, align 4
  br label %35

25:                                               ; preds = %2
  %26 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %27 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %26, i32 0, i32 1
  %28 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %4, align 8
  %29 = icmp eq %struct.fwohci_dbch* %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @OHCI_ATSOFF, align 4
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* @ATRS_CH, align 4
  store i32 %32, i32* %6, align 4
  br label %34

33:                                               ; preds = %25
  br label %279

34:                                               ; preds = %30
  br label %35

35:                                               ; preds = %34, %22
  %36 = call i32 (...) @splfw()
  store i32 %36, i32* %5, align 4
  %37 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %4, align 8
  %38 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %37, i32 0, i32 3
  %39 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %38, align 8
  store %struct.fwohcidb_tr* %39, %struct.fwohcidb_tr** %8, align 8
  store i32 0, i32* %14, align 4
  %40 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %4, align 8
  %41 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %44 = call i32 @fwdma_sync_multiseg_all(i32 %42, i32 %43)
  %45 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %4, align 8
  %46 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %49 = call i32 @fwdma_sync_multiseg_all(i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %249, %35
  %51 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %4, align 8
  %52 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %250

56:                                               ; preds = %50
  %57 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %8, align 8
  %58 = load %struct.fwohcidb*, %struct.fwohcidb** %9, align 8
  %59 = call i32 @LAST_DB(%struct.fwohcidb_tr* %57, %struct.fwohcidb* %58)
  %60 = load %struct.fwohcidb*, %struct.fwohcidb** %9, align 8
  %61 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @FWOHCI_DMA_READ(i32 %64)
  %66 = load i32, i32* @OHCI_STATUS_SHIFT, align 4
  %67 = ashr i32 %65, %66
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* @OHCI_CNTL_DMA_ACTIVE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %56
  %73 = load %struct.firewire_comm*, %struct.firewire_comm** %15, align 8
  %74 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @FWBUSINIT, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  br label %251

79:                                               ; preds = %72
  br label %80

80:                                               ; preds = %79, %56
  %81 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %4, align 8
  %82 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %8, align 8
  %85 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %88 = call i32 @bus_dmamap_sync(i32 %83, i32 %86, i32 %87)
  %89 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %4, align 8
  %90 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %8, align 8
  %93 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @bus_dmamap_unload(i32 %91, i32 %94)
  %96 = load i32, i32* @firewire_debug, align 4
  %97 = icmp sgt i32 %96, 1
  br i1 %97, label %98, label %102

98:                                               ; preds = %80
  %99 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @dump_db(%struct.fwohci_softc* %99, i32 %100)
  br label %102

102:                                              ; preds = %98, %80
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* @OHCI_CNTL_DMA_DEAD, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %133

107:                                              ; preds = %102
  %108 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %109 = load i32, i32* %11, align 4
  %110 = call i32 @OHCI_DMACTLCLR(i32 %109)
  %111 = load i32, i32* @OHCI_CNTL_DMA_RUN, align 4
  %112 = call i32 @OWRITE(%struct.fwohci_softc* %108, i32 %110, i32 %111)
  %113 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %114 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @device_printf(i32 %116, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %118 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %119 = load i32, i32* @OHCI_HCCCTLCLR, align 4
  %120 = load i32, i32* @OHCI_HCC_LINKEN, align 4
  %121 = call i32 @OWRITE(%struct.fwohci_softc* %118, i32 %119, i32 %120)
  %122 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %123 = load i32, i32* @OHCI_HCCCTL, align 4
  %124 = load i32, i32* @OHCI_HCC_LPS, align 4
  %125 = load i32, i32* @OHCI_HCC_LINKEN, align 4
  %126 = or i32 %124, %125
  %127 = call i32 @OWRITE(%struct.fwohci_softc* %122, i32 %123, i32 %126)
  %128 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %129 = load i32, i32* %11, align 4
  %130 = call i32 @OHCI_DMACTLCLR(i32 %129)
  %131 = load i32, i32* @OHCI_CNTL_DMA_RUN, align 4
  %132 = call i32 @OWRITE(%struct.fwohci_softc* %128, i32 %130, i32 %131)
  br label %133

133:                                              ; preds = %107, %102
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* @FWOHCIEV_MASK, align 4
  %136 = and i32 %134, %135
  store i32 %136, i32* %12, align 4
  %137 = load i32, i32* %12, align 4
  switch i32 %137, label %144 [
    i32 139, label %138
    i32 141, label %138
    i32 144, label %139
    i32 143, label %139
    i32 142, label %139
    i32 134, label %141
    i32 138, label %141
    i32 133, label %143
    i32 129, label %143
    i32 132, label %143
    i32 136, label %143
    i32 135, label %143
    i32 130, label %143
    i32 131, label %143
    i32 128, label %143
    i32 140, label %143
    i32 137, label %143
  ]

138:                                              ; preds = %133, %133
  store i32 0, i32* %7, align 4
  br label %146

139:                                              ; preds = %133, %133, %133
  %140 = load i32, i32* @EBUSY, align 4
  store i32 %140, i32* %7, align 4
  br label %146

141:                                              ; preds = %133, %133
  %142 = load i32, i32* @EAGAIN, align 4
  store i32 %142, i32* %7, align 4
  br label %146

143:                                              ; preds = %133, %133, %133, %133, %133, %133, %133, %133, %133, %133
  br label %144

144:                                              ; preds = %133, %143
  %145 = load i32, i32* @EINVAL, align 4
  store i32 %145, i32* %7, align 4
  br label %146

146:                                              ; preds = %144, %141, %139, %138
  %147 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %8, align 8
  %148 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %147, i32 0, i32 0
  %149 = load %struct.fw_xfer*, %struct.fw_xfer** %148, align 8
  %150 = icmp ne %struct.fw_xfer* %149, null
  br i1 %150, label %151, label %208

151:                                              ; preds = %146
  %152 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %8, align 8
  %153 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %152, i32 0, i32 0
  %154 = load %struct.fw_xfer*, %struct.fw_xfer** %153, align 8
  store %struct.fw_xfer* %154, %struct.fw_xfer** %10, align 8
  %155 = load %struct.fw_xfer*, %struct.fw_xfer** %10, align 8
  %156 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @FWXF_RCVD, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %151
  %162 = load %struct.fw_xfer*, %struct.fw_xfer** %10, align 8
  %163 = call i32 @fw_xfer_done(%struct.fw_xfer* %162)
  br label %207

164:                                              ; preds = %151
  %165 = load %struct.fw_xfer*, %struct.fw_xfer** %10, align 8
  %166 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %165, i32 0, i32 3
  %167 = call i32 @microtime(i32* %166)
  %168 = load i32, i32* @FWXF_SENT, align 4
  %169 = load %struct.fw_xfer*, %struct.fw_xfer** %10, align 8
  %170 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %169, i32 0, i32 0
  store i32 %168, i32* %170, align 8
  %171 = load i32, i32* %7, align 4
  %172 = load i32, i32* @EBUSY, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %186

174:                                              ; preds = %164
  %175 = load i32, i32* @FWXF_BUSY, align 4
  %176 = load %struct.fw_xfer*, %struct.fw_xfer** %10, align 8
  %177 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %176, i32 0, i32 0
  store i32 %175, i32* %177, align 8
  %178 = load i32, i32* %7, align 4
  %179 = load %struct.fw_xfer*, %struct.fw_xfer** %10, align 8
  %180 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %179, i32 0, i32 1
  store i32 %178, i32* %180, align 4
  %181 = load %struct.fw_xfer*, %struct.fw_xfer** %10, align 8
  %182 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 0
  store i64 0, i64* %183, align 8
  %184 = load %struct.fw_xfer*, %struct.fw_xfer** %10, align 8
  %185 = call i32 @fw_xfer_done(%struct.fw_xfer* %184)
  br label %206

186:                                              ; preds = %164
  %187 = load i32, i32* %12, align 4
  %188 = icmp ne i32 %187, 139
  br i1 %188, label %189, label %205

189:                                              ; preds = %186
  %190 = load i32, i32* %12, align 4
  %191 = icmp ne i32 %190, 141
  br i1 %191, label %192, label %196

192:                                              ; preds = %189
  %193 = load i32, i32* @FWXF_SENTERR, align 4
  %194 = load %struct.fw_xfer*, %struct.fw_xfer** %10, align 8
  %195 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %194, i32 0, i32 0
  store i32 %193, i32* %195, align 8
  br label %196

196:                                              ; preds = %192, %189
  %197 = load i32, i32* %7, align 4
  %198 = load %struct.fw_xfer*, %struct.fw_xfer** %10, align 8
  %199 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %198, i32 0, i32 1
  store i32 %197, i32* %199, align 4
  %200 = load %struct.fw_xfer*, %struct.fw_xfer** %10, align 8
  %201 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 0
  store i64 0, i64* %202, align 8
  %203 = load %struct.fw_xfer*, %struct.fw_xfer** %10, align 8
  %204 = call i32 @fw_xfer_done(%struct.fw_xfer* %203)
  br label %205

205:                                              ; preds = %196, %186
  br label %206

206:                                              ; preds = %205, %174
  br label %207

207:                                              ; preds = %206, %161
  br label %210

208:                                              ; preds = %146
  %209 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %210

210:                                              ; preds = %208, %207
  %211 = load %struct.firewire_comm*, %struct.firewire_comm** %15, align 8
  %212 = call i32 @FW_GLOCK(%struct.firewire_comm* %211)
  %213 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %4, align 8
  %214 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = add nsw i64 %216, -1
  store i64 %217, i64* %215, align 8
  %218 = load %struct.firewire_comm*, %struct.firewire_comm** %15, align 8
  %219 = call i32 @FW_GUNLOCK(%struct.firewire_comm* %218)
  %220 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %8, align 8
  %221 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %220, i32 0, i32 0
  store %struct.fw_xfer* null, %struct.fw_xfer** %221, align 8
  %222 = load i32, i32* %14, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %14, align 4
  %224 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %8, align 8
  %225 = load i32, i32* @link, align 4
  %226 = call %struct.fwohcidb_tr* @STAILQ_NEXT(%struct.fwohcidb_tr* %224, i32 %225)
  store %struct.fwohcidb_tr* %226, %struct.fwohcidb_tr** %8, align 8
  %227 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %8, align 8
  %228 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %4, align 8
  %229 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %228, i32 0, i32 3
  store %struct.fwohcidb_tr* %227, %struct.fwohcidb_tr** %229, align 8
  %230 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %4, align 8
  %231 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %230, i32 0, i32 3
  %232 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %231, align 8
  %233 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %4, align 8
  %234 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %233, i32 0, i32 2
  %235 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %234, align 8
  %236 = icmp eq %struct.fwohcidb_tr* %232, %235
  br i1 %236, label %237, label %249

237:                                              ; preds = %210
  %238 = load i32, i32* @firewire_debug, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %248

240:                                              ; preds = %237
  %241 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %4, align 8
  %242 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = icmp sgt i64 %244, 0
  br i1 %245, label %246, label %248

246:                                              ; preds = %240
  %247 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %248

248:                                              ; preds = %246, %240, %237
  br label %250

249:                                              ; preds = %210
  br label %50

250:                                              ; preds = %248, %50
  br label %251

251:                                              ; preds = %250, %78
  %252 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %4, align 8
  %253 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* @FWOHCI_DBCH_FULL, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %276

258:                                              ; preds = %251
  %259 = load i32, i32* %14, align 4
  %260 = icmp sgt i32 %259, 0
  br i1 %260, label %261, label %276

261:                                              ; preds = %258
  %262 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %263 = load i32, i32* @FWOHCI_DBCH_FULL, align 4
  %264 = xor i32 %263, -1
  %265 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %4, align 8
  %266 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = and i32 %267, %264
  store i32 %268, i32* %266, align 8
  %269 = load %struct.firewire_comm*, %struct.firewire_comm** %15, align 8
  %270 = call i32 @FW_GLOCK(%struct.firewire_comm* %269)
  %271 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %272 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %4, align 8
  %273 = call i32 @fwohci_start(%struct.fwohci_softc* %271, %struct.fwohci_dbch* %272)
  %274 = load %struct.firewire_comm*, %struct.firewire_comm** %15, align 8
  %275 = call i32 @FW_GUNLOCK(%struct.firewire_comm* %274)
  br label %276

276:                                              ; preds = %261, %258, %251
  %277 = load i32, i32* %5, align 4
  %278 = call i32 @splx(i32 %277)
  br label %279

279:                                              ; preds = %276, %33
  ret void
}

declare dso_local i32 @splfw(...) #1

declare dso_local i32 @fwdma_sync_multiseg_all(i32, i32) #1

declare dso_local i32 @LAST_DB(%struct.fwohcidb_tr*, %struct.fwohcidb*) #1

declare dso_local i32 @FWOHCI_DMA_READ(i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @dump_db(%struct.fwohci_softc*, i32) #1

declare dso_local i32 @OWRITE(%struct.fwohci_softc*, i32, i32) #1

declare dso_local i32 @OHCI_DMACTLCLR(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @fw_xfer_done(%struct.fw_xfer*) #1

declare dso_local i32 @microtime(i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @FW_GLOCK(%struct.firewire_comm*) #1

declare dso_local i32 @FW_GUNLOCK(%struct.firewire_comm*) #1

declare dso_local %struct.fwohcidb_tr* @STAILQ_NEXT(%struct.fwohcidb_tr*, i32) #1

declare dso_local i32 @fwohci_start(%struct.fwohci_softc*, %struct.fwohci_dbch*) #1

declare dso_local i32 @splx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
