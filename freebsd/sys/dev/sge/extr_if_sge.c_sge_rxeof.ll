; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sge/extr_if_sge.c_sge_rxeof.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sge/extr_if_sge.c_sge_rxeof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge_softc = type { i32, %struct.TYPE_4__, %struct.sge_chain_data, %struct.ifnet* }
%struct.TYPE_4__ = type { %struct.sge_desc* }
%struct.sge_desc = type { i32, i32 }
%struct.sge_chain_data = type { i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.mbuf* }
%struct.mbuf = type { %struct.TYPE_6__, i64, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.ifnet*, i64 }
%struct.ifnet = type { i32, i32, i32 (%struct.ifnet*, %struct.mbuf*)* }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@SGE_RX_RING_CNT = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@RDC_OWN = common dso_local global i32 0, align 4
@RDS_CRCOK = common dso_local global i32 0, align 4
@IFCOUNTER_IERRORS = common dso_local global i32 0, align 4
@IFCOUNTER_IQDROPS = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@RDC_IP_CSUM = common dso_local global i32 0, align 4
@RDC_IP_CSUM_OK = common dso_local global i32 0, align 4
@CSUM_IP_CHECKED = common dso_local global i32 0, align 4
@CSUM_IP_VALID = common dso_local global i32 0, align 4
@RDC_TCP_CSUM = common dso_local global i32 0, align 4
@RDC_TCP_CSUM_OK = common dso_local global i32 0, align 4
@RDC_UDP_CSUM = common dso_local global i32 0, align 4
@RDC_UDP_CSUM_OK = common dso_local global i32 0, align 4
@CSUM_DATA_VALID = common dso_local global i32 0, align 4
@CSUM_PSEUDO_HDR = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@RDS_VLAN = common dso_local global i32 0, align 4
@RDC_VLAN_MASK = common dso_local global i32 0, align 4
@M_VLANTAG = common dso_local global i32 0, align 4
@SGE_RX_PAD_BYTES = common dso_local global i64 0, align 8
@IFCOUNTER_IPACKETS = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@RX_ERR_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sge_softc*)* @sge_rxeof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sge_rxeof(%struct.sge_softc* %0) #0 {
  %2 = alloca %struct.sge_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.sge_chain_data*, align 8
  %6 = alloca %struct.sge_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sge_softc* %0, %struct.sge_softc** %2, align 8
  %11 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %12 = call i32 @SGE_LOCK_ASSERT(%struct.sge_softc* %11)
  %13 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %14 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %13, i32 0, i32 3
  %15 = load %struct.ifnet*, %struct.ifnet** %14, align 8
  store %struct.ifnet* %15, %struct.ifnet** %3, align 8
  %16 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %17 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %16, i32 0, i32 2
  store %struct.sge_chain_data* %17, %struct.sge_chain_data** %5, align 8
  %18 = load %struct.sge_chain_data*, %struct.sge_chain_data** %5, align 8
  %19 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.sge_chain_data*, %struct.sge_chain_data** %5, align 8
  %22 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %25 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @bus_dmamap_sync(i32 %20, i32 %23, i32 %26)
  %28 = load %struct.sge_chain_data*, %struct.sge_chain_data** %5, align 8
  %29 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %221, %1
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @SGE_RX_RING_CNT, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %227

35:                                               ; preds = %31
  %36 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %37 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %40 = and i32 %38, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %227

