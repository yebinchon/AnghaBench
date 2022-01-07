; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_qp.c__mlx4_ib_modify_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_qp.c__mlx4_ib_modify_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32, i32, i32 }
%struct.ib_qp_attr = type { i32, i32, i32, i64, i64, i64 }
%struct.ib_udata = type { i32 }
%struct.mlx4_ib_dev = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64*, i64, i64 }
%struct.mlx4_ib_qp = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IB_QP_CUR_STATE = common dso_local global i32 0, align 4
@IB_QP_STATE = common dso_local global i32 0, align 4
@IB_QPS_RESET = common dso_local global i32 0, align 4
@IB_LINK_LAYER_UNSPECIFIED = common dso_local global i32 0, align 4
@IB_QP_PORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [96 x i8] c"qpn 0x%x: invalid attribute mask specified for transition %d to %d. qp_type %d, attr_mask 0x%x\0A\00", align 1
@IB_QPS_INIT = common dso_local global i32 0, align 4
@IB_QPT_RC = common dso_local global i32 0, align 4
@IB_QPT_UD = common dso_local global i32 0, align 4
@IB_QPT_UC = common dso_local global i32 0, align 4
@IB_QPT_RAW_PACKET = common dso_local global i32 0, align 4
@IB_QPT_XRC_INI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [82 x i8] c"qpn 0x%x: invalid port number (%d) specified for transition %d to %d. qp_type %d\0A\00", align 1
@IB_LINK_LAYER_ETHERNET = common dso_local global i64 0, align 8
@IB_QP_PKEY_INDEX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [81 x i8] c"qpn 0x%x: invalid pkey index (%d) specified for transition %d to %d. qp_type %d\0A\00", align 1
@IB_QP_MAX_QP_RD_ATOMIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [73 x i8] c"qpn 0x%x: max_rd_atomic (%d) too large. Transition %d to %d. qp_type %d\0A\00", align 1
@IB_QP_MAX_DEST_RD_ATOMIC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [78 x i8] c"qpn 0x%x: max_dest_rd_atomic (%d) too large. Transition %d to %d. qp_type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_qp*, %struct.ib_qp_attr*, i32, %struct.ib_udata*)* @_mlx4_ib_modify_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_mlx4_ib_modify_qp(%struct.ib_qp* %0, %struct.ib_qp_attr* %1, i32 %2, %struct.ib_udata* %3) #0 {
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %struct.ib_qp_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_udata*, align 8
  %9 = alloca %struct.mlx4_ib_dev*, align 8
  %10 = alloca %struct.mlx4_ib_qp*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %5, align 8
  store %struct.ib_qp_attr* %1, %struct.ib_qp_attr** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ib_udata* %3, %struct.ib_udata** %8, align 8
  %17 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %18 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.mlx4_ib_dev* @to_mdev(i32 %19)
  store %struct.mlx4_ib_dev* %20, %struct.mlx4_ib_dev** %9, align 8
  %21 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %22 = call %struct.mlx4_ib_qp* @to_mqp(%struct.ib_qp* %21)
  store %struct.mlx4_ib_qp* %22, %struct.mlx4_ib_qp** %10, align 8
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %13, align 4
  %25 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %26 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %25, i32 0, i32 2
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @IB_QP_CUR_STATE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %4
  %33 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %34 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  br label %40

36:                                               ; preds = %4
  %37 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %38 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  br label %40

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %35, %32 ], [ %39, %36 ]
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @IB_QP_STATE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %48 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  br label %52

50:                                               ; preds = %40
  %51 = load i32, i32* %11, align 4
  br label %52

52:                                               ; preds = %50, %46
  %53 = phi i32 [ %49, %46 ], [ %51, %50 ]
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @IB_QPS_RESET, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32, i32* @IB_LINK_LAYER_UNSPECIFIED, align 4
  store i32 %62, i32* %14, align 4
  br label %83

63:                                               ; preds = %57, %52
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @IB_QP_PORT, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %70 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  br label %76

72:                                               ; preds = %63
  %73 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %74 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  br label %76

76:                                               ; preds = %72, %68
  %77 = phi i32 [ %71, %68 ], [ %75, %72 ]
  store i32 %77, i32* %15, align 4
  %78 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %9, align 8
  %79 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %78, i32 0, i32 2
  %80 = load i32, i32* %15, align 4
  %81 = call i64 @rdma_port_get_link_layer(i32* %79, i32 %80)
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %14, align 4
  br label %83

83:                                               ; preds = %76, %61
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %12, align 4
  %86 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %87 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %14, align 4
  %91 = call i32 @ib_modify_qp_is_ok(i32 %84, i32 %85, i32 %88, i32 %89, i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %104, label %93

93:                                               ; preds = %83
  %94 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %95 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* %12, align 4
  %99 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %100 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @pr_debug(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str, i64 0, i64 0), i32 %96, i32 %97, i32 %98, i32 %101, i32 %102)
  br label %356

