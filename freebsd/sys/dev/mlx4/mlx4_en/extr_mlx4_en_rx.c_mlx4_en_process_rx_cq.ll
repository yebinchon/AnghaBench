; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_rx.c_mlx4_en_process_rx_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_rx.c_mlx4_en_process_rx_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 (%struct.net_device*, %struct.mbuf*)* }
%struct.mbuf = type opaque
%struct.mlx4_en_cq = type { i64, i32, %struct.mlx4_cqe*, %struct.mlx4_cq }
%struct.mlx4_cqe = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.mlx4_cq = type { i32 }
%struct.mlx4_en_priv = type { i32, i32, %struct.TYPE_12__, %struct.TYPE_11__, i32, %struct.TYPE_9__*, %struct.mlx4_en_rx_ring** }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.mlx4_en_rx_ring = type { i32, i32, i32, i32, %struct.TYPE_13__, i32, i32, i64, i64, %struct.mlx4_en_rx_mbuf* }
%struct.TYPE_13__ = type { i64 }
%struct.mlx4_en_rx_mbuf = type { i32 }
%struct.mlx4_en_rx_desc = type { i32 }
%struct.mbuf.0 = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, %struct.net_device* }

@MLX4_CQE_OWNER_MASK = common dso_local global i32 0, align 4
@MLX4_CQE_CVLAN_PRESENT_MASK = common dso_local global i32 0, align 4
@M_VLANTAG = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@IFCAP_RXCSUM_IPV6 = common dso_local global i32 0, align 4
@MLX4_CQE_STATUS_IPOK = common dso_local global i32 0, align 4
@CSUM_IP_CHECKED = common dso_local global i32 0, align 4
@CSUM_IP_VALID = common dso_local global i32 0, align 4
@CSUM_DATA_VALID = common dso_local global i32 0, align 4
@CSUM_PSEUDO_HDR = common dso_local global i32 0, align 4
@IFCAP_LRO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_en_process_rx_cq(%struct.net_device* %0, %struct.mlx4_en_cq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.mlx4_en_cq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_en_priv*, align 8
  %9 = alloca %struct.mlx4_cqe*, align 8
  %10 = alloca %struct.mlx4_en_rx_ring*, align 8
  %11 = alloca %struct.mlx4_en_rx_mbuf*, align 8
  %12 = alloca %struct.mlx4_en_rx_desc*, align 8
  %13 = alloca %struct.mbuf.0*, align 8
  %14 = alloca %struct.mlx4_cq*, align 8
  %15 = alloca %struct.mlx4_cqe*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.mlx4_en_cq* %1, %struct.mlx4_en_cq** %6, align 8
  store i32 %2, i32* %7, align 4
  %24 = load %struct.net_device*, %struct.net_device** %5, align 8
  %25 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %24)
  store %struct.mlx4_en_priv* %25, %struct.mlx4_en_priv** %8, align 8
  %26 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %27 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %26, i32 0, i32 6
  %28 = load %struct.mlx4_en_rx_ring**, %struct.mlx4_en_rx_ring*** %27, align 8
  %29 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %30 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %28, i64 %31
  %33 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %32, align 8
  store %struct.mlx4_en_rx_ring* %33, %struct.mlx4_en_rx_ring** %10, align 8
  %34 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %35 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %34, i32 0, i32 3
  store %struct.mlx4_cq* %35, %struct.mlx4_cq** %14, align 8
  %36 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %37 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %36, i32 0, i32 2
  %38 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %37, align 8
  store %struct.mlx4_cqe* %38, %struct.mlx4_cqe** %15, align 8
  store i32 0, i32* %18, align 4
  %39 = load %struct.mlx4_cq*, %struct.mlx4_cq** %14, align 8
  %40 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %19, align 4
  %42 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %10, align 8
  %43 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %20, align 4
  %45 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %46 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %21, align 4
  %48 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %49 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %22, align 4
  %51 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %52 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %51, i32 0, i32 5
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %23, align 4
  %57 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %58 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %299