43:                                               ; preds = %35
  %44 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %45 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load %struct.sge_desc*, %struct.sge_desc** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.sge_desc, %struct.sge_desc* %47, i64 %49
  store %struct.sge_desc* %50, %struct.sge_desc** %6, align 8
  %51 = load %struct.sge_desc*, %struct.sge_desc** %6, align 8
  %52 = getelementptr inbounds %struct.sge_desc, %struct.sge_desc* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @le32toh(i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @RDC_OWN, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %43
  br label %227

60:                                               ; preds = %43
  %61 = load %struct.sge_desc*, %struct.sge_desc** %6, align 8
  %62 = getelementptr inbounds %struct.sge_desc, %struct.sge_desc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @le32toh(i32 %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @RDS_CRCOK, align 4
  %67 = and i32 %65, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %60
  %70 = load i32, i32* %8, align 4
  %71 = call i64 @SGE_RX_ERROR(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @SGE_RX_NSEGS(i32 %74)
  %76 = icmp ne i32 %75, 1
  br i1 %76, label %77, label %84

77:                                               ; preds = %73, %69, %60
  %78 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @sge_discard_rxbuf(%struct.sge_softc* %78, i32 %79)
  %81 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %82 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %83 = call i32 @if_inc_counter(%struct.ifnet* %81, i32 %82, i32 1)
  br label %221

84:                                               ; preds = %73
  %85 = load %struct.sge_chain_data*, %struct.sge_chain_data** %5, align 8
  %86 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %85, i32 0, i32 3
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load %struct.mbuf*, %struct.mbuf** %91, align 8
  store %struct.mbuf* %92, %struct.mbuf** %4, align 8
  %93 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %94 = load i32, i32* %9, align 4
  %95 = call i64 @sge_newbuf(%struct.sge_softc* %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %84
  %98 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @sge_discard_rxbuf(%struct.sge_softc* %98, i32 %99)
  %101 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %102 = load i32, i32* @IFCOUNTER_IQDROPS, align 4
  %103 = call i32 @if_inc_counter(%struct.ifnet* %101, i32 %102, i32 1)
  br label %221

104:                                              ; preds = %84
  %105 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %106 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @IFCAP_RXCSUM, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %163

111:                                              ; preds = %104
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* @RDC_IP_CSUM, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %130

116:                                              ; preds = %111
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* @RDC_IP_CSUM_OK, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %116
  %122 = load i32, i32* @CSUM_IP_CHECKED, align 4
  %123 = load i32, i32* @CSUM_IP_VALID, align 4
  %124 = or i32 %122, %123
  %125 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %126 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = or i32 %128, %124
  store i32 %129, i32* %127, align 8
  br label %130

130:                                              ; preds = %121, %116, %111
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* @RDC_TCP_CSUM, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %130
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* @RDC_TCP_CSUM_OK, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %150, label %140

140:                                              ; preds = %135, %130
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* @RDC_UDP_CSUM, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %162

145:                                              ; preds = %140
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* @RDC_UDP_CSUM_OK, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %162

150:                                              ; preds = %145, %135
  %151 = load i32, i32* @CSUM_DATA_VALID, align 4
  %152 = load i32, i32* @CSUM_PSEUDO_HDR, align 4
  %153 = or i32 %151, %152
  %154 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %155 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = or i32 %157, %153
  store i32 %158, i32* %156, align 8
  %159 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %160 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 1
  store i32 65535, i32* %161, align 4
  br label %162

162:                                              ; preds = %150, %145, %140
  br label %163

163:                                              ; preds = %162, %104
  %164 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %165 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %187

170:                                              ; preds = %163
  %171 = load i32, i32* %8, align 4
  %172 = load i32, i32* @RDS_VLAN, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %187

175:                                              ; preds = %170
  %176 = load i32, i32* %7, align 4
  %177 = load i32, i32* @RDC_VLAN_MASK, align 4
  %178 = and i32 %176, %177
  %179 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %180 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 2
  store i32 %178, i32* %181, align 8
  %182 = load i32, i32* @M_VLANTAG, align 4
  %183 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %184 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = or i32 %185, %182
  store i32 %186, i32* %184, align 4
  br label %187

187:                                              ; preds = %175, %170, %163
  %188 = load i64, i64* @SGE_RX_PAD_BYTES, align 8
  %189 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %190 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = sext i32 %191 to i64
  %193 = add nsw i64 %192, %188
  %194 = trunc i64 %193 to i32
  store i32 %194, i32* %190, align 8
  %195 = load i32, i32* %8, align 4
  %196 = call i64 @SGE_RX_BYTES(i32 %195)
  %197 = load i64, i64* @SGE_RX_PAD_BYTES, align 8
  %198 = sub nsw i64 %196, %197
  %199 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %200 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %199, i32 0, i32 1
  store i64 %198, i64* %200, align 8
  %201 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %202 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 4
  store i64 %198, i64* %203, align 8
  %204 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %205 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %206 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 3
  store %struct.ifnet* %204, %struct.ifnet** %207, align 8
  %208 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %209 = load i32, i32* @IFCOUNTER_IPACKETS, align 4
  %210 = call i32 @if_inc_counter(%struct.ifnet* %208, i32 %209, i32 1)
  %211 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %212 = call i32 @SGE_UNLOCK(%struct.sge_softc* %211)
  %213 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %214 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %213, i32 0, i32 2
  %215 = load i32 (%struct.ifnet*, %struct.mbuf*)*, i32 (%struct.ifnet*, %struct.mbuf*)** %214, align 8
  %216 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %217 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %218 = call i32 %215(%struct.ifnet* %216, %struct.mbuf* %217)
  %219 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %220 = call i32 @SGE_LOCK(%struct.sge_softc* %219)
  br label %221

221:                                              ; preds = %187, %97, %77
  %222 = load i32, i32* %10, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %10, align 4
  %224 = load i32, i32* %9, align 4
  %225 = load i32, i32* @SGE_RX_RING_CNT, align 4
  %226 = call i32 @SGE_INC(i32 %224, i32 %225)
  br label %31

227:                                              ; preds = %59, %42, %31
  %228 = load i32, i32* %10, align 4
  %229 = icmp sgt i32 %228, 0
  br i1 %229, label %230, label %244

230:                                              ; preds = %227
  %231 = load %struct.sge_chain_data*, %struct.sge_chain_data** %5, align 8
  %232 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 8
  %234 = load %struct.sge_chain_data*, %struct.sge_chain_data** %5, align 8
  %235 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %238 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %239 = or i32 %237, %238
  %240 = call i32 @bus_dmamap_sync(i32 %233, i32 %236, i32 %239)
  %241 = load i32, i32* %9, align 4
  %242 = load %struct.sge_chain_data*, %struct.sge_chain_data** %5, align 8
  %243 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %242, i32 0, i32 0
  store i32 %241, i32* %243, align 8
  br label %244

244:                                              ; preds = %230, %227
  ret void
}

declare dso_local i32 @SGE_LOCK_ASSERT(%struct.sge_softc*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i64 @SGE_RX_ERROR(i32) #1

declare dso_local i32 @SGE_RX_NSEGS(i32) #1

declare dso_local i32 @sge_discard_rxbuf(%struct.sge_softc*, i32) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i64 @sge_newbuf(%struct.sge_softc*, i32) #1

declare dso_local i64 @SGE_RX_BYTES(i32) #1

declare dso_local i32 @SGE_UNLOCK(%struct.sge_softc*) #1

declare dso_local i32 @SGE_LOCK(%struct.sge_softc*) #1

declare dso_local i32 @SGE_INC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
