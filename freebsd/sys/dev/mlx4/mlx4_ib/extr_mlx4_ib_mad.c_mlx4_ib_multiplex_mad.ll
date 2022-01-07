; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mad.c_mlx4_ib_multiplex_mad.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mad.c_mlx4_ib_multiplex_mad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_demux_pv_ctx = type { i32, i32, i32, %struct.mlx4_ib_demux_pv_qp* }
%struct.mlx4_ib_demux_pv_qp = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, %struct.mlx4_tunnel_mad* }
%struct.mlx4_tunnel_mad = type { %struct.TYPE_21__, %struct.TYPE_19__ }
%struct.TYPE_21__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32*, i32 }
%struct.ib_wc = type { i32, i32, i32 }
%struct.mlx4_ib_dev = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.mlx4_ib_ah = type { %struct.TYPE_13__, %struct.TYPE_14__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.ib_ah_attr = type { i32, i32, %struct.TYPE_14__* }
%struct.ib_sa_mad = type { i32 }
%struct.ib_mad = type { i32 }

@MLX4_NUM_TUNNEL_BUFS = common dso_local global i32 0, align 4
@MLX4_MFUNC_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"can't multiplex bad sqp:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"can't multiplex bad sqp:%d: belongs to another slave\0A\00", align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"egress mad has non-null tid msb:%d class:%d slave:%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"dropping unsupported egress mad from class:%d for slave:%d\0A\00", align 1
@IB_AH_GRH = common dso_local global i32 0, align 4
@IB_QPT_SMI = common dso_local global i32 0, align 4
@IB_QPT_GSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_ib_demux_pv_ctx*, %struct.ib_wc*)* @mlx4_ib_multiplex_mad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_ib_multiplex_mad(%struct.mlx4_ib_demux_pv_ctx* %0, %struct.ib_wc* %1) #0 {
  %3 = alloca %struct.mlx4_ib_demux_pv_ctx*, align 8
  %4 = alloca %struct.ib_wc*, align 8
  %5 = alloca %struct.mlx4_ib_dev*, align 8
  %6 = alloca %struct.mlx4_ib_demux_pv_qp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_tunnel_mad*, align 8
  %9 = alloca %struct.mlx4_ib_ah, align 4
  %10 = alloca %struct.ib_ah_attr, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mlx4_ib_demux_pv_ctx* %0, %struct.mlx4_ib_demux_pv_ctx** %3, align 8
  store %struct.ib_wc* %1, %struct.ib_wc** %4, align 8
  %15 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.mlx4_ib_dev* @to_mdev(i32 %17)
  store %struct.mlx4_ib_dev* %18, %struct.mlx4_ib_dev** %5, align 8
  %19 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %3, align 8
  %20 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %19, i32 0, i32 3
  %21 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %20, align 8
  %22 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %23 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @MLX4_TUN_WRID_QPN(i32 %24)
  %26 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %21, i64 %25
  store %struct.mlx4_ib_demux_pv_qp* %26, %struct.mlx4_ib_demux_pv_qp** %6, align 8
  %27 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %28 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MLX4_NUM_TUNNEL_BUFS, align 4
  %31 = sub nsw i32 %30, 1
  %32 = and i32 %29, %31
  store i32 %32, i32* %7, align 4
  %33 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %6, align 8
  %34 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %33, i32 0, i32 0
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 1
  %40 = load %struct.mlx4_tunnel_mad*, %struct.mlx4_tunnel_mad** %39, align 8
  store %struct.mlx4_tunnel_mad* %40, %struct.mlx4_tunnel_mad** %8, align 8
  %41 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %42 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %45 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %44, i32 0, i32 0
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %43, %49
  br i1 %50, label %81, label %51

51:                                               ; preds = %2
  %52 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %53 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %56 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %55, i32 0, i32 0
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @MLX4_MFUNC_MAX, align 4
  %62 = mul nsw i32 8, %61
  %63 = add nsw i32 %60, %62
  %64 = icmp sge i32 %54, %63
  br i1 %64, label %81, label %65