104:                                              ; preds = %83
  %105 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %9, align 8
  %106 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %105, i32 0, i32 1
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = call i64 @mlx4_is_bonded(%struct.TYPE_4__* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %165

110:                                              ; preds = %104
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* @IB_QP_PORT, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %165

115:                                              ; preds = %110
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* @IB_QPS_RESET, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %159

119:                                              ; preds = %115
  %120 = load i32, i32* %12, align 4
  %121 = load i32, i32* @IB_QPS_INIT, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %159

123:                                              ; preds = %119
  %124 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %125 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @IB_QPT_RC, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %153, label %129

129:                                              ; preds = %123
  %130 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %131 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @IB_QPT_UD, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %153, label %135

135:                                              ; preds = %129
  %136 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %137 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @IB_QPT_UC, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %153, label %141

141:                                              ; preds = %135
  %142 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %143 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @IB_QPT_RAW_PACKET, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %153, label %147

147:                                              ; preds = %141
  %148 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %149 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @IB_QPT_XRC_INI, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %158

153:                                              ; preds = %147, %141, %135, %129, %123
  %154 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %9, align 8
  %155 = call i32 @mlx4_ib_bond_next_port(%struct.mlx4_ib_dev* %154)
  %156 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %157 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %156, i32 0, i32 2
  store i32 %155, i32* %157, align 8
  br label %158

158:                                              ; preds = %153, %147
  br label %164

159:                                              ; preds = %119, %115
  %160 = load i32, i32* @IB_QP_PORT, align 4
  %161 = xor i32 %160, -1
  %162 = load i32, i32* %7, align 4
  %163 = and i32 %162, %161
  store i32 %163, i32* %7, align 4
  br label %164

164:                                              ; preds = %159, %158
  br label %165

165:                                              ; preds = %164, %110, %104
  %166 = load i32, i32* %7, align 4
  %167 = load i32, i32* @IB_QP_PORT, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %196

170:                                              ; preds = %165
  %171 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %172 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %183, label %175

175:                                              ; preds = %170
  %176 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %177 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %9, align 8
  %180 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = icmp sgt i32 %178, %181
  br i1 %182, label %183, label %196

183:                                              ; preds = %175, %170
  %184 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %185 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %188 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* %11, align 4
  %191 = load i32, i32* %12, align 4
  %192 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %193 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @pr_debug(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 %186, i32 %189, i32 %190, i32 %191, i32 %194)
  br label %356

196:                                              ; preds = %175, %165
  %197 = load i32, i32* %7, align 4
  %198 = load i32, i32* @IB_QP_PORT, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %217

201:                                              ; preds = %196
  %202 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %203 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @IB_QPT_RAW_PACKET, align 4
  %206 = icmp eq i32 %204, %205
  br i1 %206, label %207, label %217

207:                                              ; preds = %201
  %208 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %9, align 8
  %209 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %208, i32 0, i32 2
  %210 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %211 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = call i64 @rdma_port_get_link_layer(i32* %209, i32 %212)
  %214 = load i64, i64* @IB_LINK_LAYER_ETHERNET, align 8
  %215 = icmp ne i64 %213, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %207
  br label %356

217:                                              ; preds = %207, %201, %196
  %218 = load i32, i32* %7, align 4
  %219 = load i32, i32* @IB_QP_PKEY_INDEX, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %266

222:                                              ; preds = %217
  %223 = load i32, i32* %7, align 4
  %224 = load i32, i32* @IB_QP_PORT, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %231

227:                                              ; preds = %222
  %228 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %229 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  br label %235

231:                                              ; preds = %222
  %232 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %233 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  br label %235

235:                                              ; preds = %231, %227
  %236 = phi i32 [ %230, %227 ], [ %234, %231 ]
  store i32 %236, i32* %16, align 4
  %237 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %238 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %237, i32 0, i32 3
  %239 = load i64, i64* %238, align 8
  %240 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %9, align 8
  %241 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %240, i32 0, i32 1
  %242 = load %struct.TYPE_4__*, %struct.TYPE_4__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %243, i32 0, i32 0
  %245 = load i64*, i64** %244, align 8
  %246 = load i32, i32* %16, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i64, i64* %245, i64 %247
  %249 = load i64, i64* %248, align 8
  %250 = icmp sge i64 %239, %249
  br i1 %250, label %251, label %265

251:                                              ; preds = %235
  %252 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %253 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %256 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %255, i32 0, i32 3
  %257 = load i64, i64* %256, align 8
  %258 = trunc i64 %257 to i32
  %259 = load i32, i32* %11, align 4
  %260 = load i32, i32* %12, align 4
  %261 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %262 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = call i32 @pr_debug(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.2, i64 0, i64 0), i32 %254, i32 %258, i32 %259, i32 %260, i32 %263)
  br label %356

