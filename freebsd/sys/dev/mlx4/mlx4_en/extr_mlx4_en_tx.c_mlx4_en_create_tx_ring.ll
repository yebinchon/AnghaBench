; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_tx.c_mlx4_en_create_tx_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_tx.c_mlx4_en_create_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { %struct.TYPE_20__*, %struct.mlx4_en_dev* }
%struct.TYPE_20__ = type { i32 }
%struct.mlx4_en_dev = type { i32, i32, %struct.TYPE_24__, %struct.TYPE_19__* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.mlx4_en_tx_ring = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_25__*, i32, %struct.TYPE_15__, i32, %struct.TYPE_17__, %struct.TYPE_26__, i32, %struct.TYPE_22__, %struct.TYPE_21__, i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i64, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_24__* }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed allocating TX ring\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@MLX4_EN_TX_MAX_PAYLOAD_SIZE = common dso_local global i32 0, align 4
@MLX4_EN_TX_MAX_MBUF_FRAGS = common dso_local global i32 0, align 4
@MLX4_EN_TX_MAX_MBUF_SIZE = common dso_local global i32 0, align 4
@MIN_PKT_LEN = common dso_local global i32 0, align 4
@MAX_INLINE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"mlx4 tx\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"mlx4 comp\00", align 1
@DRV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"Allocated tx_info ring at addr:%p size:%d\0A\00", align 1
@MLX4_EN_PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"Failed allocating hwq resources\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Failed to map TX buffer\0A\00", align 1
@.str.6 = private unnamed_addr constant [67 x i8] c"Allocated TX ring (addr:%p) - buf:%p size:%d buf_size:%d dma:%llx\0A\00", align 1
@MLX4_RESERVE_ETH_BF_QP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"failed reserving qp for TX ring\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Failed allocating qp %d\0A\00", align 1
@mlx4_en_sqp_event = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [31 x i8] c"working without blueflame (%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_en_create_tx_ring(%struct.mlx4_en_priv* %0, %struct.mlx4_en_tx_ring** %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_en_priv*, align 8
  %9 = alloca %struct.mlx4_en_tx_ring**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.mlx4_en_dev*, align 8
  %15 = alloca %struct.mlx4_en_tx_ring*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %8, align 8
  store %struct.mlx4_en_tx_ring** %1, %struct.mlx4_en_tx_ring*** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %20 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %19, i32 0, i32 1
  %21 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %20, align 8
  store %struct.mlx4_en_dev* %21, %struct.mlx4_en_dev** %14, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = load i32, i32* %12, align 4
  %24 = call i8* @kzalloc_node(i32 96, i32 %22, i32 %23)
  %25 = bitcast i8* %24 to %struct.mlx4_en_tx_ring*
  store %struct.mlx4_en_tx_ring* %25, %struct.mlx4_en_tx_ring** %15, align 8
  %26 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %27 = icmp ne %struct.mlx4_en_tx_ring* %26, null
  br i1 %27, label %40, label %28

28:                                               ; preds = %6
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i8* @kzalloc(i32 96, i32 %29)
  %31 = bitcast i8* %30 to %struct.mlx4_en_tx_ring*
  store %struct.mlx4_en_tx_ring* %31, %struct.mlx4_en_tx_ring** %15, align 8
  %32 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %33 = icmp ne %struct.mlx4_en_tx_ring* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %28
  %35 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %36 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %35, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %7, align 4
  br label %368

39:                                               ; preds = %28
  br label %40

40:                                               ; preds = %39, %6
  %41 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %14, align 8
  %42 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %41, i32 0, i32 3
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @bus_get_dma_tag(i32 %46)
  %48 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %49 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %50 = load i32, i32* @MLX4_EN_TX_MAX_PAYLOAD_SIZE, align 4
  %51 = load i32, i32* @MLX4_EN_TX_MAX_MBUF_FRAGS, align 4
  %52 = load i32, i32* @MLX4_EN_TX_MAX_MBUF_SIZE, align 4
  %53 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %54 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %53, i32 0, i32 5
  %55 = call i32 @bus_dma_tag_create(i32 %47, i32 1, i32 0, i32 %48, i32 %49, i32* null, i32* null, i32 %50, i32 %51, i32 %52, i32 0, i32* null, i32* null, i32* %54)
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %18, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %40
  br label %364

