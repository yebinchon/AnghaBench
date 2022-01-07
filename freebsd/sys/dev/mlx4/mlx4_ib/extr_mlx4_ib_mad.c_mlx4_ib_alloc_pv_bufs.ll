; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mad.c_mlx4_ib_alloc_pv_bufs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mad.c_mlx4_ib_alloc_pv_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_demux_pv_ctx = type { i32, %struct.mlx4_ib_demux_pv_qp* }
%struct.mlx4_ib_demux_pv_qp = type { i32, %struct.TYPE_7__*, %struct.TYPE_7__*, i64, i64, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_7__*, i8*, %struct.TYPE_6__, i32* }
%struct.TYPE_6__ = type { %struct.TYPE_7__*, i8* }

@IB_QPT_GSI = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MLX4_NUM_TUNNEL_BUFS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_ib_demux_pv_ctx*, i32, i32)* @mlx4_ib_alloc_pv_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_ib_alloc_pv_bufs(%struct.mlx4_ib_demux_pv_ctx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_ib_demux_pv_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx4_ib_demux_pv_qp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mlx4_ib_demux_pv_ctx* %0, %struct.mlx4_ib_demux_pv_ctx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @IB_QPT_GSI, align 4
  %14 = icmp ugt i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %319

18:                                               ; preds = %3
  %19 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %5, align 8
  %20 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %19, i32 0, i32 1
  %21 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %21, i64 %23
  store %struct.mlx4_ib_demux_pv_qp* %24, %struct.mlx4_ib_demux_pv_qp** %9, align 8
  %25 = load i32, i32* @MLX4_NUM_TUNNEL_BUFS, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 4, %26
  %28 = trunc i64 %27 to i32
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.TYPE_7__* @kzalloc(i32 %28, i32 %29)
  %31 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %9, align 8
  %32 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %31, i32 0, i32 1
  store %struct.TYPE_7__* %30, %struct.TYPE_7__** %32, align 8
  %33 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %9, align 8
  %34 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %33, i32 0, i32 1
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = icmp ne %struct.TYPE_7__* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %18
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %319

40:                                               ; preds = %18
  %41 = load i32, i32* @MLX4_NUM_TUNNEL_BUFS, align 4
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.TYPE_7__* @kcalloc(i32 %41, i32 4, i32 %42)
  %44 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %9, align 8
  %45 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %44, i32 0, i32 2
  store %struct.TYPE_7__* %43, %struct.TYPE_7__** %45, align 8
  %46 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %9, align 8
  %47 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %46, i32 0, i32 2
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = icmp ne %struct.TYPE_7__* %48, null
  br i1 %49, label %59, label %50

50:                                               ; preds = %40
  %51 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %9, align 8
  %52 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %51, i32 0, i32 1
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = call i32 @kfree(%struct.TYPE_7__* %53)
  %55 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %9, align 8
  %56 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %55, i32 0, i32 1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %56, align 8
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %319

59:                                               ; preds = %40
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 4, i32* %10, align 4
  store i32 4, i32* %11, align 4
  br label %64

63:                                               ; preds = %59
  store i32 4, i32* %10, align 4
  store i32 4, i32* %11, align 4
  br label %64

64:                                               ; preds = %63, %62
  store i32 0, i32* %8, align 4
  br label %65

65:                                               ; preds = %137, %64
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @MLX4_NUM_TUNNEL_BUFS, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %140

69:                                               ; preds = %65
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = call i8* @kmalloc(i32 %70, i32 %71)
  %73 = bitcast i8* %72 to %struct.TYPE_7__*
  %74 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %9, align 8
  %75 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %74, i32 0, i32 1
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  store %struct.TYPE_7__* %73, %struct.TYPE_7__** %80, align 8
  %81 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %9, align 8
  %82 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %81, i32 0, i32 1
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = icmp ne %struct.TYPE_7__* %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %69
  br label %280

91:                                               ; preds = %69
  %92 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %5, align 8
  %93 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %9, align 8
  %96 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %95, i32 0, i32 1
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %105 = call i8* @ib_dma_map_single(i32 %94, %struct.TYPE_7__* %102, i32 %103, i32 %104)
  %106 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %9, align 8
  %107 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %106, i32 0, i32 1
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  store i8* %105, i8** %112, align 8
  %113 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %5, align 8
  %114 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %9, align 8
  %117 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %116, i32 0, i32 1
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  %123 = load i8*, i8** %122, align 8
  %124 = call i64 @ib_dma_mapping_error(i32 %115, i8* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %136

126:                                              ; preds = %91
  %127 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %9, align 8
  %128 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %127, i32 0, i32 1
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %128, align 8
  %130 = load i32, i32* %8, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = call i32 @kfree(%struct.TYPE_7__* %134)
  br label %280

136:                                              ; preds = %91
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %8, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %8, align 4
  br label %65

140:                                              ; preds = %65
  store i32 0, i32* %8, align 4
  br label %141

141:                                              ; preds = %226, %140
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* @MLX4_NUM_TUNNEL_BUFS, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %229

145:                                              ; preds = %141
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* @GFP_KERNEL, align 4
  %148 = call i8* @kmalloc(i32 %146, i32 %147)
  %149 = bitcast i8* %148 to %struct.TYPE_7__*
  %150 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %9, align 8
  %151 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %150, i32 0, i32 2
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %151, align 8
  %153 = load i32, i32* %8, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  store %struct.TYPE_7__* %149, %struct.TYPE_7__** %157, align 8
  %158 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %9, align 8
  %159 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %158, i32 0, i32 2
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %159, align 8
  %161 = load i32, i32* %8, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %165, align 8
  %167 = icmp ne %struct.TYPE_7__* %166, null
  br i1 %167, label %169, label %168

168:                                              ; preds = %145
  br label %240

169:                                              ; preds = %145
  %170 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %5, align 8
  %171 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %9, align 8
  %174 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %173, i32 0, i32 2
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %174, align 8
  %176 = load i32, i32* %8, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %180, align 8
  %182 = load i32, i32* %11, align 4
  %183 = load i32, i32* @DMA_TO_DEVICE, align 4
  %184 = call i8* @ib_dma_map_single(i32 %172, %struct.TYPE_7__* %181, i32 %182, i32 %183)
  %185 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %9, align 8
  %186 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %185, i32 0, i32 2
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %186, align 8
  %188 = load i32, i32* %8, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 1
  store i8* %184, i8** %192, align 8
  %193 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %5, align 8
  %194 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %9, align 8
  %197 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %196, i32 0, i32 2
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %197, align 8
  %199 = load i32, i32* %8, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 1
  %204 = load i8*, i8** %203, align 8
  %205 = call i64 @ib_dma_mapping_error(i32 %195, i8* %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %218

207:                                              ; preds = %169
  %208 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %9, align 8
  %209 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %208, i32 0, i32 2
  %210 = load %struct.TYPE_7__*, %struct.TYPE_7__** %209, align 8
  %211 = load i32, i32* %8, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 2
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 0
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %215, align 8
  %217 = call i32 @kfree(%struct.TYPE_7__* %216)
  br label %240

218:                                              ; preds = %169
  %219 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %9, align 8
  %220 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %219, i32 0, i32 2
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** %220, align 8
  %222 = load i32, i32* %8, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 3
  store i32* null, i32** %225, align 8
  br label %226

226:                                              ; preds = %218
  %227 = load i32, i32* %8, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %8, align 4
  br label %141

229:                                              ; preds = %141
  %230 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %9, align 8
  %231 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %230, i32 0, i32 5
  %232 = call i32 @spin_lock_init(i32* %231)
  %233 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %9, align 8
  %234 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %233, i32 0, i32 4
  store i64 0, i64* %234, align 8
  %235 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %9, align 8
  %236 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %235, i32 0, i32 3
  store i64 0, i64* %236, align 8
  %237 = load i32, i32* %6, align 4
  %238 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %9, align 8
  %239 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %238, i32 0, i32 0
  store i32 %237, i32* %239, align 8
  store i32 0, i32* %4, align 4
  br label %319

240:                                              ; preds = %207, %168
  br label %241

241:                                              ; preds = %244, %240
  %242 = load i32, i32* %8, align 4
  %243 = icmp sgt i32 %242, 0
  br i1 %243, label %244, label %272

244:                                              ; preds = %241
  %245 = load i32, i32* %8, align 4
  %246 = add nsw i32 %245, -1
  store i32 %246, i32* %8, align 4
  %247 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %5, align 8
  %248 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %9, align 8
  %251 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %250, i32 0, i32 2
  %252 = load %struct.TYPE_7__*, %struct.TYPE_7__** %251, align 8
  %253 = load i32, i32* %8, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 2
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 1
  %258 = load i8*, i8** %257, align 8
  %259 = load i32, i32* %11, align 4
  %260 = load i32, i32* @DMA_TO_DEVICE, align 4
  %261 = call i32 @ib_dma_unmap_single(i32 %249, i8* %258, i32 %259, i32 %260)
  %262 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %9, align 8
  %263 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %262, i32 0, i32 2
  %264 = load %struct.TYPE_7__*, %struct.TYPE_7__** %263, align 8
  %265 = load i32, i32* %8, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %267, i32 0, i32 2
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 0
  %270 = load %struct.TYPE_7__*, %struct.TYPE_7__** %269, align 8
  %271 = call i32 @kfree(%struct.TYPE_7__* %270)
  br label %241

272:                                              ; preds = %241
  %273 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %9, align 8
  %274 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %273, i32 0, i32 2
  %275 = load %struct.TYPE_7__*, %struct.TYPE_7__** %274, align 8
  %276 = call i32 @kfree(%struct.TYPE_7__* %275)
  %277 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %9, align 8
  %278 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %277, i32 0, i32 2
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %278, align 8
  %279 = load i32, i32* @MLX4_NUM_TUNNEL_BUFS, align 4
  store i32 %279, i32* %8, align 4
  br label %280

280:                                              ; preds = %272, %126, %90
  br label %281

281:                                              ; preds = %284, %280
  %282 = load i32, i32* %8, align 4
  %283 = icmp sgt i32 %282, 0
  br i1 %283, label %284, label %310

284:                                              ; preds = %281
  %285 = load i32, i32* %8, align 4
  %286 = add nsw i32 %285, -1
  store i32 %286, i32* %8, align 4
  %287 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %5, align 8
  %288 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %9, align 8
  %291 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %290, i32 0, i32 1
  %292 = load %struct.TYPE_7__*, %struct.TYPE_7__** %291, align 8
  %293 = load i32, i32* %8, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %292, i64 %294
  %296 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %295, i32 0, i32 1
  %297 = load i8*, i8** %296, align 8
  %298 = load i32, i32* %10, align 4
  %299 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %300 = call i32 @ib_dma_unmap_single(i32 %289, i8* %297, i32 %298, i32 %299)
  %301 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %9, align 8
  %302 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %301, i32 0, i32 1
  %303 = load %struct.TYPE_7__*, %struct.TYPE_7__** %302, align 8
  %304 = load i32, i32* %8, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %303, i64 %305
  %307 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %306, i32 0, i32 0
  %308 = load %struct.TYPE_7__*, %struct.TYPE_7__** %307, align 8
  %309 = call i32 @kfree(%struct.TYPE_7__* %308)
  br label %281

310:                                              ; preds = %281
  %311 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %9, align 8
  %312 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %311, i32 0, i32 1
  %313 = load %struct.TYPE_7__*, %struct.TYPE_7__** %312, align 8
  %314 = call i32 @kfree(%struct.TYPE_7__* %313)
  %315 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %9, align 8
  %316 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %315, i32 0, i32 1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %316, align 8
  %317 = load i32, i32* @ENOMEM, align 4
  %318 = sub nsw i32 0, %317
  store i32 %318, i32* %4, align 4
  br label %319

319:                                              ; preds = %310, %229, %50, %37, %15
  %320 = load i32, i32* %4, align 4
  ret i32 %320
}

declare dso_local %struct.TYPE_7__* @kzalloc(i32, i32) #1

declare dso_local %struct.TYPE_7__* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_7__*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i8* @ib_dma_map_single(i32, %struct.TYPE_7__*, i32, i32) #1

declare dso_local i64 @ib_dma_mapping_error(i32, i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @ib_dma_unmap_single(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
