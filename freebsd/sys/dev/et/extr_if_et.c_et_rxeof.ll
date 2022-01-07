; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_rxeof.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_rxeof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et_softc = type { i32, %struct.et_rxdesc_ring*, %struct.et_rxbuf_data*, %struct.et_rxstat_ring, %struct.et_rxstatus_data, %struct.ifnet* }
%struct.et_rxdesc_ring = type { i32, i32, i32 }
%struct.et_rxbuf_data = type { i64 (%struct.et_rxbuf_data*, i32)*, i32 (%struct.et_rxbuf_data*, i32)*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.mbuf* }
%struct.mbuf = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.ifnet* }
%struct.et_rxstat_ring = type { i32, i32, i32, i32, %struct.et_rxstat* }
%struct.et_rxstat = type { i32, i32 }
%struct.et_rxstatus_data = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ifnet = type { i32, i32 (%struct.ifnet*, %struct.mbuf*)* }

@ET_FLAG_TXRX_ENABLED = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@ET_RXS_STATRING_WRAP = common dso_local global i32 0, align 4
@ET_RXS_STATRING_INDEX_MASK = common dso_local global i32 0, align 4
@ET_RXS_STATRING_INDEX_SHIFT = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@ET_RX_NSTAT = common dso_local global i32 0, align 4
@ET_RXST_INFO2_LEN_MASK = common dso_local global i32 0, align 4
@ET_RXST_INFO2_LEN_SHIFT = common dso_local global i32 0, align 4
@ET_RXST_INFO2_BUFIDX_MASK = common dso_local global i32 0, align 4
@ET_RXST_INFO2_BUFIDX_SHIFT = common dso_local global i32 0, align 4
@ET_RXST_INFO2_RINGIDX_MASK = common dso_local global i32 0, align 4
@ET_RXST_INFO2_RINGIDX_SHIFT = common dso_local global i32 0, align 4
@ET_RXSTAT_POS_INDEX_MASK = common dso_local global i32 0, align 4
@ET_RXSTAT_POS_WRAP = common dso_local global i32 0, align 4
@ET_RXSTAT_POS = common dso_local global i32 0, align 4
@ET_RX_NRING = common dso_local global i32 0, align 4
@IFCOUNTER_IERRORS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"invalid ring index %d\0A\00", align 1
@ET_RX_NDESC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"invalid buf index %d\0A\00", align 1
@ET_RXST_INFO1_OK = common dso_local global i32 0, align 4
@IFCOUNTER_IQDROPS = common dso_local global i32 0, align 4
@ETHER_CRC_LEN = common dso_local global i64 0, align 8
@ETHER_HDR_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"WARNING!! ring %d, buf_idx %d, rr_idx %d\0A\00", align 1
@ET_RX_RING_POS_INDEX_MASK = common dso_local global i32 0, align 4
@ET_RX_RING_POS_WRAP = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.et_softc*)* @et_rxeof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @et_rxeof(%struct.et_softc* %0) #0 {
  %2 = alloca %struct.et_softc*, align 8
  %3 = alloca %struct.et_rxstatus_data*, align 8
  %4 = alloca %struct.et_rxstat_ring*, align 8
  %5 = alloca %struct.et_rxbuf_data*, align 8
  %6 = alloca %struct.et_rxdesc_ring*, align 8
  %7 = alloca %struct.et_rxstat*, align 8
  %8 = alloca %struct.ifnet*, align 8
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [2 x i32], align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.et_softc* %0, %struct.et_softc** %2, align 8
  %21 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %22 = call i32 @ET_LOCK_ASSERT(%struct.et_softc* %21)
  %23 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %24 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %23, i32 0, i32 5
  %25 = load %struct.ifnet*, %struct.ifnet** %24, align 8
  store %struct.ifnet* %25, %struct.ifnet** %8, align 8
  %26 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %27 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %26, i32 0, i32 4
  store %struct.et_rxstatus_data* %27, %struct.et_rxstatus_data** %3, align 8
  %28 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %29 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %28, i32 0, i32 3
  store %struct.et_rxstat_ring* %29, %struct.et_rxstat_ring** %4, align 8
  %30 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %31 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @ET_FLAG_TXRX_ENABLED, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %1
  br label %348