65:                                               ; preds = %51
  %66 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %67 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 1
  %70 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %3, align 8
  %71 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sub nsw i32 %72, 1
  %74 = icmp ne i32 %69, %73
  br i1 %74, label %81, label %75

75:                                               ; preds = %65
  %76 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %77 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %75, %65, %51, %2
  %82 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %3, align 8
  %83 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %86 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i32, i8*, i32, ...) @mlx4_ib_warn(i32 %84, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %87)
  br label %366

89:                                               ; preds = %75
  %90 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %91 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, -8
  %94 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %95 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %94, i32 0, i32 0
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = sub nsw i32 %93, %99
  %101 = sdiv i32 %100, 8
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %12, align 4
  %103 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %3, align 8
  %104 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %102, %105
  br i1 %106, label %107, label %115

107:                                              ; preds = %89
  %108 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %3, align 8
  %109 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %112 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 (i32, i8*, i32, ...) @mlx4_ib_warn(i32 %110, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %113)
  br label %366

115:                                              ; preds = %89
  %116 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %3, align 8
  %117 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %6, align 8
  %120 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %119, i32 0, i32 0
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %120, align 8
  %122 = load i32, i32* %7, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %128 = call i32 @ib_dma_sync_single_for_cpu(i32 %118, i32 %126, i32 48, i32 %127)
  %129 = load %struct.mlx4_tunnel_mad*, %struct.mlx4_tunnel_mad** %8, align 8
  %130 = getelementptr inbounds %struct.mlx4_tunnel_mad, %struct.mlx4_tunnel_mad* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  switch i32 %133, label %159 [
    i32 132, label %134
    i32 134, label %134
    i32 133, label %134
    i32 129, label %134
    i32 131, label %134
    i32 130, label %134
    i32 128, label %134
  ]

134:                                              ; preds = %115, %115, %115, %115, %115, %115, %115
  %135 = load %struct.mlx4_tunnel_mad*, %struct.mlx4_tunnel_mad** %8, align 8
  %136 = getelementptr inbounds %struct.mlx4_tunnel_mad, %struct.mlx4_tunnel_mad* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 2
  store i32* %138, i32** %11, align 8
  %139 = load i32*, i32** %11, align 8
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %155

142:                                              ; preds = %134
  %143 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %3, align 8
  %144 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = load i32*, i32** %11, align 8
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.mlx4_tunnel_mad*, %struct.mlx4_tunnel_mad** %8, align 8
  %149 = getelementptr inbounds %struct.mlx4_tunnel_mad, %struct.mlx4_tunnel_mad* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %12, align 4
  %154 = call i32 (i32, i8*, i32, ...) @mlx4_ib_warn(i32 %145, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %147, i32 %152, i32 %153)
  br label %366

155:                                              ; preds = %134
  %156 = load i32, i32* %12, align 4
  %157 = load i32*, i32** %11, align 8
  store i32 %156, i32* %157, align 4
  br label %158

158:                                              ; preds = %155
  br label %159

159:                                              ; preds = %115, %158
  br label %160

160:                                              ; preds = %159
  %161 = load %struct.mlx4_tunnel_mad*, %struct.mlx4_tunnel_mad** %8, align 8
  %162 = getelementptr inbounds %struct.mlx4_tunnel_mad, %struct.mlx4_tunnel_mad* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  switch i32 %165, label %231 [
    i32 135, label %166
    i32 136, label %166
    i32 137, label %185
    i32 139, label %200
    i32 138, label %215
  ]

166:                                              ; preds = %160, %160
  %167 = load i32, i32* %12, align 4
  %168 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %169 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %168, i32 0, i32 0
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %169, align 8
  %171 = call i32 @mlx4_master_func_num(%struct.TYPE_20__* %170)
  %172 = icmp ne i32 %167, %171
  br i1 %172, label %173, label %184

