; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_mlx5_ib_modify_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_mlx5_ib_modify_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32, i64, i32 }
%struct.ib_qp_attr = type { i32, i32, i32, i64, i32, i32 }
%struct.ib_udata = type { i32 }
%struct.mlx5_ib_dev = type { %struct.TYPE_6__*, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*, i32)* }
%struct.mlx5_ib_qp = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IB_LINK_LAYER_UNSPECIFIED = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@IB_QPT_GSI = common dso_local global i32 0, align 4
@MLX5_IB_QPT_HW_GSI = common dso_local global i32 0, align 4
@IB_QP_CUR_STATE = common dso_local global i32 0, align 4
@IB_QP_STATE = common dso_local global i32 0, align 4
@IB_QPS_RESET = common dso_local global i32 0, align 4
@IB_QP_PORT = common dso_local global i32 0, align 4
@MLX5_IB_QPT_REG_UMR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"invalid QP state transition from %d to %d, qp_type %d, attr_mask 0x%x\0A\00", align 1
@num_ports = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"invalid port number %d. number of ports is %d\0A\00", align 1
@IB_QP_PKEY_INDEX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"invalid pkey index %d\0A\00", align 1
@IB_QP_MAX_QP_RD_ATOMIC = common dso_local global i32 0, align 4
@log_max_ra_res_qp = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"invalid max_rd_atomic value %d\0A\00", align 1
@IB_QP_MAX_DEST_RD_ATOMIC = common dso_local global i32 0, align 4
@log_max_ra_req_qp = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"invalid max_dest_rd_atomic value %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_ib_modify_qp(%struct.ib_qp* %0, %struct.ib_qp_attr* %1, i32 %2, %struct.ib_udata* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_qp*, align 8
  %7 = alloca %struct.ib_qp_attr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_udata*, align 8
  %10 = alloca %struct.mlx5_ib_dev*, align 8
  %11 = alloca %struct.mlx5_ib_qp*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %6, align 8
  store %struct.ib_qp_attr* %1, %struct.ib_qp_attr** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ib_udata* %3, %struct.ib_udata** %9, align 8
  %18 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %19 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.mlx5_ib_dev* @to_mdev(i32 %20)
  store %struct.mlx5_ib_dev* %21, %struct.mlx5_ib_dev** %10, align 8
  %22 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %23 = call %struct.mlx5_ib_qp* @to_mqp(%struct.ib_qp* %22)
  store %struct.mlx5_ib_qp* %23, %struct.mlx5_ib_qp** %11, align 8
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* @IB_LINK_LAYER_UNSPECIFIED, align 4
  store i32 %26, i32* %17, align 4
  %27 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %28 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = load i32, i32* @ENOSYS, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %282

34:                                               ; preds = %4
  %35 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %36 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @IB_QPT_GSI, align 4
  %39 = icmp eq i32 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %34
  %44 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %45 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @mlx5_ib_gsi_modify_qp(%struct.ib_qp* %44, %struct.ib_qp_attr* %45, i32 %46)
  store i32 %47, i32* %5, align 4
  br label %282

48:                                               ; preds = %34
  %49 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %50 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @MLX5_IB_QPT_HW_GSI, align 4
  %53 = icmp eq i32 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = load i32, i32* @IB_QPT_GSI, align 4
  br label %63

59:                                               ; preds = %48
  %60 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %61 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  br label %63

63:                                               ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ]
  store i32 %64, i32* %12, align 4
  %65 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %66 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %65, i32 0, i32 2
  %67 = call i32 @mutex_lock(i32* %66)
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @IB_QP_CUR_STATE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %63
  %73 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %74 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  br label %80

76:                                               ; preds = %63
  %77 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %78 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  br label %80

80:                                               ; preds = %76, %72
  %81 = phi i32 [ %75, %72 ], [ %79, %76 ]
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @IB_QP_STATE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %88 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  br label %92

90:                                               ; preds = %80
  %91 = load i32, i32* %13, align 4
  br label %92

