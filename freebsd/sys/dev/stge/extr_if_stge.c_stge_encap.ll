; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/stge/extr_if_stge.c_stge_encap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/stge/extr_if_stge.c_stge_encap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stge_softc = type { %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.stge_tfd* }
%struct.stge_tfd = type { i8*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8* }
%struct.mbuf = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.stge_txdesc = type { i32, %struct.mbuf* }
%struct.TYPE_11__ = type { i32, i32 }

@STGE_MAXTXSEGS = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@STGE_CSUM_FEATURES = common dso_local global i32 0, align 4
@CSUM_IP = common dso_local global i32 0, align 4
@TFD_IPChecksumEnable = common dso_local global i32 0, align 4
@CSUM_TCP = common dso_local global i32 0, align 4
@TFD_TCPChecksumEnable = common dso_local global i32 0, align 4
@CSUM_UDP = common dso_local global i32 0, align 4
@TFD_UDPChecksumEnable = common dso_local global i32 0, align 4
@TFD_WordAlign_disable = common dso_local global i32 0, align 4
@STGE_TX_HIWAT = common dso_local global i64 0, align 8
@TFD_TxDMAIndicate = common dso_local global i32 0, align 4
@STGE_TX_RING_CNT = common dso_local global i32 0, align 4
@M_VLANTAG = common dso_local global i32 0, align 4
@TFD_VLANTagInsert = common dso_local global i32 0, align 4
@tx_q = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stge_softc*, %struct.mbuf**)* @stge_encap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stge_encap(%struct.stge_softc* %0, %struct.mbuf** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stge_softc*, align 8
  %5 = alloca %struct.mbuf**, align 8
  %6 = alloca %struct.stge_txdesc*, align 8
  %7 = alloca %struct.stge_tfd*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.stge_softc* %0, %struct.stge_softc** %4, align 8
  store %struct.mbuf** %1, %struct.mbuf*** %5, align 8
  %18 = load i32, i32* @STGE_MAXTXSEGS, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %9, align 8
  %21 = alloca %struct.TYPE_11__, i64 %19, align 16
  store i64 %19, i64* %10, align 8
  %22 = load %struct.stge_softc*, %struct.stge_softc** %4, align 8
  %23 = call i32 @STGE_LOCK_ASSERT(%struct.stge_softc* %22)
  %24 = load %struct.stge_softc*, %struct.stge_softc** %4, align 8
  %25 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 6
  %27 = call %struct.stge_txdesc* @STAILQ_FIRST(i32* %26)
  store %struct.stge_txdesc* %27, %struct.stge_txdesc** %6, align 8
  %28 = icmp eq %struct.stge_txdesc* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* @ENOBUFS, align 4
  store i32 %30, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %275

31:                                               ; preds = %2
  %32 = load %struct.stge_softc*, %struct.stge_softc** %4, align 8
  %33 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.stge_txdesc*, %struct.stge_txdesc** %6, align 8
  %37 = getelementptr inbounds %struct.stge_txdesc, %struct.stge_txdesc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.mbuf**, %struct.mbuf*** %5, align 8
  %40 = load %struct.mbuf*, %struct.mbuf** %39, align 8
  %41 = call i32 @bus_dmamap_load_mbuf_sg(i32 %35, i32 %38, %struct.mbuf* %40, %struct.TYPE_11__* %21, i32* %13, i32 0)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @EFBIG, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %81

45:                                               ; preds = %31
  %46 = load %struct.mbuf**, %struct.mbuf*** %5, align 8
  %47 = load %struct.mbuf*, %struct.mbuf** %46, align 8
  %48 = load i32, i32* @M_NOWAIT, align 4
  %49 = load i32, i32* @STGE_MAXTXSEGS, align 4
  %50 = call %struct.mbuf* @m_collapse(%struct.mbuf* %47, i32 %48, i32 %49)
  store %struct.mbuf* %50, %struct.mbuf** %8, align 8
  %51 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %52 = icmp eq %struct.mbuf* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %45
  %54 = load %struct.mbuf**, %struct.mbuf*** %5, align 8
  %55 = load %struct.mbuf*, %struct.mbuf** %54, align 8
  %56 = call i32 @m_freem(%struct.mbuf* %55)
  %57 = load %struct.mbuf**, %struct.mbuf*** %5, align 8
  store %struct.mbuf* null, %struct.mbuf** %57, align 8
  %58 = load i32, i32* @ENOMEM, align 4
  store i32 %58, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %275

59:                                               ; preds = %45
  %60 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %61 = load %struct.mbuf**, %struct.mbuf*** %5, align 8
  store %struct.mbuf* %60, %struct.mbuf** %61, align 8
  %62 = load %struct.stge_softc*, %struct.stge_softc** %4, align 8
  %63 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.stge_txdesc*, %struct.stge_txdesc** %6, align 8
  %67 = getelementptr inbounds %struct.stge_txdesc, %struct.stge_txdesc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.mbuf**, %struct.mbuf*** %5, align 8
  %70 = load %struct.mbuf*, %struct.mbuf** %69, align 8
  %71 = call i32 @bus_dmamap_load_mbuf_sg(i32 %65, i32 %68, %struct.mbuf* %70, %struct.TYPE_11__* %21, i32* %13, i32 0)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %59
  %75 = load %struct.mbuf**, %struct.mbuf*** %5, align 8
  %76 = load %struct.mbuf*, %struct.mbuf** %75, align 8
  %77 = call i32 @m_freem(%struct.mbuf* %76)
  %78 = load %struct.mbuf**, %struct.mbuf*** %5, align 8
  store %struct.mbuf* null, %struct.mbuf** %78, align 8
  %79 = load i32, i32* %11, align 4
  store i32 %79, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %275

80:                                               ; preds = %59
  br label %87

81:                                               ; preds = %31
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load i32, i32* %11, align 4
  store i32 %85, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %275

86:                                               ; preds = %81
  br label %87

87:                                               ; preds = %86, %80
  %88 = load i32, i32* %13, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %87
  %91 = load %struct.mbuf**, %struct.mbuf*** %5, align 8
  %92 = load %struct.mbuf*, %struct.mbuf** %91, align 8
  %93 = call i32 @m_freem(%struct.mbuf* %92)
  %94 = load %struct.mbuf**, %struct.mbuf*** %5, align 8
  store %struct.mbuf* null, %struct.mbuf** %94, align 8
  %95 = load i32, i32* @EIO, align 4
  store i32 %95, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %275

96:                                               ; preds = %87
  %97 = load %struct.mbuf**, %struct.mbuf*** %5, align 8
  %98 = load %struct.mbuf*, %struct.mbuf** %97, align 8
  store %struct.mbuf* %98, %struct.mbuf** %8, align 8
  store i32 0, i32* %15, align 4
  %99 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %100 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @STGE_CSUM_FEATURES, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %144

106:                                              ; preds = %96
  %107 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %108 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @CSUM_IP, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %106
  %115 = load i32, i32* @TFD_IPChecksumEnable, align 4
  %116 = load i32, i32* %15, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %15, align 4
  br label %118

118:                                              ; preds = %114, %106
  %119 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %120 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @CSUM_TCP, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %118
  %127 = load i32, i32* @TFD_TCPChecksumEnable, align 4
  %128 = load i32, i32* %15, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %15, align 4
  br label %143

130:                                              ; preds = %118
  %131 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %132 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @CSUM_UDP, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %130
  %139 = load i32, i32* @TFD_UDPChecksumEnable, align 4
  %140 = load i32, i32* %15, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %15, align 4
  br label %142

142:                                              ; preds = %138, %130
  br label %143

143:                                              ; preds = %142, %126
  br label %144

144:                                              ; preds = %143, %96
  %145 = load %struct.stge_softc*, %struct.stge_softc** %4, align 8
  %146 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  store i32 %148, i32* %14, align 4
  %149 = load %struct.stge_softc*, %struct.stge_softc** %4, align 8
  %150 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 0
  %152 = load %struct.stge_tfd*, %struct.stge_tfd** %151, align 8
  %153 = load i32, i32* %14, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.stge_tfd, %struct.stge_tfd* %152, i64 %154
  store %struct.stge_tfd* %155, %struct.stge_tfd** %7, align 8
  store i32 0, i32* %12, align 4
  br label %156

156:                                              ; preds = %182, %144
  %157 = load i32, i32* %12, align 4
  %158 = load i32, i32* %13, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %185

160:                                              ; preds = %156
  %161 = load i32, i32* %12, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @FRAG_ADDR(i32 %165)
  %167 = load i32, i32* %12, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @FRAG_LEN(i32 %171)
  %173 = or i32 %166, %172
  %174 = call i8* @htole64(i32 %173)
  %175 = load %struct.stge_tfd*, %struct.stge_tfd** %7, align 8
  %176 = getelementptr inbounds %struct.stge_tfd, %struct.stge_tfd* %175, i32 0, i32 1
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %176, align 8
  %178 = load i32, i32* %12, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 0
  store i8* %174, i8** %181, align 8
  br label %182

182:                                              ; preds = %160
  %183 = load i32, i32* %12, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %12, align 4
  br label %156

185:                                              ; preds = %156
  %186 = load %struct.stge_softc*, %struct.stge_softc** %4, align 8
  %187 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = add nsw i64 %189, 1
  store i64 %190, i64* %188, align 8
  %191 = load i32, i32* %14, align 4
  %192 = call i32 @TFD_FrameId(i32 %191)
  %193 = load i32, i32* @TFD_WordAlign_disable, align 4
  %194 = call i32 @TFD_WordAlign(i32 %193)
  %195 = or i32 %192, %194
  %196 = load i32, i32* %13, align 4
  %197 = call i32 @TFD_FragCount(i32 %196)
  %198 = or i32 %195, %197
  %199 = load i32, i32* %15, align 4
  %200 = or i32 %198, %199
  store i32 %200, i32* %16, align 4
  %201 = load %struct.stge_softc*, %struct.stge_softc** %4, align 8
  %202 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @STGE_TX_HIWAT, align 8
  %206 = icmp sge i64 %204, %205
  br i1 %206, label %207, label %211

207:                                              ; preds = %185
  %208 = load i32, i32* @TFD_TxDMAIndicate, align 4
  %209 = load i32, i32* %16, align 4
  %210 = or i32 %209, %208
  store i32 %210, i32* %16, align 4
  br label %211

211:                                              ; preds = %207, %185
  %212 = load i32, i32* %14, align 4
  %213 = add nsw i32 %212, 1
  %214 = load i32, i32* @STGE_TX_RING_CNT, align 4
  %215 = srem i32 %213, %214
  %216 = load %struct.stge_softc*, %struct.stge_softc** %4, align 8
  %217 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 0
  store i32 %215, i32* %218, align 8
  %219 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %220 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @M_VLANTAG, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %235

225:                                              ; preds = %211
  %226 = load i32, i32* @TFD_VLANTagInsert, align 4
  %227 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %228 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @TFD_VID(i32 %230)
  %232 = or i32 %226, %231
  %233 = load i32, i32* %16, align 4
  %234 = or i32 %233, %232
  store i32 %234, i32* %16, align 4
  br label %235

235:                                              ; preds = %225, %211
  %236 = load i32, i32* %16, align 4
  %237 = call i8* @htole64(i32 %236)
  %238 = load %struct.stge_tfd*, %struct.stge_tfd** %7, align 8
  %239 = getelementptr inbounds %struct.stge_tfd, %struct.stge_tfd* %238, i32 0, i32 0
  store i8* %237, i8** %239, align 8
  %240 = load %struct.stge_softc*, %struct.stge_softc** %4, align 8
  %241 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 6
  %243 = load i32, i32* @tx_q, align 4
  %244 = call i32 @STAILQ_REMOVE_HEAD(i32* %242, i32 %243)
  %245 = load %struct.stge_softc*, %struct.stge_softc** %4, align 8
  %246 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 5
  %248 = load %struct.stge_txdesc*, %struct.stge_txdesc** %6, align 8
  %249 = load i32, i32* @tx_q, align 4
  %250 = call i32 @STAILQ_INSERT_TAIL(i32* %247, %struct.stge_txdesc* %248, i32 %249)
  %251 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %252 = load %struct.stge_txdesc*, %struct.stge_txdesc** %6, align 8
  %253 = getelementptr inbounds %struct.stge_txdesc, %struct.stge_txdesc* %252, i32 0, i32 1
  store %struct.mbuf* %251, %struct.mbuf** %253, align 8
  %254 = load %struct.stge_softc*, %struct.stge_softc** %4, align 8
  %255 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %255, i32 0, i32 4
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.stge_txdesc*, %struct.stge_txdesc** %6, align 8
  %259 = getelementptr inbounds %struct.stge_txdesc, %struct.stge_txdesc* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %262 = call i32 @bus_dmamap_sync(i32 %257, i32 %260, i32 %261)
  %263 = load %struct.stge_softc*, %struct.stge_softc** %4, align 8
  %264 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %264, i32 0, i32 3
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.stge_softc*, %struct.stge_softc** %4, align 8
  %268 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %272 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %273 = or i32 %271, %272
  %274 = call i32 @bus_dmamap_sync(i32 %266, i32 %270, i32 %273)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %275

275:                                              ; preds = %235, %90, %84, %74, %53, %29
  %276 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %276)
  %277 = load i32, i32* %3, align 4
  ret i32 %277
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @STGE_LOCK_ASSERT(%struct.stge_softc*) #2

declare dso_local %struct.stge_txdesc* @STAILQ_FIRST(i32*) #2

declare dso_local i32 @bus_dmamap_load_mbuf_sg(i32, i32, %struct.mbuf*, %struct.TYPE_11__*, i32*, i32) #2

declare dso_local %struct.mbuf* @m_collapse(%struct.mbuf*, i32, i32) #2

declare dso_local i32 @m_freem(%struct.mbuf*) #2

declare dso_local i8* @htole64(i32) #2

declare dso_local i32 @FRAG_ADDR(i32) #2

declare dso_local i32 @FRAG_LEN(i32) #2

declare dso_local i32 @TFD_FrameId(i32) #2

declare dso_local i32 @TFD_WordAlign(i32) #2

declare dso_local i32 @TFD_FragCount(i32) #2

declare dso_local i32 @TFD_VID(i32) #2

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #2

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.stge_txdesc*, i32) #2

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