59:                                               ; preds = %40
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %62 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sub nsw i32 %63, 1
  %65 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %66 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %69 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* @MIN_PKT_LEN, align 4
  %71 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %72 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %71, i32 0, i32 0
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @MAX_INLINE, align 4
  %77 = call i32 @MIN(i32 %75, i32 %76)
  %78 = call i32 @MAX(i32 %70, i32 %77)
  %79 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %80 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %79, i32 0, i32 15
  store i32 %78, i32* %80, align 8
  %81 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %82 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %81, i32 0, i32 14
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 0
  %84 = load i32, i32* @MTX_DEF, align 4
  %85 = call i32 @mtx_init(i32* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %84)
  %86 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %87 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %86, i32 0, i32 13
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 0
  %89 = load i32, i32* @MTX_DEF, align 4
  %90 = call i32 @mtx_init(i32* %88, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %89)
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = mul i64 %92, 4
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %17, align 4
  %95 = load i32, i32* %17, align 4
  %96 = load i32, i32* @GFP_KERNEL, align 4
  %97 = load i32, i32* %12, align 4
  %98 = call i8* @kzalloc_node(i32 %95, i32 %96, i32 %97)
  %99 = bitcast i8* %98 to %struct.TYPE_25__*
  %100 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %101 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %100, i32 0, i32 6
  store %struct.TYPE_25__* %99, %struct.TYPE_25__** %101, align 8
  %102 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %103 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %102, i32 0, i32 6
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %103, align 8
  %105 = icmp ne %struct.TYPE_25__* %104, null
  br i1 %105, label %121, label %106

106:                                              ; preds = %59
  %107 = load i32, i32* %17, align 4
  %108 = load i32, i32* @GFP_KERNEL, align 4
  %109 = call i8* @kzalloc(i32 %107, i32 %108)
  %110 = bitcast i8* %109 to %struct.TYPE_25__*
  %111 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %112 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %111, i32 0, i32 6
  store %struct.TYPE_25__* %110, %struct.TYPE_25__** %112, align 8
  %113 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %114 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %113, i32 0, i32 6
  %115 = load %struct.TYPE_25__*, %struct.TYPE_25__** %114, align 8
  %116 = icmp ne %struct.TYPE_25__* %115, null
  br i1 %116, label %120, label %117

117:                                              ; preds = %106
  %118 = load i32, i32* @ENOMEM, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %18, align 4
  br label %359

120:                                              ; preds = %106
  br label %121

121:                                              ; preds = %120, %59
  store i32 0, i32* %16, align 4
  br label %122

122:                                              ; preds = %161, %121
  %123 = load i32, i32* %16, align 4
  %124 = load i32, i32* %10, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %126, label %164

126:                                              ; preds = %122
  %127 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %128 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %131 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %130, i32 0, i32 6
  %132 = load %struct.TYPE_25__*, %struct.TYPE_25__** %131, align 8
  %133 = load i32, i32* %16, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %135, i32 0, i32 0
  %137 = call i32 @bus_dmamap_create(i32 %129, i32 0, i32* %136)
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %18, align 4
  %139 = load i32, i32* %18, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %160

141:                                              ; preds = %126
  br label %142

142:                                              ; preds = %146, %141
  %143 = load i32, i32* %16, align 4
  %144 = add nsw i32 %143, -1
  store i32 %144, i32* %16, align 4
  %145 = icmp ne i32 %143, 0
  br i1 %145, label %146, label %159

146:                                              ; preds = %142
  %147 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %148 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %151 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %150, i32 0, i32 6
  %152 = load %struct.TYPE_25__*, %struct.TYPE_25__** %151, align 8
  %153 = load i32, i32* %16, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @bus_dmamap_destroy(i32 %149, i32 %157)
  br label %142

159:                                              ; preds = %142
  br label %354

160:                                              ; preds = %126
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %16, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %16, align 4
  br label %122

164:                                              ; preds = %122
  %165 = load i32, i32* @DRV, align 4
  %166 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %167 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %168 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %167, i32 0, i32 6
  %169 = load %struct.TYPE_25__*, %struct.TYPE_25__** %168, align 8
  %170 = load i32, i32* %17, align 4
  %171 = call i32 (i32, %struct.mlx4_en_priv*, i8*, ...) @en_dbg(i32 %165, %struct.mlx4_en_priv* %166, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_25__* %169, i32 %170)
  %172 = load i32, i32* %10, align 4
  %173 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %174 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = mul nsw i32 %172, %175
  %177 = load i32, i32* @MLX4_EN_PAGE_SIZE, align 4
  %178 = call i32 @ALIGN(i32 %176, i32 %177)
  %179 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %180 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %179, i32 0, i32 7
  store i32 %178, i32* %180, align 8
  %181 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %14, align 8
  %182 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %185 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %184, i32 0, i32 8
  %186 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %187 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %186, i32 0, i32 7
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @PAGE_SIZE, align 4
  %190 = mul nsw i32 2, %189
  %191 = call i32 @mlx4_alloc_hwq_res(i32 %183, %struct.TYPE_15__* %185, i32 %188, i32 %190)
  store i32 %191, i32* %18, align 4
  %192 = load i32, i32* %18, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %164
  %195 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %196 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %195, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %332