92:                                               ; preds = %90, %86
  %93 = phi i32 [ %89, %86 ], [ %91, %90 ]
  store i32 %93, i32* %14, align 4
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* %14, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* @IB_QPS_RESET, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %124, label %101

101:                                              ; preds = %97, %92
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* @IB_QP_PORT, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %101
  %107 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %108 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  br label %114

110:                                              ; preds = %101
  %111 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %112 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  br label %114

114:                                              ; preds = %110, %106
  %115 = phi i32 [ %109, %106 ], [ %113, %110 ]
  store i32 %115, i32* %16, align 4
  %116 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %10, align 8
  %117 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i32 (%struct.TYPE_5__*, i32)*, i32 (%struct.TYPE_5__*, i32)** %118, align 8
  %120 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %10, align 8
  %121 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %120, i32 0, i32 2
  %122 = load i32, i32* %16, align 4
  %123 = call i32 %119(%struct.TYPE_5__* %121, i32 %122)
  store i32 %123, i32* %17, align 4
  br label %124

124:                                              ; preds = %114, %97
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* @MLX5_IB_QPT_REG_UMR, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %128, label %145

128:                                              ; preds = %124
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* %14, align 4
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* %17, align 4
  %134 = call i32 @ib_modify_qp_is_ok(i32 %129, i32 %130, i32 %131, i32 %132, i32 %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %145, label %136

136:                                              ; preds = %128
  %137 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %10, align 8
  %138 = load i32, i32* %13, align 4
  %139 = load i32, i32* %14, align 4
  %140 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %141 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* %8, align 4
  %144 = call i32 (%struct.mlx5_ib_dev*, i8*, i32, ...) @mlx5_ib_dbg(%struct.mlx5_ib_dev* %137, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %138, i32 %139, i32 %142, i32 %143)
  br label %277

145:                                              ; preds = %128, %124
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* @IB_QP_PORT, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %174

150:                                              ; preds = %145
  %151 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %152 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %165, label %155

155:                                              ; preds = %150
  %156 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %157 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %10, align 8
  %160 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %159, i32 0, i32 0
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %160, align 8
  %162 = load i32, i32* @num_ports, align 4
  %163 = call i32 @MLX5_CAP_GEN(%struct.TYPE_6__* %161, i32 %162)
  %164 = icmp sgt i32 %158, %163
  br i1 %164, label %165, label %174

165:                                              ; preds = %155, %150
  %166 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %10, align 8
  %167 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %168 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %10, align 8
  %171 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = call i32 (%struct.mlx5_ib_dev*, i8*, i32, ...) @mlx5_ib_dbg(%struct.mlx5_ib_dev* %166, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %169, i32 %172)
  br label %277

174:                                              ; preds = %155, %145
  %175 = load i32, i32* %8, align 4
  %176 = load i32, i32* @IB_QP_PKEY_INDEX, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %217

179:                                              ; preds = %174
  %180 = load i32, i32* %8, align 4
  %181 = load i32, i32* @IB_QP_PORT, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %179
  %185 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %186 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  br label %192

188:                                              ; preds = %179
  %189 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %190 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  br label %192

192:                                              ; preds = %188, %184
  %193 = phi i32 [ %187, %184 ], [ %191, %188 ]
  store i32 %193, i32* %16, align 4
  %194 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %195 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %194, i32 0, i32 3
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %10, align 8
  %198 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %197, i32 0, i32 0
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %200, align 8
  %202 = load i32, i32* %16, align 4
  %203 = sub nsw i32 %202, 1
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = icmp sge i64 %196, %207
  br i1 %208, label %209, label %216

209:                                              ; preds = %192
  %210 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %10, align 8
  %211 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %212 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %211, i32 0, i32 3
  %213 = load i64, i64* %212, align 8
  %214 = trunc i64 %213 to i32
  %215 = call i32 (%struct.mlx5_ib_dev*, i8*, i32, ...) @mlx5_ib_dbg(%struct.mlx5_ib_dev* %210, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %214)
  br label %277

216:                                              ; preds = %192
  br label %217

217:                                              ; preds = %216, %174
  %218 = load i32, i32* %8, align 4
  %219 = load i32, i32* @IB_QP_MAX_QP_RD_ATOMIC, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %239

222:                                              ; preds = %217
  %223 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %224 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %223, i32 0, i32 4
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %10, align 8
  %227 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %226, i32 0, i32 0
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** %227, align 8
  %229 = load i32, i32* @log_max_ra_res_qp, align 4
  %230 = call i32 @MLX5_CAP_GEN(%struct.TYPE_6__* %228, i32 %229)
  %231 = shl i32 1, %230
  %232 = icmp sgt i32 %225, %231
  br i1 %232, label %233, label %239

233:                                              ; preds = %222
  %234 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %10, align 8
  %235 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %236 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %235, i32 0, i32 4
  %237 = load i32, i32* %236, align 8
  %238 = call i32 (%struct.mlx5_ib_dev*, i8*, i32, ...) @mlx5_ib_dbg(%struct.mlx5_ib_dev* %234, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %237)
  br label %277

239:                                              ; preds = %222, %217
  %240 = load i32, i32* %8, align 4
  %241 = load i32, i32* @IB_QP_MAX_DEST_RD_ATOMIC, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %261

244:                                              ; preds = %239
  %245 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %246 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %245, i32 0, i32 5
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %10, align 8
  %249 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %248, i32 0, i32 0
  %250 = load %struct.TYPE_6__*, %struct.TYPE_6__** %249, align 8
  %251 = load i32, i32* @log_max_ra_req_qp, align 4
  %252 = call i32 @MLX5_CAP_GEN(%struct.TYPE_6__* %250, i32 %251)
  %253 = shl i32 1, %252
  %254 = icmp sgt i32 %247, %253
  br i1 %254, label %255, label %261

255:                                              ; preds = %244
  %256 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %10, align 8
  %257 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %258 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %257, i32 0, i32 5
  %259 = load i32, i32* %258, align 4
  %260 = call i32 (%struct.mlx5_ib_dev*, i8*, i32, ...) @mlx5_ib_dbg(%struct.mlx5_ib_dev* %256, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %259)
  br label %277

261:                                              ; preds = %244, %239
  %262 = load i32, i32* %13, align 4
  %263 = load i32, i32* %14, align 4
  %264 = icmp eq i32 %262, %263
  br i1 %264, label %265, label %270

265:                                              ; preds = %261
  %266 = load i32, i32* %13, align 4
  %267 = load i32, i32* @IB_QPS_RESET, align 4
  %268 = icmp eq i32 %266, %267
  br i1 %268, label %269, label %270

269:                                              ; preds = %265
  store i32 0, i32* %15, align 4
  br label %277

270:                                              ; preds = %265, %261
  %271 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %272 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %273 = load i32, i32* %8, align 4
  %274 = load i32, i32* %13, align 4
  %275 = load i32, i32* %14, align 4
  %276 = call i32 @__mlx5_ib_modify_qp(%struct.ib_qp* %271, %struct.ib_qp_attr* %272, i32 %273, i32 %274, i32 %275)
  store i32 %276, i32* %15, align 4
  br label %277

277:                                              ; preds = %270, %269, %255, %233, %209, %165, %136
  %278 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %279 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %278, i32 0, i32 2
  %280 = call i32 @mutex_unlock(i32* %279)
  %281 = load i32, i32* %15, align 4
  store i32 %281, i32* %5, align 4
  br label %282

282:                                              ; preds = %277, %43, %31
  %283 = load i32, i32* %5, align 4
  ret i32 %283
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(i32) #1

declare dso_local %struct.mlx5_ib_qp* @to_mqp(%struct.ib_qp*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mlx5_ib_gsi_modify_qp(%struct.ib_qp*, %struct.ib_qp_attr*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ib_modify_qp_is_ok(i32, i32, i32, i32, i32) #1

declare dso_local i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev*, i8*, i32, ...) #1

declare dso_local i32 @MLX5_CAP_GEN(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @__mlx5_ib_modify_qp(%struct.ib_qp*, %struct.ib_qp_attr*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