37:                                               ; preds = %1
  %38 = load %struct.et_rxstatus_data*, %struct.et_rxstatus_data** %3, align 8
  %39 = getelementptr inbounds %struct.et_rxstatus_data, %struct.et_rxstatus_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.et_rxstatus_data*, %struct.et_rxstatus_data** %3, align 8
  %42 = getelementptr inbounds %struct.et_rxstatus_data, %struct.et_rxstatus_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %45 = call i32 @bus_dmamap_sync(i32 %40, i32 %43, i32 %44)
  %46 = load %struct.et_rxstat_ring*, %struct.et_rxstat_ring** %4, align 8
  %47 = getelementptr inbounds %struct.et_rxstat_ring, %struct.et_rxstat_ring* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.et_rxstat_ring*, %struct.et_rxstat_ring** %4, align 8
  %50 = getelementptr inbounds %struct.et_rxstat_ring, %struct.et_rxstat_ring* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %53 = call i32 @bus_dmamap_sync(i32 %48, i32 %51, i32 %52)
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 1
  store i32 0, i32* %54, align 4
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  store i32 0, i32* %55, align 4
  %56 = load %struct.et_rxstatus_data*, %struct.et_rxstatus_data** %3, align 8
  %57 = getelementptr inbounds %struct.et_rxstatus_data, %struct.et_rxstatus_data* %56, i32 0, i32 2
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @le32toh(i32 %60)
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* @ET_RXS_STATRING_WRAP, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 1, i32 0
  store i32 %67, i32* %20, align 4
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* @ET_RXS_STATRING_INDEX_MASK, align 4
  %70 = and i32 %68, %69
  %71 = load i32, i32* @ET_RXS_STATRING_INDEX_SHIFT, align 4
  %72 = ashr i32 %70, %71
  store i32 %72, i32* %19, align 4
  br label %73

73:                                               ; preds = %324, %180, %169, %37
  %74 = load i32, i32* %19, align 4
  %75 = load %struct.et_rxstat_ring*, %struct.et_rxstat_ring** %4, align 8
  %76 = getelementptr inbounds %struct.et_rxstat_ring, %struct.et_rxstat_ring* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %74, %77
  br i1 %78, label %85, label %79

79:                                               ; preds = %73
  %80 = load i32, i32* %20, align 4
  %81 = load %struct.et_rxstat_ring*, %struct.et_rxstat_ring** %4, align 8
  %82 = getelementptr inbounds %struct.et_rxstat_ring, %struct.et_rxstat_ring* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %80, %83
  br label %85

85:                                               ; preds = %79, %73
  %86 = phi i1 [ true, %73 ], [ %84, %79 ]
  br i1 %86, label %87, label %331

87:                                               ; preds = %85
  %88 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %89 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %92 = and i32 %90, %91
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  br label %331

