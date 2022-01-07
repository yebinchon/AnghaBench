; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_rx.c_mlx4_en_create_rx_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_rx.c_mlx4_en_create_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { %struct.mlx4_en_dev* }
%struct.mlx4_en_dev = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.mlx4_en_rx_ring = type { i32, i32, i32, %struct.TYPE_14__*, %struct.TYPE_13__, i64, %struct.TYPE_15__, i32, i32, i64, i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to allocate RX ring structure\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@MJUM16BYTES = common dso_local global i32 0, align 4
@MLX4_EN_MAX_RX_SEGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to create DMA tag\0A\00", align 1
@TXBB_SIZE = common dso_local global i64 0, align 8
@DRV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Allocated MBUF ring at addr:%p size:%d\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Failed to map RX buffer\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_en_create_rx_ring(%struct.mlx4_en_priv* %0, %struct.mlx4_en_rx_ring** %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_en_priv*, align 8
  %7 = alloca %struct.mlx4_en_rx_ring**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_en_dev*, align 8
  %11 = alloca %struct.mlx4_en_rx_ring*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %6, align 8
  store %struct.mlx4_en_rx_ring** %1, %struct.mlx4_en_rx_ring*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %16 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %15, i32 0, i32 0
  %17 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %16, align 8
  store %struct.mlx4_en_dev* %17, %struct.mlx4_en_dev** %10, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i8* @kzalloc(i32 72, i32 %18)
  %20 = bitcast i8* %19 to %struct.mlx4_en_rx_ring*
  store %struct.mlx4_en_rx_ring* %20, %struct.mlx4_en_rx_ring** %11, align 8
  %21 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %11, align 8
  %22 = icmp ne %struct.mlx4_en_rx_ring* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %4
  %24 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %25 = call i32 @en_err(%struct.mlx4_en_priv* %24, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %242

28:                                               ; preds = %4
  %29 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %10, align 8
  %30 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %29, i32 0, i32 1
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @bus_get_dma_tag(i32 %34)
  %36 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %37 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %38 = load i32, i32* @MJUM16BYTES, align 4
  %39 = load i32, i32* @MLX4_EN_MAX_RX_SEGS, align 4
  %40 = load i32, i32* @MJUM16BYTES, align 4
  %41 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %11, align 8
  %42 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %41, i32 0, i32 2
  %43 = call i32 @bus_dma_tag_create(i32 %35, i32 1, i32 0, i32 %36, i32 %37, i32* null, i32* null, i32 %38, i32 %39, i32 %40, i32 0, i32* null, i32* null, i32* %42)
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %28
  %47 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %48 = call i32 @en_err(%struct.mlx4_en_priv* %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %238

49:                                               ; preds = %28
  %50 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %11, align 8
  %51 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %50, i32 0, i32 10
  store i64 0, i64* %51, align 8
  %52 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %11, align 8
  %53 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %52, i32 0, i32 9
  store i64 0, i64* %53, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %11, align 8
  %56 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sub nsw i32 %57, 1
  %59 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %11, align 8
  %60 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = call i32 @ilog2(i32 4)
  %62 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %11, align 8
  %63 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %62, i32 0, i32 8
  store i32 %61, i32* %63, align 8
  %64 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %11, align 8
  %65 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = mul i64 %67, 4
  %69 = load i64, i64* @TXBB_SIZE, align 8
  %70 = add i64 %68, %69
  %71 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %11, align 8
  %72 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %71, i32 0, i32 5
  store i64 %70, i64* %72, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = mul i64 %74, 4
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* @GFP_KERNEL, align 4
  %79 = call i8* @kzalloc(i32 %77, i32 %78)
  %80 = bitcast i8* %79 to %struct.TYPE_14__*
  %81 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %11, align 8
  %82 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %81, i32 0, i32 3
  store %struct.TYPE_14__* %80, %struct.TYPE_14__** %82, align 8
  %83 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %11, align 8
  %84 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %83, i32 0, i32 3
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %84, align 8
  %86 = icmp eq %struct.TYPE_14__* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %49
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %12, align 4
  br label %233

90:                                               ; preds = %49
  %91 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %11, align 8
  %92 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %11, align 8
  %95 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = call i32 @bus_dmamap_create(i32 %93, i32 0, i32* %96)
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %12, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %90
  br label %228

102:                                              ; preds = %90
  store i32 0, i32* %14, align 4
  br label %103

103:                                              ; preds = %142, %102
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %145

107:                                              ; preds = %103
  %108 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %11, align 8
  %109 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %11, align 8
  %112 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %111, i32 0, i32 3
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %112, align 8
  %114 = load i32, i32* %14, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 0
  %118 = call i32 @bus_dmamap_create(i32 %110, i32 0, i32* %117)
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %12, align 4
  %120 = load i32, i32* %12, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %141

122:                                              ; preds = %107
  br label %123

123:                                              ; preds = %127, %122
  %124 = load i32, i32* %14, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* %14, align 4
  %126 = icmp ne i32 %124, 0
  br i1 %126, label %127, label %140

127:                                              ; preds = %123
  %128 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %11, align 8
  %129 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %11, align 8
  %132 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %131, i32 0, i32 3
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %132, align 8
  %134 = load i32, i32* %14, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @bus_dmamap_destroy(i32 %130, i32 %138)
  br label %123

140:                                              ; preds = %123
  br label %228

141:                                              ; preds = %107
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %14, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %14, align 4
  br label %103

145:                                              ; preds = %103
  %146 = load i32, i32* @DRV, align 4
  %147 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %148 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %11, align 8
  %149 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %148, i32 0, i32 3
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %149, align 8
  %151 = load i32, i32* %13, align 4
  %152 = call i32 @en_dbg(i32 %146, %struct.mlx4_en_priv* %147, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_14__* %150, i32 %151)
  %153 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %10, align 8
  %154 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %11, align 8
  %157 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %156, i32 0, i32 6
  %158 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %11, align 8
  %159 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %158, i32 0, i32 5
  %160 = load i64, i64* %159, align 8
  %161 = load i32, i32* @PAGE_SIZE, align 4
  %162 = mul nsw i32 2, %161
  %163 = call i32 @mlx4_alloc_hwq_res(i32 %155, %struct.TYPE_15__* %157, i64 %160, i32 %162)
  store i32 %163, i32* %12, align 4
  %164 = load i32, i32* %12, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %145
  br label %198

167:                                              ; preds = %145
  %168 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %11, align 8
  %169 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %168, i32 0, i32 6
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 0
  %171 = call i32 @mlx4_en_map_buffer(%struct.TYPE_16__* %170)
  store i32 %171, i32* %12, align 4
  %172 = load i32, i32* %12, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %167
  %175 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %176 = call i32 @en_err(%struct.mlx4_en_priv* %175, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %188

177:                                              ; preds = %167
  %178 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %11, align 8
  %179 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %178, i32 0, i32 6
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %11, align 8
  %185 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %184, i32 0, i32 7
  store i32 %183, i32* %185, align 4
  %186 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %11, align 8
  %187 = load %struct.mlx4_en_rx_ring**, %struct.mlx4_en_rx_ring*** %7, align 8
  store %struct.mlx4_en_rx_ring* %186, %struct.mlx4_en_rx_ring** %187, align 8
  store i32 0, i32* %5, align 4
  br label %242

188:                                              ; preds = %174
  %189 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %10, align 8
  %190 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %11, align 8
  %193 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %192, i32 0, i32 6
  %194 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %11, align 8
  %195 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %194, i32 0, i32 5
  %196 = load i64, i64* %195, align 8
  %197 = call i32 @mlx4_free_hwq_res(i32 %191, %struct.TYPE_15__* %193, i64 %196)
  br label %198

198:                                              ; preds = %188, %166
  store i32 0, i32* %14, align 4
  br label %199

199:                                              ; preds = %216, %198
  %200 = load i32, i32* %14, align 4
  %201 = load i32, i32* %8, align 4
  %202 = icmp ne i32 %200, %201
  br i1 %202, label %203, label %219

203:                                              ; preds = %199
  %204 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %11, align 8
  %205 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %11, align 8
  %208 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %207, i32 0, i32 3
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %208, align 8
  %210 = load i32, i32* %14, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @bus_dmamap_destroy(i32 %206, i32 %214)
  br label %216

216:                                              ; preds = %203
  %217 = load i32, i32* %14, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %14, align 4
  br label %199

219:                                              ; preds = %199
  %220 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %11, align 8
  %221 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %11, align 8
  %224 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %223, i32 0, i32 4
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = call i32 @bus_dmamap_destroy(i32 %222, i32 %226)
  br label %228

228:                                              ; preds = %219, %140, %101
  %229 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %11, align 8
  %230 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %229, i32 0, i32 3
  %231 = load %struct.TYPE_14__*, %struct.TYPE_14__** %230, align 8
  %232 = call i32 @vfree(%struct.TYPE_14__* %231)
  br label %233

233:                                              ; preds = %228, %87
  %234 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %11, align 8
  %235 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = call i32 @bus_dma_tag_destroy(i32 %236)
  br label %238

238:                                              ; preds = %233, %46
  %239 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %11, align 8
  %240 = call i32 @kfree(%struct.mlx4_en_rx_ring* %239)
  %241 = load i32, i32* %12, align 4
  store i32 %241, i32* %5, align 4
  br label %242

242:                                              ; preds = %238, %177, %23
  %243 = load i32, i32* %5, align 4
  ret i32 %243
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @bus_dmamap_destroy(i32, i32) #1

declare dso_local i32 @en_dbg(i32, %struct.mlx4_en_priv*, i8*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @mlx4_alloc_hwq_res(i32, %struct.TYPE_15__*, i64, i32) #1

declare dso_local i32 @mlx4_en_map_buffer(%struct.TYPE_16__*) #1

declare dso_local i32 @mlx4_free_hwq_res(i32, %struct.TYPE_15__*, i64) #1

declare dso_local i32 @vfree(%struct.TYPE_14__*) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i32 @kfree(%struct.mlx4_en_rx_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
