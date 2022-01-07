; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_rx.c_mlx5e_alloc_rx_wqe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_rx.c_mlx5e_alloc_rx_wqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_rq = type { i32, i64, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32, i32, %struct.mbuf* }
%struct.mbuf = type { i32, %struct.TYPE_6__, i8*, %struct.mbuf* }
%struct.TYPE_6__ = type { i64 }
%struct.mlx5e_rx_wqe = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8*, i8* }
%struct.TYPE_9__ = type { i32, i32 }

@MLX5E_MAX_BUSDMA_RX_SEGS = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@MLX5E_MAX_RX_BYTES = common dso_local global i8* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@MLX5E_NET_IP_ALIGN = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@MLX5_HW_START_PADDING = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_rq*, %struct.mlx5e_rx_wqe*, i64)* @mlx5e_alloc_rx_wqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_alloc_rx_wqe(%struct.mlx5e_rq* %0, %struct.mlx5e_rx_wqe* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5e_rq*, align 8
  %6 = alloca %struct.mlx5e_rx_wqe*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.mbuf*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mlx5e_rq* %0, %struct.mlx5e_rq** %5, align 8
  store %struct.mlx5e_rx_wqe* %1, %struct.mlx5e_rx_wqe** %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load i32, i32* @MLX5E_MAX_BUSDMA_RX_SEGS, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %8, align 8
  %19 = alloca %struct.TYPE_9__, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  %20 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %5, align 8
  %21 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %20, i32 0, i32 2
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  %26 = load %struct.mbuf*, %struct.mbuf** %25, align 8
  %27 = icmp ne %struct.mbuf* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %256

29:                                               ; preds = %3
  %30 = load i32, i32* @M_NOWAIT, align 4
  %31 = load i32, i32* @MT_DATA, align 4
  %32 = load i32, i32* @M_PKTHDR, align 4
  %33 = load i8*, i8** @MLX5E_MAX_RX_BYTES, align 8
  %34 = call i8* @m_getjcl(i32 %30, i32 %31, i32 %32, i8* %33)
  %35 = bitcast i8* %34 to %struct.mbuf*
  store %struct.mbuf* %35, %struct.mbuf** %10, align 8
  store %struct.mbuf* %35, %struct.mbuf** %13, align 8
  %36 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %37 = icmp eq %struct.mbuf* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %29
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %256

44:                                               ; preds = %29
  %45 = load i8*, i8** @MLX5E_MAX_RX_BYTES, align 8
  %46 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %47 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  %48 = load i8*, i8** @MLX5E_MAX_RX_BYTES, align 8
  %49 = ptrtoint i8* %48 to i64
  %50 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %51 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  store i64 %49, i64* %52, align 8
  store i32 1, i32* %14, align 4
  br label %53

53:                                               ; preds = %98, %44
  %54 = load i32, i32* %14, align 4
  %55 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %5, align 8
  %56 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %101

59:                                               ; preds = %53
  %60 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %61 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %5, align 8
  %65 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp sge i64 %63, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  br label %101

69:                                               ; preds = %59
  %70 = load i32, i32* @M_NOWAIT, align 4
  %71 = load i32, i32* @MT_DATA, align 4
  %72 = load i8*, i8** @MLX5E_MAX_RX_BYTES, align 8
  %73 = call i8* @m_getjcl(i32 %70, i32 %71, i32 0, i8* %72)
  %74 = bitcast i8* %73 to %struct.mbuf*
  %75 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %76 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %75, i32 0, i32 3
  store %struct.mbuf* %74, %struct.mbuf** %76, align 8
  store %struct.mbuf* %74, %struct.mbuf** %10, align 8
  %77 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %78 = icmp eq %struct.mbuf* %77, null
  %79 = zext i1 %78 to i32
  %80 = call i64 @unlikely(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %69
  %83 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %84 = call i32 @m_freem(%struct.mbuf* %83)
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %256

87:                                               ; preds = %69
  %88 = load i8*, i8** @MLX5E_MAX_RX_BYTES, align 8
  %89 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %90 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %89, i32 0, i32 2
  store i8* %88, i8** %90, align 8
  %91 = load i8*, i8** @MLX5E_MAX_RX_BYTES, align 8
  %92 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %93 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr i8, i8* %91, i64 %95
  %97 = ptrtoint i8* %96 to i64
  store i64 %97, i64* %94, align 8
  br label %98

98:                                               ; preds = %87
  %99 = load i32, i32* %14, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %14, align 4
  br label %53

101:                                              ; preds = %68, %53
  %102 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  store %struct.mbuf* %102, %struct.mbuf** %10, align 8
  %103 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %104 = load i32, i32* @MLX5E_NET_IP_ALIGN, align 4
  %105 = call i32 @m_adj(%struct.mbuf* %103, i32 %104)
  %106 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %5, align 8
  %107 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %5, align 8
  %110 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %109, i32 0, i32 2
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = load i64, i64* %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %117 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %118 = call i32 @bus_dmamap_load_mbuf_sg(i32 %108, i32 %115, %struct.mbuf* %116, %struct.TYPE_9__* %19, i32* %11, i32 %117)
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %12, align 4
  %120 = load i32, i32* %12, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %101
  br label %252

123:                                              ; preds = %101
  %124 = load i32, i32* %11, align 4
  %125 = icmp eq i32 %124, 0
  %126 = zext i1 %125 to i32
  %127 = call i64 @unlikely(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %143

129:                                              ; preds = %123
  %130 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %5, align 8
  %131 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %5, align 8
  %134 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %133, i32 0, i32 2
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %134, align 8
  %136 = load i64, i64* %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @bus_dmamap_unload(i32 %132, i32 %139)
  %141 = load i32, i32* @ENOMEM, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %12, align 4
  br label %252

143:                                              ; preds = %123
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i64 0
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i8* @cpu_to_be64(i32 %146)
  %148 = load %struct.mlx5e_rx_wqe*, %struct.mlx5e_rx_wqe** %6, align 8
  %149 = getelementptr inbounds %struct.mlx5e_rx_wqe, %struct.mlx5e_rx_wqe* %148, i32 0, i32 0
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i64 0
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 1
  store i8* %147, i8** %152, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i64 0
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 16
  %156 = load i32, i32* @MLX5_HW_START_PADDING, align 4
  %157 = or i32 %155, %156
  %158 = call i8* @cpu_to_be32(i32 %157)
  %159 = load %struct.mlx5e_rx_wqe*, %struct.mlx5e_rx_wqe** %6, align 8
  %160 = getelementptr inbounds %struct.mlx5e_rx_wqe, %struct.mlx5e_rx_wqe* %159, i32 0, i32 0
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i64 0
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  store i8* %158, i8** %163, align 8
  store i32 1, i32* %14, align 4
  br label %164

164:                                              ; preds = %195, %143
  %165 = load i32, i32* %14, align 4
  %166 = load i32, i32* %11, align 4
  %167 = icmp ne i32 %165, %166
  br i1 %167, label %168, label %198

168:                                              ; preds = %164
  %169 = load i32, i32* %14, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = call i8* @cpu_to_be64(i32 %173)
  %175 = load %struct.mlx5e_rx_wqe*, %struct.mlx5e_rx_wqe** %6, align 8
  %176 = getelementptr inbounds %struct.mlx5e_rx_wqe, %struct.mlx5e_rx_wqe* %175, i32 0, i32 0
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %176, align 8
  %178 = load i32, i32* %14, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 1
  store i8* %174, i8** %181, align 8
  %182 = load i32, i32* %14, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = call i8* @cpu_to_be32(i32 %186)
  %188 = load %struct.mlx5e_rx_wqe*, %struct.mlx5e_rx_wqe** %6, align 8
  %189 = getelementptr inbounds %struct.mlx5e_rx_wqe, %struct.mlx5e_rx_wqe* %188, i32 0, i32 0
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %189, align 8
  %191 = load i32, i32* %14, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 0
  store i8* %187, i8** %194, align 8
  br label %195

195:                                              ; preds = %168
  %196 = load i32, i32* %14, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %14, align 4
  br label %164

198:                                              ; preds = %164
  br label %199

199:                                              ; preds = %220, %198
  %200 = load i32, i32* %14, align 4
  %201 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %5, align 8
  %202 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = icmp slt i32 %200, %203
  br i1 %204, label %205, label %223

205:                                              ; preds = %199
  %206 = load %struct.mlx5e_rx_wqe*, %struct.mlx5e_rx_wqe** %6, align 8
  %207 = getelementptr inbounds %struct.mlx5e_rx_wqe, %struct.mlx5e_rx_wqe* %206, i32 0, i32 0
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %207, align 8
  %209 = load i32, i32* %14, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 1
  store i8* null, i8** %212, align 8
  %213 = load %struct.mlx5e_rx_wqe*, %struct.mlx5e_rx_wqe** %6, align 8
  %214 = getelementptr inbounds %struct.mlx5e_rx_wqe, %struct.mlx5e_rx_wqe* %213, i32 0, i32 0
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %214, align 8
  %216 = load i32, i32* %14, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 0
  store i8* null, i8** %219, align 8
  br label %220

220:                                              ; preds = %205
  %221 = load i32, i32* %14, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %14, align 4
  br label %199

223:                                              ; preds = %199
  %224 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %225 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %5, align 8
  %226 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %225, i32 0, i32 2
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** %226, align 8
  %228 = load i64, i64* %7, align 8
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 2
  store %struct.mbuf* %224, %struct.mbuf** %230, align 8
  %231 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %232 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %5, align 8
  %235 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %234, i32 0, i32 2
  %236 = load %struct.TYPE_8__*, %struct.TYPE_8__** %235, align 8
  %237 = load i64, i64* %7, align 8
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 1
  store i32 %233, i32* %239, align 4
  %240 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %5, align 8
  %241 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 8
  %243 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %5, align 8
  %244 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %243, i32 0, i32 2
  %245 = load %struct.TYPE_8__*, %struct.TYPE_8__** %244, align 8
  %246 = load i64, i64* %7, align 8
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %251 = call i32 @bus_dmamap_sync(i32 %242, i32 %249, i32 %250)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %256

252:                                              ; preds = %129, %122
  %253 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %254 = call i32 @m_freem(%struct.mbuf* %253)
  %255 = load i32, i32* %12, align 4
  store i32 %255, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %256

256:                                              ; preds = %252, %223, %82, %41, %28
  %257 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %257)
  %258 = load i32, i32* %4, align 4
  ret i32 %258
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @m_getjcl(i32, i32, i32, i8*) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @m_freem(%struct.mbuf*) #2

declare dso_local i32 @m_adj(%struct.mbuf*, i32) #2

declare dso_local i32 @bus_dmamap_load_mbuf_sg(i32, i32, %struct.mbuf*, %struct.TYPE_9__*, i32*, i32) #2

declare dso_local i32 @bus_dmamap_unload(i32, i32) #2

declare dso_local i8* @cpu_to_be64(i32) #2

declare dso_local i8* @cpu_to_be32(i32) #2

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