95:                                               ; preds = %87
  %96 = load %struct.et_rxstat_ring*, %struct.et_rxstat_ring** %4, align 8
  %97 = getelementptr inbounds %struct.et_rxstat_ring, %struct.et_rxstat_ring* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @ET_RX_NSTAT, align 4
  %100 = icmp slt i32 %98, %99
  %101 = zext i1 %100 to i32
  %102 = call i32 @MPASS(i32 %101)
  %103 = load %struct.et_rxstat_ring*, %struct.et_rxstat_ring** %4, align 8
  %104 = getelementptr inbounds %struct.et_rxstat_ring, %struct.et_rxstat_ring* %103, i32 0, i32 4
  %105 = load %struct.et_rxstat*, %struct.et_rxstat** %104, align 8
  %106 = load %struct.et_rxstat_ring*, %struct.et_rxstat_ring** %4, align 8
  %107 = getelementptr inbounds %struct.et_rxstat_ring, %struct.et_rxstat_ring* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.et_rxstat, %struct.et_rxstat* %105, i64 %109
  store %struct.et_rxstat* %110, %struct.et_rxstat** %7, align 8
  %111 = load %struct.et_rxstat*, %struct.et_rxstat** %7, align 8
  %112 = getelementptr inbounds %struct.et_rxstat, %struct.et_rxstat* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @le32toh(i32 %113)
  store i32 %114, i32* %12, align 4
  %115 = load %struct.et_rxstat*, %struct.et_rxstat** %7, align 8
  %116 = getelementptr inbounds %struct.et_rxstat, %struct.et_rxstat* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @le32toh(i32 %117)
  store i32 %118, i32* %13, align 4
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* @ET_RXST_INFO2_LEN_MASK, align 4
  %121 = and i32 %119, %120
  %122 = load i32, i32* @ET_RXST_INFO2_LEN_SHIFT, align 4
  %123 = ashr i32 %121, %122
  store i32 %123, i32* %15, align 4
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* @ET_RXST_INFO2_BUFIDX_MASK, align 4
  %126 = and i32 %124, %125
  %127 = load i32, i32* @ET_RXST_INFO2_BUFIDX_SHIFT, align 4
  %128 = ashr i32 %126, %127
  store i32 %128, i32* %16, align 4
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* @ET_RXST_INFO2_RINGIDX_MASK, align 4
  %131 = and i32 %129, %130
  %132 = load i32, i32* @ET_RXST_INFO2_RINGIDX_SHIFT, align 4
  %133 = ashr i32 %131, %132
  store i32 %133, i32* %18, align 4
  %134 = load %struct.et_rxstat_ring*, %struct.et_rxstat_ring** %4, align 8
  %135 = getelementptr inbounds %struct.et_rxstat_ring, %struct.et_rxstat_ring* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %135, align 8
  %138 = load i32, i32* @ET_RX_NSTAT, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %147

140:                                              ; preds = %95
  %141 = load %struct.et_rxstat_ring*, %struct.et_rxstat_ring** %4, align 8
  %142 = getelementptr inbounds %struct.et_rxstat_ring, %struct.et_rxstat_ring* %141, i32 0, i32 0
  store i32 0, i32* %142, align 8
  %143 = load %struct.et_rxstat_ring*, %struct.et_rxstat_ring** %4, align 8
  %144 = getelementptr inbounds %struct.et_rxstat_ring, %struct.et_rxstat_ring* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = xor i32 %145, 1
  store i32 %146, i32* %144, align 4
  br label %147

147:                                              ; preds = %140, %95
  %148 = load %struct.et_rxstat_ring*, %struct.et_rxstat_ring** %4, align 8
  %149 = getelementptr inbounds %struct.et_rxstat_ring, %struct.et_rxstat_ring* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @ET_RXSTAT_POS_INDEX_MASK, align 4
  %152 = and i32 %150, %151
  store i32 %152, i32* %10, align 4
  %153 = load %struct.et_rxstat_ring*, %struct.et_rxstat_ring** %4, align 8
  %154 = getelementptr inbounds %struct.et_rxstat_ring, %struct.et_rxstat_ring* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %147
  %158 = load i32, i32* @ET_RXSTAT_POS_WRAP, align 4
  %159 = load i32, i32* %10, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %10, align 4
  br label %161

161:                                              ; preds = %157, %147
  %162 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %163 = load i32, i32* @ET_RXSTAT_POS, align 4
  %164 = load i32, i32* %10, align 4
  %165 = call i32 @CSR_WRITE_4(%struct.et_softc* %162, i32 %163, i32 %164)
  %166 = load i32, i32* %18, align 4
  %167 = load i32, i32* @ET_RX_NRING, align 4
  %168 = icmp sge i32 %166, %167
  br i1 %168, label %169, label %176

