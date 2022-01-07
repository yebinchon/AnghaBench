; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mad.c_mlx4_ib_demux_mad.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mad.c_mlx4_ib_demux_mad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_wc = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.ib_grh = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.ib_mad = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.mlx4_ib_dev = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.ib_sa_mad = type { i32 }

@IB_LINK_LAYER_INFINIBAND = common dso_local global i64 0, align 8
@IB_WC_GRH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"RoCE grh not present.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"RoCE mgmt class is not CM\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"resolved slave %d from gid %pI6 wire port %d other %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"failed matching grh\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"slave id: %d is bigger than allowed:%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"failed sending to slave %d via tunnel qp (%d)\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@IB_MGMT_METHOD_RESP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [75 x i8] c"demux QP0. rejecting unsolicited mad for slave %d class 0x%x, method 0x%x\0A\00", align 1
@IB_MGMT_METHOD_GET_RESP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [61 x i8] c"dropping unsupported ingress mad from class:%d for slave:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, %struct.ib_wc*, %struct.ib_grh*, %struct.ib_mad*)* @mlx4_ib_demux_mad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_ib_demux_mad(%struct.ib_device* %0, i32 %1, %struct.ib_wc* %2, %struct.ib_grh* %3, %struct.ib_mad* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_wc*, align 8
  %10 = alloca %struct.ib_grh*, align 8
  %11 = alloca %struct.ib_mad*, align 8
  %12 = alloca %struct.mlx4_ib_dev*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.ib_wc* %2, %struct.ib_wc** %9, align 8
  store %struct.ib_grh* %3, %struct.ib_grh** %10, align 8
  store %struct.ib_mad* %4, %struct.ib_mad** %11, align 8
  %18 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %19 = call %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device* %18)
  store %struct.mlx4_ib_dev* %19, %struct.mlx4_ib_dev** %12, align 8
  store i32 -1, i32* %15, align 4
  store i32 0, i32* %17, align 4
  %20 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i64 @rdma_port_get_link_layer(%struct.ib_device* %20, i32 %21)
  %23 = load i64, i64* @IB_LINK_LAYER_INFINIBAND, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  store i32 0, i32* %17, align 4
  br label %27

26:                                               ; preds = %5
  store i32 1, i32* %17, align 4
  br label %27

27:                                               ; preds = %26, %25
  %28 = load i32, i32* %17, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %154

