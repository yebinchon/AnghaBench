; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_rx.c_mlx5e_poll_rx_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_rx.c_mlx5e_poll_rx_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_rq = type { %struct.TYPE_13__, i32, %struct.TYPE_21__*, %struct.TYPE_20__, %struct.TYPE_17__, %struct.TYPE_16__*, i32, %struct.TYPE_15__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32 (%struct.TYPE_21__*, %struct.mbuf*)*, i32, i32 }
%struct.mbuf = type { %struct.TYPE_18__, i32, i64 }
%struct.TYPE_18__ = type { i64, i32 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i32, %struct.mbuf*, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.pfil_head* }
%struct.pfil_head = type { i32 }
%struct.mlx5e_rx_wqe = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.mlx5_cqe64 = type { i32, i32, i32 }

@MLX5_COMPRESSED = common dso_local global i64 0, align 8
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@MLX5_CQE_RESP_SEND = common dso_local global i32 0, align 4
@MLX5E_MAX_RX_BYTES = common dso_local global i32 0, align 4
@PFIL_MEMPTR = common dso_local global i64 0, align 8
@PFIL_IN = common dso_local global i64 0, align 8
@PFIL_PASS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Filter returned %d!\0A\00", align 1
@MHLEN = common dso_local global i64 0, align 8
@MLX5E_NET_IP_ALIGN = common dso_local global i64 0, align 8
@M_NOWAIT = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@caddr_t = common dso_local global i32 0, align 4
@IFCAP_LRO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_rq*, i32)* @mlx5e_poll_rx_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_poll_rx_cq(%struct.mlx5e_rq* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx5e_rq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pfil_head*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5e_rx_wqe*, align 8
  %9 = alloca %struct.mlx5_cqe64*, align 8
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.mlx5e_rq* %0, %struct.mlx5e_rq** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %16 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %15, i32 0, i32 2
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @CURVNET_SET_QUIET(i32 %19)
  %21 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %22 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %21, i32 0, i32 7
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load %struct.pfil_head*, %struct.pfil_head** %26, align 8
  store %struct.pfil_head* %27, %struct.pfil_head** %5, align 8
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %246, %2
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %249

32:                                               ; preds = %28
  %33 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %34 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %33, i32 0, i32 0
  %35 = call %struct.mlx5_cqe64* @mlx5e_get_cqe(%struct.TYPE_13__* %34)
  store %struct.mlx5_cqe64* %35, %struct.mlx5_cqe64** %9, align 8
  %36 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %9, align 8
  %37 = icmp ne %struct.mlx5_cqe64* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  br label %249

39:                                               ; preds = %32
  %40 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %9, align 8
  %41 = call i64 @mlx5_get_cqe_format(%struct.mlx5_cqe64* %40)
  %42 = load i64, i64* @MLX5_COMPRESSED, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %46 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %45, i32 0, i32 0
  %47 = call i32 @mlx5e_decompress_cqes(%struct.TYPE_13__* %46)
  br label %48

48:                                               ; preds = %44, %39
  %49 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %50 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = call i32 @mlx5_cqwq_pop(i32* %51)
  %53 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %9, align 8
  %54 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = call i64 @be16_to_cpu(i32 %56)
  store i64 %57, i64* %12, align 8
  %58 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %59 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %58, i32 0, i32 1
  %60 = load i64, i64* %12, align 8
  %61 = call %struct.mlx5e_rx_wqe* @mlx5_wq_ll_get_wqe(i32* %59, i64 %60)
  store %struct.mlx5e_rx_wqe* %61, %struct.mlx5e_rx_wqe** %8, align 8
  %62 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %9, align 8
  %63 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @be32_to_cpu(i32 %64)
  store i64 %65, i64* %13, align 8
  %66 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %67 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %70 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %69, i32 0, i32 5
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %70, align 8
  %72 = load i64, i64* %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %77 = call i32 @bus_dmamap_sync(i32 %68, i32 %75, i32 %76)
  %78 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %9, align 8
  %79 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = ashr i32 %80, 4
  %82 = load i32, i32* @MLX5_CQE_RESP_SEND, align 4
  %83 = icmp ne i32 %81, %82
  %84 = zext i1 %83 to i32
  %85 = call i64 @unlikely(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %48
  %88 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %89 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 8
  br label %238

93:                                               ; preds = %48
  %94 = load %struct.pfil_head*, %struct.pfil_head** %5, align 8
  %95 = icmp ne %struct.pfil_head* %94, null
  br i1 %95, label %96, label %153

96:                                               ; preds = %93
  %97 = load %struct.pfil_head*, %struct.pfil_head** %5, align 8
  %98 = call i64 @PFIL_HOOKED_IN(%struct.pfil_head* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %153

100:                                              ; preds = %96
  %101 = load i64, i64* %13, align 8
  %102 = load i32, i32* @MLX5E_MAX_RX_BYTES, align 4
  %103 = call i64 @MIN(i64 %101, i32 %102)
  store i64 %103, i64* %14, align 8
  %104 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %105 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %104, i32 0, i32 7
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  %110 = load %struct.pfil_head*, %struct.pfil_head** %109, align 8
  %111 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %112 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %111, i32 0, i32 5
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %112, align 8
  %114 = load i64, i64* %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %119 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %118, i32 0, i32 2
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %119, align 8
  %121 = load i64, i64* %14, align 8
  %122 = load i64, i64* @PFIL_MEMPTR, align 8
  %123 = or i64 %121, %122
  %124 = load i64, i64* @PFIL_IN, align 8
  %125 = or i64 %123, %124
  %126 = call i32 @pfil_run_hooks(%struct.pfil_head* %110, i32 %117, %struct.TYPE_21__* %120, i64 %125, i32* null)
  store i32 %126, i32* %7, align 4
  %127 = load i32, i32* %7, align 4
  switch i32 %127, label %143 [
    i32 129, label %128
    i32 130, label %128
    i32 128, label %134
  ]

128:                                              ; preds = %100, %100
  %129 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %130 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %129, i32 0, i32 4
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %131, align 8
  br label %238

134:                                              ; preds = %100
  %135 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %136 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %135, i32 0, i32 5
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %136, align 8
  %138 = load i64, i64* %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = call %struct.mbuf* @pfil_mem2mbuf(i32 %141)
  store %struct.mbuf* %142, %struct.mbuf** %10, align 8
  br label %215

143:                                              ; preds = %100
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* @PFIL_PASS, align 4
  %146 = icmp eq i32 %144, %145
  %147 = zext i1 %146 to i32
  %148 = load i32, i32* %7, align 4
  %149 = sext i32 %148 to i64
  %150 = inttoptr i64 %149 to i8*
  %151 = call i32 @KASSERT(i32 %147, i8* %150)
  br label %152

152:                                              ; preds = %143
  br label %153

153:                                              ; preds = %152, %96, %93
  %154 = load i64, i64* @MHLEN, align 8
  %155 = load i64, i64* @MLX5E_NET_IP_ALIGN, align 8
  %156 = sub nsw i64 %154, %155
  %157 = load i64, i64* %13, align 8
  %158 = icmp sge i64 %156, %157
  br i1 %158, label %159, label %189

159:                                              ; preds = %153
  %160 = load i32, i32* @M_NOWAIT, align 4
  %161 = load i32, i32* @MT_DATA, align 4
  %162 = call %struct.mbuf* @m_gethdr(i32 %160, i32 %161)
  store %struct.mbuf* %162, %struct.mbuf** %10, align 8
  %163 = icmp ne %struct.mbuf* %162, null
  br i1 %163, label %164, label %189

164:                                              ; preds = %159
  %165 = load i64, i64* @MHLEN, align 8
  %166 = load i64, i64* @MLX5E_NET_IP_ALIGN, align 8
  %167 = sub nsw i64 %165, %166
  %168 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %169 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %168, i32 0, i32 2
  store i64 %167, i64* %169, align 8
  %170 = load i64, i64* @MLX5E_NET_IP_ALIGN, align 8
  %171 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %172 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = sext i32 %173 to i64
  %175 = add nsw i64 %174, %170
  %176 = trunc i64 %175 to i32
  store i32 %176, i32* %172, align 8
  %177 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %178 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %177, i32 0, i32 5
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %178, align 8
  %180 = load i64, i64* %12, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %185 = load i32, i32* @caddr_t, align 4
  %186 = call i32 @mtod(%struct.mbuf* %184, i32 %185)
  %187 = load i64, i64* %13, align 8
  %188 = call i32 @bcopy(i32 %183, i32 %186, i64 %187)
  br label %214

189:                                              ; preds = %159, %153
  %190 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %191 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %190, i32 0, i32 5
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %191, align 8
  %193 = load i64, i64* %12, align 8
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 1
  %196 = load %struct.mbuf*, %struct.mbuf** %195, align 8
  store %struct.mbuf* %196, %struct.mbuf** %10, align 8
  %197 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %198 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %197, i32 0, i32 5
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %198, align 8
  %200 = load i64, i64* %12, align 8
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 1
  store %struct.mbuf* null, %struct.mbuf** %202, align 8
  %203 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %204 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %203, i32 0, i32 6
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %207 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %206, i32 0, i32 5
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %207, align 8
  %209 = load i64, i64* %12, align 8
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @bus_dmamap_unload(i32 %205, i32 %212)
  br label %214

214:                                              ; preds = %189, %164
  br label %215

215:                                              ; preds = %214, %134
  %216 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %9, align 8
  %217 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %218 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %219 = load i64, i64* %13, align 8
  %220 = call i32 @mlx5e_build_rx_mbuf(%struct.mlx5_cqe64* %216, %struct.mlx5e_rq* %217, %struct.mbuf* %218, i64 %219)
  %221 = load i64, i64* %13, align 8
  %222 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %223 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %222, i32 0, i32 4
  %224 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = sext i32 %225 to i64
  %227 = add nsw i64 %226, %221
  %228 = trunc i64 %227 to i32
  store i32 %228, i32* %224, align 4
  %229 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %230 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %229, i32 0, i32 4
  %231 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %231, align 8
  %234 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %235 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %234, i32 0, i32 3
  %236 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %237 = call i32 @tcp_lro_queue_mbuf(%struct.TYPE_20__* %235, %struct.mbuf* %236)
  br label %238

238:                                              ; preds = %215, %128, %87
  %239 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %240 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %239, i32 0, i32 1
  %241 = load i32, i32* %11, align 4
  %242 = load %struct.mlx5e_rx_wqe*, %struct.mlx5e_rx_wqe** %8, align 8
  %243 = getelementptr inbounds %struct.mlx5e_rx_wqe, %struct.mlx5e_rx_wqe* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %243, i32 0, i32 0
  %245 = call i32 @mlx5_wq_ll_pop(i32* %240, i32 %241, i32* %244)
  br label %246

246:                                              ; preds = %238
  %247 = load i32, i32* %6, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %6, align 4
  br label %28

249:                                              ; preds = %38, %28
  %250 = call i32 (...) @CURVNET_RESTORE()
  %251 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %252 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %252, i32 0, i32 0
  %254 = call i32 @mlx5_cqwq_update_db_record(i32* %253)
  %255 = call i32 (...) @atomic_thread_fence_rel()
  %256 = load i32, i32* %6, align 4
  ret i32 %256
}

declare dso_local i32 @CURVNET_SET_QUIET(i32) #1

declare dso_local %struct.mlx5_cqe64* @mlx5e_get_cqe(%struct.TYPE_13__*) #1

declare dso_local i64 @mlx5_get_cqe_format(%struct.mlx5_cqe64*) #1

declare dso_local i32 @mlx5e_decompress_cqes(%struct.TYPE_13__*) #1

declare dso_local i32 @mlx5_cqwq_pop(i32*) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local %struct.mlx5e_rx_wqe* @mlx5_wq_ll_get_wqe(i32*, i64) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @PFIL_HOOKED_IN(%struct.pfil_head*) #1

declare dso_local i64 @MIN(i64, i32) #1

declare dso_local i32 @pfil_run_hooks(%struct.pfil_head*, i32, %struct.TYPE_21__*, i64, i32*) #1

declare dso_local %struct.mbuf* @pfil_mem2mbuf(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.mbuf* @m_gethdr(i32, i32) #1

declare dso_local i32 @bcopy(i32, i32, i64) #1

declare dso_local i32 @mtod(%struct.mbuf*, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @mlx5e_build_rx_mbuf(%struct.mlx5_cqe64*, %struct.mlx5e_rq*, %struct.mbuf*, i64) #1

declare dso_local i32 @tcp_lro_queue_mbuf(%struct.TYPE_20__*, %struct.mbuf*) #1

declare dso_local i32 @mlx5_wq_ll_pop(i32*, i32, i32*) #1

declare dso_local i32 @CURVNET_RESTORE(...) #1

declare dso_local i32 @mlx5_cqwq_update_db_record(i32*) #1

declare dso_local i32 @atomic_thread_fence_rel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
