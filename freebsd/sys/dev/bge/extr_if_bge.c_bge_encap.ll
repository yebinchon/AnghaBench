; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_encap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_encap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bge_softc = type { i32, i32, i32, i64, i64, %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.mbuf**, i32*, i32 }
%struct.TYPE_7__ = type { %struct.bge_tx_bd* }
%struct.bge_tx_bd = type { i64, i64, i64, i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i8* }
%struct.mbuf = type { i32, %struct.TYPE_10__, i32* }
%struct.TYPE_10__ = type { i32, i64, i64 }
%struct.TYPE_11__ = type { i64, i32 }

@BGE_NSEG_NEW = common dso_local global i32 0, align 4
@BGE_FLAG_SHORT_DMA_BUG = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@CSUM_TSO = common dso_local global i32 0, align 4
@BGE_TXBDFLAG_CPU_PRE_DMA = common dso_local global i64 0, align 8
@BGE_TXBDFLAG_CPU_POST_DMA = common dso_local global i64 0, align 8
@CSUM_IP = common dso_local global i32 0, align 4
@BGE_TXBDFLAG_IP_CSUM = common dso_local global i64 0, align 8
@CSUM_TCP = common dso_local global i32 0, align 4
@CSUM_UDP = common dso_local global i32 0, align 4
@BGE_TXBDFLAG_TCP_UDP_CSUM = common dso_local global i64 0, align 8
@ETHER_MIN_NOPAD = common dso_local global i64 0, align 8
@BGE_FLAG_JUMBO_FRAME = common dso_local global i32 0, align 4
@ETHER_MAX_LEN = common dso_local global i64 0, align 8
@BGE_TXBDFLAG_JUMBO_FRAME = common dso_local global i64 0, align 8
@BGE_FLAG_PCIE = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@BGE_TX_RING_CNT = common dso_local global i64 0, align 8
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@M_VLANTAG = common dso_local global i32 0, align 4
@BGE_TXBDFLAG_VLAN_TAG = common dso_local global i64 0, align 8
@BGE_ASICREV_BCM5762 = common dso_local global i64 0, align 8
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@BGE_TXBDFLAG_END = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bge_softc*, %struct.mbuf**, i64*)* @bge_encap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bge_encap(%struct.bge_softc* %0, %struct.mbuf** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bge_softc*, align 8
  %6 = alloca %struct.mbuf**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.bge_tx_bd*, align 8
  %12 = alloca %struct.mbuf*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.bge_softc* %0, %struct.bge_softc** %5, align 8
  store %struct.mbuf** %1, %struct.mbuf*** %6, align 8
  store i64* %2, i64** %7, align 8
  %21 = load i32, i32* @BGE_NSEG_NEW, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %8, align 8
  %24 = alloca %struct.TYPE_11__, i64 %22, align 16
  store i64 %22, i64* %9, align 8
  %25 = load %struct.mbuf**, %struct.mbuf*** %6, align 8
  %26 = load %struct.mbuf*, %struct.mbuf** %25, align 8
  store %struct.mbuf* %26, %struct.mbuf** %12, align 8
  %27 = load i64*, i64** %7, align 8
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  %29 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %30 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @BGE_FLAG_SHORT_DMA_BUG, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %3
  %36 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %37 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %52

40:                                               ; preds = %35
  %41 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %42 = call %struct.mbuf* @bge_check_short_dma(%struct.mbuf* %41)
  %43 = load %struct.mbuf**, %struct.mbuf*** %6, align 8
  store %struct.mbuf* %42, %struct.mbuf** %43, align 8
  %44 = load %struct.mbuf**, %struct.mbuf*** %6, align 8
  %45 = load %struct.mbuf*, %struct.mbuf** %44, align 8
  %46 = icmp eq %struct.mbuf* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* @ENOBUFS, align 4
  store i32 %48, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %509

49:                                               ; preds = %40
  %50 = load %struct.mbuf**, %struct.mbuf*** %6, align 8
  %51 = load %struct.mbuf*, %struct.mbuf** %50, align 8
  store %struct.mbuf* %51, %struct.mbuf** %12, align 8
  br label %52

52:                                               ; preds = %49, %35, %3
  %53 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %54 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @CSUM_TSO, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %76

60:                                               ; preds = %52
  %61 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %62 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %63 = call %struct.mbuf* @bge_setup_tso(%struct.bge_softc* %61, %struct.mbuf* %62, i64* %15, i64* %14)
  store %struct.mbuf* %63, %struct.mbuf** %12, align 8
  %64 = load %struct.mbuf**, %struct.mbuf*** %6, align 8
  store %struct.mbuf* %63, %struct.mbuf** %64, align 8
  %65 = load %struct.mbuf**, %struct.mbuf*** %6, align 8
  %66 = load %struct.mbuf*, %struct.mbuf** %65, align 8
  %67 = icmp eq %struct.mbuf* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = load i32, i32* @ENOBUFS, align 4
  store i32 %69, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %509

70:                                               ; preds = %60
  %71 = load i64, i64* @BGE_TXBDFLAG_CPU_PRE_DMA, align 8
  %72 = load i64, i64* @BGE_TXBDFLAG_CPU_POST_DMA, align 8
  %73 = or i64 %71, %72
  %74 = load i64, i64* %14, align 8
  %75 = or i64 %74, %73
  store i64 %75, i64* %14, align 8
  br label %130

76:                                               ; preds = %52
  %77 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %78 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %82 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %80, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %129

86:                                               ; preds = %76
  %87 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %88 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @CSUM_IP, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %86
  %95 = load i64, i64* @BGE_TXBDFLAG_IP_CSUM, align 8
  %96 = load i64, i64* %14, align 8
  %97 = or i64 %96, %95
  store i64 %97, i64* %14, align 8
  br label %98

98:                                               ; preds = %94, %86
  %99 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %100 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @CSUM_TCP, align 4
  %104 = load i32, i32* @CSUM_UDP, align 4
  %105 = or i32 %103, %104
  %106 = and i32 %102, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %128

108:                                              ; preds = %98
  %109 = load i64, i64* @BGE_TXBDFLAG_TCP_UDP_CSUM, align 8
  %110 = load i64, i64* %14, align 8
  %111 = or i64 %110, %109
  store i64 %111, i64* %14, align 8
  %112 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %113 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @ETHER_MIN_NOPAD, align 8
  %117 = icmp slt i64 %115, %116
  br i1 %117, label %118, label %127

118:                                              ; preds = %108
  %119 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %120 = call i32 @bge_cksum_pad(%struct.mbuf* %119)
  store i32 %120, i32* %19, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %118
  %123 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %124 = call i32 @m_freem(%struct.mbuf* %123)
  %125 = load %struct.mbuf**, %struct.mbuf*** %6, align 8
  store %struct.mbuf* null, %struct.mbuf** %125, align 8
  %126 = load i32, i32* %19, align 4
  store i32 %126, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %509

127:                                              ; preds = %118, %108
  br label %128

128:                                              ; preds = %127, %98
  br label %129

129:                                              ; preds = %128, %76
  br label %130

130:                                              ; preds = %129, %70
  %131 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %132 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @CSUM_TSO, align 4
  %136 = and i32 %134, %135
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %199

138:                                              ; preds = %130
  %139 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %140 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @BGE_FLAG_JUMBO_FRAME, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %156

145:                                              ; preds = %138
  %146 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %147 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @ETHER_MAX_LEN, align 8
  %151 = icmp sgt i64 %149, %150
  br i1 %151, label %152, label %156

152:                                              ; preds = %145
  %153 = load i64, i64* @BGE_TXBDFLAG_JUMBO_FRAME, align 8
  %154 = load i64, i64* %14, align 8
  %155 = or i64 %154, %153
  store i64 %155, i64* %14, align 8
  br label %156

156:                                              ; preds = %152, %145, %138
  %157 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %158 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = icmp sgt i32 %159, 0
  br i1 %160, label %161, label %198

161:                                              ; preds = %156
  %162 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %163 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @BGE_FLAG_PCIE, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %198

168:                                              ; preds = %161
  %169 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %170 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %169, i32 0, i32 2
  %171 = load i32*, i32** %170, align 8
  %172 = icmp ne i32* %171, null
  br i1 %172, label %173, label %198

173:                                              ; preds = %168
  %174 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %175 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = icmp eq i32 %176, 1
  br i1 %177, label %178, label %182

178:                                              ; preds = %173
  %179 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %180 = load i32, i32* @M_NOWAIT, align 4
  %181 = call %struct.mbuf* @m_defrag(%struct.mbuf* %179, i32 %180)
  store %struct.mbuf* %181, %struct.mbuf** %12, align 8
  br label %189

182:                                              ; preds = %173
  %183 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %184 = load i32, i32* @M_NOWAIT, align 4
  %185 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %186 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = call %struct.mbuf* @m_collapse(%struct.mbuf* %183, i32 %184, i32 %187)
  store %struct.mbuf* %188, %struct.mbuf** %12, align 8
  br label %189

189:                                              ; preds = %182, %178
  %190 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %191 = icmp eq %struct.mbuf* %190, null
  br i1 %191, label %192, label %195

192:                                              ; preds = %189
  %193 = load %struct.mbuf**, %struct.mbuf*** %6, align 8
  %194 = load %struct.mbuf*, %struct.mbuf** %193, align 8
  store %struct.mbuf* %194, %struct.mbuf** %12, align 8
  br label %195

195:                                              ; preds = %192, %189
  %196 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %197 = load %struct.mbuf**, %struct.mbuf*** %6, align 8
  store %struct.mbuf* %196, %struct.mbuf** %197, align 8
  br label %198

198:                                              ; preds = %195, %168, %161, %156
  br label %199

199:                                              ; preds = %198, %130
  %200 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %201 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %200, i32 0, i32 5
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 1
  %203 = load i32*, i32** %202, align 8
  %204 = load i64, i64* %13, align 8
  %205 = getelementptr inbounds i32, i32* %203, i64 %204
  %206 = load i32, i32* %205, align 4
  store i32 %206, i32* %10, align 4
  %207 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %208 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %207, i32 0, i32 5
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* %10, align 4
  %212 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %213 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %214 = call i32 @bus_dmamap_load_mbuf_sg(i32 %210, i32 %211, %struct.mbuf* %212, %struct.TYPE_11__* %24, i32* %17, i32 %213)
  store i32 %214, i32* %19, align 4
  %215 = load i32, i32* %19, align 4
  %216 = load i32, i32* @EFBIG, align 4
  %217 = icmp eq i32 %215, %216
  br i1 %217, label %218, label %250

218:                                              ; preds = %199
  %219 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %220 = load i32, i32* @M_NOWAIT, align 4
  %221 = load i32, i32* @BGE_NSEG_NEW, align 4
  %222 = call %struct.mbuf* @m_collapse(%struct.mbuf* %219, i32 %220, i32 %221)
  store %struct.mbuf* %222, %struct.mbuf** %12, align 8
  %223 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %224 = icmp eq %struct.mbuf* %223, null
  br i1 %224, label %225, label %231

225:                                              ; preds = %218
  %226 = load %struct.mbuf**, %struct.mbuf*** %6, align 8
  %227 = load %struct.mbuf*, %struct.mbuf** %226, align 8
  %228 = call i32 @m_freem(%struct.mbuf* %227)
  %229 = load %struct.mbuf**, %struct.mbuf*** %6, align 8
  store %struct.mbuf* null, %struct.mbuf** %229, align 8
  %230 = load i32, i32* @ENOBUFS, align 4
  store i32 %230, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %509

231:                                              ; preds = %218
  %232 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %233 = load %struct.mbuf**, %struct.mbuf*** %6, align 8
  store %struct.mbuf* %232, %struct.mbuf** %233, align 8
  %234 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %235 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %234, i32 0, i32 5
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* %10, align 4
  %239 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %240 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %241 = call i32 @bus_dmamap_load_mbuf_sg(i32 %237, i32 %238, %struct.mbuf* %239, %struct.TYPE_11__* %24, i32* %17, i32 %240)
  store i32 %241, i32* %19, align 4
  %242 = load i32, i32* %19, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %249

244:                                              ; preds = %231
  %245 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %246 = call i32 @m_freem(%struct.mbuf* %245)
  %247 = load %struct.mbuf**, %struct.mbuf*** %6, align 8
  store %struct.mbuf* null, %struct.mbuf** %247, align 8
  %248 = load i32, i32* %19, align 4
  store i32 %248, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %509

249:                                              ; preds = %231
  br label %256

250:                                              ; preds = %199
  %251 = load i32, i32* %19, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %255

253:                                              ; preds = %250
  %254 = load i32, i32* %19, align 4
  store i32 %254, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %509

255:                                              ; preds = %250
  br label %256

256:                                              ; preds = %255, %249
  %257 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %258 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %257, i32 0, i32 3
  %259 = load i64, i64* %258, align 8
  %260 = load i32, i32* %17, align 4
  %261 = sext i32 %260 to i64
  %262 = add nsw i64 %259, %261
  %263 = load i64, i64* @BGE_TX_RING_CNT, align 8
  %264 = icmp sge i64 %262, %263
  br i1 %264, label %265, label %273

265:                                              ; preds = %256
  %266 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %267 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %266, i32 0, i32 5
  %268 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 8
  %270 = load i32, i32* %10, align 4
  %271 = call i32 @bus_dmamap_unload(i32 %269, i32 %270)
  %272 = load i32, i32* @ENOBUFS, align 4
  store i32 %272, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %509

273:                                              ; preds = %256
  %274 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %275 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %274, i32 0, i32 5
  %276 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* %10, align 4
  %279 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %280 = call i32 @bus_dmamap_sync(i32 %277, i32 %278, i32 %279)
  %281 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %282 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = load i32, i32* @M_VLANTAG, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %295

287:                                              ; preds = %273
  %288 = load i64, i64* @BGE_TXBDFLAG_VLAN_TAG, align 8
  %289 = load i64, i64* %14, align 8
  %290 = or i64 %289, %288
  store i64 %290, i64* %14, align 8
  %291 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %292 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %291, i32 0, i32 1
  %293 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %292, i32 0, i32 2
  %294 = load i64, i64* %293, align 8
  store i64 %294, i64* %16, align 8
  br label %295

295:                                              ; preds = %287, %273
  %296 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %297 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %296, i32 0, i32 4
  %298 = load i64, i64* %297, align 8
  %299 = load i64, i64* @BGE_ASICREV_BCM5762, align 8
  %300 = icmp eq i64 %298, %299
  br i1 %300, label %301, label %408

301:                                              ; preds = %295
  %302 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %303 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %302, i32 0, i32 1
  %304 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = load i32, i32* @CSUM_TSO, align 4
  %307 = and i32 %305, %306
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %408

309:                                              ; preds = %301
  store i32 0, i32* %18, align 4
  br label %310

310:                                              ; preds = %380, %309
  %311 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %312 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %311, i32 0, i32 6
  %313 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %312, i32 0, i32 0
  %314 = load %struct.bge_tx_bd*, %struct.bge_tx_bd** %313, align 8
  %315 = load i64, i64* %13, align 8
  %316 = getelementptr inbounds %struct.bge_tx_bd, %struct.bge_tx_bd* %314, i64 %315
  store %struct.bge_tx_bd* %316, %struct.bge_tx_bd** %11, align 8
  %317 = load i32, i32* %18, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i64 %318
  %320 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 8
  %322 = call i8* @BGE_ADDR_LO(i32 %321)
  %323 = ptrtoint i8* %322 to i64
  %324 = load %struct.bge_tx_bd*, %struct.bge_tx_bd** %11, align 8
  %325 = getelementptr inbounds %struct.bge_tx_bd, %struct.bge_tx_bd* %324, i32 0, i32 4
  %326 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %325, i32 0, i32 0
  store i64 %323, i64* %326, align 8
  %327 = load i32, i32* %18, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i64 %328
  %330 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 8
  %332 = call i8* @BGE_ADDR_HI(i32 %331)
  %333 = load %struct.bge_tx_bd*, %struct.bge_tx_bd** %11, align 8
  %334 = getelementptr inbounds %struct.bge_tx_bd, %struct.bge_tx_bd* %333, i32 0, i32 4
  %335 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %334, i32 0, i32 1
  store i8* %332, i8** %335, align 8
  %336 = load i32, i32* %18, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i64 %337
  %339 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %338, i32 0, i32 0
  %340 = load i64, i64* %339, align 16
  %341 = load %struct.bge_tx_bd*, %struct.bge_tx_bd** %11, align 8
  %342 = getelementptr inbounds %struct.bge_tx_bd, %struct.bge_tx_bd* %341, i32 0, i32 0
  store i64 %340, i64* %342, align 8
  %343 = load %struct.bge_tx_bd*, %struct.bge_tx_bd** %11, align 8
  %344 = getelementptr inbounds %struct.bge_tx_bd, %struct.bge_tx_bd* %343, i32 0, i32 4
  %345 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %344, i32 0, i32 0
  %346 = load i64, i64* %345, align 8
  %347 = load i32, i32* %18, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i64 %348
  %350 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %349, i32 0, i32 0
  %351 = load i64, i64* %350, align 16
  %352 = add nsw i64 %346, %351
  %353 = load i64, i64* %15, align 8
  %354 = add nsw i64 %352, %353
  %355 = load %struct.bge_tx_bd*, %struct.bge_tx_bd** %11, align 8
  %356 = getelementptr inbounds %struct.bge_tx_bd, %struct.bge_tx_bd* %355, i32 0, i32 4
  %357 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %356, i32 0, i32 0
  %358 = load i64, i64* %357, align 8
  %359 = icmp slt i64 %354, %358
  br i1 %359, label %360, label %361

360:                                              ; preds = %310
  br label %383

361:                                              ; preds = %310
  %362 = load i64, i64* %14, align 8
  %363 = load %struct.bge_tx_bd*, %struct.bge_tx_bd** %11, align 8
  %364 = getelementptr inbounds %struct.bge_tx_bd, %struct.bge_tx_bd* %363, i32 0, i32 1
  store i64 %362, i64* %364, align 8
  %365 = load i64, i64* %16, align 8
  %366 = load %struct.bge_tx_bd*, %struct.bge_tx_bd** %11, align 8
  %367 = getelementptr inbounds %struct.bge_tx_bd, %struct.bge_tx_bd* %366, i32 0, i32 3
  store i64 %365, i64* %367, align 8
  %368 = load i64, i64* %15, align 8
  %369 = load %struct.bge_tx_bd*, %struct.bge_tx_bd** %11, align 8
  %370 = getelementptr inbounds %struct.bge_tx_bd, %struct.bge_tx_bd* %369, i32 0, i32 2
  store i64 %368, i64* %370, align 8
  %371 = load i32, i32* %18, align 4
  %372 = load i32, i32* %17, align 4
  %373 = sub nsw i32 %372, 1
  %374 = icmp eq i32 %371, %373
  br i1 %374, label %375, label %376

375:                                              ; preds = %361
  br label %383

376:                                              ; preds = %361
  %377 = load i64, i64* %13, align 8
  %378 = load i64, i64* @BGE_TX_RING_CNT, align 8
  %379 = call i32 @BGE_INC(i64 %377, i64 %378)
  br label %380

380:                                              ; preds = %376
  %381 = load i32, i32* %18, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %18, align 4
  br label %310

383:                                              ; preds = %375, %360
  %384 = load i32, i32* %18, align 4
  %385 = load i32, i32* %17, align 4
  %386 = sub nsw i32 %385, 1
  %387 = icmp ne i32 %384, %386
  br i1 %387, label %388, label %407

388:                                              ; preds = %383
  %389 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %390 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %389, i32 0, i32 5
  %391 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %390, i32 0, i32 2
  %392 = load i32, i32* %391, align 8
  %393 = load i32, i32* %10, align 4
  %394 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %395 = call i32 @bus_dmamap_sync(i32 %392, i32 %393, i32 %394)
  %396 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %397 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %396, i32 0, i32 5
  %398 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %397, i32 0, i32 2
  %399 = load i32, i32* %398, align 8
  %400 = load i32, i32* %10, align 4
  %401 = call i32 @bus_dmamap_unload(i32 %399, i32 %400)
  %402 = load %struct.mbuf**, %struct.mbuf*** %6, align 8
  %403 = load %struct.mbuf*, %struct.mbuf** %402, align 8
  %404 = call i32 @m_freem(%struct.mbuf* %403)
  %405 = load %struct.mbuf**, %struct.mbuf*** %6, align 8
  store %struct.mbuf* null, %struct.mbuf** %405, align 8
  %406 = load i32, i32* @EIO, align 4
  store i32 %406, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %509

407:                                              ; preds = %383
  br label %464

408:                                              ; preds = %301, %295
  store i32 0, i32* %18, align 4
  br label %409

409:                                              ; preds = %460, %408
  %410 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %411 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %410, i32 0, i32 6
  %412 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %411, i32 0, i32 0
  %413 = load %struct.bge_tx_bd*, %struct.bge_tx_bd** %412, align 8
  %414 = load i64, i64* %13, align 8
  %415 = getelementptr inbounds %struct.bge_tx_bd, %struct.bge_tx_bd* %413, i64 %414
  store %struct.bge_tx_bd* %415, %struct.bge_tx_bd** %11, align 8
  %416 = load i32, i32* %18, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i64 %417
  %419 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %418, i32 0, i32 1
  %420 = load i32, i32* %419, align 8
  %421 = call i8* @BGE_ADDR_LO(i32 %420)
  %422 = ptrtoint i8* %421 to i64
  %423 = load %struct.bge_tx_bd*, %struct.bge_tx_bd** %11, align 8
  %424 = getelementptr inbounds %struct.bge_tx_bd, %struct.bge_tx_bd* %423, i32 0, i32 4
  %425 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %424, i32 0, i32 0
  store i64 %422, i64* %425, align 8
  %426 = load i32, i32* %18, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i64 %427
  %429 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %428, i32 0, i32 1
  %430 = load i32, i32* %429, align 8
  %431 = call i8* @BGE_ADDR_HI(i32 %430)
  %432 = load %struct.bge_tx_bd*, %struct.bge_tx_bd** %11, align 8
  %433 = getelementptr inbounds %struct.bge_tx_bd, %struct.bge_tx_bd* %432, i32 0, i32 4
  %434 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %433, i32 0, i32 1
  store i8* %431, i8** %434, align 8
  %435 = load i32, i32* %18, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i64 %436
  %438 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %437, i32 0, i32 0
  %439 = load i64, i64* %438, align 16
  %440 = load %struct.bge_tx_bd*, %struct.bge_tx_bd** %11, align 8
  %441 = getelementptr inbounds %struct.bge_tx_bd, %struct.bge_tx_bd* %440, i32 0, i32 0
  store i64 %439, i64* %441, align 8
  %442 = load i64, i64* %14, align 8
  %443 = load %struct.bge_tx_bd*, %struct.bge_tx_bd** %11, align 8
  %444 = getelementptr inbounds %struct.bge_tx_bd, %struct.bge_tx_bd* %443, i32 0, i32 1
  store i64 %442, i64* %444, align 8
  %445 = load i64, i64* %16, align 8
  %446 = load %struct.bge_tx_bd*, %struct.bge_tx_bd** %11, align 8
  %447 = getelementptr inbounds %struct.bge_tx_bd, %struct.bge_tx_bd* %446, i32 0, i32 3
  store i64 %445, i64* %447, align 8
  %448 = load i64, i64* %15, align 8
  %449 = load %struct.bge_tx_bd*, %struct.bge_tx_bd** %11, align 8
  %450 = getelementptr inbounds %struct.bge_tx_bd, %struct.bge_tx_bd* %449, i32 0, i32 2
  store i64 %448, i64* %450, align 8
  %451 = load i32, i32* %18, align 4
  %452 = load i32, i32* %17, align 4
  %453 = sub nsw i32 %452, 1
  %454 = icmp eq i32 %451, %453
  br i1 %454, label %455, label %456

455:                                              ; preds = %409
  br label %463

456:                                              ; preds = %409
  %457 = load i64, i64* %13, align 8
  %458 = load i64, i64* @BGE_TX_RING_CNT, align 8
  %459 = call i32 @BGE_INC(i64 %457, i64 %458)
  br label %460

460:                                              ; preds = %456
  %461 = load i32, i32* %18, align 4
  %462 = add nsw i32 %461, 1
  store i32 %462, i32* %18, align 4
  br label %409

463:                                              ; preds = %455
  br label %464

464:                                              ; preds = %463, %407
  %465 = load i64, i64* @BGE_TXBDFLAG_END, align 8
  %466 = load %struct.bge_tx_bd*, %struct.bge_tx_bd** %11, align 8
  %467 = getelementptr inbounds %struct.bge_tx_bd, %struct.bge_tx_bd* %466, i32 0, i32 1
  %468 = load i64, i64* %467, align 8
  %469 = or i64 %468, %465
  store i64 %469, i64* %467, align 8
  %470 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %471 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %470, i32 0, i32 5
  %472 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %471, i32 0, i32 1
  %473 = load i32*, i32** %472, align 8
  %474 = load i64, i64* %13, align 8
  %475 = getelementptr inbounds i32, i32* %473, i64 %474
  %476 = load i32, i32* %475, align 4
  %477 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %478 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %477, i32 0, i32 5
  %479 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %478, i32 0, i32 1
  %480 = load i32*, i32** %479, align 8
  %481 = load i64*, i64** %7, align 8
  %482 = load i64, i64* %481, align 8
  %483 = getelementptr inbounds i32, i32* %480, i64 %482
  store i32 %476, i32* %483, align 4
  %484 = load i32, i32* %10, align 4
  %485 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %486 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %485, i32 0, i32 5
  %487 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %486, i32 0, i32 1
  %488 = load i32*, i32** %487, align 8
  %489 = load i64, i64* %13, align 8
  %490 = getelementptr inbounds i32, i32* %488, i64 %489
  store i32 %484, i32* %490, align 4
  %491 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %492 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %493 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %492, i32 0, i32 5
  %494 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %493, i32 0, i32 0
  %495 = load %struct.mbuf**, %struct.mbuf*** %494, align 8
  %496 = load i64, i64* %13, align 8
  %497 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %495, i64 %496
  store %struct.mbuf* %491, %struct.mbuf** %497, align 8
  %498 = load i32, i32* %17, align 4
  %499 = sext i32 %498 to i64
  %500 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %501 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %500, i32 0, i32 3
  %502 = load i64, i64* %501, align 8
  %503 = add nsw i64 %502, %499
  store i64 %503, i64* %501, align 8
  %504 = load i64, i64* %13, align 8
  %505 = load i64, i64* @BGE_TX_RING_CNT, align 8
  %506 = call i32 @BGE_INC(i64 %504, i64 %505)
  %507 = load i64, i64* %13, align 8
  %508 = load i64*, i64** %7, align 8
  store i64 %507, i64* %508, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %509

509:                                              ; preds = %464, %388, %265, %253, %244, %225, %122, %68, %47
  %510 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %510)
  %511 = load i32, i32* %4, align 4
  ret i32 %511
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.mbuf* @bge_check_short_dma(%struct.mbuf*) #2

declare dso_local %struct.mbuf* @bge_setup_tso(%struct.bge_softc*, %struct.mbuf*, i64*, i64*) #2

declare dso_local i32 @bge_cksum_pad(%struct.mbuf*) #2

declare dso_local i32 @m_freem(%struct.mbuf*) #2

declare dso_local %struct.mbuf* @m_defrag(%struct.mbuf*, i32) #2

declare dso_local %struct.mbuf* @m_collapse(%struct.mbuf*, i32, i32) #2

declare dso_local i32 @bus_dmamap_load_mbuf_sg(i32, i32, %struct.mbuf*, %struct.TYPE_11__*, i32*, i32) #2

declare dso_local i32 @bus_dmamap_unload(i32, i32) #2

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #2

declare dso_local i8* @BGE_ADDR_LO(i32) #2

declare dso_local i8* @BGE_ADDR_HI(i32) #2

declare dso_local i32 @BGE_INC(i64, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