173:                                              ; preds = %166
  %174 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %175 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %174, i32 0, i32 0
  %176 = load %struct.TYPE_20__*, %struct.TYPE_20__** %175, align 8
  %177 = load i32, i32* %12, align 4
  %178 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %3, align 8
  %179 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @mlx4_vf_smi_enabled(%struct.TYPE_20__* %176, i32 %177, i32 %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %184, label %183

183:                                              ; preds = %173
  br label %366

184:                                              ; preds = %173, %166
  br label %250

185:                                              ; preds = %160
  %186 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %3, align 8
  %187 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %3, align 8
  %190 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* %12, align 4
  %193 = load %struct.mlx4_tunnel_mad*, %struct.mlx4_tunnel_mad** %8, align 8
  %194 = getelementptr inbounds %struct.mlx4_tunnel_mad, %struct.mlx4_tunnel_mad* %193, i32 0, i32 0
  %195 = bitcast %struct.TYPE_21__* %194 to %struct.ib_sa_mad*
  %196 = call i32 @mlx4_ib_multiplex_sa_handler(i32 %188, i32 %191, i32 %192, %struct.ib_sa_mad* %195)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %185
  br label %366

199:                                              ; preds = %185
  br label %250

200:                                              ; preds = %160
  %201 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %3, align 8
  %202 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %3, align 8
  %205 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* %12, align 4
  %208 = load %struct.mlx4_tunnel_mad*, %struct.mlx4_tunnel_mad** %8, align 8
  %209 = getelementptr inbounds %struct.mlx4_tunnel_mad, %struct.mlx4_tunnel_mad* %208, i32 0, i32 0
  %210 = bitcast %struct.TYPE_21__* %209 to %struct.ib_mad*
  %211 = call i32 @mlx4_ib_multiplex_cm_handler(i32 %203, i32 %206, i32 %207, %struct.ib_mad* %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %200
  br label %366

214:                                              ; preds = %200
  br label %250

215:                                              ; preds = %160
  %216 = load %struct.mlx4_tunnel_mad*, %struct.mlx4_tunnel_mad** %8, align 8
  %217 = getelementptr inbounds %struct.mlx4_tunnel_mad, %struct.mlx4_tunnel_mad* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = icmp ne i32 %220, 134
  br i1 %221, label %222, label %230

222:                                              ; preds = %215
  %223 = load %struct.mlx4_tunnel_mad*, %struct.mlx4_tunnel_mad** %8, align 8
  %224 = getelementptr inbounds %struct.mlx4_tunnel_mad, %struct.mlx4_tunnel_mad* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = icmp ne i32 %227, 132
  br i1 %228, label %229, label %230

229:                                              ; preds = %222
  br label %366

230:                                              ; preds = %222, %215
  br label %250

231:                                              ; preds = %160
  %232 = load i32, i32* %12, align 4
  %233 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %234 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %233, i32 0, i32 0
  %235 = load %struct.TYPE_20__*, %struct.TYPE_20__** %234, align 8
  %236 = call i32 @mlx4_master_func_num(%struct.TYPE_20__* %235)
  %237 = icmp ne i32 %232, %236
  br i1 %237, label %238, label %249

238:                                              ; preds = %231
  %239 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %3, align 8
  %240 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = load %struct.mlx4_tunnel_mad*, %struct.mlx4_tunnel_mad** %8, align 8
  %243 = getelementptr inbounds %struct.mlx4_tunnel_mad, %struct.mlx4_tunnel_mad* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* %12, align 4
  %248 = call i32 (i32, i8*, i32, ...) @mlx4_ib_warn(i32 %241, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32 %246, i32 %247)
  br label %366

249:                                              ; preds = %231
  br label %250

250:                                              ; preds = %249, %230, %214, %199, %184
  %251 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %9, i32 0, i32 1
  %252 = load %struct.mlx4_tunnel_mad*, %struct.mlx4_tunnel_mad** %8, align 8
  %253 = getelementptr inbounds %struct.mlx4_tunnel_mad, %struct.mlx4_tunnel_mad* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %253, i32 0, i32 5
  %255 = call i32 @memcpy(%struct.TYPE_14__* %251, i32* %254, i32 4)
  %256 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %3, align 8
  %257 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 8
  %259 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %9, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %259, i32 0, i32 0
  store i32 %258, i32* %260, align 4
  %261 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %9, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @be32_to_cpu(i32 %264)
  %266 = ashr i32 %265, 24
  store i32 %266, i32* %13, align 4
  %267 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %268 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %267, i32 0, i32 0
  %269 = load %struct.TYPE_20__*, %struct.TYPE_20__** %268, align 8
  %270 = load i32, i32* %12, align 4
  %271 = load i32, i32* %13, align 4
  %272 = call i32 @mlx4_slave_convert_port(%struct.TYPE_20__* %269, i32 %270, i32 %271)
  store i32 %272, i32* %13, align 4
  %273 = load i32, i32* %13, align 4
  %274 = icmp slt i32 %273, 0
  br i1 %274, label %275, label %276

275:                                              ; preds = %250
  br label %366

276:                                              ; preds = %250
  %277 = load i32, i32* %13, align 4
  %278 = shl i32 %277, 24
  %279 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %9, i32 0, i32 1
  %280 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = call i32 @be32_to_cpu(i32 %282)
  %284 = and i32 %283, 16777215
  %285 = or i32 %278, %284
  %286 = call i32 @cpu_to_be32(i32 %285)
  %287 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %9, i32 0, i32 1
  %288 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %288, i32 0, i32 0
  store i32 %286, i32* %289, align 4
  %290 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %9, i32 0, i32 0
  %291 = call i32 @mlx4_ib_query_ah(%struct.TYPE_13__* %290, %struct.ib_ah_attr* %10)
  %292 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %10, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = load i32, i32* @IB_AH_GRH, align 4
  %295 = and i32 %293, %294
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %304

297:                                              ; preds = %276
  %298 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %299 = load i32, i32* %12, align 4
  %300 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %3, align 8
  %301 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = call i32 @fill_in_real_sgid_index(%struct.mlx4_ib_dev* %298, i32 %299, i32 %302, %struct.ib_ah_attr* %10)
  br label %304

304:                                              ; preds = %297, %276
  %305 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %10, i32 0, i32 2
  %306 = load %struct.TYPE_14__*, %struct.TYPE_14__** %305, align 8
  %307 = load %struct.mlx4_tunnel_mad*, %struct.mlx4_tunnel_mad** %8, align 8
  %308 = getelementptr inbounds %struct.mlx4_tunnel_mad, %struct.mlx4_tunnel_mad* %307, i32 0, i32 1
  %309 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %308, i32 0, i32 4
  %310 = load i32*, i32** %309, align 8
  %311 = call i32 @memcpy(%struct.TYPE_14__* %306, i32* %310, i32 6)
  %312 = load %struct.mlx4_tunnel_mad*, %struct.mlx4_tunnel_mad** %8, align 8
  %313 = getelementptr inbounds %struct.mlx4_tunnel_mad, %struct.mlx4_tunnel_mad* %312, i32 0, i32 1
  %314 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %313, i32 0, i32 3
  %315 = load i32, i32* %314, align 4
  %316 = call i32 @be16_to_cpu(i32 %315)
  store i32 %316, i32* %14, align 4
  %317 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %318 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %317, i32 0, i32 0
  %319 = load %struct.TYPE_20__*, %struct.TYPE_20__** %318, align 8
  %320 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %3, align 8
  %321 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = load i32, i32* %12, align 4
  %324 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %10, i32 0, i32 1
  %325 = call i32 @mlx4_get_slave_default_vlan(%struct.TYPE_20__* %319, i32 %322, i32 %323, i32* %14, i32* %324)
  %326 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %327 = load i32, i32* %12, align 4
  %328 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %3, align 8
  %329 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %332 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %333 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 4
  %335 = load i32, i32* %12, align 4
  %336 = call i64 @is_proxy_qp0(%struct.mlx4_ib_dev* %331, i32 %334, i32 %335)
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %338, label %340

338:                                              ; preds = %304
  %339 = load i32, i32* @IB_QPT_SMI, align 4
  br label %342

340:                                              ; preds = %304
  %341 = load i32, i32* @IB_QPT_GSI, align 4
  br label %342

342:                                              ; preds = %340, %338
  %343 = phi i32 [ %339, %338 ], [ %341, %340 ]
  %344 = load %struct.mlx4_tunnel_mad*, %struct.mlx4_tunnel_mad** %8, align 8
  %345 = getelementptr inbounds %struct.mlx4_tunnel_mad, %struct.mlx4_tunnel_mad* %344, i32 0, i32 1
  %346 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %345, i32 0, i32 2
  %347 = load i32, i32* %346, align 8
  %348 = call i32 @be16_to_cpu(i32 %347)
  %349 = load %struct.mlx4_tunnel_mad*, %struct.mlx4_tunnel_mad** %8, align 8
  %350 = getelementptr inbounds %struct.mlx4_tunnel_mad, %struct.mlx4_tunnel_mad* %349, i32 0, i32 1
  %351 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 4
  %353 = call i32 @be32_to_cpu(i32 %352)
  %354 = load %struct.mlx4_tunnel_mad*, %struct.mlx4_tunnel_mad** %8, align 8
  %355 = getelementptr inbounds %struct.mlx4_tunnel_mad, %struct.mlx4_tunnel_mad* %354, i32 0, i32 1
  %356 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 8
  %358 = call i32 @be32_to_cpu(i32 %357)
  %359 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %360 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %359, i32 0, i32 2
  %361 = load i32, i32* %360, align 4
  %362 = load i32, i32* %14, align 4
  %363 = load %struct.mlx4_tunnel_mad*, %struct.mlx4_tunnel_mad** %8, align 8
  %364 = getelementptr inbounds %struct.mlx4_tunnel_mad, %struct.mlx4_tunnel_mad* %363, i32 0, i32 0
  %365 = call i32 @mlx4_ib_send_to_wire(%struct.mlx4_ib_dev* %326, i32 %327, i32 %330, i32 %343, i32 %348, i32 %353, i32 %358, %struct.ib_ah_attr* %10, i32 %361, i32 %362, %struct.TYPE_21__* %364)
  br label %366

366:                                              ; preds = %342, %275, %238, %229, %213, %198, %183, %142, %107, %81
  ret void
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(i32) #1

declare dso_local i64 @MLX4_TUN_WRID_QPN(i32) #1

declare dso_local i32 @mlx4_ib_warn(i32, i8*, i32, ...) #1

declare dso_local i32 @ib_dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @mlx4_master_func_num(%struct.TYPE_20__*) #1

declare dso_local i32 @mlx4_vf_smi_enabled(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @mlx4_ib_multiplex_sa_handler(i32, i32, i32, %struct.ib_sa_mad*) #1

declare dso_local i32 @mlx4_ib_multiplex_cm_handler(i32, i32, i32, %struct.ib_mad*) #1

declare dso_local i32 @memcpy(%struct.TYPE_14__*, i32*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @mlx4_slave_convert_port(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @mlx4_ib_query_ah(%struct.TYPE_13__*, %struct.ib_ah_attr*) #1

declare dso_local i32 @fill_in_real_sgid_index(%struct.mlx4_ib_dev*, i32, i32, %struct.ib_ah_attr*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @mlx4_get_slave_default_vlan(%struct.TYPE_20__*, i32, i32, i32*, i32*) #1

declare dso_local i32 @mlx4_ib_send_to_wire(%struct.mlx4_ib_dev*, i32, i32, i32, i32, i32, i32, %struct.ib_ah_attr*, i32, i32, %struct.TYPE_21__*) #1

declare dso_local i64 @is_proxy_qp0(%struct.mlx4_ib_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
