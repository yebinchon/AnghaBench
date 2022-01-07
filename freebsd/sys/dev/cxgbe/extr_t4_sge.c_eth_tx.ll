; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_eth_tx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_eth_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_ring = type { i32, %struct.mbuf**, %struct.sge_txq* }
%struct.mbuf = type { %struct.mbuf* }
%struct.sge_txq = type { %struct.ifnet*, %struct.sge_eq }
%struct.ifnet = type { %struct.vi_info* }
%struct.vi_info = type { %struct.port_info* }
%struct.port_info = type { %struct.adapter* }
%struct.adapter = type { i32 }
%struct.sge_eq = type { i64, i64, i32, i64, i64, i32, i32* }
%struct.txpkts = type { i32 }
%struct.fw_eth_tx_pkts_wr = type { i32 }

@SGE_MAX_WR_NDESC = common dso_local global i64 0, align 8
@EQ_ESIZE = common dso_local global i32 0, align 4
@IS_VF = common dso_local global i32 0, align 4
@MC_RAW_WR = common dso_local global i32 0, align 4
@F_FW_WR_EQUIQ = common dso_local global i32 0, align 4
@F_FW_WR_EQUEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mp_ring*, i64, i64)* @eth_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @eth_tx(%struct.mp_ring* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.mp_ring*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sge_txq*, align 8
  %8 = alloca %struct.sge_eq*, align 8
  %9 = alloca %struct.ifnet*, align 8
  %10 = alloca %struct.vi_info*, align 8
  %11 = alloca %struct.port_info*, align 8
  %12 = alloca %struct.adapter*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.mbuf*, align 8
  %20 = alloca %struct.mbuf*, align 8
  %21 = alloca %struct.txpkts, align 4
  %22 = alloca %struct.fw_eth_tx_pkts_wr*, align 8
  store %struct.mp_ring* %0, %struct.mp_ring** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %23 = load %struct.mp_ring*, %struct.mp_ring** %4, align 8
  %24 = getelementptr inbounds %struct.mp_ring, %struct.mp_ring* %23, i32 0, i32 2
  %25 = load %struct.sge_txq*, %struct.sge_txq** %24, align 8
  store %struct.sge_txq* %25, %struct.sge_txq** %7, align 8
  %26 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %27 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %26, i32 0, i32 1
  store %struct.sge_eq* %27, %struct.sge_eq** %8, align 8
  %28 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %29 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %28, i32 0, i32 0
  %30 = load %struct.ifnet*, %struct.ifnet** %29, align 8
  store %struct.ifnet* %30, %struct.ifnet** %9, align 8
  %31 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %32 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %31, i32 0, i32 0
  %33 = load %struct.vi_info*, %struct.vi_info** %32, align 8
  store %struct.vi_info* %33, %struct.vi_info** %10, align 8
  %34 = load %struct.vi_info*, %struct.vi_info** %10, align 8
  %35 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %34, i32 0, i32 0
  %36 = load %struct.port_info*, %struct.port_info** %35, align 8
  store %struct.port_info* %36, %struct.port_info** %11, align 8
  %37 = load %struct.port_info*, %struct.port_info** %11, align 8
  %38 = getelementptr inbounds %struct.port_info, %struct.port_info* %37, i32 0, i32 0
  %39 = load %struct.adapter*, %struct.adapter** %38, align 8
  store %struct.adapter* %39, %struct.adapter** %12, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load %struct.mp_ring*, %struct.mp_ring** %4, align 8
  %43 = getelementptr inbounds %struct.mp_ring, %struct.mp_ring* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @IDXDIFF(i64 %40, i64 %41, i32 %44)
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %14, align 8
  %47 = load i64, i64* %14, align 8
  %48 = icmp ugt i64 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @MPASS(i32 %49)
  store i64 0, i64* %13, align 8
  %51 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %52 = call i32 @TXQ_LOCK(%struct.sge_txq* %51)
  %53 = load %struct.sge_eq*, %struct.sge_eq** %8, align 8
  %54 = call i32 @discard_tx(%struct.sge_eq* %53)
  %55 = call i64 @__predict_false(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %84

57:                                               ; preds = %3
  br label %58

58:                                               ; preds = %79, %57
  %59 = load i64, i64* %5, align 8
  %60 = load i64, i64* %6, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %80

62:                                               ; preds = %58
  %63 = load %struct.mp_ring*, %struct.mp_ring** %4, align 8
  %64 = getelementptr inbounds %struct.mp_ring, %struct.mp_ring* %63, i32 0, i32 1
  %65 = load %struct.mbuf**, %struct.mbuf*** %64, align 8
  %66 = load i64, i64* %5, align 8
  %67 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %65, i64 %66
  %68 = load %struct.mbuf*, %struct.mbuf** %67, align 8
  store %struct.mbuf* %68, %struct.mbuf** %19, align 8
  %69 = load %struct.mbuf*, %struct.mbuf** %19, align 8
  %70 = call i32 @m_freem(%struct.mbuf* %69)
  %71 = load i64, i64* %5, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %5, align 8
  %73 = load %struct.mp_ring*, %struct.mp_ring** %4, align 8
  %74 = getelementptr inbounds %struct.mp_ring, %struct.mp_ring* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = icmp eq i64 %72, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %62
  store i64 0, i64* %5, align 8
  br label %79

79:                                               ; preds = %78, %62
  br label %58

80:                                               ; preds = %58
  %81 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %82 = call i64 @reclaim_tx_descs(%struct.sge_txq* %81, i32 2048)
  %83 = load i64, i64* %14, align 8
  store i64 %83, i64* %13, align 8
  br label %462

84:                                               ; preds = %3
  %85 = load %struct.sge_eq*, %struct.sge_eq** %8, align 8
  %86 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.sge_eq*, %struct.sge_eq** %8, align 8
  %89 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %87, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %84
  %93 = load %struct.sge_eq*, %struct.sge_eq** %8, align 8
  %94 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = sub nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  store i64 %97, i64* %15, align 8
  br label %111

98:                                               ; preds = %84
  %99 = load %struct.sge_eq*, %struct.sge_eq** %8, align 8
  %100 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.sge_eq*, %struct.sge_eq** %8, align 8
  %103 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.sge_eq*, %struct.sge_eq** %8, align 8
  %106 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @IDXDIFF(i64 %101, i64 %104, i32 %107)
  %109 = sub nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  store i64 %110, i64* %15, align 8
  br label %111

111:                                              ; preds = %98, %92
  %112 = load %struct.sge_eq*, %struct.sge_eq** %8, align 8
  %113 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.sge_eq*, %struct.sge_eq** %8, align 8
  %116 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.sge_eq*, %struct.sge_eq** %8, align 8
  %119 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @IDXDIFF(i64 %114, i64 %117, i32 %120)
  %122 = sext i32 %121 to i64
  store i64 %122, i64* %16, align 8
  br label %123

123:                                              ; preds = %449, %111
  %124 = load i64, i64* %14, align 8
  %125 = icmp ugt i64 %124, 0
  br i1 %125, label %126, label %451

126:                                              ; preds = %123
  %127 = load %struct.mp_ring*, %struct.mp_ring** %4, align 8
  %128 = getelementptr inbounds %struct.mp_ring, %struct.mp_ring* %127, i32 0, i32 1
  %129 = load %struct.mbuf**, %struct.mbuf*** %128, align 8
  %130 = load i64, i64* %5, align 8
  %131 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %129, i64 %130
  %132 = load %struct.mbuf*, %struct.mbuf** %131, align 8
  store %struct.mbuf* %132, %struct.mbuf** %19, align 8
  %133 = load %struct.mbuf*, %struct.mbuf** %19, align 8
  %134 = call i32 @M_ASSERTPKTHDR(%struct.mbuf* %133)
  %135 = load %struct.mbuf*, %struct.mbuf** %19, align 8
  %136 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %135, i32 0, i32 0
  %137 = load %struct.mbuf*, %struct.mbuf** %136, align 8
  %138 = icmp eq %struct.mbuf* %137, null
  %139 = zext i1 %138 to i32
  %140 = call i32 @MPASS(i32 %139)
  %141 = load i64, i64* %15, align 8
  %142 = load i64, i64* @SGE_MAX_WR_NDESC, align 8
  %143 = icmp ult i64 %141, %142
  br i1 %143, label %144, label %158

144:                                              ; preds = %126
  %145 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %146 = call i64 @reclaim_tx_descs(%struct.sge_txq* %145, i32 64)
  %147 = load i64, i64* %15, align 8
  %148 = add i64 %147, %146
  store i64 %148, i64* %15, align 8
  %149 = load i64, i64* %15, align 8
  %150 = load %struct.mbuf*, %struct.mbuf** %19, align 8
  %151 = call i32 @mbuf_len16(%struct.mbuf* %150)
  %152 = load i32, i32* @EQ_ESIZE, align 4
  %153 = sdiv i32 %152, 16
  %154 = call i64 @howmany(i32 %151, i32 %153)
  %155 = icmp ult i64 %149, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %144
  br label %451

157:                                              ; preds = %144
  br label %158

158:                                              ; preds = %157, %126
  %159 = load i64, i64* %5, align 8
  %160 = add i64 %159, 1
  store i64 %160, i64* %18, align 8
  %161 = load i64, i64* %18, align 8
  %162 = load %struct.mp_ring*, %struct.mp_ring** %4, align 8
  %163 = getelementptr inbounds %struct.mp_ring, %struct.mp_ring* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = sext i32 %164 to i64
  %166 = icmp eq i64 %161, %165
  %167 = zext i1 %166 to i32
  %168 = call i64 @__predict_false(i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %158
  store i64 0, i64* %18, align 8
  br label %171

171:                                              ; preds = %170, %158
  %172 = load %struct.sge_eq*, %struct.sge_eq** %8, align 8
  %173 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %172, i32 0, i32 6
  %174 = load i32*, i32** %173, align 8
  %175 = load %struct.sge_eq*, %struct.sge_eq** %8, align 8
  %176 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = getelementptr inbounds i32, i32* %174, i64 %177
  %179 = bitcast i32* %178 to i8*
  %180 = bitcast i8* %179 to %struct.fw_eth_tx_pkts_wr*
  store %struct.fw_eth_tx_pkts_wr* %180, %struct.fw_eth_tx_pkts_wr** %22, align 8
  %181 = load %struct.adapter*, %struct.adapter** %12, align 8
  %182 = getelementptr inbounds %struct.adapter, %struct.adapter* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @IS_VF, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %202

187:                                              ; preds = %171
  %188 = load i64, i64* %13, align 8
  %189 = add i64 %188, 1
  store i64 %189, i64* %13, align 8
  %190 = load i64, i64* %14, align 8
  %191 = add i64 %190, -1
  store i64 %191, i64* %14, align 8
  %192 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %193 = load %struct.mbuf*, %struct.mbuf** %19, align 8
  %194 = call i32 @ETHER_BPF_MTAP(%struct.ifnet* %192, %struct.mbuf* %193)
  %195 = load %struct.adapter*, %struct.adapter** %12, align 8
  %196 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %197 = load %struct.fw_eth_tx_pkts_wr*, %struct.fw_eth_tx_pkts_wr** %22, align 8
  %198 = bitcast %struct.fw_eth_tx_pkts_wr* %197 to i8*
  %199 = load %struct.mbuf*, %struct.mbuf** %19, align 8
  %200 = load i64, i64* %15, align 8
  %201 = call i64 @write_txpkt_vm_wr(%struct.adapter* %195, %struct.sge_txq* %196, i8* %198, %struct.mbuf* %199, i64 %200)
  store i64 %201, i64* %17, align 8
  br label %346

202:                                              ; preds = %171
  %203 = load i64, i64* %14, align 8
  %204 = icmp ugt i64 %203, 1
  br i1 %204, label %205, label %313

205:                                              ; preds = %202
  %206 = load %struct.mbuf*, %struct.mbuf** %19, align 8
  %207 = load %struct.mp_ring*, %struct.mp_ring** %4, align 8
  %208 = getelementptr inbounds %struct.mp_ring, %struct.mp_ring* %207, i32 0, i32 1
  %209 = load %struct.mbuf**, %struct.mbuf*** %208, align 8
  %210 = load i64, i64* %18, align 8
  %211 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %209, i64 %210
  %212 = load %struct.mbuf*, %struct.mbuf** %211, align 8
  %213 = load i64, i64* %15, align 8
  %214 = call i64 @try_txpkts(%struct.mbuf* %206, %struct.mbuf* %212, %struct.txpkts* %21, i64 %213)
  %215 = icmp eq i64 %214, 0
  br i1 %215, label %216, label %313

216:                                              ; preds = %205
  %217 = getelementptr inbounds %struct.txpkts, %struct.txpkts* %21, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = icmp eq i32 %218, 2
  %220 = zext i1 %219 to i32
  %221 = call i32 @MPASS(i32 %220)
  %222 = load %struct.mp_ring*, %struct.mp_ring** %4, align 8
  %223 = getelementptr inbounds %struct.mp_ring, %struct.mp_ring* %222, i32 0, i32 1
  %224 = load %struct.mbuf**, %struct.mbuf*** %223, align 8
  %225 = load i64, i64* %18, align 8
  %226 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %224, i64 %225
  %227 = load %struct.mbuf*, %struct.mbuf** %226, align 8
  store %struct.mbuf* %227, %struct.mbuf** %20, align 8
  %228 = load %struct.mbuf*, %struct.mbuf** %20, align 8
  %229 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %228, i32 0, i32 0
  %230 = load %struct.mbuf*, %struct.mbuf** %229, align 8
  %231 = icmp eq %struct.mbuf* %230, null
  %232 = zext i1 %231 to i32
  %233 = call i32 @MPASS(i32 %232)
  %234 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %235 = load %struct.mbuf*, %struct.mbuf** %19, align 8
  %236 = call i32 @ETHER_BPF_MTAP(%struct.ifnet* %234, %struct.mbuf* %235)
  %237 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %238 = load %struct.mbuf*, %struct.mbuf** %20, align 8
  %239 = call i32 @ETHER_BPF_MTAP(%struct.ifnet* %237, %struct.mbuf* %238)
  %240 = load %struct.mbuf*, %struct.mbuf** %20, align 8
  %241 = load %struct.mbuf*, %struct.mbuf** %19, align 8
  %242 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %241, i32 0, i32 0
  store %struct.mbuf* %240, %struct.mbuf** %242, align 8
  %243 = load i64, i64* %18, align 8
  %244 = add i64 %243, 1
  store i64 %244, i64* %18, align 8
  %245 = load %struct.mp_ring*, %struct.mp_ring** %4, align 8
  %246 = getelementptr inbounds %struct.mp_ring, %struct.mp_ring* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = sext i32 %247 to i64
  %249 = icmp eq i64 %244, %248
  %250 = zext i1 %249 to i32
  %251 = call i64 @__predict_false(i32 %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %216
  store i64 0, i64* %18, align 8
  br label %254

254:                                              ; preds = %253, %216
  br label %255

255:                                              ; preds = %296, %254
  %256 = load i64, i64* %18, align 8
  %257 = load i64, i64* %6, align 8
  %258 = icmp ne i64 %256, %257
  br i1 %258, label %259, label %297

259:                                              ; preds = %255
  %260 = load %struct.mp_ring*, %struct.mp_ring** %4, align 8
  %261 = getelementptr inbounds %struct.mp_ring, %struct.mp_ring* %260, i32 0, i32 1
  %262 = load %struct.mbuf**, %struct.mbuf*** %261, align 8
  %263 = load i64, i64* %18, align 8
  %264 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %262, i64 %263
  %265 = load %struct.mbuf*, %struct.mbuf** %264, align 8
  %266 = load i64, i64* %15, align 8
  %267 = call i64 @add_to_txpkts(%struct.mbuf* %265, %struct.txpkts* %21, i64 %266)
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %270

269:                                              ; preds = %259
  br label %297

270:                                              ; preds = %259
  %271 = load %struct.mp_ring*, %struct.mp_ring** %4, align 8
  %272 = getelementptr inbounds %struct.mp_ring, %struct.mp_ring* %271, i32 0, i32 1
  %273 = load %struct.mbuf**, %struct.mbuf*** %272, align 8
  %274 = load i64, i64* %18, align 8
  %275 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %273, i64 %274
  %276 = load %struct.mbuf*, %struct.mbuf** %275, align 8
  %277 = load %struct.mbuf*, %struct.mbuf** %20, align 8
  %278 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %277, i32 0, i32 0
  store %struct.mbuf* %276, %struct.mbuf** %278, align 8
  %279 = load %struct.mbuf*, %struct.mbuf** %20, align 8
  %280 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %279, i32 0, i32 0
  %281 = load %struct.mbuf*, %struct.mbuf** %280, align 8
  store %struct.mbuf* %281, %struct.mbuf** %20, align 8
  %282 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %283 = load %struct.mbuf*, %struct.mbuf** %20, align 8
  %284 = call i32 @ETHER_BPF_MTAP(%struct.ifnet* %282, %struct.mbuf* %283)
  %285 = load i64, i64* %18, align 8
  %286 = add i64 %285, 1
  store i64 %286, i64* %18, align 8
  %287 = load %struct.mp_ring*, %struct.mp_ring** %4, align 8
  %288 = getelementptr inbounds %struct.mp_ring, %struct.mp_ring* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = sext i32 %289 to i64
  %291 = icmp eq i64 %286, %290
  %292 = zext i1 %291 to i32
  %293 = call i64 @__predict_false(i32 %292)
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %296

295:                                              ; preds = %270
  store i64 0, i64* %18, align 8
  br label %296

296:                                              ; preds = %295, %270
  br label %255

297:                                              ; preds = %269, %255
  %298 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %299 = load %struct.fw_eth_tx_pkts_wr*, %struct.fw_eth_tx_pkts_wr** %22, align 8
  %300 = load %struct.mbuf*, %struct.mbuf** %19, align 8
  %301 = load i64, i64* %15, align 8
  %302 = call i64 @write_txpkts_wr(%struct.sge_txq* %298, %struct.fw_eth_tx_pkts_wr* %299, %struct.mbuf* %300, %struct.txpkts* %21, i64 %301)
  store i64 %302, i64* %17, align 8
  %303 = getelementptr inbounds %struct.txpkts, %struct.txpkts* %21, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = sext i32 %304 to i64
  %306 = load i64, i64* %13, align 8
  %307 = add i64 %306, %305
  store i64 %307, i64* %13, align 8
  %308 = getelementptr inbounds %struct.txpkts, %struct.txpkts* %21, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = sext i32 %309 to i64
  %311 = load i64, i64* %14, align 8
  %312 = sub i64 %311, %310
  store i64 %312, i64* %14, align 8
  br label %345

313:                                              ; preds = %205, %202
  %314 = load %struct.mbuf*, %struct.mbuf** %19, align 8
  %315 = call i32 @mbuf_cflags(%struct.mbuf* %314)
  %316 = load i32, i32* @MC_RAW_WR, align 4
  %317 = and i32 %315, %316
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %330

319:                                              ; preds = %313
  %320 = load i64, i64* %13, align 8
  %321 = add i64 %320, 1
  store i64 %321, i64* %13, align 8
  %322 = load i64, i64* %14, align 8
  %323 = add i64 %322, -1
  store i64 %323, i64* %14, align 8
  %324 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %325 = load %struct.fw_eth_tx_pkts_wr*, %struct.fw_eth_tx_pkts_wr** %22, align 8
  %326 = bitcast %struct.fw_eth_tx_pkts_wr* %325 to i8*
  %327 = load %struct.mbuf*, %struct.mbuf** %19, align 8
  %328 = load i64, i64* %15, align 8
  %329 = call i64 @write_raw_wr(%struct.sge_txq* %324, i8* %326, %struct.mbuf* %327, i64 %328)
  store i64 %329, i64* %17, align 8
  br label %344

330:                                              ; preds = %313
  %331 = load i64, i64* %13, align 8
  %332 = add i64 %331, 1
  store i64 %332, i64* %13, align 8
  %333 = load i64, i64* %14, align 8
  %334 = add i64 %333, -1
  store i64 %334, i64* %14, align 8
  %335 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %336 = load %struct.mbuf*, %struct.mbuf** %19, align 8
  %337 = call i32 @ETHER_BPF_MTAP(%struct.ifnet* %335, %struct.mbuf* %336)
  %338 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %339 = load %struct.fw_eth_tx_pkts_wr*, %struct.fw_eth_tx_pkts_wr** %22, align 8
  %340 = bitcast %struct.fw_eth_tx_pkts_wr* %339 to i8*
  %341 = load %struct.mbuf*, %struct.mbuf** %19, align 8
  %342 = load i64, i64* %15, align 8
  %343 = call i64 @write_txpkt_wr(%struct.sge_txq* %338, i8* %340, %struct.mbuf* %341, i64 %342)
  store i64 %343, i64* %17, align 8
  br label %344

344:                                              ; preds = %330, %319
  br label %345

345:                                              ; preds = %344, %297
  br label %346

346:                                              ; preds = %345, %187
  %347 = load i64, i64* %17, align 8
  %348 = icmp uge i64 %347, 1
  br i1 %348, label %349, label %357

349:                                              ; preds = %346
  %350 = load i64, i64* %17, align 8
  %351 = load i64, i64* %15, align 8
  %352 = icmp ule i64 %350, %351
  br i1 %352, label %353, label %357

353:                                              ; preds = %349
  %354 = load i64, i64* %17, align 8
  %355 = load i64, i64* @SGE_MAX_WR_NDESC, align 8
  %356 = icmp ule i64 %354, %355
  br label %357

357:                                              ; preds = %353, %349, %346
  %358 = phi i1 [ false, %349 ], [ false, %346 ], [ %356, %353 ]
  %359 = zext i1 %358 to i32
  %360 = call i32 @MPASS(i32 %359)
  %361 = load i64, i64* %17, align 8
  %362 = load i64, i64* %15, align 8
  %363 = sub i64 %362, %361
  store i64 %363, i64* %15, align 8
  %364 = load i64, i64* %17, align 8
  %365 = load i64, i64* %16, align 8
  %366 = add i64 %365, %364
  store i64 %366, i64* %16, align 8
  %367 = load %struct.sge_eq*, %struct.sge_eq** %8, align 8
  %368 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %367, i32 0, i32 0
  %369 = load i64, i64* %368, align 8
  %370 = load i64, i64* %17, align 8
  %371 = load %struct.sge_eq*, %struct.sge_eq** %8, align 8
  %372 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %371, i32 0, i32 2
  %373 = load i32, i32* %372, align 8
  %374 = call i32 @IDXINCR(i64 %369, i64 %370, i32 %373)
  %375 = load %struct.fw_eth_tx_pkts_wr*, %struct.fw_eth_tx_pkts_wr** %22, align 8
  %376 = call i64 @wr_can_update_eq(%struct.fw_eth_tx_pkts_wr* %375)
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %378, label %431

378:                                              ; preds = %357
  %379 = load %struct.sge_eq*, %struct.sge_eq** %8, align 8
  %380 = call i32 @total_available_tx_desc(%struct.sge_eq* %379)
  %381 = load %struct.sge_eq*, %struct.sge_eq** %8, align 8
  %382 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %381, i32 0, i32 2
  %383 = load i32, i32* %382, align 8
  %384 = sdiv i32 %383, 4
  %385 = icmp slt i32 %380, %384
  br i1 %385, label %386, label %405

386:                                              ; preds = %378
  %387 = load %struct.sge_eq*, %struct.sge_eq** %8, align 8
  %388 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %387, i32 0, i32 5
  %389 = call i64 @atomic_cmpset_int(i32* %388, i32 0, i32 1)
  %390 = icmp ne i64 %389, 0
  br i1 %390, label %391, label %405

391:                                              ; preds = %386
  %392 = load i32, i32* @F_FW_WR_EQUIQ, align 4
  %393 = load i32, i32* @F_FW_WR_EQUEQ, align 4
  %394 = or i32 %392, %393
  %395 = call i32 @htobe32(i32 %394)
  %396 = load %struct.fw_eth_tx_pkts_wr*, %struct.fw_eth_tx_pkts_wr** %22, align 8
  %397 = getelementptr inbounds %struct.fw_eth_tx_pkts_wr, %struct.fw_eth_tx_pkts_wr* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 4
  %399 = or i32 %398, %395
  store i32 %399, i32* %397, align 4
  %400 = load %struct.sge_eq*, %struct.sge_eq** %8, align 8
  %401 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %400, i32 0, i32 0
  %402 = load i64, i64* %401, align 8
  %403 = load %struct.sge_eq*, %struct.sge_eq** %8, align 8
  %404 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %403, i32 0, i32 4
  store i64 %402, i64* %404, align 8
  br label %430

405:                                              ; preds = %386, %378
  %406 = load %struct.sge_eq*, %struct.sge_eq** %8, align 8
  %407 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %406, i32 0, i32 0
  %408 = load i64, i64* %407, align 8
  %409 = load %struct.sge_eq*, %struct.sge_eq** %8, align 8
  %410 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %409, i32 0, i32 4
  %411 = load i64, i64* %410, align 8
  %412 = load %struct.sge_eq*, %struct.sge_eq** %8, align 8
  %413 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %412, i32 0, i32 2
  %414 = load i32, i32* %413, align 8
  %415 = call i32 @IDXDIFF(i64 %408, i64 %411, i32 %414)
  %416 = icmp sge i32 %415, 32
  br i1 %416, label %417, label %429

417:                                              ; preds = %405
  %418 = load i32, i32* @F_FW_WR_EQUEQ, align 4
  %419 = call i32 @htobe32(i32 %418)
  %420 = load %struct.fw_eth_tx_pkts_wr*, %struct.fw_eth_tx_pkts_wr** %22, align 8
  %421 = getelementptr inbounds %struct.fw_eth_tx_pkts_wr, %struct.fw_eth_tx_pkts_wr* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 4
  %423 = or i32 %422, %419
  store i32 %423, i32* %421, align 4
  %424 = load %struct.sge_eq*, %struct.sge_eq** %8, align 8
  %425 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %424, i32 0, i32 0
  %426 = load i64, i64* %425, align 8
  %427 = load %struct.sge_eq*, %struct.sge_eq** %8, align 8
  %428 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %427, i32 0, i32 4
  store i64 %426, i64* %428, align 8
  br label %429

429:                                              ; preds = %417, %405
  br label %430

430:                                              ; preds = %429, %391
  br label %431

431:                                              ; preds = %430, %357
  %432 = load i64, i64* %16, align 8
  %433 = icmp uge i64 %432, 16
  br i1 %433, label %434, label %449

434:                                              ; preds = %431
  %435 = load i64, i64* %14, align 8
  %436 = icmp uge i64 %435, 4
  br i1 %436, label %437, label %449

437:                                              ; preds = %434
  %438 = load %struct.adapter*, %struct.adapter** %12, align 8
  %439 = load %struct.sge_eq*, %struct.sge_eq** %8, align 8
  %440 = load i64, i64* %16, align 8
  %441 = call i32 @ring_eq_db(%struct.adapter* %438, %struct.sge_eq* %439, i64 %440)
  %442 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %443 = load i64, i64* %16, align 8
  %444 = mul i64 4, %443
  %445 = trunc i64 %444 to i32
  %446 = call i64 @reclaim_tx_descs(%struct.sge_txq* %442, i32 %445)
  %447 = load i64, i64* %15, align 8
  %448 = add i64 %447, %446
  store i64 %448, i64* %15, align 8
  store i64 0, i64* %16, align 8
  br label %449

449:                                              ; preds = %437, %434, %431
  %450 = load i64, i64* %18, align 8
  store i64 %450, i64* %5, align 8
  br label %123

451:                                              ; preds = %156, %123
  %452 = load i64, i64* %16, align 8
  %453 = icmp ne i64 %452, 0
  br i1 %453, label %454, label %461

454:                                              ; preds = %451
  %455 = load %struct.adapter*, %struct.adapter** %12, align 8
  %456 = load %struct.sge_eq*, %struct.sge_eq** %8, align 8
  %457 = load i64, i64* %16, align 8
  %458 = call i32 @ring_eq_db(%struct.adapter* %455, %struct.sge_eq* %456, i64 %457)
  %459 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %460 = call i64 @reclaim_tx_descs(%struct.sge_txq* %459, i32 32)
  br label %461

461:                                              ; preds = %454, %451
  br label %462

462:                                              ; preds = %461, %80
  %463 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %464 = call i32 @TXQ_UNLOCK(%struct.sge_txq* %463)
  %465 = load i64, i64* %13, align 8
  ret i64 %465
}

declare dso_local i32 @IDXDIFF(i64, i64, i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @TXQ_LOCK(%struct.sge_txq*) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @discard_tx(%struct.sge_eq*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i64 @reclaim_tx_descs(%struct.sge_txq*, i32) #1

declare dso_local i32 @M_ASSERTPKTHDR(%struct.mbuf*) #1

declare dso_local i64 @howmany(i32, i32) #1

declare dso_local i32 @mbuf_len16(%struct.mbuf*) #1

declare dso_local i32 @ETHER_BPF_MTAP(%struct.ifnet*, %struct.mbuf*) #1

declare dso_local i64 @write_txpkt_vm_wr(%struct.adapter*, %struct.sge_txq*, i8*, %struct.mbuf*, i64) #1

declare dso_local i64 @try_txpkts(%struct.mbuf*, %struct.mbuf*, %struct.txpkts*, i64) #1

declare dso_local i64 @add_to_txpkts(%struct.mbuf*, %struct.txpkts*, i64) #1

declare dso_local i64 @write_txpkts_wr(%struct.sge_txq*, %struct.fw_eth_tx_pkts_wr*, %struct.mbuf*, %struct.txpkts*, i64) #1

declare dso_local i32 @mbuf_cflags(%struct.mbuf*) #1

declare dso_local i64 @write_raw_wr(%struct.sge_txq*, i8*, %struct.mbuf*, i64) #1

declare dso_local i64 @write_txpkt_wr(%struct.sge_txq*, i8*, %struct.mbuf*, i64) #1

declare dso_local i32 @IDXINCR(i64, i64, i32) #1

declare dso_local i64 @wr_can_update_eq(%struct.fw_eth_tx_pkts_wr*) #1

declare dso_local i32 @total_available_tx_desc(%struct.sge_eq*) #1

declare dso_local i64 @atomic_cmpset_int(i32*, i32, i32) #1

declare dso_local i32 @htobe32(i32) #1

declare dso_local i32 @ring_eq_db(%struct.adapter*, %struct.sge_eq*, i64) #1

declare dso_local i32 @TXQ_UNLOCK(%struct.sge_txq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
