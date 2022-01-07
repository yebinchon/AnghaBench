; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_rx.c_mlx4_en_alloc_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_rx.c_mlx4_en_alloc_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_rx_ring = type { %struct.TYPE_5__, i8*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_7__*, %struct.mbuf*, i32 }
%struct.TYPE_7__ = type { i64, i64 }
%struct.mbuf = type { i32 }
%struct.mlx4_en_rx_desc = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, i8*, i8* }
%struct.mlx4_en_rx_mbuf = type { %struct.mbuf*, i32 }

@MLX4_EN_MAX_RX_SEGS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLX4_NET_IP_ALIGN = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@MLX4_EN_MEMTYPE_PAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_desc*, %struct.mlx4_en_rx_mbuf*)* @mlx4_en_alloc_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_alloc_buf(%struct.mlx4_en_rx_ring* %0, %struct.mlx4_en_rx_desc* %1, %struct.mlx4_en_rx_mbuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_en_rx_ring*, align 8
  %6 = alloca %struct.mlx4_en_rx_desc*, align 8
  %7 = alloca %struct.mlx4_en_rx_mbuf*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mbuf*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mlx4_en_rx_ring* %0, %struct.mlx4_en_rx_ring** %5, align 8
  store %struct.mlx4_en_rx_desc* %1, %struct.mlx4_en_rx_desc** %6, align 8
  store %struct.mlx4_en_rx_mbuf* %2, %struct.mlx4_en_rx_mbuf** %7, align 8
  %16 = load i32, i32* @MLX4_EN_MAX_RX_SEGS, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %8, align 8
  %19 = alloca %struct.TYPE_7__, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  %20 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %5, align 8
  %21 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load %struct.mbuf*, %struct.mbuf** %22, align 8
  %24 = icmp eq %struct.mbuf* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %107

28:                                               ; preds = %3
  %29 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %5, align 8
  %30 = call %struct.mbuf* @mlx4_en_alloc_mbuf(%struct.mlx4_en_rx_ring* %29)
  store %struct.mbuf* %30, %struct.mbuf** %11, align 8
  %31 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %32 = icmp eq %struct.mbuf* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %363

39:                                               ; preds = %28
  %40 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %41 = load i32, i32* @MLX4_NET_IP_ALIGN, align 4
  %42 = call i32 @m_adj(%struct.mbuf* %40, i32 %41)
  %43 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %5, align 8
  %44 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %5, align 8
  %47 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %51 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %5, align 8
  %52 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %56 = call i32 @bus_dmamap_load_mbuf_sg(i32 %45, i32 %49, %struct.mbuf* %50, %struct.TYPE_7__* %54, i32* %12, i32 %55)
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %39
  %64 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %65 = call i32 @m_freem(%struct.mbuf* %64)
  %66 = load i32, i32* %13, align 4
  store i32 %66, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %363

67:                                               ; preds = %39
  %68 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %69 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %5, align 8
  %70 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  store %struct.mbuf* %68, %struct.mbuf** %71, align 8
  %72 = load i32, i32* %12, align 4
  store i32 %72, i32* %14, align 4
  br label %73

73:                                               ; preds = %94, %67
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* @MLX4_EN_MAX_RX_SEGS, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %97

77:                                               ; preds = %73
  %78 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %5, align 8
  %79 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = load i32, i32* %14, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  store i64 0, i64* %85, align 8
  %86 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %5, align 8
  %87 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = load i32, i32* %14, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  store i64 0, i64* %93, align 8
  br label %94

94:                                               ; preds = %77
  %95 = load i32, i32* %14, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %14, align 4
  br label %73

97:                                               ; preds = %73
  %98 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %5, align 8
  %99 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %5, align 8
  %102 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %106 = call i32 @bus_dmamap_sync(i32 %100, i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %97, %3
  %108 = load %struct.mlx4_en_rx_mbuf*, %struct.mlx4_en_rx_mbuf** %7, align 8
  %109 = getelementptr inbounds %struct.mlx4_en_rx_mbuf, %struct.mlx4_en_rx_mbuf* %108, i32 0, i32 0
  %110 = load %struct.mbuf*, %struct.mbuf** %109, align 8
  %111 = icmp ne %struct.mbuf* %110, null
  %112 = zext i1 %111 to i32
  %113 = call i64 @likely(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %131

115:                                              ; preds = %107
  %116 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %5, align 8
  %117 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.mlx4_en_rx_mbuf*, %struct.mlx4_en_rx_mbuf** %7, align 8
  %120 = getelementptr inbounds %struct.mlx4_en_rx_mbuf, %struct.mlx4_en_rx_mbuf* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %123 = call i32 @bus_dmamap_sync(i32 %118, i32 %121, i32 %122)
  %124 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %5, align 8
  %125 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.mlx4_en_rx_mbuf*, %struct.mlx4_en_rx_mbuf** %7, align 8
  %128 = getelementptr inbounds %struct.mlx4_en_rx_mbuf, %struct.mlx4_en_rx_mbuf* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @bus_dmamap_unload(i32 %126, i32 %129)
  br label %131

131:                                              ; preds = %115, %107
  %132 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %5, align 8
  %133 = call %struct.mbuf* @mlx4_en_alloc_mbuf(%struct.mlx4_en_rx_ring* %132)
  store %struct.mbuf* %133, %struct.mbuf** %11, align 8
  %134 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %135 = icmp eq %struct.mbuf* %134, null
  %136 = zext i1 %135 to i32
  %137 = call i64 @unlikely(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %131
  br label %251

140:                                              ; preds = %131
  %141 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %142 = load i32, i32* @MLX4_NET_IP_ALIGN, align 4
  %143 = call i32 @m_adj(%struct.mbuf* %141, i32 %142)
  %144 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %5, align 8
  %145 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.mlx4_en_rx_mbuf*, %struct.mlx4_en_rx_mbuf** %7, align 8
  %148 = getelementptr inbounds %struct.mlx4_en_rx_mbuf, %struct.mlx4_en_rx_mbuf* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %151 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %152 = call i32 @bus_dmamap_load_mbuf_sg(i32 %146, i32 %149, %struct.mbuf* %150, %struct.TYPE_7__* %19, i32* %12, i32 %151)
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %13, align 4
  %154 = load i32, i32* %13, align 4
  %155 = icmp ne i32 %154, 0
  %156 = zext i1 %155 to i32
  %157 = call i64 @unlikely(i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %140
  %160 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %161 = call i32 @m_freem(%struct.mbuf* %160)
  br label %251

162:                                              ; preds = %140
  store i32 0, i32* %14, align 4
  br label %163

163:                                              ; preds = %204, %162
  %164 = load i32, i32* %14, align 4
  %165 = load i32, i32* %12, align 4
  %166 = icmp ne i32 %164, %165
  br i1 %166, label %167, label %207

167:                                              ; preds = %163
  %168 = load i32, i32* %14, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 16
  %173 = call i8* @cpu_to_be32(i64 %172)
  %174 = load %struct.mlx4_en_rx_desc*, %struct.mlx4_en_rx_desc** %6, align 8
  %175 = getelementptr inbounds %struct.mlx4_en_rx_desc, %struct.mlx4_en_rx_desc* %174, i32 0, i32 0
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %175, align 8
  %177 = load i32, i32* %14, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 2
  store i8* %173, i8** %180, align 8
  %181 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %5, align 8
  %182 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %181, i32 0, i32 1
  %183 = load i8*, i8** %182, align 8
  %184 = load %struct.mlx4_en_rx_desc*, %struct.mlx4_en_rx_desc** %6, align 8
  %185 = getelementptr inbounds %struct.mlx4_en_rx_desc, %struct.mlx4_en_rx_desc* %184, i32 0, i32 0
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %185, align 8
  %187 = load i32, i32* %14, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 1
  store i8* %183, i8** %190, align 8
  %191 = load i32, i32* %14, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = call i8* @cpu_to_be64(i64 %195)
  %197 = load %struct.mlx4_en_rx_desc*, %struct.mlx4_en_rx_desc** %6, align 8
  %198 = getelementptr inbounds %struct.mlx4_en_rx_desc, %struct.mlx4_en_rx_desc* %197, i32 0, i32 0
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %198, align 8
  %200 = load i32, i32* %14, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 0
  store i8* %196, i8** %203, align 8
  br label %204

204:                                              ; preds = %167
  %205 = load i32, i32* %14, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %14, align 4
  br label %163

207:                                              ; preds = %163
  br label %208

208:                                              ; preds = %236, %207
  %209 = load i32, i32* %14, align 4
  %210 = load i32, i32* @MLX4_EN_MAX_RX_SEGS, align 4
  %211 = icmp ne i32 %209, %210
  br i1 %211, label %212, label %239

212:                                              ; preds = %208
  %213 = load %struct.mlx4_en_rx_desc*, %struct.mlx4_en_rx_desc** %6, align 8
  %214 = getelementptr inbounds %struct.mlx4_en_rx_desc, %struct.mlx4_en_rx_desc* %213, i32 0, i32 0
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %214, align 8
  %216 = load i32, i32* %14, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 2
  store i8* null, i8** %219, align 8
  %220 = load i64, i64* @MLX4_EN_MEMTYPE_PAD, align 8
  %221 = call i8* @cpu_to_be32(i64 %220)
  %222 = load %struct.mlx4_en_rx_desc*, %struct.mlx4_en_rx_desc** %6, align 8
  %223 = getelementptr inbounds %struct.mlx4_en_rx_desc, %struct.mlx4_en_rx_desc* %222, i32 0, i32 0
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %223, align 8
  %225 = load i32, i32* %14, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 1
  store i8* %221, i8** %228, align 8
  %229 = load %struct.mlx4_en_rx_desc*, %struct.mlx4_en_rx_desc** %6, align 8
  %230 = getelementptr inbounds %struct.mlx4_en_rx_desc, %struct.mlx4_en_rx_desc* %229, i32 0, i32 0
  %231 = load %struct.TYPE_6__*, %struct.TYPE_6__** %230, align 8
  %232 = load i32, i32* %14, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 0
  store i8* null, i8** %235, align 8
  br label %236

236:                                              ; preds = %212
  %237 = load i32, i32* %14, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %14, align 4
  br label %208

239:                                              ; preds = %208
  %240 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %241 = load %struct.mlx4_en_rx_mbuf*, %struct.mlx4_en_rx_mbuf** %7, align 8
  %242 = getelementptr inbounds %struct.mlx4_en_rx_mbuf, %struct.mlx4_en_rx_mbuf* %241, i32 0, i32 0
  store %struct.mbuf* %240, %struct.mbuf** %242, align 8
  %243 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %5, align 8
  %244 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.mlx4_en_rx_mbuf*, %struct.mlx4_en_rx_mbuf** %7, align 8
  %247 = getelementptr inbounds %struct.mlx4_en_rx_mbuf, %struct.mlx4_en_rx_mbuf* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %250 = call i32 @bus_dmamap_sync(i32 %245, i32 %248, i32 %249)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %363

251:                                              ; preds = %159, %139
  %252 = load %struct.mlx4_en_rx_mbuf*, %struct.mlx4_en_rx_mbuf** %7, align 8
  %253 = getelementptr inbounds %struct.mlx4_en_rx_mbuf, %struct.mlx4_en_rx_mbuf* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 8
  store i32 %254, i32* %10, align 4
  %255 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %5, align 8
  %256 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 8
  %259 = load %struct.mlx4_en_rx_mbuf*, %struct.mlx4_en_rx_mbuf** %7, align 8
  %260 = getelementptr inbounds %struct.mlx4_en_rx_mbuf, %struct.mlx4_en_rx_mbuf* %259, i32 0, i32 1
  store i32 %258, i32* %260, align 8
  %261 = load i32, i32* %10, align 4
  %262 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %5, align 8
  %263 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %263, i32 0, i32 2
  store i32 %261, i32* %264, align 8
  %265 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %5, align 8
  %266 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %266, i32 0, i32 1
  %268 = load %struct.mbuf*, %struct.mbuf** %267, align 8
  %269 = load %struct.mlx4_en_rx_mbuf*, %struct.mlx4_en_rx_mbuf** %7, align 8
  %270 = getelementptr inbounds %struct.mlx4_en_rx_mbuf, %struct.mlx4_en_rx_mbuf* %269, i32 0, i32 0
  store %struct.mbuf* %268, %struct.mbuf** %270, align 8
  %271 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %5, align 8
  %272 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %272, i32 0, i32 1
  store %struct.mbuf* null, %struct.mbuf** %273, align 8
  store i32 0, i32* %14, align 4
  br label %274

274:                                              ; preds = %359, %251
  %275 = load i32, i32* %14, align 4
  %276 = load i32, i32* @MLX4_EN_MAX_RX_SEGS, align 4
  %277 = icmp ne i32 %275, %276
  br i1 %277, label %278, label %362

278:                                              ; preds = %274
  %279 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %5, align 8
  %280 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %280, i32 0, i32 0
  %282 = load %struct.TYPE_7__*, %struct.TYPE_7__** %281, align 8
  %283 = load i32, i32* %14, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %282, i64 %284
  %286 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %334

289:                                              ; preds = %278
  %290 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %5, align 8
  %291 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %291, i32 0, i32 0
  %293 = load %struct.TYPE_7__*, %struct.TYPE_7__** %292, align 8
  %294 = load i32, i32* %14, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %293, i64 %295
  %297 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = call i8* @cpu_to_be32(i64 %298)
  %300 = load %struct.mlx4_en_rx_desc*, %struct.mlx4_en_rx_desc** %6, align 8
  %301 = getelementptr inbounds %struct.mlx4_en_rx_desc, %struct.mlx4_en_rx_desc* %300, i32 0, i32 0
  %302 = load %struct.TYPE_6__*, %struct.TYPE_6__** %301, align 8
  %303 = load i32, i32* %14, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %302, i64 %304
  %306 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %305, i32 0, i32 2
  store i8* %299, i8** %306, align 8
  %307 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %5, align 8
  %308 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %307, i32 0, i32 1
  %309 = load i8*, i8** %308, align 8
  %310 = load %struct.mlx4_en_rx_desc*, %struct.mlx4_en_rx_desc** %6, align 8
  %311 = getelementptr inbounds %struct.mlx4_en_rx_desc, %struct.mlx4_en_rx_desc* %310, i32 0, i32 0
  %312 = load %struct.TYPE_6__*, %struct.TYPE_6__** %311, align 8
  %313 = load i32, i32* %14, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %312, i64 %314
  %316 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %315, i32 0, i32 1
  store i8* %309, i8** %316, align 8
  %317 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %5, align 8
  %318 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %318, i32 0, i32 0
  %320 = load %struct.TYPE_7__*, %struct.TYPE_7__** %319, align 8
  %321 = load i32, i32* %14, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %320, i64 %322
  %324 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %323, i32 0, i32 1
  %325 = load i64, i64* %324, align 8
  %326 = call i8* @cpu_to_be64(i64 %325)
  %327 = load %struct.mlx4_en_rx_desc*, %struct.mlx4_en_rx_desc** %6, align 8
  %328 = getelementptr inbounds %struct.mlx4_en_rx_desc, %struct.mlx4_en_rx_desc* %327, i32 0, i32 0
  %329 = load %struct.TYPE_6__*, %struct.TYPE_6__** %328, align 8
  %330 = load i32, i32* %14, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %329, i64 %331
  %333 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %332, i32 0, i32 0
  store i8* %326, i8** %333, align 8
  br label %358

334:                                              ; preds = %278
  %335 = load %struct.mlx4_en_rx_desc*, %struct.mlx4_en_rx_desc** %6, align 8
  %336 = getelementptr inbounds %struct.mlx4_en_rx_desc, %struct.mlx4_en_rx_desc* %335, i32 0, i32 0
  %337 = load %struct.TYPE_6__*, %struct.TYPE_6__** %336, align 8
  %338 = load i32, i32* %14, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %337, i64 %339
  %341 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %340, i32 0, i32 2
  store i8* null, i8** %341, align 8
  %342 = load i64, i64* @MLX4_EN_MEMTYPE_PAD, align 8
  %343 = call i8* @cpu_to_be32(i64 %342)
  %344 = load %struct.mlx4_en_rx_desc*, %struct.mlx4_en_rx_desc** %6, align 8
  %345 = getelementptr inbounds %struct.mlx4_en_rx_desc, %struct.mlx4_en_rx_desc* %344, i32 0, i32 0
  %346 = load %struct.TYPE_6__*, %struct.TYPE_6__** %345, align 8
  %347 = load i32, i32* %14, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %346, i64 %348
  %350 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %349, i32 0, i32 1
  store i8* %343, i8** %350, align 8
  %351 = load %struct.mlx4_en_rx_desc*, %struct.mlx4_en_rx_desc** %6, align 8
  %352 = getelementptr inbounds %struct.mlx4_en_rx_desc, %struct.mlx4_en_rx_desc* %351, i32 0, i32 0
  %353 = load %struct.TYPE_6__*, %struct.TYPE_6__** %352, align 8
  %354 = load i32, i32* %14, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %353, i64 %355
  %357 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %356, i32 0, i32 0
  store i8* null, i8** %357, align 8
  br label %358

358:                                              ; preds = %334, %289
  br label %359

359:                                              ; preds = %358
  %360 = load i32, i32* %14, align 4
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %14, align 4
  br label %274

362:                                              ; preds = %274
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %363

363:                                              ; preds = %362, %239, %63, %36
  %364 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %364)
  %365 = load i32, i32* %4, align 4
  ret i32 %365
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @unlikely(i32) #2

declare dso_local %struct.mbuf* @mlx4_en_alloc_mbuf(%struct.mlx4_en_rx_ring*) #2

declare dso_local i32 @m_adj(%struct.mbuf*, i32) #2

declare dso_local i32 @bus_dmamap_load_mbuf_sg(i32, i32, %struct.mbuf*, %struct.TYPE_7__*, i32*, i32) #2

declare dso_local i32 @m_freem(%struct.mbuf*) #2

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #2

declare dso_local i64 @likely(i32) #2

declare dso_local i32 @bus_dmamap_unload(i32, i32) #2

declare dso_local i8* @cpu_to_be32(i64) #2

declare dso_local i8* @cpu_to_be64(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