197:                                              ; preds = %164
  %198 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %199 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %198, i32 0, i32 8
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 0
  %201 = call i32 @mlx4_en_map_buffer(%struct.TYPE_16__* %200)
  store i32 %201, i32* %18, align 4
  %202 = load i32, i32* %18, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %197
  %205 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %206 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %205, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %322

207:                                              ; preds = %197
  %208 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %209 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %208, i32 0, i32 8
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %215 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %214, i32 0, i32 12
  store i32 %213, i32* %215, align 4
  %216 = load i32, i32* @DRV, align 4
  %217 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %218 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %219 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %220 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %219, i32 0, i32 12
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %223 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %226 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %225, i32 0, i32 7
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %229 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %228, i32 0, i32 8
  %230 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = call i32 (i32, %struct.mlx4_en_priv*, i8*, ...) @en_dbg(i32 %216, %struct.mlx4_en_priv* %217, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.6, i64 0, i64 0), %struct.mlx4_en_tx_ring* %218, i32 %221, i32 %224, i32 %227, i64 %233)
  %235 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %14, align 8
  %236 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %239 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %238, i32 0, i32 9
  %240 = load i32, i32* @MLX4_RESERVE_ETH_BF_QP, align 4
  %241 = call i32 @mlx4_qp_reserve_range(i32 %237, i32 1, i32 1, i32* %239, i32 %240)
  store i32 %241, i32* %18, align 4
  %242 = load i32, i32* %18, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %247

244:                                              ; preds = %207
  %245 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %246 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %245, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  br label %317

247:                                              ; preds = %207
  %248 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %14, align 8
  %249 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %252 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %251, i32 0, i32 9
  %253 = load i32, i32* %252, align 8
  %254 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %255 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %254, i32 0, i32 11
  %256 = load i32, i32* @GFP_KERNEL, align 4
  %257 = call i32 @mlx4_qp_alloc(i32 %250, i32 %253, %struct.TYPE_26__* %255, i32 %256)
  store i32 %257, i32* %18, align 4
  %258 = load i32, i32* %18, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %266

260:                                              ; preds = %247
  %261 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %262 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %263 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %262, i32 0, i32 9
  %264 = load i32, i32* %263, align 8
  %265 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %261, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 %264)
  br label %309

266:                                              ; preds = %247
  %267 = load i32, i32* @mlx4_en_sqp_event, align 4
  %268 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %269 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %268, i32 0, i32 11
  %270 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %269, i32 0, i32 0
  store i32 %267, i32* %270, align 8
  %271 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %14, align 8
  %272 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %275 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %274, i32 0, i32 10
  %276 = load i32, i32* %12, align 4
  %277 = call i32 @mlx4_bf_alloc(i32 %273, %struct.TYPE_17__* %275, i32 %276)
  store i32 %277, i32* %18, align 4
  %278 = load i32, i32* %18, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %300

280:                                              ; preds = %266
  %281 = load i32, i32* @DRV, align 4
  %282 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %283 = load i32, i32* %18, align 4
  %284 = call i32 (i32, %struct.mlx4_en_priv*, i8*, ...) @en_dbg(i32 %281, %struct.mlx4_en_priv* %282, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %283)
  %285 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %14, align 8
  %286 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %285, i32 0, i32 2
  %287 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %288 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %287, i32 0, i32 10
  %289 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %288, i32 0, i32 0
  store %struct.TYPE_24__* %286, %struct.TYPE_24__** %289, align 8
  %290 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %14, align 8
  %291 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %294 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %293, i32 0, i32 10
  %295 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %294, i32 0, i32 0
  %296 = load %struct.TYPE_24__*, %struct.TYPE_24__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %296, i32 0, i32 0
  store i32 %292, i32* %297, align 4
  %298 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %299 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %298, i32 0, i32 3
  store i32 0, i32* %299, align 4
  br label %303

