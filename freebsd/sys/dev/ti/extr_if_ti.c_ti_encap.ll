; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_encap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_encap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_softc = type { i32, i32, i64, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.ti_tx_desc* }
%struct.ti_tx_desc = type { i32, i64, i32, i32 }
%struct.mbuf = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct.ti_txdesc = type { %struct.mbuf*, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@TI_MAXTXSEGS = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@TI_TX_RING_CNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@CSUM_IP = common dso_local global i32 0, align 4
@TI_BDFLAG_IP_CKSUM = common dso_local global i32 0, align 4
@CSUM_TCP = common dso_local global i32 0, align 4
@CSUM_UDP = common dso_local global i32 0, align 4
@TI_BDFLAG_TCP_UDP_CKSUM = common dso_local global i32 0, align 4
@TI_HWREV_TIGON = common dso_local global i64 0, align 8
@M_VLANTAG = common dso_local global i32 0, align 4
@TI_BDFLAG_VLAN_TAG = common dso_local global i32 0, align 4
@TI_TX_RING_BASE = common dso_local global i64 0, align 8
@TI_BDFLAG_END = common dso_local global i32 0, align 4
@tx_q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_softc*, %struct.mbuf**)* @ti_encap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_encap(%struct.ti_softc* %0, %struct.mbuf** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ti_softc*, align 8
  %5 = alloca %struct.mbuf**, align 8
  %6 = alloca %struct.ti_txdesc*, align 8
  %7 = alloca %struct.ti_tx_desc*, align 8
  %8 = alloca %struct.ti_tx_desc, align 8
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ti_softc* %0, %struct.ti_softc** %4, align 8
  store %struct.mbuf** %1, %struct.mbuf*** %5, align 8
  %18 = load i32, i32* @TI_MAXTXSEGS, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %10, align 8
  %21 = alloca %struct.TYPE_9__, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %22 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %23 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = call %struct.ti_txdesc* @STAILQ_FIRST(i32* %24)
  store %struct.ti_txdesc* %25, %struct.ti_txdesc** %6, align 8
  %26 = icmp eq %struct.ti_txdesc* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @ENOBUFS, align 4
  store i32 %28, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %292

29:                                               ; preds = %2
  %30 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %31 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.ti_txdesc*, %struct.ti_txdesc** %6, align 8
  %35 = getelementptr inbounds %struct.ti_txdesc, %struct.ti_txdesc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.mbuf**, %struct.mbuf*** %5, align 8
  %38 = load %struct.mbuf*, %struct.mbuf** %37, align 8
  %39 = call i32 @bus_dmamap_load_mbuf_sg(i32 %33, i32 %36, %struct.mbuf* %38, %struct.TYPE_9__* %21, i32* %16, i32 0)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* @EFBIG, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %78

43:                                               ; preds = %29
  %44 = load %struct.mbuf**, %struct.mbuf*** %5, align 8
  %45 = load %struct.mbuf*, %struct.mbuf** %44, align 8
  %46 = load i32, i32* @M_NOWAIT, align 4
  %47 = call %struct.mbuf* @m_defrag(%struct.mbuf* %45, i32 %46)
  store %struct.mbuf* %47, %struct.mbuf** %9, align 8
  %48 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %49 = icmp eq %struct.mbuf* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load %struct.mbuf**, %struct.mbuf*** %5, align 8
  %52 = load %struct.mbuf*, %struct.mbuf** %51, align 8
  %53 = call i32 @m_freem(%struct.mbuf* %52)
  %54 = load %struct.mbuf**, %struct.mbuf*** %5, align 8
  store %struct.mbuf* null, %struct.mbuf** %54, align 8
  %55 = load i32, i32* @ENOMEM, align 4
  store i32 %55, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %292

56:                                               ; preds = %43
  %57 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %58 = load %struct.mbuf**, %struct.mbuf*** %5, align 8
  store %struct.mbuf* %57, %struct.mbuf** %58, align 8
  %59 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %60 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.ti_txdesc*, %struct.ti_txdesc** %6, align 8
  %64 = getelementptr inbounds %struct.ti_txdesc, %struct.ti_txdesc* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.mbuf**, %struct.mbuf*** %5, align 8
  %67 = load %struct.mbuf*, %struct.mbuf** %66, align 8
  %68 = call i32 @bus_dmamap_load_mbuf_sg(i32 %62, i32 %65, %struct.mbuf* %67, %struct.TYPE_9__* %21, i32* %16, i32 0)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %56
  %72 = load %struct.mbuf**, %struct.mbuf*** %5, align 8
  %73 = load %struct.mbuf*, %struct.mbuf** %72, align 8
  %74 = call i32 @m_freem(%struct.mbuf* %73)
  %75 = load %struct.mbuf**, %struct.mbuf*** %5, align 8
  store %struct.mbuf* null, %struct.mbuf** %75, align 8
  %76 = load i32, i32* %13, align 4
  store i32 %76, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %292

77:                                               ; preds = %56
  br label %84

78:                                               ; preds = %29
  %79 = load i32, i32* %13, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i32, i32* %13, align 4
  store i32 %82, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %292

83:                                               ; preds = %78
  br label %84

84:                                               ; preds = %83, %77
  %85 = load i32, i32* %16, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %84
  %88 = load %struct.mbuf**, %struct.mbuf*** %5, align 8
  %89 = load %struct.mbuf*, %struct.mbuf** %88, align 8
  %90 = call i32 @m_freem(%struct.mbuf* %89)
  %91 = load %struct.mbuf**, %struct.mbuf*** %5, align 8
  store %struct.mbuf* null, %struct.mbuf** %91, align 8
  %92 = load i32, i32* @EIO, align 4
  store i32 %92, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %292

93:                                               ; preds = %84
  %94 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %95 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %16, align 4
  %98 = add nsw i32 %96, %97
  %99 = load i32, i32* @TI_TX_RING_CNT, align 4
  %100 = icmp sge i32 %98, %99
  br i1 %100, label %101, label %111

101:                                              ; preds = %93
  %102 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %103 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.ti_txdesc*, %struct.ti_txdesc** %6, align 8
  %107 = getelementptr inbounds %struct.ti_txdesc, %struct.ti_txdesc* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @bus_dmamap_unload(i32 %105, i32 %108)
  %110 = load i32, i32* @ENOBUFS, align 4
  store i32 %110, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %292

111:                                              ; preds = %93
  %112 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %113 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.ti_txdesc*, %struct.ti_txdesc** %6, align 8
  %117 = getelementptr inbounds %struct.ti_txdesc, %struct.ti_txdesc* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %120 = call i32 @bus_dmamap_sync(i32 %115, i32 %118, i32 %119)
  %121 = load %struct.mbuf**, %struct.mbuf*** %5, align 8
  %122 = load %struct.mbuf*, %struct.mbuf** %121, align 8
  store %struct.mbuf* %122, %struct.mbuf** %9, align 8
  store i32 0, i32* %12, align 4
  %123 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %124 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @CSUM_IP, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %111
  %131 = load i32, i32* @TI_BDFLAG_IP_CKSUM, align 4
  %132 = load i32, i32* %12, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %12, align 4
  br label %134

134:                                              ; preds = %130, %111
  %135 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %136 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @CSUM_TCP, align 4
  %140 = load i32, i32* @CSUM_UDP, align 4
  %141 = or i32 %139, %140
  %142 = and i32 %138, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %134
  %145 = load i32, i32* @TI_BDFLAG_TCP_UDP_CKSUM, align 4
  %146 = load i32, i32* %12, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %12, align 4
  br label %148

148:                                              ; preds = %144, %134
  %149 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %150 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  store i32 %151, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %152

152:                                              ; preds = %230, %148
  %153 = load i32, i32* %15, align 4
  %154 = load i32, i32* %16, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %233

156:                                              ; preds = %152
  %157 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %158 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @TI_HWREV_TIGON, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %156
  %163 = call i32 @bzero(%struct.ti_tx_desc* %8, i32 24)
  store %struct.ti_tx_desc* %8, %struct.ti_tx_desc** %7, align 8
  br label %172

164:                                              ; preds = %156
  %165 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %166 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %165, i32 0, i32 4
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  %168 = load %struct.ti_tx_desc*, %struct.ti_tx_desc** %167, align 8
  %169 = load i32, i32* %14, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.ti_tx_desc, %struct.ti_tx_desc* %168, i64 %170
  store %struct.ti_tx_desc* %171, %struct.ti_tx_desc** %7, align 8
  br label %172

172:                                              ; preds = %164, %162
  %173 = load %struct.ti_tx_desc*, %struct.ti_tx_desc** %7, align 8
  %174 = getelementptr inbounds %struct.ti_tx_desc, %struct.ti_tx_desc* %173, i32 0, i32 3
  %175 = load i32, i32* %15, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @ti_hostaddr64(i32* %174, i32 %179)
  %181 = load i32, i32* %15, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.ti_tx_desc*, %struct.ti_tx_desc** %7, align 8
  %187 = getelementptr inbounds %struct.ti_tx_desc, %struct.ti_tx_desc* %186, i32 0, i32 2
  store i32 %185, i32* %187, align 8
  %188 = load i32, i32* %12, align 4
  %189 = load %struct.ti_tx_desc*, %struct.ti_tx_desc** %7, align 8
  %190 = getelementptr inbounds %struct.ti_tx_desc, %struct.ti_tx_desc* %189, i32 0, i32 0
  store i32 %188, i32* %190, align 8
  %191 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %192 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @M_VLANTAG, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %209

197:                                              ; preds = %172
  %198 = load i32, i32* @TI_BDFLAG_VLAN_TAG, align 4
  %199 = load %struct.ti_tx_desc*, %struct.ti_tx_desc** %7, align 8
  %200 = getelementptr inbounds %struct.ti_tx_desc, %struct.ti_tx_desc* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = or i32 %201, %198
  store i32 %202, i32* %200, align 8
  %203 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %204 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = load %struct.ti_tx_desc*, %struct.ti_tx_desc** %7, align 8
  %208 = getelementptr inbounds %struct.ti_tx_desc, %struct.ti_tx_desc* %207, i32 0, i32 1
  store i64 %206, i64* %208, align 8
  br label %212

209:                                              ; preds = %172
  %210 = load %struct.ti_tx_desc*, %struct.ti_tx_desc** %7, align 8
  %211 = getelementptr inbounds %struct.ti_tx_desc, %struct.ti_tx_desc* %210, i32 0, i32 1
  store i64 0, i64* %211, align 8
  br label %212

212:                                              ; preds = %209, %197
  %213 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %214 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %213, i32 0, i32 2
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @TI_HWREV_TIGON, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %218, label %226

218:                                              ; preds = %212
  %219 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %220 = load i64, i64* @TI_TX_RING_BASE, align 8
  %221 = load i32, i32* %14, align 4
  %222 = sext i32 %221 to i64
  %223 = mul i64 %222, 24
  %224 = add i64 %220, %223
  %225 = call i32 @ti_mem_write(%struct.ti_softc* %219, i64 %224, i32 24, %struct.ti_tx_desc* %8)
  br label %226

226:                                              ; preds = %218, %212
  %227 = load i32, i32* %14, align 4
  %228 = load i32, i32* @TI_TX_RING_CNT, align 4
  %229 = call i32 @TI_INC(i32 %227, i32 %228)
  br label %230

230:                                              ; preds = %226
  %231 = load i32, i32* %15, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %15, align 4
  br label %152

233:                                              ; preds = %152
  %234 = load i32, i32* %14, align 4
  %235 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %236 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %235, i32 0, i32 1
  store i32 %234, i32* %236, align 4
  %237 = load i32, i32* %14, align 4
  %238 = load i32, i32* @TI_TX_RING_CNT, align 4
  %239 = add nsw i32 %237, %238
  %240 = sub nsw i32 %239, 1
  %241 = load i32, i32* @TI_TX_RING_CNT, align 4
  %242 = srem i32 %240, %241
  store i32 %242, i32* %14, align 4
  %243 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %244 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %243, i32 0, i32 2
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* @TI_HWREV_TIGON, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %248, label %260

248:                                              ; preds = %233
  %249 = load i32, i32* @TI_BDFLAG_END, align 4
  %250 = getelementptr inbounds %struct.ti_tx_desc, %struct.ti_tx_desc* %8, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = or i32 %251, %249
  store i32 %252, i32* %250, align 8
  %253 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %254 = load i64, i64* @TI_TX_RING_BASE, align 8
  %255 = load i32, i32* %14, align 4
  %256 = sext i32 %255 to i64
  %257 = mul i64 %256, 24
  %258 = add i64 %254, %257
  %259 = call i32 @ti_mem_write(%struct.ti_softc* %253, i64 %258, i32 24, %struct.ti_tx_desc* %8)
  br label %272

260:                                              ; preds = %233
  %261 = load i32, i32* @TI_BDFLAG_END, align 4
  %262 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %263 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %262, i32 0, i32 4
  %264 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %263, i32 0, i32 0
  %265 = load %struct.ti_tx_desc*, %struct.ti_tx_desc** %264, align 8
  %266 = load i32, i32* %14, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.ti_tx_desc, %struct.ti_tx_desc* %265, i64 %267
  %269 = getelementptr inbounds %struct.ti_tx_desc, %struct.ti_tx_desc* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = or i32 %270, %261
  store i32 %271, i32* %269, align 8
  br label %272

272:                                              ; preds = %260, %248
  %273 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %274 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %273, i32 0, i32 3
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 1
  %276 = load i32, i32* @tx_q, align 4
  %277 = call i32 @STAILQ_REMOVE_HEAD(i32* %275, i32 %276)
  %278 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %279 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %278, i32 0, i32 3
  %280 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %279, i32 0, i32 0
  %281 = load %struct.ti_txdesc*, %struct.ti_txdesc** %6, align 8
  %282 = load i32, i32* @tx_q, align 4
  %283 = call i32 @STAILQ_INSERT_TAIL(i32* %280, %struct.ti_txdesc* %281, i32 %282)
  %284 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %285 = load %struct.ti_txdesc*, %struct.ti_txdesc** %6, align 8
  %286 = getelementptr inbounds %struct.ti_txdesc, %struct.ti_txdesc* %285, i32 0, i32 0
  store %struct.mbuf* %284, %struct.mbuf** %286, align 8
  %287 = load i32, i32* %16, align 4
  %288 = load %struct.ti_softc*, %struct.ti_softc** %4, align 8
  %289 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = add nsw i32 %290, %287
  store i32 %291, i32* %289, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %292

292:                                              ; preds = %272, %101, %87, %81, %71, %50, %27
  %293 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %293)
  %294 = load i32, i32* %3, align 4
  ret i32 %294
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.ti_txdesc* @STAILQ_FIRST(i32*) #2

declare dso_local i32 @bus_dmamap_load_mbuf_sg(i32, i32, %struct.mbuf*, %struct.TYPE_9__*, i32*, i32) #2

declare dso_local %struct.mbuf* @m_defrag(%struct.mbuf*, i32) #2

declare dso_local i32 @m_freem(%struct.mbuf*) #2

declare dso_local i32 @bus_dmamap_unload(i32, i32) #2

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #2

declare dso_local i32 @bzero(%struct.ti_tx_desc*, i32) #2

declare dso_local i32 @ti_hostaddr64(i32*, i32) #2

declare dso_local i32 @ti_mem_write(%struct.ti_softc*, i64, i32, %struct.ti_tx_desc*) #2

declare dso_local i32 @TI_INC(i32, i32) #2

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #2

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.ti_txdesc*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