62:                                               ; preds = %3
  %63 = load i32, i32* %19, align 4
  %64 = load i32, i32* %20, align 4
  %65 = and i32 %63, %64
  store i32 %65, i32* %16, align 4
  %66 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %15, align 8
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* %22, align 4
  %69 = call i64 @CQE_FACTOR_INDEX(i32 %67, i32 %68)
  %70 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %66, i64 %69
  store %struct.mlx4_cqe* %70, %struct.mlx4_cqe** %9, align 8
  br label %71

71:                                               ; preds = %271, %62
  %72 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %9, align 8
  %73 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @MLX4_CQE_OWNER_MASK, align 4
  %76 = and i32 %74, %75
  %77 = load i32, i32* %19, align 4
  %78 = load i32, i32* %21, align 4
  %79 = and i32 %77, %78
  %80 = call i64 @XNOR(i32 %76, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %272

82:                                               ; preds = %71
  %83 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %10, align 8
  %84 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %83, i32 0, i32 9
  %85 = load %struct.mlx4_en_rx_mbuf*, %struct.mlx4_en_rx_mbuf** %84, align 8
  %86 = load i32, i32* %16, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.mlx4_en_rx_mbuf, %struct.mlx4_en_rx_mbuf* %85, i64 %87
  store %struct.mlx4_en_rx_mbuf* %88, %struct.mlx4_en_rx_mbuf** %11, align 8
  %89 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %10, align 8
  %90 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %89, i32 0, i32 8
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to %struct.mlx4_en_rx_desc*
  %93 = load i32, i32* %16, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.mlx4_en_rx_desc, %struct.mlx4_en_rx_desc* %92, i64 %94
  store %struct.mlx4_en_rx_desc* %95, %struct.mlx4_en_rx_desc** %12, align 8
  %96 = call i32 (...) @rmb()
  %97 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %98 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %9, align 8
  %99 = call i64 @invalid_cqe(%struct.mlx4_en_priv* %97, %struct.mlx4_cqe* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %82
  br label %255

102:                                              ; preds = %82
  %103 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %9, align 8
  %104 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %103, i32 0, i32 6
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @be32_to_cpu(i32 %105)
  store i32 %106, i32* %17, align 4
  %107 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %10, align 8
  %108 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %107, i32 0, i32 7
  %109 = load i64, i64* %108, align 8
  %110 = load i32, i32* %17, align 4
  %111 = zext i32 %110 to i64
  %112 = sub nsw i64 %111, %109
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %17, align 4
  %114 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %115 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %10, align 8
  %116 = load %struct.mlx4_en_rx_desc*, %struct.mlx4_en_rx_desc** %12, align 8
  %117 = load %struct.mlx4_en_rx_mbuf*, %struct.mlx4_en_rx_mbuf** %11, align 8
  %118 = load i32, i32* %17, align 4
  %119 = call %struct.mbuf.0* @mlx4_en_rx_mb(%struct.mlx4_en_priv* %114, %struct.mlx4_en_rx_ring* %115, %struct.mlx4_en_rx_desc* %116, %struct.mlx4_en_rx_mbuf* %117, i32 %118)
  store %struct.mbuf.0* %119, %struct.mbuf.0** %13, align 8
  %120 = load %struct.mbuf.0*, %struct.mbuf.0** %13, align 8
  %121 = icmp ne %struct.mbuf.0* %120, null
  %122 = xor i1 %121, true
  %123 = zext i1 %122 to i32
  %124 = call i64 @unlikely(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %102
  %127 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %10, align 8
  %128 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %127, i32 0, i32 6
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %128, align 4
  br label %255

131:                                              ; preds = %102
  %132 = load i32, i32* %17, align 4
  %133 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %10, align 8
  %134 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = add i32 %135, %132
  store i32 %136, i32* %134, align 4
  %137 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %10, align 8
  %138 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 8
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 8
  %141 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %142 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i64 @unlikely(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %131
  %147 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %148 = load %struct.mbuf.0*, %struct.mbuf.0** %13, align 8
  %149 = call i32 @validate_loopback(%struct.mlx4_en_priv* %147, %struct.mbuf.0* %148)
  br label %255

150:                                              ; preds = %131
  %151 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %9, align 8
  %152 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @be32_to_cpu(i32 %153)
  %155 = load %struct.mbuf.0*, %struct.mbuf.0** %13, align 8
  %156 = getelementptr inbounds %struct.mbuf.0, %struct.mbuf.0* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  store i32 %154, i32* %157, align 8
  %158 = load %struct.mbuf.0*, %struct.mbuf.0** %13, align 8
  %159 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %9, align 8
  %160 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %23, align 4
  %163 = call i32 @mlx4_en_rss_hash(i32 %161, i32 %162)
  %164 = call i32 @M_HASHTYPE_SET(%struct.mbuf.0* %158, i32 %163)
  %165 = load %struct.net_device*, %struct.net_device** %5, align 8
  %166 = load %struct.mbuf.0*, %struct.mbuf.0** %13, align 8
  %167 = getelementptr inbounds %struct.mbuf.0, %struct.mbuf.0* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 4
  store %struct.net_device* %165, %struct.net_device** %168, align 8
  %169 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %9, align 8
  %170 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @be32_to_cpu(i32 %171)
  %173 = load i32, i32* @MLX4_CQE_CVLAN_PRESENT_MASK, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %189

176:                                              ; preds = %150
  %177 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %9, align 8
  %178 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @be16_to_cpu(i32 %179)
  %181 = load %struct.mbuf.0*, %struct.mbuf.0** %13, align 8
  %182 = getelementptr inbounds %struct.mbuf.0, %struct.mbuf.0* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 3
  store i32 %180, i32* %183, align 4
  %184 = load i32, i32* @M_VLANTAG, align 4
  %185 = load %struct.mbuf.0*, %struct.mbuf.0** %13, align 8
  %186 = getelementptr inbounds %struct.mbuf.0, %struct.mbuf.0* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = or i32 %187, %184
  store i32 %188, i32* %186, align 8
  br label %189

189:                                              ; preds = %176, %150
  %190 = load %struct.net_device*, %struct.net_device** %5, align 8
  %191 = getelementptr inbounds %struct.net_device, %struct.net_device* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @IFCAP_RXCSUM, align 4
  %194 = load i32, i32* @IFCAP_RXCSUM_IPV6, align 4
  %195 = or i32 %193, %194
  %196 = and i32 %192, %195
  %197 = call i64 @likely(i32 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %238

199:                                              ; preds = %189
  %200 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %9, align 8
  %201 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @MLX4_CQE_STATUS_IPOK, align 4
  %204 = call i32 @cpu_to_be16(i32 %203)
  %205 = and i32 %202, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %238

207:                                              ; preds = %199
  %208 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %9, align 8
  %209 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @cpu_to_be16(i32 65535)
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %213, label %238

213:                                              ; preds = %207
  %214 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %215 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %214, i32 0, i32 3
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %216, align 4
  %219 = load i32, i32* @CSUM_IP_CHECKED, align 4
  %220 = load i32, i32* @CSUM_IP_VALID, align 4
  %221 = or i32 %219, %220
  %222 = load i32, i32* @CSUM_DATA_VALID, align 4
  %223 = or i32 %221, %222
  %224 = load i32, i32* @CSUM_PSEUDO_HDR, align 4
  %225 = or i32 %223, %224
  %226 = load %struct.mbuf.0*, %struct.mbuf.0** %13, align 8
  %227 = getelementptr inbounds %struct.mbuf.0, %struct.mbuf.0* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 1
  store i32 %225, i32* %228, align 4
  %229 = call i32 @htons(i32 65535)
  %230 = load %struct.mbuf.0*, %struct.mbuf.0** %13, align 8
  %231 = getelementptr inbounds %struct.mbuf.0, %struct.mbuf.0* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 2
  store i32 %229, i32* %232, align 8
  %233 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %234 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %233, i32 0, i32 2
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @INC_PERF_COUNTER(i32 %236)
  br label %247

238:                                              ; preds = %207, %199, %189
  %239 = load %struct.mbuf.0*, %struct.mbuf.0** %13, align 8
  %240 = getelementptr inbounds %struct.mbuf.0, %struct.mbuf.0* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 1
  store i32 0, i32* %241, align 4
  %242 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %243 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %242, i32 0, i32 3
  %244 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %244, align 8
  br label %247

247:                                              ; preds = %238, %213
  %248 = load %struct.net_device*, %struct.net_device** %5, align 8
  %249 = getelementptr inbounds %struct.net_device, %struct.net_device* %248, i32 0, i32 1
  %250 = load i32 (%struct.net_device*, %struct.mbuf*)*, i32 (%struct.net_device*, %struct.mbuf*)** %249, align 8
  %251 = load %struct.net_device*, %struct.net_device** %5, align 8
  %252 = load %struct.mbuf.0*, %struct.mbuf.0** %13, align 8
  %253 = bitcast %struct.mbuf.0* %252 to %struct.mbuf*
  %254 = call i32 %250(%struct.net_device* %251, %struct.mbuf* %253)
  br label %255

255:                                              ; preds = %247, %146, %126, %101
  %256 = load i32, i32* %19, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %19, align 4
  %258 = load i32, i32* %19, align 4
  %259 = load i32, i32* %20, align 4
  %260 = and i32 %258, %259
  store i32 %260, i32* %16, align 4
  %261 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %15, align 8
  %262 = load i32, i32* %16, align 4
  %263 = load i32, i32* %22, align 4
  %264 = call i64 @CQE_FACTOR_INDEX(i32 %262, i32 %263)
  %265 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %261, i64 %264
  store %struct.mlx4_cqe* %265, %struct.mlx4_cqe** %9, align 8
  %266 = load i32, i32* %18, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %18, align 4
  %268 = load i32, i32* %7, align 4
  %269 = icmp eq i32 %267, %268
  br i1 %269, label %270, label %271

270:                                              ; preds = %255
  br label %273

271:                                              ; preds = %255
  br label %71

272:                                              ; preds = %71
  br label %273

273:                                              ; preds = %272, %270
  %274 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %275 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %274, i32 0, i32 2
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* %18, align 4
  %279 = call i32 @AVG_PERF_COUNTER(i32 %277, i32 %278)
  %280 = load i32, i32* %19, align 4
  %281 = load %struct.mlx4_cq*, %struct.mlx4_cq** %14, align 8
  %282 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %281, i32 0, i32 0
  store i32 %280, i32* %282, align 4
  %283 = load %struct.mlx4_cq*, %struct.mlx4_cq** %14, align 8
  %284 = call i32 @mlx4_cq_set_ci(%struct.mlx4_cq* %283)
  %285 = call i32 (...) @wmb()
  %286 = load %struct.mlx4_cq*, %struct.mlx4_cq** %14, align 8
  %287 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %10, align 8
  %290 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %289, i32 0, i32 2
  store i32 %288, i32* %290, align 8
  %291 = load i32, i32* %18, align 4
  %292 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %10, align 8
  %293 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %292, i32 0, i32 3
  %294 = load i32, i32* %293, align 4
  %295 = add nsw i32 %294, %291
  store i32 %295, i32* %293, align 4
  %296 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %10, align 8
  %297 = call i32 @mlx4_en_update_rx_prod_db(%struct.mlx4_en_rx_ring* %296)
  %298 = load i32, i32* %18, align 4
  store i32 %298, i32* %4, align 4
  br label %299

299:                                              ; preds = %273, %61
  %300 = load i32, i32* %4, align 4
  ret i32 %300
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @CQE_FACTOR_INDEX(i32, i32) #1

declare dso_local i64 @XNOR(i32, i32) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i64 @invalid_cqe(%struct.mlx4_en_priv*, %struct.mlx4_cqe*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local %struct.mbuf.0* @mlx4_en_rx_mb(%struct.mlx4_en_priv*, %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_desc*, %struct.mlx4_en_rx_mbuf*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @validate_loopback(%struct.mlx4_en_priv*, %struct.mbuf.0*) #1

declare dso_local i32 @M_HASHTYPE_SET(%struct.mbuf.0*, i32) #1

declare dso_local i32 @mlx4_en_rss_hash(i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @INC_PERF_COUNTER(i32) #1

declare dso_local i32 @AVG_PERF_COUNTER(i32, i32) #1

declare dso_local i32 @mlx4_cq_set_ci(%struct.mlx4_cq*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @mlx4_en_update_rx_prod_db(%struct.mlx4_en_rx_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