300:                                              ; preds = %266
  %301 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %302 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %301, i32 0, i32 3
  store i32 1, i32* %302, align 4
  br label %303

303:                                              ; preds = %300, %280
  %304 = load i32, i32* %13, align 4
  %305 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %306 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %305, i32 0, i32 4
  store i32 %304, i32* %306, align 8
  %307 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %308 = load %struct.mlx4_en_tx_ring**, %struct.mlx4_en_tx_ring*** %9, align 8
  store %struct.mlx4_en_tx_ring* %307, %struct.mlx4_en_tx_ring** %308, align 8
  store i32 0, i32* %7, align 4
  br label %368

309:                                              ; preds = %260
  %310 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %14, align 8
  %311 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %314 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %313, i32 0, i32 9
  %315 = load i32, i32* %314, align 8
  %316 = call i32 @mlx4_qp_release_range(i32 %312, i32 %315, i32 1)
  br label %317

317:                                              ; preds = %309, %244
  %318 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %319 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %318, i32 0, i32 8
  %320 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %319, i32 0, i32 0
  %321 = call i32 @mlx4_en_unmap_buffer(%struct.TYPE_16__* %320)
  br label %322

322:                                              ; preds = %317, %204
  %323 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %14, align 8
  %324 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %327 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %326, i32 0, i32 8
  %328 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %329 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %328, i32 0, i32 7
  %330 = load i32, i32* %329, align 8
  %331 = call i32 @mlx4_free_hwq_res(i32 %325, %struct.TYPE_15__* %327, i32 %330)
  br label %332

332:                                              ; preds = %322, %194
  store i32 0, i32* %16, align 4
  br label %333

333:                                              ; preds = %350, %332
  %334 = load i32, i32* %16, align 4
  %335 = load i32, i32* %10, align 4
  %336 = icmp ne i32 %334, %335
  br i1 %336, label %337, label %353

337:                                              ; preds = %333
  %338 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %339 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %338, i32 0, i32 5
  %340 = load i32, i32* %339, align 4
  %341 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %342 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %341, i32 0, i32 6
  %343 = load %struct.TYPE_25__*, %struct.TYPE_25__** %342, align 8
  %344 = load i32, i32* %16, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %343, i64 %345
  %347 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 4
  %349 = call i32 @bus_dmamap_destroy(i32 %340, i32 %348)
  br label %350

350:                                              ; preds = %337
  %351 = load i32, i32* %16, align 4
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* %16, align 4
  br label %333

353:                                              ; preds = %333
  br label %354

354:                                              ; preds = %353, %159
  %355 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %356 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %355, i32 0, i32 6
  %357 = load %struct.TYPE_25__*, %struct.TYPE_25__** %356, align 8
  %358 = call i32 @vfree(%struct.TYPE_25__* %357)
  br label %359

359:                                              ; preds = %354, %117
  %360 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %361 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %360, i32 0, i32 5
  %362 = load i32, i32* %361, align 4
  %363 = call i32 @bus_dma_tag_destroy(i32 %362)
  br label %364

364:                                              ; preds = %359, %58
  %365 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %366 = call i32 @kfree(%struct.mlx4_en_tx_ring* %365)
  %367 = load i32, i32* %18, align 4
  store i32 %367, i32* %7, align 4
  br label %368

368:                                              ; preds = %364, %303, %34
  %369 = load i32, i32* %7, align 4
  ret i32 %369
}

declare dso_local i8* @kzalloc_node(i32, i32, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*, ...) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @bus_dmamap_destroy(i32, i32) #1

declare dso_local i32 @en_dbg(i32, %struct.mlx4_en_priv*, i8*, ...) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @mlx4_alloc_hwq_res(i32, %struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @mlx4_en_map_buffer(%struct.TYPE_16__*) #1

declare dso_local i32 @mlx4_qp_reserve_range(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @mlx4_qp_alloc(i32, i32, %struct.TYPE_26__*, i32) #1

declare dso_local i32 @mlx4_bf_alloc(i32, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @mlx4_qp_release_range(i32, i32, i32) #1

declare dso_local i32 @mlx4_en_unmap_buffer(%struct.TYPE_16__*) #1

declare dso_local i32 @mlx4_free_hwq_res(i32, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @vfree(%struct.TYPE_25__*) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i32 @kfree(%struct.mlx4_en_tx_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
