; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_core.c_lio_push_packet.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_core.c_lio_push_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.octeon_rh = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i64, i64 }
%struct.mbuf = type { %struct.TYPE_6__, i32, i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, %struct.ifnet*, i32 }
%struct.ifnet = type { i32 }
%struct.lio_droq = type { i32, %struct.TYPE_7__, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.lio = type { i32 }

@LIO_IFSTATE_RUNNING = common dso_local global i32 0, align 4
@BYTES_PER_DHLEN_UNIT = common dso_local global i32 0, align 4
@M_HASHTYPE_RSS_IPV4 = common dso_local global i32 0, align 4
@M_HASHTYPE_RSS_TCP_IPV4 = common dso_local global i32 0, align 4
@M_HASHTYPE_RSS_IPV6 = common dso_local global i32 0, align 4
@M_HASHTYPE_RSS_TCP_IPV6 = common dso_local global i32 0, align 4
@M_HASHTYPE_RSS_IPV6_EX = common dso_local global i32 0, align 4
@M_HASHTYPE_RSS_TCP_IPV6_EX = common dso_local global i32 0, align 4
@M_HASHTYPE_OPAQUE_HASH = common dso_local global i32 0, align 4
@M_HASHTYPE_OPAQUE = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@M_VLANTAG = common dso_local global i32 0, align 4
@LIO_IPSUM_VERIFIED = common dso_local global i32 0, align 4
@CSUM_L3_CALC = common dso_local global i32 0, align 4
@CSUM_L3_VALID = common dso_local global i32 0, align 4
@LIO_L4SUM_VERIFIED = common dso_local global i32 0, align 4
@CSUM_L4_CALC = common dso_local global i32 0, align 4
@CSUM_L4_VALID = common dso_local global i32 0, align 4
@CSUM_DATA_VALID = common dso_local global i32 0, align 4
@CSUM_PSEUDO_HDR = common dso_local global i32 0, align 4
@lio_hwlro = common dso_local global i64 0, align 8
@IFCAP_LRO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %union.octeon_rh*, i8*, i8*)* @lio_push_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lio_push_packet(i8* %0, i32 %1, %union.octeon_rh* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.octeon_rh*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.mbuf*, align 8
  %12 = alloca %struct.ifnet*, align 8
  %13 = alloca %struct.lio_droq*, align 8
  %14 = alloca %struct.lio*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %union.octeon_rh* %2, %union.octeon_rh** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = bitcast i8* %20 to %struct.mbuf*
  store %struct.mbuf* %21, %struct.mbuf** %11, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = bitcast i8* %22 to %struct.ifnet*
  store %struct.ifnet* %23, %struct.ifnet** %12, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = bitcast i8* %24 to %struct.lio_droq*
  store %struct.lio_droq* %25, %struct.lio_droq** %13, align 8
  %26 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  %27 = icmp ne %struct.ifnet* %26, null
  br i1 %27, label %28, label %348

28:                                               ; preds = %5
  %29 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  %30 = call %struct.lio* @if_getsoftc(%struct.ifnet* %29)
  store %struct.lio* %30, %struct.lio** %14, align 8
  %31 = load %struct.lio*, %struct.lio** %14, align 8
  %32 = load i32, i32* @LIO_IFSTATE_RUNNING, align 4
  %33 = call i32 @lio_ifstate_check(%struct.lio* %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %28
  %36 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %37 = call i32 @lio_recv_buffer_free(%struct.mbuf* %36)
  %38 = load %struct.lio_droq*, %struct.lio_droq** %13, align 8
  %39 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  br label %356

43:                                               ; preds = %28
  %44 = load %union.octeon_rh*, %union.octeon_rh** %8, align 8
  %45 = bitcast %union.octeon_rh* %44 to %struct.TYPE_5__*
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 5
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %154

49:                                               ; preds = %43
  %50 = load %union.octeon_rh*, %union.octeon_rh** %8, align 8
  %51 = bitcast %union.octeon_rh* %50 to %struct.TYPE_5__*
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %87

55:                                               ; preds = %49
  %56 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %57 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i32*
  %60 = load %union.octeon_rh*, %union.octeon_rh** %8, align 8
  %61 = bitcast %union.octeon_rh* %60 to %struct.TYPE_5__*
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sub nsw i32 %63, 2
  %65 = load i32, i32* @BYTES_PER_DHLEN_UNIT, align 4
  %66 = mul nsw i32 %64, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %59, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @htobe32(i32 %69)
  store i32 %70, i32* %16, align 4
  %71 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %72 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to i32*
  %75 = load %union.octeon_rh*, %union.octeon_rh** %8, align 8
  %76 = bitcast %union.octeon_rh* %75 to %struct.TYPE_5__*
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sub nsw i32 %78, 2
  %80 = load i32, i32* @BYTES_PER_DHLEN_UNIT, align 4
  %81 = mul nsw i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %74, i64 %82
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @htobe32(i32 %85)
  store i32 %86, i32* %15, align 4
  br label %119

87:                                               ; preds = %49
  %88 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %89 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = inttoptr i64 %90 to i32*
  %92 = load %union.octeon_rh*, %union.octeon_rh** %8, align 8
  %93 = bitcast %union.octeon_rh* %92 to %struct.TYPE_5__*
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = sub nsw i32 %95, 1
  %97 = load i32, i32* @BYTES_PER_DHLEN_UNIT, align 4
  %98 = mul nsw i32 %96, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %91, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @htobe32(i32 %101)
  store i32 %102, i32* %16, align 4
  %103 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %104 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = inttoptr i64 %105 to i32*
  %107 = load %union.octeon_rh*, %union.octeon_rh** %8, align 8
  %108 = bitcast %union.octeon_rh* %107 to %struct.TYPE_5__*
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sub nsw i32 %110, 1
  %112 = load i32, i32* @BYTES_PER_DHLEN_UNIT, align 4
  %113 = mul nsw i32 %111, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %106, i64 %114
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @htobe32(i32 %117)
  store i32 %118, i32* %15, align 4
  br label %119

119:                                              ; preds = %87, %55
  %120 = load i32, i32* %16, align 4
  %121 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %122 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  store i32 %120, i32* %123, align 8
  %124 = load i32, i32* %15, align 4
  switch i32 %124, label %149 [
    i32 133, label %125
    i32 130, label %129
    i32 132, label %133
    i32 129, label %137
    i32 131, label %141
    i32 128, label %145
  ]

125:                                              ; preds = %119
  %126 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %127 = load i32, i32* @M_HASHTYPE_RSS_IPV4, align 4
  %128 = call i32 @M_HASHTYPE_SET(%struct.mbuf* %126, i32 %127)
  br label %153

129:                                              ; preds = %119
  %130 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %131 = load i32, i32* @M_HASHTYPE_RSS_TCP_IPV4, align 4
  %132 = call i32 @M_HASHTYPE_SET(%struct.mbuf* %130, i32 %131)
  br label %153

133:                                              ; preds = %119
  %134 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %135 = load i32, i32* @M_HASHTYPE_RSS_IPV6, align 4
  %136 = call i32 @M_HASHTYPE_SET(%struct.mbuf* %134, i32 %135)
  br label %153

137:                                              ; preds = %119
  %138 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %139 = load i32, i32* @M_HASHTYPE_RSS_TCP_IPV6, align 4
  %140 = call i32 @M_HASHTYPE_SET(%struct.mbuf* %138, i32 %139)
  br label %153

141:                                              ; preds = %119
  %142 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %143 = load i32, i32* @M_HASHTYPE_RSS_IPV6_EX, align 4
  %144 = call i32 @M_HASHTYPE_SET(%struct.mbuf* %142, i32 %143)
  br label %153

145:                                              ; preds = %119
  %146 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %147 = load i32, i32* @M_HASHTYPE_RSS_TCP_IPV6_EX, align 4
  %148 = call i32 @M_HASHTYPE_SET(%struct.mbuf* %146, i32 %147)
  br label %153

149:                                              ; preds = %119
  %150 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %151 = load i32, i32* @M_HASHTYPE_OPAQUE_HASH, align 4
  %152 = call i32 @M_HASHTYPE_SET(%struct.mbuf* %150, i32 %151)
  br label %153

153:                                              ; preds = %149, %145, %141, %137, %133, %129, %125
  br label %164

154:                                              ; preds = %43
  %155 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %156 = load i32, i32* @M_HASHTYPE_OPAQUE, align 4
  %157 = call i32 @M_HASHTYPE_SET(%struct.mbuf* %155, i32 %156)
  %158 = load %struct.lio_droq*, %struct.lio_droq** %13, align 8
  %159 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %162 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  store i32 %160, i32* %163, align 8
  br label %164

164:                                              ; preds = %154, %153
  %165 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %166 = load %union.octeon_rh*, %union.octeon_rh** %8, align 8
  %167 = bitcast %union.octeon_rh* %166 to %struct.TYPE_5__*
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = mul nsw i32 %169, 8
  %171 = call i32 @m_adj(%struct.mbuf* %165, i32 %170)
  %172 = load %union.octeon_rh*, %union.octeon_rh** %8, align 8
  %173 = bitcast %union.octeon_rh* %172 to %struct.TYPE_5__*
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = mul nsw i32 %175, 8
  %177 = load i32, i32* %7, align 4
  %178 = sub nsw i32 %177, %176
  store i32 %178, i32* %7, align 4
  %179 = load i32, i32* @M_PKTHDR, align 4
  %180 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %181 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = or i32 %182, %179
  store i32 %183, i32* %181, align 8
  %184 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  %185 = call i32 @if_getcapenable(%struct.ifnet* %184)
  %186 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %223

189:                                              ; preds = %164
  %190 = load %union.octeon_rh*, %union.octeon_rh** %8, align 8
  %191 = bitcast %union.octeon_rh* %190 to %struct.TYPE_5__*
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %201, label %195

195:                                              ; preds = %189
  %196 = load %union.octeon_rh*, %union.octeon_rh** %8, align 8
  %197 = bitcast %union.octeon_rh* %196 to %struct.TYPE_5__*
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %223

201:                                              ; preds = %195, %189
  %202 = load %union.octeon_rh*, %union.octeon_rh** %8, align 8
  %203 = bitcast %union.octeon_rh* %202 to %struct.TYPE_5__*
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  store i32 %205, i32* %17, align 4
  %206 = load %union.octeon_rh*, %union.octeon_rh** %8, align 8
  %207 = bitcast %union.octeon_rh* %206 to %struct.TYPE_5__*
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  store i32 %209, i32* %18, align 4
  %210 = load i32, i32* %17, align 4
  %211 = shl i32 %210, 13
  %212 = load i32, i32* %18, align 4
  %213 = or i32 %211, %212
  store i32 %213, i32* %19, align 4
  %214 = load i32, i32* %19, align 4
  %215 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %216 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 1
  store i32 %214, i32* %217, align 4
  %218 = load i32, i32* @M_VLANTAG, align 4
  %219 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %220 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = or i32 %221, %218
  store i32 %222, i32* %220, align 8
  br label %223

223:                                              ; preds = %201, %195, %164
  %224 = load %union.octeon_rh*, %union.octeon_rh** %8, align 8
  %225 = bitcast %union.octeon_rh* %224 to %struct.TYPE_5__*
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @LIO_IPSUM_VERIFIED, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %240

231:                                              ; preds = %223
  %232 = load i32, i32* @CSUM_L3_CALC, align 4
  %233 = load i32, i32* @CSUM_L3_VALID, align 4
  %234 = or i32 %232, %233
  %235 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %236 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = or i32 %238, %234
  store i32 %239, i32* %237, align 8
  br label %240

240:                                              ; preds = %231, %223
  %241 = load %union.octeon_rh*, %union.octeon_rh** %8, align 8
  %242 = bitcast %union.octeon_rh* %241 to %struct.TYPE_5__*
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* @LIO_L4SUM_VERIFIED, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %269

248:                                              ; preds = %240
  %249 = load i32, i32* @CSUM_L4_CALC, align 4
  %250 = load i32, i32* @CSUM_L4_VALID, align 4
  %251 = or i32 %249, %250
  %252 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %253 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = or i32 %255, %251
  store i32 %256, i32* %254, align 8
  %257 = load i32, i32* @CSUM_DATA_VALID, align 4
  %258 = load i32, i32* @CSUM_PSEUDO_HDR, align 4
  %259 = or i32 %257, %258
  %260 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %261 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 8
  %264 = or i32 %263, %259
  store i32 %264, i32* %262, align 8
  %265 = call i32 @htons(i32 65535)
  %266 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %267 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i32 0, i32 5
  store i32 %265, i32* %268, align 8
  br label %269

269:                                              ; preds = %248, %240
  %270 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  %271 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %272 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %272, i32 0, i32 4
  store %struct.ifnet* %270, %struct.ifnet** %273, align 8
  %274 = load i32, i32* %7, align 4
  %275 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %276 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %276, i32 0, i32 3
  store i32 %274, i32* %277, align 4
  %278 = load i64, i64* @lio_hwlro, align 8
  %279 = icmp eq i64 %278, 0
  br i1 %279, label %280, label %333

280:                                              ; preds = %269
  %281 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  %282 = call i32 @if_getcapenable(%struct.ifnet* %281)
  %283 = load i32, i32* @IFCAP_LRO, align 4
  %284 = and i32 %282, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %333

286:                                              ; preds = %280
  %287 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %288 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 8
  %291 = load i32, i32* @CSUM_L3_VALID, align 4
  %292 = load i32, i32* @CSUM_L4_VALID, align 4
  %293 = or i32 %291, %292
  %294 = load i32, i32* @CSUM_DATA_VALID, align 4
  %295 = or i32 %293, %294
  %296 = load i32, i32* @CSUM_PSEUDO_HDR, align 4
  %297 = or i32 %295, %296
  %298 = and i32 %290, %297
  %299 = load i32, i32* @CSUM_L3_VALID, align 4
  %300 = load i32, i32* @CSUM_L4_VALID, align 4
  %301 = or i32 %299, %300
  %302 = load i32, i32* @CSUM_DATA_VALID, align 4
  %303 = or i32 %301, %302
  %304 = load i32, i32* @CSUM_PSEUDO_HDR, align 4
  %305 = or i32 %303, %304
  %306 = icmp eq i32 %298, %305
  br i1 %306, label %307, label %333

307:                                              ; preds = %286
  %308 = load %struct.lio_droq*, %struct.lio_droq** %13, align 8
  %309 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %308, i32 0, i32 2
  %310 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %309, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %332

313:                                              ; preds = %307
  %314 = load %struct.lio_droq*, %struct.lio_droq** %13, align 8
  %315 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %314, i32 0, i32 2
  %316 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %317 = call i64 @tcp_lro_rx(%struct.TYPE_8__* %315, %struct.mbuf* %316, i32 0)
  %318 = icmp eq i64 %317, 0
  br i1 %318, label %319, label %331

319:                                              ; preds = %313
  %320 = load i32, i32* %7, align 4
  %321 = load %struct.lio_droq*, %struct.lio_droq** %13, align 8
  %322 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %321, i32 0, i32 1
  %323 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %322, i32 0, i32 2
  %324 = load i32, i32* %323, align 4
  %325 = add nsw i32 %324, %320
  store i32 %325, i32* %323, align 4
  %326 = load %struct.lio_droq*, %struct.lio_droq** %13, align 8
  %327 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %326, i32 0, i32 1
  %328 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %327, i32 0, i32 1
  %329 = load i32, i32* %328, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %328, align 4
  br label %356

331:                                              ; preds = %313
  br label %332

332:                                              ; preds = %331, %307
  br label %333

333:                                              ; preds = %332, %286, %280, %269
  %334 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  %335 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %336 = call i32 @if_input(%struct.ifnet* %334, %struct.mbuf* %335)
  %337 = load i32, i32* %7, align 4
  %338 = load %struct.lio_droq*, %struct.lio_droq** %13, align 8
  %339 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %338, i32 0, i32 1
  %340 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %339, i32 0, i32 2
  %341 = load i32, i32* %340, align 4
  %342 = add nsw i32 %341, %337
  store i32 %342, i32* %340, align 4
  %343 = load %struct.lio_droq*, %struct.lio_droq** %13, align 8
  %344 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %343, i32 0, i32 1
  %345 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %345, align 4
  br label %356

348:                                              ; preds = %5
  %349 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %350 = call i32 @lio_recv_buffer_free(%struct.mbuf* %349)
  %351 = load %struct.lio_droq*, %struct.lio_droq** %13, align 8
  %352 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %351, i32 0, i32 1
  %353 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 4
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %353, align 4
  br label %356

356:                                              ; preds = %35, %319, %348, %333
  ret void
}

declare dso_local %struct.lio* @if_getsoftc(%struct.ifnet*) #1

declare dso_local i32 @lio_ifstate_check(%struct.lio*, i32) #1

declare dso_local i32 @lio_recv_buffer_free(%struct.mbuf*) #1

declare dso_local i32 @htobe32(i32) #1

declare dso_local i32 @M_HASHTYPE_SET(%struct.mbuf*, i32) #1

declare dso_local i32 @m_adj(%struct.mbuf*, i32) #1

declare dso_local i32 @if_getcapenable(%struct.ifnet*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @tcp_lro_rx(%struct.TYPE_8__*, %struct.mbuf*, i32) #1

declare dso_local i32 @if_input(%struct.ifnet*, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