169:                                              ; preds = %161
  %170 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %171 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %172 = call i32 @if_inc_counter(%struct.ifnet* %170, i32 %171, i32 1)
  %173 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %174 = load i32, i32* %18, align 4
  %175 = call i32 (%struct.ifnet*, i8*, i32, ...) @if_printf(%struct.ifnet* %173, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %174)
  br label %73

176:                                              ; preds = %161
  %177 = load i32, i32* %16, align 4
  %178 = load i32, i32* @ET_RX_NDESC, align 4
  %179 = icmp sge i32 %177, %178
  br i1 %179, label %180, label %187

180:                                              ; preds = %176
  %181 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %182 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %183 = call i32 @if_inc_counter(%struct.ifnet* %181, i32 %182, i32 1)
  %184 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %185 = load i32, i32* %16, align 4
  %186 = call i32 (%struct.ifnet*, i8*, i32, ...) @if_printf(%struct.ifnet* %184, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %185)
  br label %73

187:                                              ; preds = %176
  %188 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %189 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %188, i32 0, i32 2
  %190 = load %struct.et_rxbuf_data*, %struct.et_rxbuf_data** %189, align 8
  %191 = load i32, i32* %18, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.et_rxbuf_data, %struct.et_rxbuf_data* %190, i64 %192
  store %struct.et_rxbuf_data* %193, %struct.et_rxbuf_data** %5, align 8
  %194 = load %struct.et_rxbuf_data*, %struct.et_rxbuf_data** %5, align 8
  %195 = getelementptr inbounds %struct.et_rxbuf_data, %struct.et_rxbuf_data* %194, i32 0, i32 2
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %195, align 8
  %197 = load i32, i32* %16, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 0
  %201 = load %struct.mbuf*, %struct.mbuf** %200, align 8
  store %struct.mbuf* %201, %struct.mbuf** %9, align 8
  %202 = load i32, i32* %12, align 4
  %203 = load i32, i32* @ET_RXST_INFO1_OK, align 4
  %204 = and i32 %202, %203
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %213

206:                                              ; preds = %187
  %207 = load %struct.et_rxbuf_data*, %struct.et_rxbuf_data** %5, align 8
  %208 = getelementptr inbounds %struct.et_rxbuf_data, %struct.et_rxbuf_data* %207, i32 0, i32 1
  %209 = load i32 (%struct.et_rxbuf_data*, i32)*, i32 (%struct.et_rxbuf_data*, i32)** %208, align 8
  %210 = load %struct.et_rxbuf_data*, %struct.et_rxbuf_data** %5, align 8
  %211 = load i32, i32* %16, align 4
  %212 = call i32 %209(%struct.et_rxbuf_data* %210, i32 %211)
  br label %269

