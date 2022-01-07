; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_txrx.c_bnxt_isc_txd_encap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_txrx.c_bnxt_isc_txd_encap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.bnxt_softc = type { %struct.bnxt_ring* }
%struct.bnxt_ring = type { i64 }
%struct.tx_bd_long = type { i32, i8*, i8*, i8* }
%struct.tx_bd_long_hi = type { i8*, i32, i64, i8*, i8* }

@CSUM_OFFLOAD = common dso_local global i32 0, align 4
@CSUM_TSO = common dso_local global i32 0, align 4
@CSUM_IP = common dso_local global i32 0, align 4
@M_VLANTAG = common dso_local global i32 0, align 4
@TX_BD_SHORT_FLAGS_BD_CNT_SFT = common dso_local global i32 0, align 4
@TX_BD_SHORT_FLAGS_BD_CNT_MASK = common dso_local global i32 0, align 4
@TX_BD_SHORT_FLAGS_LHINT_GTE2K = common dso_local global i32 0, align 4
@bnxt_tx_lhint = common dso_local global i32* null, align 8
@TX_BD_LONG_TYPE_TX_BD_LONG = common dso_local global i32 0, align 4
@TX_BD_LONG_CFA_META_KEY_VLAN_TAG = common dso_local global i32 0, align 4
@TX_BD_LONG_CFA_META_VLAN_TPID_TPID8100 = common dso_local global i32 0, align 4
@TX_BD_LONG_LFLAGS_LSO = common dso_local global i32 0, align 4
@TX_BD_LONG_LFLAGS_T_IPID = common dso_local global i32 0, align 4
@TX_BD_LONG_LFLAGS_TCP_UDP_CHKSUM = common dso_local global i32 0, align 4
@TX_BD_LONG_LFLAGS_IP_CHKSUM = common dso_local global i32 0, align 4
@TX_BD_SHORT_TYPE_TX_BD_SHORT = common dso_local global i32 0, align 4
@TX_BD_SHORT_FLAGS_PACKET_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_5__*)* @bnxt_isc_txd_encap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_isc_txd_encap(i8* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.bnxt_softc*, align 8
  %6 = alloca %struct.bnxt_ring*, align 8
  %7 = alloca %struct.tx_bd_long*, align 8
  %8 = alloca %struct.tx_bd_long_hi*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = bitcast i8* %14 to %struct.bnxt_softc*
  store %struct.bnxt_softc* %15, %struct.bnxt_softc** %5, align 8
  %16 = load %struct.bnxt_softc*, %struct.bnxt_softc** %5, align 8
  %17 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %16, i32 0, i32 0
  %18 = load %struct.bnxt_ring*, %struct.bnxt_ring** %17, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.bnxt_ring, %struct.bnxt_ring* %18, i64 %21
  store %struct.bnxt_ring* %22, %struct.bnxt_ring** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @CSUM_OFFLOAD, align 4
  %27 = load i32, i32* @CSUM_TSO, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @CSUM_IP, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %25, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %2
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @M_VLANTAG, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33, %2
  store i32 1, i32* %9, align 4
  br label %41

41:                                               ; preds = %40, %33
  store i32 1, i32* %9, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 3
  store i64 %44, i64* %46, align 8
  %47 = load %struct.bnxt_ring*, %struct.bnxt_ring** %6, align 8
  %48 = getelementptr inbounds %struct.bnxt_ring, %struct.bnxt_ring* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to %struct.tx_bd_long*
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.tx_bd_long, %struct.tx_bd_long* %50, i64 %53
  store %struct.tx_bd_long* %54, %struct.tx_bd_long** %7, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 13
  store i64 0, i64* %56, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %59, %60
  %62 = shl i32 %61, 24
  %63 = sext i32 %62 to i64
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = or i64 %63, %66
  %68 = trunc i64 %67 to i32
  %69 = load %struct.tx_bd_long*, %struct.tx_bd_long** %7, align 8
  %70 = getelementptr inbounds %struct.tx_bd_long, %struct.tx_bd_long* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 12
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i8* @htole16(i32 %78)
  %80 = load %struct.tx_bd_long*, %struct.tx_bd_long** %7, align 8
  %81 = getelementptr inbounds %struct.tx_bd_long, %struct.tx_bd_long* %80, i32 0, i32 3
  store i8* %79, i8** %81, align 8
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 12
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = load i32, i32* %13, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %13, align 4
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i8* @htole64(i32 %90)
  %92 = load %struct.tx_bd_long*, %struct.tx_bd_long** %7, align 8
  %93 = getelementptr inbounds %struct.tx_bd_long, %struct.tx_bd_long* %92, i32 0, i32 2
  store i8* %91, i8** %93, align 8
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %96, %97
  %99 = load i32, i32* @TX_BD_SHORT_FLAGS_BD_CNT_SFT, align 4
  %100 = shl i32 %98, %99
  %101 = load i32, i32* @TX_BD_SHORT_FLAGS_BD_CNT_MASK, align 4
  %102 = and i32 %100, %101
  store i32 %102, i32* %10, align 4
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 6
  %105 = load i32, i32* %104, align 4
  %106 = icmp sge i32 %105, 2048
  br i1 %106, label %107, label %111

107:                                              ; preds = %41
  %108 = load i32, i32* @TX_BD_SHORT_FLAGS_LHINT_GTE2K, align 4
  %109 = load i32, i32* %10, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %10, align 4
  br label %122

111:                                              ; preds = %41
  %112 = load i32*, i32** @bnxt_tx_lhint, align 8
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 4
  %116 = ashr i32 %115, 9
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %112, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %10, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %10, align 4
  br label %122

122:                                              ; preds = %111, %107
  %123 = load i32, i32* %9, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %232

125:                                              ; preds = %122
  %126 = load i32, i32* @TX_BD_LONG_TYPE_TX_BD_LONG, align 4
  %127 = load i32, i32* %10, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %10, align 4
  %129 = load %struct.bnxt_ring*, %struct.bnxt_ring** %6, align 8
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = trunc i64 %132 to i32
  %134 = call i8* @RING_NEXT(%struct.bnxt_ring* %129, i32 %133)
  %135 = ptrtoint i8* %134 to i64
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 3
  store i64 %135, i64* %137, align 8
  %138 = load %struct.bnxt_ring*, %struct.bnxt_ring** %6, align 8
  %139 = getelementptr inbounds %struct.bnxt_ring, %struct.bnxt_ring* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = inttoptr i64 %140 to %struct.tx_bd_long_hi*
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = getelementptr inbounds %struct.tx_bd_long_hi, %struct.tx_bd_long_hi* %141, i64 %144
  store %struct.tx_bd_long_hi* %145, %struct.tx_bd_long_hi** %8, align 8
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 7
  %148 = load i32, i32* %147, align 8
  %149 = call i8* @htole16(i32 %148)
  %150 = load %struct.tx_bd_long_hi*, %struct.tx_bd_long_hi** %8, align 8
  %151 = getelementptr inbounds %struct.tx_bd_long_hi, %struct.tx_bd_long_hi* %150, i32 0, i32 4
  store i8* %149, i8** %151, align 8
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 8
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 9
  %157 = load i32, i32* %156, align 8
  %158 = add nsw i32 %154, %157
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 10
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %158, %161
  %163 = ashr i32 %162, 1
  %164 = call i8* @htole16(i32 %163)
  %165 = load %struct.tx_bd_long_hi*, %struct.tx_bd_long_hi** %8, align 8
  %166 = getelementptr inbounds %struct.tx_bd_long_hi, %struct.tx_bd_long_hi* %165, i32 0, i32 3
  store i8* %164, i8** %166, align 8
  %167 = load %struct.tx_bd_long_hi*, %struct.tx_bd_long_hi** %8, align 8
  %168 = getelementptr inbounds %struct.tx_bd_long_hi, %struct.tx_bd_long_hi* %167, i32 0, i32 2
  store i64 0, i64* %168, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @M_VLANTAG, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %184

175:                                              ; preds = %125
  %176 = load i32, i32* @TX_BD_LONG_CFA_META_KEY_VLAN_TAG, align 4
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 11
  %179 = load i32, i32* %178, align 8
  %180 = or i32 %176, %179
  store i32 %180, i32* %12, align 4
  %181 = load i32, i32* @TX_BD_LONG_CFA_META_VLAN_TPID_TPID8100, align 4
  %182 = load i32, i32* %12, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %12, align 4
  br label %184

184:                                              ; preds = %175, %125
  %185 = load i32, i32* %12, align 4
  %186 = call i32 @htole32(i32 %185)
  %187 = load %struct.tx_bd_long_hi*, %struct.tx_bd_long_hi** %8, align 8
  %188 = getelementptr inbounds %struct.tx_bd_long_hi, %struct.tx_bd_long_hi* %187, i32 0, i32 1
  store i32 %186, i32* %188, align 8
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @CSUM_TSO, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %184
  %196 = load i32, i32* @TX_BD_LONG_LFLAGS_LSO, align 4
  %197 = load i32, i32* @TX_BD_LONG_LFLAGS_T_IPID, align 4
  %198 = or i32 %196, %197
  %199 = load i32, i32* %11, align 4
  %200 = or i32 %199, %198
  store i32 %200, i32* %11, align 4
  br label %227

201:                                              ; preds = %184
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @CSUM_OFFLOAD, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %214

208:                                              ; preds = %201
  %209 = load i32, i32* @TX_BD_LONG_LFLAGS_TCP_UDP_CHKSUM, align 4
  %210 = load i32, i32* @TX_BD_LONG_LFLAGS_IP_CHKSUM, align 4
  %211 = or i32 %209, %210
  %212 = load i32, i32* %11, align 4
  %213 = or i32 %212, %211
  store i32 %213, i32* %11, align 4
  br label %226

214:                                              ; preds = %201
  %215 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @CSUM_IP, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %225

221:                                              ; preds = %214
  %222 = load i32, i32* @TX_BD_LONG_LFLAGS_IP_CHKSUM, align 4
  %223 = load i32, i32* %11, align 4
  %224 = or i32 %223, %222
  store i32 %224, i32* %11, align 4
  br label %225

225:                                              ; preds = %221, %214
  br label %226

226:                                              ; preds = %225, %208
  br label %227

227:                                              ; preds = %226, %195
  %228 = load i32, i32* %11, align 4
  %229 = call i8* @htole16(i32 %228)
  %230 = load %struct.tx_bd_long_hi*, %struct.tx_bd_long_hi** %8, align 8
  %231 = getelementptr inbounds %struct.tx_bd_long_hi, %struct.tx_bd_long_hi* %230, i32 0, i32 0
  store i8* %229, i8** %231, align 8
  br label %236

232:                                              ; preds = %122
  %233 = load i32, i32* @TX_BD_SHORT_TYPE_TX_BD_SHORT, align 4
  %234 = load i32, i32* %10, align 4
  %235 = or i32 %234, %233
  store i32 %235, i32* %10, align 4
  br label %236

236:                                              ; preds = %232, %227
  br label %237

237:                                              ; preds = %288, %236
  %238 = load i32, i32* %13, align 4
  %239 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 5
  %241 = load i32, i32* %240, align 8
  %242 = icmp slt i32 %238, %241
  br i1 %242, label %243, label %291

243:                                              ; preds = %237
  %244 = load i32, i32* %10, align 4
  %245 = call i8* @htole16(i32 %244)
  %246 = load %struct.tx_bd_long*, %struct.tx_bd_long** %7, align 8
  %247 = getelementptr inbounds %struct.tx_bd_long, %struct.tx_bd_long* %246, i32 0, i32 1
  store i8* %245, i8** %247, align 8
  %248 = load %struct.bnxt_ring*, %struct.bnxt_ring** %6, align 8
  %249 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %250 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %249, i32 0, i32 3
  %251 = load i64, i64* %250, align 8
  %252 = trunc i64 %251 to i32
  %253 = call i8* @RING_NEXT(%struct.bnxt_ring* %248, i32 %252)
  %254 = ptrtoint i8* %253 to i64
  %255 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %255, i32 0, i32 3
  store i64 %254, i64* %256, align 8
  %257 = load %struct.bnxt_ring*, %struct.bnxt_ring** %6, align 8
  %258 = getelementptr inbounds %struct.bnxt_ring, %struct.bnxt_ring* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = inttoptr i64 %259 to %struct.tx_bd_long*
  %261 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %261, i32 0, i32 3
  %263 = load i64, i64* %262, align 8
  %264 = getelementptr inbounds %struct.tx_bd_long, %struct.tx_bd_long* %260, i64 %263
  store %struct.tx_bd_long* %264, %struct.tx_bd_long** %7, align 8
  %265 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %265, i32 0, i32 12
  %267 = load %struct.TYPE_4__*, %struct.TYPE_4__** %266, align 8
  %268 = load i32, i32* %13, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = call i8* @htole16(i32 %272)
  %274 = load %struct.tx_bd_long*, %struct.tx_bd_long** %7, align 8
  %275 = getelementptr inbounds %struct.tx_bd_long, %struct.tx_bd_long* %274, i32 0, i32 3
  store i8* %273, i8** %275, align 8
  %276 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %276, i32 0, i32 12
  %278 = load %struct.TYPE_4__*, %struct.TYPE_4__** %277, align 8
  %279 = load i32, i32* %13, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %278, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = call i8* @htole64(i32 %283)
  %285 = load %struct.tx_bd_long*, %struct.tx_bd_long** %7, align 8
  %286 = getelementptr inbounds %struct.tx_bd_long, %struct.tx_bd_long* %285, i32 0, i32 2
  store i8* %284, i8** %286, align 8
  %287 = load i32, i32* @TX_BD_SHORT_TYPE_TX_BD_SHORT, align 4
  store i32 %287, i32* %10, align 4
  br label %288

288:                                              ; preds = %243
  %289 = load i32, i32* %13, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %13, align 4
  br label %237

291:                                              ; preds = %237
  %292 = load i32, i32* @TX_BD_SHORT_FLAGS_PACKET_END, align 4
  %293 = load i32, i32* %10, align 4
  %294 = or i32 %293, %292
  store i32 %294, i32* %10, align 4
  %295 = load i32, i32* %10, align 4
  %296 = call i8* @htole16(i32 %295)
  %297 = load %struct.tx_bd_long*, %struct.tx_bd_long** %7, align 8
  %298 = getelementptr inbounds %struct.tx_bd_long, %struct.tx_bd_long* %297, i32 0, i32 1
  store i8* %296, i8** %298, align 8
  %299 = load %struct.bnxt_ring*, %struct.bnxt_ring** %6, align 8
  %300 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %301 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %300, i32 0, i32 3
  %302 = load i64, i64* %301, align 8
  %303 = trunc i64 %302 to i32
  %304 = call i8* @RING_NEXT(%struct.bnxt_ring* %299, i32 %303)
  %305 = ptrtoint i8* %304 to i64
  %306 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %307 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %306, i32 0, i32 3
  store i64 %305, i64* %307, align 8
  ret i32 0
}

declare dso_local i8* @htole16(i32) #1

declare dso_local i8* @htole64(i32) #1

declare dso_local i8* @RING_NEXT(%struct.bnxt_ring*, i32) #1

declare dso_local i32 @htole32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