265:                                              ; preds = %235
  br label %266

266:                                              ; preds = %265, %217
  %267 = load i32, i32* %7, align 4
  %268 = load i32, i32* @IB_QP_MAX_QP_RD_ATOMIC, align 4
  %269 = and i32 %267, %268
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %296

271:                                              ; preds = %266
  %272 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %273 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %272, i32 0, i32 4
  %274 = load i64, i64* %273, align 8
  %275 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %9, align 8
  %276 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %275, i32 0, i32 1
  %277 = load %struct.TYPE_4__*, %struct.TYPE_4__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %278, i32 0, i32 1
  %280 = load i64, i64* %279, align 8
  %281 = icmp sgt i64 %274, %280
  br i1 %281, label %282, label %296

282:                                              ; preds = %271
  %283 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %284 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %287 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %286, i32 0, i32 4
  %288 = load i64, i64* %287, align 8
  %289 = trunc i64 %288 to i32
  %290 = load i32, i32* %11, align 4
  %291 = load i32, i32* %12, align 4
  %292 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %293 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @pr_debug(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0), i32 %285, i32 %289, i32 %290, i32 %291, i32 %294)
  br label %356

296:                                              ; preds = %271, %266
  %297 = load i32, i32* %7, align 4
  %298 = load i32, i32* @IB_QP_MAX_DEST_RD_ATOMIC, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %326

301:                                              ; preds = %296
  %302 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %303 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %302, i32 0, i32 5
  %304 = load i64, i64* %303, align 8
  %305 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %9, align 8
  %306 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %305, i32 0, i32 1
  %307 = load %struct.TYPE_4__*, %struct.TYPE_4__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %308, i32 0, i32 2
  %310 = load i64, i64* %309, align 8
  %311 = icmp sgt i64 %304, %310
  br i1 %311, label %312, label %326

312:                                              ; preds = %301
  %313 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %314 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 4
  %316 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %317 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %316, i32 0, i32 5
  %318 = load i64, i64* %317, align 8
  %319 = trunc i64 %318 to i32
  %320 = load i32, i32* %11, align 4
  %321 = load i32, i32* %12, align 4
  %322 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %323 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 4
  %325 = call i32 @pr_debug(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.4, i64 0, i64 0), i32 %315, i32 %319, i32 %320, i32 %321, i32 %324)
  br label %356

326:                                              ; preds = %301, %296
  %327 = load i32, i32* %11, align 4
  %328 = load i32, i32* %12, align 4
  %329 = icmp eq i32 %327, %328
  br i1 %329, label %330, label %335

330:                                              ; preds = %326
  %331 = load i32, i32* %11, align 4
  %332 = load i32, i32* @IB_QPS_RESET, align 4
  %333 = icmp eq i32 %331, %332
  br i1 %333, label %334, label %335

334:                                              ; preds = %330
  store i32 0, i32* %13, align 4
  br label %356

335:                                              ; preds = %330, %326
  %336 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %337 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %338 = load i32, i32* %7, align 4
  %339 = load i32, i32* %11, align 4
  %340 = load i32, i32* %12, align 4
  %341 = call i32 @__mlx4_ib_modify_qp(%struct.ib_qp* %336, %struct.ib_qp_attr* %337, i32 %338, i32 %339, i32 %340)
  store i32 %341, i32* %13, align 4
  %342 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %9, align 8
  %343 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %342, i32 0, i32 1
  %344 = load %struct.TYPE_4__*, %struct.TYPE_4__** %343, align 8
  %345 = call i64 @mlx4_is_bonded(%struct.TYPE_4__* %344)
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %355

347:                                              ; preds = %335
  %348 = load i32, i32* %7, align 4
  %349 = load i32, i32* @IB_QP_PORT, align 4
  %350 = and i32 %348, %349
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %355

352:                                              ; preds = %347
  %353 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %354 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %353, i32 0, i32 2
  store i32 1, i32* %354, align 8
  br label %355

355:                                              ; preds = %352, %347, %335
  br label %356

356:                                              ; preds = %355, %334, %312, %282, %251, %216, %183, %93
  %357 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %358 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %357, i32 0, i32 2
  %359 = call i32 @mutex_unlock(i32* %358)
  %360 = load i32, i32* %13, align 4
  ret i32 %360
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(i32) #1

declare dso_local %struct.mlx4_ib_qp* @to_mqp(%struct.ib_qp*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @rdma_port_get_link_layer(i32*, i32) #1

declare dso_local i32 @ib_modify_qp_is_ok(i32, i32, i32, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @mlx4_is_bonded(%struct.TYPE_4__*) #1

declare dso_local i32 @mlx4_ib_bond_next_port(%struct.mlx4_ib_dev*) #1

declare dso_local i32 @__mlx4_ib_modify_qp(%struct.ib_qp*, %struct.ib_qp_attr*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