213:                                              ; preds = %187
  %214 = load %struct.et_rxbuf_data*, %struct.et_rxbuf_data** %5, align 8
  %215 = getelementptr inbounds %struct.et_rxbuf_data, %struct.et_rxbuf_data* %214, i32 0, i32 0
  %216 = load i64 (%struct.et_rxbuf_data*, i32)*, i64 (%struct.et_rxbuf_data*, i32)** %215, align 8
  %217 = load %struct.et_rxbuf_data*, %struct.et_rxbuf_data** %5, align 8
  %218 = load i32, i32* %16, align 4
  %219 = call i64 %216(%struct.et_rxbuf_data* %217, i32 %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %231

221:                                              ; preds = %213
  %222 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %223 = load i32, i32* @IFCOUNTER_IQDROPS, align 4
  %224 = call i32 @if_inc_counter(%struct.ifnet* %222, i32 %223, i32 1)
  %225 = load %struct.et_rxbuf_data*, %struct.et_rxbuf_data** %5, align 8
  %226 = getelementptr inbounds %struct.et_rxbuf_data, %struct.et_rxbuf_data* %225, i32 0, i32 1
  %227 = load i32 (%struct.et_rxbuf_data*, i32)*, i32 (%struct.et_rxbuf_data*, i32)** %226, align 8
  %228 = load %struct.et_rxbuf_data*, %struct.et_rxbuf_data** %5, align 8
  %229 = load i32, i32* %16, align 4
  %230 = call i32 %227(%struct.et_rxbuf_data* %228, i32 %229)
  br label %268

231:                                              ; preds = %213
  %232 = load i64, i64* @ETHER_CRC_LEN, align 8
  %233 = load i32, i32* %15, align 4
  %234 = sext i32 %233 to i64
  %235 = sub nsw i64 %234, %232
  %236 = trunc i64 %235 to i32
  store i32 %236, i32* %15, align 4
  %237 = load i32, i32* %15, align 4
  %238 = load i32, i32* @ETHER_HDR_LEN, align 4
  %239 = icmp slt i32 %237, %238
  br i1 %239, label %240, label %246

240:                                              ; preds = %231
  %241 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %242 = call i32 @m_freem(%struct.mbuf* %241)
  %243 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %244 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %245 = call i32 @if_inc_counter(%struct.ifnet* %243, i32 %244, i32 1)
  br label %267

246:                                              ; preds = %231
  %247 = load i32, i32* %15, align 4
  %248 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %249 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %248, i32 0, i32 0
  store i32 %247, i32* %249, align 8
  %250 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %251 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 0
  store i32 %247, i32* %252, align 8
  %253 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %254 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %255 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 1
  store %struct.ifnet* %253, %struct.ifnet** %256, align 8
  %257 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %258 = call i32 @ET_UNLOCK(%struct.et_softc* %257)
  %259 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %260 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %259, i32 0, i32 1
  %261 = load i32 (%struct.ifnet*, %struct.mbuf*)*, i32 (%struct.ifnet*, %struct.mbuf*)** %260, align 8
  %262 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %263 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %264 = call i32 %261(%struct.ifnet* %262, %struct.mbuf* %263)
  %265 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %266 = call i32 @ET_LOCK(%struct.et_softc* %265)
  br label %267

267:                                              ; preds = %246, %240
  br label %268

268:                                              ; preds = %267, %221
  br label %269

269:                                              ; preds = %268, %206
  %270 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %271 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %270, i32 0, i32 1
  %272 = load %struct.et_rxdesc_ring*, %struct.et_rxdesc_ring** %271, align 8
  %273 = load i32, i32* %18, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.et_rxdesc_ring, %struct.et_rxdesc_ring* %272, i64 %274
  store %struct.et_rxdesc_ring* %275, %struct.et_rxdesc_ring** %6, align 8
  %276 = load i32, i32* %16, align 4
  %277 = load %struct.et_rxdesc_ring*, %struct.et_rxdesc_ring** %6, align 8
  %278 = getelementptr inbounds %struct.et_rxdesc_ring, %struct.et_rxdesc_ring* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = icmp ne i32 %276, %279
  br i1 %280, label %281, label %289

281:                                              ; preds = %269
  %282 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %283 = load i32, i32* %18, align 4
  %284 = load i32, i32* %16, align 4
  %285 = load %struct.et_rxdesc_ring*, %struct.et_rxdesc_ring** %6, align 8
  %286 = getelementptr inbounds %struct.et_rxdesc_ring, %struct.et_rxdesc_ring* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  %288 = call i32 (%struct.ifnet*, i8*, i32, ...) @if_printf(%struct.ifnet* %282, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %283, i32 %284, i32 %287)
  br label %289

289:                                              ; preds = %281, %269
  %290 = load %struct.et_rxdesc_ring*, %struct.et_rxdesc_ring** %6, align 8
  %291 = getelementptr inbounds %struct.et_rxdesc_ring, %struct.et_rxdesc_ring* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* @ET_RX_NDESC, align 4
  %294 = icmp slt i32 %292, %293
  %295 = zext i1 %294 to i32
  %296 = call i32 @MPASS(i32 %295)
  %297 = load %struct.et_rxdesc_ring*, %struct.et_rxdesc_ring** %6, align 8
  %298 = getelementptr inbounds %struct.et_rxdesc_ring, %struct.et_rxdesc_ring* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %298, align 4
  %301 = load i32, i32* @ET_RX_NDESC, align 4
  %302 = icmp eq i32 %300, %301
  br i1 %302, label %303, label %310

303:                                              ; preds = %289
  %304 = load %struct.et_rxdesc_ring*, %struct.et_rxdesc_ring** %6, align 8
  %305 = getelementptr inbounds %struct.et_rxdesc_ring, %struct.et_rxdesc_ring* %304, i32 0, i32 0
  store i32 0, i32* %305, align 4
  %306 = load %struct.et_rxdesc_ring*, %struct.et_rxdesc_ring** %6, align 8
  %307 = getelementptr inbounds %struct.et_rxdesc_ring, %struct.et_rxdesc_ring* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = xor i32 %308, 1
  store i32 %309, i32* %307, align 4
  br label %310

310:                                              ; preds = %303, %289
  %311 = load %struct.et_rxdesc_ring*, %struct.et_rxdesc_ring** %6, align 8
  %312 = getelementptr inbounds %struct.et_rxdesc_ring, %struct.et_rxdesc_ring* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 4
  %314 = load i32, i32* @ET_RX_RING_POS_INDEX_MASK, align 4
  %315 = and i32 %313, %314
  store i32 %315, i32* %11, align 4
  %316 = load %struct.et_rxdesc_ring*, %struct.et_rxdesc_ring** %6, align 8
  %317 = getelementptr inbounds %struct.et_rxdesc_ring, %struct.et_rxdesc_ring* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %324

320:                                              ; preds = %310
  %321 = load i32, i32* @ET_RX_RING_POS_WRAP, align 4
  %322 = load i32, i32* %11, align 4
  %323 = or i32 %322, %321
  store i32 %323, i32* %11, align 4
  br label %324

324:                                              ; preds = %320, %310
  %325 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %326 = load %struct.et_rxdesc_ring*, %struct.et_rxdesc_ring** %6, align 8
  %327 = getelementptr inbounds %struct.et_rxdesc_ring, %struct.et_rxdesc_ring* %326, i32 0, i32 2
  %328 = load i32, i32* %327, align 4
  %329 = load i32, i32* %11, align 4
  %330 = call i32 @CSR_WRITE_4(%struct.et_softc* %325, i32 %328, i32 %329)
  br label %73

331:                                              ; preds = %94, %85
  %332 = load %struct.et_rxstatus_data*, %struct.et_rxstatus_data** %3, align 8
  %333 = getelementptr inbounds %struct.et_rxstatus_data, %struct.et_rxstatus_data* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.et_rxstatus_data*, %struct.et_rxstatus_data** %3, align 8
  %336 = getelementptr inbounds %struct.et_rxstatus_data, %struct.et_rxstatus_data* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 8
  %338 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %339 = call i32 @bus_dmamap_sync(i32 %334, i32 %337, i32 %338)
  %340 = load %struct.et_rxstat_ring*, %struct.et_rxstat_ring** %4, align 8
  %341 = getelementptr inbounds %struct.et_rxstat_ring, %struct.et_rxstat_ring* %340, i32 0, i32 3
  %342 = load i32, i32* %341, align 4
  %343 = load %struct.et_rxstat_ring*, %struct.et_rxstat_ring** %4, align 8
  %344 = getelementptr inbounds %struct.et_rxstat_ring, %struct.et_rxstat_ring* %343, i32 0, i32 2
  %345 = load i32, i32* %344, align 8
  %346 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %347 = call i32 @bus_dmamap_sync(i32 %342, i32 %345, i32 %346)
  br label %348

348:                                              ; preds = %331, %36
  ret void
}

declare dso_local i32 @ET_LOCK_ASSERT(%struct.et_softc*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.et_softc*, i32, i32) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @if_printf(%struct.ifnet*, i8*, i32, ...) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @ET_UNLOCK(%struct.et_softc*) #1

declare dso_local i32 @ET_LOCK(%struct.et_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
