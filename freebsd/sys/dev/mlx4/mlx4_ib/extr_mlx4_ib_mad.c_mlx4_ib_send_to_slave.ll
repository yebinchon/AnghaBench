; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mad.c_mlx4_ib_send_to_slave.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mad.c_mlx4_ib_send_to_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { i32, %struct.TYPE_17__*, %struct.TYPE_24__, %struct.TYPE_23__ }
%struct.TYPE_17__ = type { %struct.TYPE_25__, %struct.TYPE_21__ }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_21__ = type { i64* }
%struct.TYPE_24__ = type { i32*** }
%struct.TYPE_23__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.mlx4_ib_demux_pv_ctx** }
%struct.mlx4_ib_demux_pv_ctx = type { i64, %struct.TYPE_19__*, %struct.mlx4_ib_demux_pv_qp* }
%struct.TYPE_19__ = type { i32 }
%struct.mlx4_ib_demux_pv_qp = type { i32, i32, %struct.TYPE_16__*, i32, %struct.ib_qp* }
%struct.TYPE_16__ = type { %struct.ib_ah*, %struct.TYPE_15__ }
%struct.ib_ah = type { i32 }
%struct.TYPE_15__ = type { i32, i64 }
%struct.ib_qp = type { i32 }
%struct.ib_wc = type { i32, i32, i32, i32, i64, %struct.ib_mad*, i32 }
%struct.ib_grh = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { %struct.ib_mad* }
%struct.ib_mad = type { %struct.TYPE_28__ }
%struct.ib_sge = type { i32, i32, i32 }
%struct.ib_ud_wr = type { i64, i32, %struct.TYPE_18__, i32, %struct.ib_ah* }
%struct.TYPE_18__ = type { i32, i32, i32, i32, %struct.ib_sge*, i32* }
%struct.ib_send_wr = type { i32 }
%struct.mlx4_rcv_tunnel_mad = type { i8, i8, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i8*, i8*, i32, i32, i8* }
%struct.ib_ah_attr = type { i64, i32, %struct.TYPE_27__ }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i8* }