30:                                               ; preds = %27
  %31 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %32 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @IB_WC_GRH, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %30
  %38 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %39 = call i32 (%struct.ib_device*, i8*, ...) @mlx4_ib_warn(%struct.ib_device* %38, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %333

42:                                               ; preds = %30
  %43 = load %struct.ib_mad*, %struct.ib_mad** %11, align 8
  %44 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 132
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %50 = call i32 (%struct.ib_device*, i8*, ...) @mlx4_ib_warn(%struct.ib_device* %49, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %333

53:                                               ; preds = %42
  %54 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %12, align 8
  %55 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %54, i32 0, i32 0
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.ib_grh*, %struct.ib_grh** %10, align 8
  %59 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @mlx4_get_slave_from_roce_gid(%struct.TYPE_15__* %56, i32 %57, i32 %61, i32* %15)
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %98

65:                                               ; preds = %53
  %66 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %12, align 8
  %67 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %66, i32 0, i32 0
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %67, align 8
  %69 = call i64 @mlx4_is_mf_bonded(%struct.TYPE_15__* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %98

71:                                               ; preds = %65
  %72 = load i32, i32* %8, align 4
  %73 = icmp eq i32 %72, 1
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 2, i32 1
  store i32 %75, i32* %14, align 4
  %76 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %12, align 8
  %77 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %76, i32 0, i32 0
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %77, align 8
  %79 = load i32, i32* %14, align 4
  %80 = load %struct.ib_grh*, %struct.ib_grh** %10, align 8
  %81 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @mlx4_get_slave_from_roce_gid(%struct.TYPE_15__* %78, i32 %79, i32 %83, i32* %15)
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %97, label %87

87:                                               ; preds = %71
  %88 = load i32, i32* %14, align 4
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %15, align 4
  %90 = load %struct.ib_grh*, %struct.ib_grh** %10, align 8
  %91 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %14, align 4
  %96 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %89, i32 %93, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %87, %71
  br label %98

98:                                               ; preds = %97, %65, %53
  %99 = load i32, i32* %13, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  %102 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %103 = call i32 (%struct.ib_device*, i8*, ...) @mlx4_ib_warn(%struct.ib_device* %102, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %104 = load i32, i32* @ENOENT, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %6, align 4
  br label %333

106:                                              ; preds = %98
  %107 = load i32, i32* %15, align 4
  %108 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %12, align 8
  %109 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %108, i32 0, i32 0
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp sge i32 %107, %113
  br i1 %114, label %115, label %127

115:                                              ; preds = %106
  %116 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %117 = load i32, i32* %15, align 4
  %118 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %12, align 8
  %119 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %118, i32 0, i32 0
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 (%struct.ib_device*, i8*, ...) @mlx4_ib_warn(%struct.ib_device* %116, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %117, i32 %123)
  %125 = load i32, i32* @ENOENT, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %6, align 4
  br label %333

127:                                              ; preds = %106
  %128 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %129 = load i32, i32* %8, align 4
  %130 = load %struct.ib_mad*, %struct.ib_mad** %11, align 8
  %131 = call i64 @mlx4_ib_demux_cm_handler(%struct.ib_device* %128, i32 %129, i32* null, %struct.ib_mad* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %127
  store i32 0, i32* %6, align 4
  br label %333

134:                                              ; preds = %127
  %135 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %12, align 8
  %136 = load i32, i32* %15, align 4
  %137 = load i32, i32* %8, align 4
  %138 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %139 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %138, i32 0, i32 1
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %144 = load %struct.ib_grh*, %struct.ib_grh** %10, align 8
  %145 = load %struct.ib_mad*, %struct.ib_mad** %11, align 8
  %146 = call i32 @mlx4_ib_send_to_slave(%struct.mlx4_ib_dev* %135, i32 %136, i32 %137, i32 %142, %struct.ib_wc* %143, %struct.ib_grh* %144, %struct.ib_mad* %145)
  store i32 %146, i32* %13, align 4
  %147 = load i32, i32* %13, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %134
  %150 = load i32, i32* %15, align 4
  %151 = load i32, i32* %13, align 4
  %152 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %150, i32 %151)
  br label %153

153:                                              ; preds = %149, %134
  store i32 0, i32* %6, align 4
  br label %333

154:                                              ; preds = %27
  %155 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %12, align 8
  %156 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %155, i32 0, i32 0
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %156, align 8
  %158 = call i32 @mlx4_master_func_num(%struct.TYPE_15__* %157)
  store i32 %158, i32* %15, align 4
  %159 = load %struct.ib_mad*, %struct.ib_mad** %11, align 8
  %160 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = and i32 %162, 128
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %176

165:                                              ; preds = %154
  %166 = load %struct.ib_mad*, %struct.ib_mad** %11, align 8
  %167 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 2
  store i32* %168, i32** %16, align 8
  %169 = load i32*, i32** %16, align 8
  %170 = load i32, i32* %169, align 4
  store i32 %170, i32* %15, align 4
  %171 = load i32, i32* %15, align 4
  %172 = icmp ne i32 %171, 255
  br i1 %172, label %173, label %175

173:                                              ; preds = %165
  %174 = load i32*, i32** %16, align 8
  store i32 0, i32* %174, align 4
  br label %175

175:                                              ; preds = %173, %165
  br label %176

176:                                              ; preds = %175, %154
  %177 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %178 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @IB_WC_GRH, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %200

183:                                              ; preds = %176
  %184 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %185 = load i32, i32* %8, align 4
  %186 = load %struct.ib_grh*, %struct.ib_grh** %10, align 8
  %187 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @mlx4_ib_find_real_gid(%struct.ib_device* %184, i32 %185, i32 %190)
  store i32 %191, i32* %15, align 4
  %192 = load i32, i32* %15, align 4
  %193 = icmp slt i32 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %183
  %195 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %196 = call i32 (%struct.ib_device*, i8*, ...) @mlx4_ib_warn(%struct.ib_device* %195, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %197 = load i32, i32* @ENOENT, align 4
  %198 = sub nsw i32 0, %197
  store i32 %198, i32* %6, align 4
  br label %333

199:                                              ; preds = %183
  br label %200

200:                                              ; preds = %199, %176
  %201 = load %struct.ib_mad*, %struct.ib_mad** %11, align 8
  %202 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  switch i32 %204, label %277 [
    i32 128, label %205
    i32 129, label %205
    i32 130, label %250
    i32 132, label %260
    i32 131, label %268
  ]

205:                                              ; preds = %200, %200
  %206 = load i32, i32* %15, align 4
  %207 = icmp ne i32 %206, 255
  br i1 %207, label %208, label %249

208:                                              ; preds = %205
  %209 = load i32, i32* %15, align 4
  %210 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %12, align 8
  %211 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %210, i32 0, i32 0
  %212 = load %struct.TYPE_15__*, %struct.TYPE_15__** %211, align 8
  %213 = call i32 @mlx4_master_func_num(%struct.TYPE_15__* %212)
  %214 = icmp ne i32 %209, %213
  br i1 %214, label %215, label %249

215:                                              ; preds = %208
  %216 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %12, align 8
  %217 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %216, i32 0, i32 0
  %218 = load %struct.TYPE_15__*, %struct.TYPE_15__** %217, align 8
  %219 = load i32, i32* %15, align 4
  %220 = load i32, i32* %8, align 4
  %221 = call i32 @mlx4_vf_smi_enabled(%struct.TYPE_15__* %218, i32 %219, i32 %220)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %226, label %223

223:                                              ; preds = %215
  %224 = load i32, i32* @EPERM, align 4
  %225 = sub nsw i32 0, %224
  store i32 %225, i32* %6, align 4
  br label %333

226:                                              ; preds = %215
  %227 = load %struct.ib_mad*, %struct.ib_mad** %11, align 8
  %228 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @IB_MGMT_METHOD_RESP, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %248, label %234

234:                                              ; preds = %226
  %235 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %236 = load i32, i32* %15, align 4
  %237 = load %struct.ib_mad*, %struct.ib_mad** %11, align 8
  %238 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.ib_mad*, %struct.ib_mad** %11, align 8
  %242 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = call i32 (%struct.ib_device*, i8*, ...) @mlx4_ib_warn(%struct.ib_device* %235, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.6, i64 0, i64 0), i32 %236, i32 %240, i32 %244)
  %246 = load i32, i32* @EINVAL, align 4
  %247 = sub nsw i32 0, %246
  store i32 %247, i32* %6, align 4
  br label %333

248:                                              ; preds = %226
  br label %249

249:                                              ; preds = %248, %208, %205
  br label %292

250:                                              ; preds = %200
  %251 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %252 = load i32, i32* %8, align 4
  %253 = load i32, i32* %15, align 4
  %254 = load %struct.ib_mad*, %struct.ib_mad** %11, align 8
  %255 = bitcast %struct.ib_mad* %254 to %struct.ib_sa_mad*
  %256 = call i32 @mlx4_ib_demux_sa_handler(%struct.ib_device* %251, i32 %252, i32 %253, %struct.ib_sa_mad* %255)
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %250
  store i32 0, i32* %6, align 4
  br label %333

259:                                              ; preds = %250
  br label %292

260:                                              ; preds = %200
  %261 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %262 = load i32, i32* %8, align 4
  %263 = load %struct.ib_mad*, %struct.ib_mad** %11, align 8
  %264 = call i64 @mlx4_ib_demux_cm_handler(%struct.ib_device* %261, i32 %262, i32* %15, %struct.ib_mad* %263)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %260
  store i32 0, i32* %6, align 4
  br label %333

267:                                              ; preds = %260
  br label %292

268:                                              ; preds = %200
  %269 = load %struct.ib_mad*, %struct.ib_mad** %11, align 8
  %270 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* @IB_MGMT_METHOD_GET_RESP, align 4
  %274 = icmp ne i32 %272, %273
  br i1 %274, label %275, label %276

275:                                              ; preds = %268
  store i32 0, i32* %6, align 4
  br label %333

276:                                              ; preds = %268
  br label %292

277:                                              ; preds = %200
  %278 = load i32, i32* %15, align 4
  %279 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %12, align 8
  %280 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %279, i32 0, i32 0
  %281 = load %struct.TYPE_15__*, %struct.TYPE_15__** %280, align 8
  %282 = call i32 @mlx4_master_func_num(%struct.TYPE_15__* %281)
  %283 = icmp ne i32 %278, %282
  br i1 %283, label %284, label %291

284:                                              ; preds = %277
  %285 = load %struct.ib_mad*, %struct.ib_mad** %11, align 8
  %286 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* %15, align 4
  %290 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0), i32 %288, i32 %289)
  store i32 0, i32* %6, align 4
  br label %333

291:                                              ; preds = %277
  br label %292

292:                                              ; preds = %291, %276, %267, %259, %249
  %293 = load i32, i32* %15, align 4
  %294 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %12, align 8
  %295 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %294, i32 0, i32 0
  %296 = load %struct.TYPE_15__*, %struct.TYPE_15__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = icmp sge i32 %293, %299
  br i1 %300, label %301, label %313

301:                                              ; preds = %292
  %302 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %303 = load i32, i32* %15, align 4
  %304 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %12, align 8
  %305 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %304, i32 0, i32 0
  %306 = load %struct.TYPE_15__*, %struct.TYPE_15__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %306, i32 0, i32 0
  %308 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = call i32 (%struct.ib_device*, i8*, ...) @mlx4_ib_warn(%struct.ib_device* %302, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %303, i32 %309)
  %311 = load i32, i32* @ENOENT, align 4
  %312 = sub nsw i32 0, %311
  store i32 %312, i32* %6, align 4
  br label %333

313:                                              ; preds = %292
  %314 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %12, align 8
  %315 = load i32, i32* %15, align 4
  %316 = load i32, i32* %8, align 4
  %317 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %318 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %317, i32 0, i32 1
  %319 = load %struct.TYPE_14__*, %struct.TYPE_14__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 4
  %322 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %323 = load %struct.ib_grh*, %struct.ib_grh** %10, align 8
  %324 = load %struct.ib_mad*, %struct.ib_mad** %11, align 8
  %325 = call i32 @mlx4_ib_send_to_slave(%struct.mlx4_ib_dev* %314, i32 %315, i32 %316, i32 %321, %struct.ib_wc* %322, %struct.ib_grh* %323, %struct.ib_mad* %324)
  store i32 %325, i32* %13, align 4
  %326 = load i32, i32* %13, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %332

328:                                              ; preds = %313
  %329 = load i32, i32* %15, align 4
  %330 = load i32, i32* %13, align 4
  %331 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %329, i32 %330)
  br label %332

332:                                              ; preds = %328, %313
  store i32 0, i32* %6, align 4
  br label %333

333:                                              ; preds = %332, %301, %284, %275, %266, %258, %234, %223, %194, %153, %133, %115, %101, %48, %37
  %334 = load i32, i32* %6, align 4
  ret i32 %334
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device*) #1

declare dso_local i64 @rdma_port_get_link_layer(%struct.ib_device*, i32) #1

declare dso_local i32 @mlx4_ib_warn(%struct.ib_device*, i8*, ...) #1

declare dso_local i32 @mlx4_get_slave_from_roce_gid(%struct.TYPE_15__*, i32, i32, i32*) #1

declare dso_local i64 @mlx4_is_mf_bonded(%struct.TYPE_15__*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, ...) #1

declare dso_local i64 @mlx4_ib_demux_cm_handler(%struct.ib_device*, i32, i32*, %struct.ib_mad*) #1

declare dso_local i32 @mlx4_ib_send_to_slave(%struct.mlx4_ib_dev*, i32, i32, i32, %struct.ib_wc*, %struct.ib_grh*, %struct.ib_mad*) #1

declare dso_local i32 @mlx4_master_func_num(%struct.TYPE_15__*) #1

declare dso_local i32 @mlx4_ib_find_real_gid(%struct.ib_device*, i32, i32) #1

declare dso_local i32 @mlx4_vf_smi_enabled(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @mlx4_ib_demux_sa_handler(%struct.ib_device*, i32, i32, %struct.ib_sa_mad*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