@MLX4_PORT_TYPE_ETH = common dso_local global i64 0, align 8
@IB_QPT_GSI = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DEMUX_PV_STATE_ACTIVE = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@IB_AH_GRH = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLX4_NUM_TUNNEL_BUFS = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@IB_WC_GRH = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@IB_QP_SET_QKEY = common dso_local global i32 0, align 4
@IB_WR_SEND = common dso_local global i32 0, align 4
@IB_SEND_SIGNALED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_ib_send_to_slave(%struct.mlx4_ib_dev* %0, i32 %1, i64 %2, i32 %3, %struct.ib_wc* %4, %struct.ib_grh* %5, %struct.ib_mad* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx4_ib_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ib_wc*, align 8
  %14 = alloca %struct.ib_grh*, align 8
  %15 = alloca %struct.ib_mad*, align 8
  %16 = alloca %struct.ib_sge, align 4
  %17 = alloca %struct.ib_ud_wr, align 8
  %18 = alloca %struct.ib_send_wr*, align 8
  %19 = alloca %struct.mlx4_ib_demux_pv_ctx*, align 8
  %20 = alloca %struct.mlx4_ib_demux_pv_qp*, align 8
  %21 = alloca %struct.mlx4_rcv_tunnel_mad*, align 8
  %22 = alloca %struct.ib_ah_attr, align 8
  %23 = alloca %struct.ib_ah*, align 8
  %24 = alloca %struct.ib_qp*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %9, align 8
  store i32 %1, i32* %10, align 4
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.ib_wc* %4, %struct.ib_wc** %13, align 8
  store %struct.ib_grh* %5, %struct.ib_grh** %14, align 8
  store %struct.ib_mad* %6, %struct.ib_mad** %15, align 8
  store %struct.ib_qp* null, %struct.ib_qp** %24, align 8
  store i32 0, i32* %25, align 4
  store i32 0, i32* %27, align 4
  %33 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %9, align 8
  %34 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %33, i32 0, i32 1
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* %11, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @MLX4_PORT_TYPE_ETH, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %30, align 8
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @IB_QPT_GSI, align 4
  %48 = icmp ugt i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %7
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %8, align 4
  br label %464

52:                                               ; preds = %7
  %53 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %9, align 8
  %54 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %55, align 8
  %57 = load i64, i64* %11, align 8
  %58 = sub i64 %57, 1
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 0
  %61 = load %struct.mlx4_ib_demux_pv_ctx**, %struct.mlx4_ib_demux_pv_ctx*** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %61, i64 %63
  %65 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %64, align 8
  store %struct.mlx4_ib_demux_pv_ctx* %65, %struct.mlx4_ib_demux_pv_ctx** %19, align 8
  %66 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %19, align 8
  %67 = icmp ne %struct.mlx4_ib_demux_pv_ctx* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %52
  %69 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %19, align 8
  %70 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @DEMUX_PV_STATE_ACTIVE, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %68, %52
  %75 = load i32, i32* @EAGAIN, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %8, align 4
  br label %464

77:                                               ; preds = %68
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %77
  %81 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %19, align 8
  %82 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %81, i32 0, i32 2
  %83 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %82, align 8
  %84 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %83, i64 0
  store %struct.mlx4_ib_demux_pv_qp* %84, %struct.mlx4_ib_demux_pv_qp** %20, align 8
  br label %90

85:                                               ; preds = %77
  %86 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %19, align 8
  %87 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %86, i32 0, i32 2
  %88 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %87, align 8
  %89 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %88, i64 1
  store %struct.mlx4_ib_demux_pv_qp* %89, %struct.mlx4_ib_demux_pv_qp** %20, align 8
  br label %90

90:                                               ; preds = %85, %80
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %119

93:                                               ; preds = %90
  %94 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %9, align 8
  %95 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %94, i32 0, i32 0
  %96 = load i64, i64* %11, align 8
  %97 = load %struct.ib_wc*, %struct.ib_wc** %13, align 8
  %98 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @ib_get_cached_pkey(i32* %95, i64 %96, i32 %99, i32* %29)
  store i32 %100, i32* %27, align 4
  %101 = load i32, i32* %27, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %93
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %8, align 4
  br label %464

106:                                              ; preds = %93
  %107 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %9, align 8
  %108 = load i32, i32* %10, align 4
  %109 = load i64, i64* %11, align 8
  %110 = load i32, i32* %29, align 4
  %111 = call i32 @find_slave_port_pkey_ix(%struct.mlx4_ib_dev* %107, i32 %108, i64 %109, i32 %110, i32* %31)
  store i32 %111, i32* %27, align 4
  %112 = load i32, i32* %27, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %106
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %8, align 4
  br label %464

117:                                              ; preds = %106
  %118 = load i32, i32* %31, align 4
  store i32 %118, i32* %28, align 4
  br label %134

119:                                              ; preds = %90
  %120 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %9, align 8
  %121 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %121, i32 0, i32 0
  %123 = load i32***, i32**** %122, align 8
  %124 = load i32, i32* %10, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32**, i32*** %123, i64 %125
  %127 = load i32**, i32*** %126, align 8
  %128 = load i64, i64* %11, align 8
  %129 = sub i64 %128, 1
  %130 = getelementptr inbounds i32*, i32** %127, i64 %129
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %28, align 4
  br label %134

134:                                              ; preds = %119, %117
  %135 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %9, align 8
  %136 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %135, i32 0, i32 1
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %10, align 4
  %142 = mul nsw i32 8, %141
  %143 = add nsw i32 %140, %142
  %144 = sext i32 %143 to i64
  %145 = load i64, i64* %11, align 8
  %146 = add i64 %144, %145
  %147 = load i32, i32* %12, align 4
  %148 = mul i32 %147, 2
  %149 = zext i32 %148 to i64
  %150 = add i64 %146, %149
  %151 = sub i64 %150, 1
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %26, align 4
  %153 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %20, align 8
  %154 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %153, i32 0, i32 4
  %155 = load %struct.ib_qp*, %struct.ib_qp** %154, align 8
  store %struct.ib_qp* %155, %struct.ib_qp** %24, align 8
  %156 = call i32 @memset(%struct.ib_ah_attr* %22, i32 0, i32 24)
  %157 = load i64, i64* %11, align 8
  %158 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %22, i32 0, i32 0
  store i64 %157, i64* %158, align 8
  %159 = load i64, i64* %30, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %175

161:                                              ; preds = %134
  %162 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %22, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %163, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 0
  %167 = load %struct.ib_grh*, %struct.ib_grh** %14, align 8
  %168 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %168, i32 0, i32 0
  %170 = load %struct.ib_mad*, %struct.ib_mad** %169, align 8
  %171 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %170, i64 0
  %172 = call i32 @memcpy(i8* %166, %struct.ib_mad* %171, i32 16)
  %173 = load i32, i32* @IB_AH_GRH, align 4
  %174 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %22, i32 0, i32 1
  store i32 %173, i32* %174, align 8
  br label %175

175:                                              ; preds = %161, %134
  %176 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %19, align 8
  %177 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %176, i32 0, i32 1
  %178 = load %struct.TYPE_19__*, %struct.TYPE_19__** %177, align 8
  %179 = call %struct.ib_ah* @ib_create_ah(%struct.TYPE_19__* %178, %struct.ib_ah_attr* %22)
  store %struct.ib_ah* %179, %struct.ib_ah** %23, align 8
  %180 = load %struct.ib_ah*, %struct.ib_ah** %23, align 8
  %181 = call i64 @IS_ERR(%struct.ib_ah* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %175
  %184 = load i32, i32* @ENOMEM, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %8, align 4
  br label %464

186:                                              ; preds = %175
  %187 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %20, align 8
  %188 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %187, i32 0, i32 3
  %189 = call i32 @spin_lock(i32* %188)
  %190 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %20, align 8
  %191 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %20, align 8
  %194 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = sub nsw i32 %192, %195
  %197 = load i32, i32* @MLX4_NUM_TUNNEL_BUFS, align 4
  %198 = sub nsw i32 %197, 1
  %199 = icmp sge i32 %196, %198
  br i1 %199, label %200, label %203

200:                                              ; preds = %186
  %201 = load i32, i32* @EAGAIN, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %27, align 4
  br label %211

203:                                              ; preds = %186
  %204 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %20, align 8
  %205 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %205, align 8
  %208 = load i32, i32* @MLX4_NUM_TUNNEL_BUFS, align 4
  %209 = sub nsw i32 %208, 1
  %210 = and i32 %207, %209
  store i32 %210, i32* %25, align 4
  br label %211

211:                                              ; preds = %203, %200
  %212 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %20, align 8
  %213 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %212, i32 0, i32 3
  %214 = call i32 @spin_unlock(i32* %213)
  %215 = load i32, i32* %27, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %211
  br label %460

218:                                              ; preds = %211
  %219 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %20, align 8
  %220 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %219, i32 0, i32 2
  %221 = load %struct.TYPE_16__*, %struct.TYPE_16__** %220, align 8
  %222 = load i32, i32* %25, align 4
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = inttoptr i64 %227 to %struct.mlx4_rcv_tunnel_mad*
  store %struct.mlx4_rcv_tunnel_mad* %228, %struct.mlx4_rcv_tunnel_mad** %21, align 8
  %229 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %20, align 8
  %230 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %229, i32 0, i32 2
  %231 = load %struct.TYPE_16__*, %struct.TYPE_16__** %230, align 8
  %232 = load i32, i32* %25, align 4
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %231, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %234, i32 0, i32 0
  %236 = load %struct.ib_ah*, %struct.ib_ah** %235, align 8
  %237 = icmp ne %struct.ib_ah* %236, null
  br i1 %237, label %238, label %248

238:                                              ; preds = %218
  %239 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %20, align 8
  %240 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %239, i32 0, i32 2
  %241 = load %struct.TYPE_16__*, %struct.TYPE_16__** %240, align 8
  %242 = load i32, i32* %25, align 4
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %241, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %244, i32 0, i32 0
  %246 = load %struct.ib_ah*, %struct.ib_ah** %245, align 8
  %247 = call i32 @ib_destroy_ah(%struct.ib_ah* %246)
  br label %248

248:                                              ; preds = %238, %218
  %249 = load %struct.ib_ah*, %struct.ib_ah** %23, align 8
  %250 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %20, align 8
  %251 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %250, i32 0, i32 2
  %252 = load %struct.TYPE_16__*, %struct.TYPE_16__** %251, align 8
  %253 = load i32, i32* %25, align 4
  %254 = zext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %252, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %255, i32 0, i32 0
  store %struct.ib_ah* %249, %struct.ib_ah** %256, align 8
  %257 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %9, align 8
  %258 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %257, i32 0, i32 0
  %259 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %20, align 8
  %260 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %259, i32 0, i32 2
  %261 = load %struct.TYPE_16__*, %struct.TYPE_16__** %260, align 8
  %262 = load i32, i32* %25, align 4
  %263 = zext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %261, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = load i32, i32* @DMA_TO_DEVICE, align 4
  %269 = call i32 @ib_dma_sync_single_for_cpu(i32* %258, i32 %267, i32 48, i32 %268)
  %270 = load %struct.ib_grh*, %struct.ib_grh** %14, align 8
  %271 = icmp ne %struct.ib_grh* %270, null
  br i1 %271, label %272, label %278

272:                                              ; preds = %248
  %273 = load %struct.mlx4_rcv_tunnel_mad*, %struct.mlx4_rcv_tunnel_mad** %21, align 8
  %274 = getelementptr inbounds %struct.mlx4_rcv_tunnel_mad, %struct.mlx4_rcv_tunnel_mad* %273, i32 0, i32 0
  %275 = load %struct.ib_grh*, %struct.ib_grh** %14, align 8
  %276 = bitcast %struct.ib_grh* %275 to %struct.ib_mad*
  %277 = call i32 @memcpy(i8* %274, %struct.ib_mad* %276, i32 8)
  br label %278

278:                                              ; preds = %272, %248
  %279 = load %struct.mlx4_rcv_tunnel_mad*, %struct.mlx4_rcv_tunnel_mad** %21, align 8
  %280 = getelementptr inbounds %struct.mlx4_rcv_tunnel_mad, %struct.mlx4_rcv_tunnel_mad* %279, i32 0, i32 1
  %281 = load %struct.ib_mad*, %struct.ib_mad** %15, align 8
  %282 = call i32 @memcpy(i8* %280, %struct.ib_mad* %281, i32 8)
  %283 = load i32, i32* %28, align 4
  %284 = call i8* @cpu_to_be16(i32 %283)
  %285 = load %struct.mlx4_rcv_tunnel_mad*, %struct.mlx4_rcv_tunnel_mad** %21, align 8
  %286 = getelementptr inbounds %struct.mlx4_rcv_tunnel_mad, %struct.mlx4_rcv_tunnel_mad* %285, i32 0, i32 2
  %287 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %286, i32 0, i32 5
  store i8* %284, i8** %287, align 8
  %288 = load %struct.ib_wc*, %struct.ib_wc** %13, align 8
  %289 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = and i32 %290, 16777215
  %292 = call i32 @cpu_to_be32(i32 %291)
  %293 = load %struct.mlx4_rcv_tunnel_mad*, %struct.mlx4_rcv_tunnel_mad** %21, align 8
  %294 = getelementptr inbounds %struct.mlx4_rcv_tunnel_mad, %struct.mlx4_rcv_tunnel_mad* %293, i32 0, i32 2
  %295 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %294, i32 0, i32 4
  store i32 %292, i32* %295, align 4
  %296 = load %struct.ib_grh*, %struct.ib_grh** %14, align 8
  %297 = icmp ne %struct.ib_grh* %296, null
  br i1 %297, label %298, label %305

298:                                              ; preds = %278
  %299 = load %struct.ib_wc*, %struct.ib_wc** %13, align 8
  %300 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = load i32, i32* @IB_WC_GRH, align 4
  %303 = and i32 %301, %302
  %304 = icmp ne i32 %303, 0
  br label %305

305:                                              ; preds = %298, %278
  %306 = phi i1 [ false, %278 ], [ %304, %298 ]
  %307 = zext i1 %306 to i64
  %308 = select i1 %306, i32 128, i32 0
  %309 = load %struct.mlx4_rcv_tunnel_mad*, %struct.mlx4_rcv_tunnel_mad** %21, align 8
  %310 = getelementptr inbounds %struct.mlx4_rcv_tunnel_mad, %struct.mlx4_rcv_tunnel_mad* %309, i32 0, i32 2
  %311 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %310, i32 0, i32 0
  store i32 %308, i32* %311, align 8
  %312 = load i64, i64* %30, align 8
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %361

314:                                              ; preds = %305
  store i32 0, i32* %32, align 4
  %315 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %9, align 8
  %316 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %315, i32 0, i32 1
  %317 = load %struct.TYPE_17__*, %struct.TYPE_17__** %316, align 8
  %318 = load i64, i64* %11, align 8
  %319 = load i32, i32* %10, align 4
  %320 = call i64 @mlx4_get_slave_default_vlan(%struct.TYPE_17__* %317, i64 %318, i32 %319, i32* %32, i32* null)
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %333

322:                                              ; preds = %314
  %323 = load i32, i32* %32, align 4
  %324 = load %struct.ib_wc*, %struct.ib_wc** %13, align 8
  %325 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %324, i32 0, i32 2
  %326 = load i32, i32* %325, align 8
  %327 = icmp ne i32 %323, %326
  br i1 %327, label %328, label %331

328:                                              ; preds = %322
  %329 = load i32, i32* @EPERM, align 4
  %330 = sub nsw i32 0, %329
  store i32 %330, i32* %27, align 4
  br label %442

331:                                              ; preds = %322
  store i32 65535, i32* %32, align 4
  br label %332

332:                                              ; preds = %331
  br label %337

333:                                              ; preds = %314
  %334 = load %struct.ib_wc*, %struct.ib_wc** %13, align 8
  %335 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %334, i32 0, i32 2
  %336 = load i32, i32* %335, align 8
  store i32 %336, i32* %32, align 4
  br label %337

337:                                              ; preds = %333, %332
  %338 = load i32, i32* %32, align 4
  %339 = call i8* @cpu_to_be16(i32 %338)
  %340 = load %struct.mlx4_rcv_tunnel_mad*, %struct.mlx4_rcv_tunnel_mad** %21, align 8
  %341 = getelementptr inbounds %struct.mlx4_rcv_tunnel_mad, %struct.mlx4_rcv_tunnel_mad* %340, i32 0, i32 2
  %342 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %341, i32 0, i32 2
  store i8* %339, i8** %342, align 8
  %343 = load %struct.mlx4_rcv_tunnel_mad*, %struct.mlx4_rcv_tunnel_mad** %21, align 8
  %344 = getelementptr inbounds %struct.mlx4_rcv_tunnel_mad, %struct.mlx4_rcv_tunnel_mad* %343, i32 0, i32 2
  %345 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %344, i32 0, i32 3
  %346 = bitcast i32* %345 to i8*
  %347 = load %struct.ib_wc*, %struct.ib_wc** %13, align 8
  %348 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %347, i32 0, i32 5
  %349 = load %struct.ib_mad*, %struct.ib_mad** %348, align 8
  %350 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %349, i64 0
  %351 = call i32 @memcpy(i8* %346, %struct.ib_mad* %350, i32 4)
  %352 = load %struct.mlx4_rcv_tunnel_mad*, %struct.mlx4_rcv_tunnel_mad** %21, align 8
  %353 = getelementptr inbounds %struct.mlx4_rcv_tunnel_mad, %struct.mlx4_rcv_tunnel_mad* %352, i32 0, i32 2
  %354 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %353, i32 0, i32 1
  %355 = bitcast i8** %354 to i8*
  %356 = load %struct.ib_wc*, %struct.ib_wc** %13, align 8
  %357 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %356, i32 0, i32 5
  %358 = load %struct.ib_mad*, %struct.ib_mad** %357, align 8
  %359 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %358, i64 4
  %360 = call i32 @memcpy(i8* %355, %struct.ib_mad* %359, i32 2)
  br label %378

361:                                              ; preds = %305
  %362 = load %struct.ib_wc*, %struct.ib_wc** %13, align 8
  %363 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %362, i32 0, i32 4
  %364 = load i64, i64* %363, align 8
  %365 = trunc i64 %364 to i32
  %366 = shl i32 %365, 12
  %367 = call i8* @cpu_to_be16(i32 %366)
  %368 = load %struct.mlx4_rcv_tunnel_mad*, %struct.mlx4_rcv_tunnel_mad** %21, align 8
  %369 = getelementptr inbounds %struct.mlx4_rcv_tunnel_mad, %struct.mlx4_rcv_tunnel_mad* %368, i32 0, i32 2
  %370 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %369, i32 0, i32 2
  store i8* %367, i8** %370, align 8
  %371 = load %struct.ib_wc*, %struct.ib_wc** %13, align 8
  %372 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %371, i32 0, i32 3
  %373 = load i32, i32* %372, align 4
  %374 = call i8* @cpu_to_be16(i32 %373)
  %375 = load %struct.mlx4_rcv_tunnel_mad*, %struct.mlx4_rcv_tunnel_mad** %21, align 8
  %376 = getelementptr inbounds %struct.mlx4_rcv_tunnel_mad, %struct.mlx4_rcv_tunnel_mad* %375, i32 0, i32 2
  %377 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %376, i32 0, i32 1
  store i8* %374, i8** %377, align 8
  br label %378

378:                                              ; preds = %361, %337
  %379 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %9, align 8
  %380 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %379, i32 0, i32 0
  %381 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %20, align 8
  %382 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %381, i32 0, i32 2
  %383 = load %struct.TYPE_16__*, %struct.TYPE_16__** %382, align 8
  %384 = load i32, i32* %25, align 4
  %385 = zext i32 %384 to i64
  %386 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %383, i64 %385
  %387 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %386, i32 0, i32 1
  %388 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 8
  %390 = load i32, i32* @DMA_TO_DEVICE, align 4
  %391 = call i32 @ib_dma_sync_single_for_device(i32* %380, i32 %389, i32 48, i32 %390)
  %392 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %20, align 8
  %393 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %392, i32 0, i32 2
  %394 = load %struct.TYPE_16__*, %struct.TYPE_16__** %393, align 8
  %395 = load i32, i32* %25, align 4
  %396 = zext i32 %395 to i64
  %397 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %394, i64 %396
  %398 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %397, i32 0, i32 1
  %399 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %398, i32 0, i32 0
  %400 = load i32, i32* %399, align 8
  %401 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %16, i32 0, i32 2
  store i32 %400, i32* %401, align 4
  %402 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %16, i32 0, i32 0
  store i32 48, i32* %402, align 4
  %403 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %19, align 8
  %404 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %403, i32 0, i32 1
  %405 = load %struct.TYPE_19__*, %struct.TYPE_19__** %404, align 8
  %406 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 4
  %408 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %16, i32 0, i32 1
  store i32 %407, i32* %408, align 4
  %409 = load %struct.ib_ah*, %struct.ib_ah** %23, align 8
  %410 = getelementptr inbounds %struct.ib_ud_wr, %struct.ib_ud_wr* %17, i32 0, i32 4
  store %struct.ib_ah* %409, %struct.ib_ah** %410, align 8
  %411 = load i64, i64* %11, align 8
  %412 = getelementptr inbounds %struct.ib_ud_wr, %struct.ib_ud_wr* %17, i32 0, i32 0
  store i64 %411, i64* %412, align 8
  %413 = load i32, i32* @IB_QP_SET_QKEY, align 4
  %414 = getelementptr inbounds %struct.ib_ud_wr, %struct.ib_ud_wr* %17, i32 0, i32 3
  store i32 %413, i32* %414, align 8
  %415 = load i32, i32* %26, align 4
  %416 = getelementptr inbounds %struct.ib_ud_wr, %struct.ib_ud_wr* %17, i32 0, i32 1
  store i32 %415, i32* %416, align 8
  %417 = getelementptr inbounds %struct.ib_ud_wr, %struct.ib_ud_wr* %17, i32 0, i32 2
  %418 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %417, i32 0, i32 5
  store i32* null, i32** %418, align 8
  %419 = load i32, i32* %25, align 4
  %420 = load i32, i32* %12, align 4
  %421 = call i32 @MLX4_TUN_SET_WRID_QPN(i32 %420)
  %422 = or i32 %419, %421
  %423 = getelementptr inbounds %struct.ib_ud_wr, %struct.ib_ud_wr* %17, i32 0, i32 2
  %424 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %423, i32 0, i32 0
  store i32 %422, i32* %424, align 8
  %425 = getelementptr inbounds %struct.ib_ud_wr, %struct.ib_ud_wr* %17, i32 0, i32 2
  %426 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %425, i32 0, i32 4
  store %struct.ib_sge* %16, %struct.ib_sge** %426, align 8
  %427 = getelementptr inbounds %struct.ib_ud_wr, %struct.ib_ud_wr* %17, i32 0, i32 2
  %428 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %427, i32 0, i32 1
  store i32 1, i32* %428, align 4
  %429 = load i32, i32* @IB_WR_SEND, align 4
  %430 = getelementptr inbounds %struct.ib_ud_wr, %struct.ib_ud_wr* %17, i32 0, i32 2
  %431 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %430, i32 0, i32 3
  store i32 %429, i32* %431, align 4
  %432 = load i32, i32* @IB_SEND_SIGNALED, align 4
  %433 = getelementptr inbounds %struct.ib_ud_wr, %struct.ib_ud_wr* %17, i32 0, i32 2
  %434 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %433, i32 0, i32 2
  store i32 %432, i32* %434, align 8
  %435 = load %struct.ib_qp*, %struct.ib_qp** %24, align 8
  %436 = getelementptr inbounds %struct.ib_ud_wr, %struct.ib_ud_wr* %17, i32 0, i32 2
  %437 = call i32 @ib_post_send(%struct.ib_qp* %435, %struct.TYPE_18__* %436, %struct.ib_send_wr** %18)
  store i32 %437, i32* %27, align 4
  %438 = load i32, i32* %27, align 4
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %441, label %440

440:                                              ; preds = %378
  store i32 0, i32* %8, align 4
  br label %464

441:                                              ; preds = %378
  br label %442

442:                                              ; preds = %441, %328
  %443 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %20, align 8
  %444 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %443, i32 0, i32 3
  %445 = call i32 @spin_lock(i32* %444)
  %446 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %20, align 8
  %447 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %446, i32 0, i32 1
  %448 = load i32, i32* %447, align 4
  %449 = add nsw i32 %448, 1
  store i32 %449, i32* %447, align 4
  %450 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %20, align 8
  %451 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %450, i32 0, i32 3
  %452 = call i32 @spin_unlock(i32* %451)
  %453 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %20, align 8
  %454 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %453, i32 0, i32 2
  %455 = load %struct.TYPE_16__*, %struct.TYPE_16__** %454, align 8
  %456 = load i32, i32* %25, align 4
  %457 = zext i32 %456 to i64
  %458 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %455, i64 %457
  %459 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %458, i32 0, i32 0
  store %struct.ib_ah* null, %struct.ib_ah** %459, align 8
  br label %460

460:                                              ; preds = %442, %217
  %461 = load %struct.ib_ah*, %struct.ib_ah** %23, align 8
  %462 = call i32 @ib_destroy_ah(%struct.ib_ah* %461)
  %463 = load i32, i32* %27, align 4
  store i32 %463, i32* %8, align 4
  br label %464

464:                                              ; preds = %460, %440, %183, %114, %103, %74, %49
  %465 = load i32, i32* %8, align 4
  ret i32 %465
}

declare dso_local i32 @ib_get_cached_pkey(i32*, i64, i32, i32*) #1

declare dso_local i32 @find_slave_port_pkey_ix(%struct.mlx4_ib_dev*, i32, i64, i32, i32*) #1

declare dso_local i32 @memset(%struct.ib_ah_attr*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, %struct.ib_mad*, i32) #1

declare dso_local %struct.ib_ah* @ib_create_ah(%struct.TYPE_19__*, %struct.ib_ah_attr*) #1

declare dso_local i64 @IS_ERR(%struct.ib_ah*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ib_destroy_ah(%struct.ib_ah*) #1

declare dso_local i32 @ib_dma_sync_single_for_cpu(i32*, i32, i32, i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i64 @mlx4_get_slave_default_vlan(%struct.TYPE_17__*, i64, i32, i32*, i32*) #1

declare dso_local i32 @ib_dma_sync_single_for_device(i32*, i32, i32, i32) #1

declare dso_local i32 @MLX4_TUN_SET_WRID_QPN(i32) #1

declare dso_local i32 @ib_post_send(%struct.ib_qp*, %struct.TYPE_18__*, %struct.ib_send_wr**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
