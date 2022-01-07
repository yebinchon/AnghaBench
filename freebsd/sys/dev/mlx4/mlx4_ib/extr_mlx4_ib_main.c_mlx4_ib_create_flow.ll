; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_main.c_mlx4_ib_create_flow.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_main.c_mlx4_ib_create_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_flow = type { i32 }
%struct.ib_qp = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.ib_flow_attr = type { i32, i32, i32 }
%struct.mlx4_ib_flow = type { %struct.TYPE_4__*, %struct.ib_flow }
%struct.TYPE_4__ = type { i32, i32 }
%struct.mlx4_dev = type { i32 }
%struct.TYPE_5__ = type { %struct.mlx4_dev* }

@EINVAL = common dso_local global i32 0, align 4
@IB_FLOW_ATTR_FLAGS_DONT_TRAP = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLX4_FS_REGULAR = common dso_local global i32 0, align 4
@MLX4_FS_ALL_DEFAULT = common dso_local global i32 0, align 4
@MLX4_FS_MC_DEFAULT = common dso_local global i32 0, align 4
@MLX4_FS_MIRROR_RX_PORT = common dso_local global i32 0, align 4
@MLX4_FS_MIRROR_SX_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_flow* (%struct.ib_qp*, %struct.ib_flow_attr*, i32)* @mlx4_ib_create_flow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_flow* @mlx4_ib_create_flow(%struct.ib_qp* %0, %struct.ib_flow_attr* %1, i32 %2) #0 {
  %4 = alloca %struct.ib_flow*, align 8
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %struct.ib_flow_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mlx4_ib_flow*, align 8
  %12 = alloca [2 x i32], align 4
  %13 = alloca %struct.mlx4_dev*, align 8
  %14 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %5, align 8
  store %struct.ib_flow_attr* %1, %struct.ib_flow_attr** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %16 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = call %struct.TYPE_5__* @to_mdev(%struct.TYPE_6__* %17)
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.mlx4_dev*, %struct.mlx4_dev** %19, align 8
  store %struct.mlx4_dev* %20, %struct.mlx4_dev** %13, align 8
  %21 = load %struct.mlx4_dev*, %struct.mlx4_dev** %13, align 8
  %22 = call i32 @mlx4_is_bonded(%struct.mlx4_dev* %21)
  store i32 %22, i32* %14, align 4
  %23 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %6, align 8
  %24 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %25, 1
  br i1 %26, label %37, label %27

27:                                               ; preds = %3
  %28 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %6, align 8
  %29 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %32 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp sgt i32 %30, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %27, %3
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  %40 = call %struct.ib_flow* @ERR_PTR(i32 %39)
  store %struct.ib_flow* %40, %struct.ib_flow** %4, align 8
  br label %275

41:                                               ; preds = %27
  %42 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %6, align 8
  %43 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @IB_FLOW_ATTR_FLAGS_DONT_TRAP, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %41
  %49 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %6, align 8
  %50 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 129
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i32, i32* @EOPNOTSUPP, align 4
  %55 = sub nsw i32 0, %54
  %56 = call %struct.ib_flow* @ERR_PTR(i32 %55)
  store %struct.ib_flow* %56, %struct.ib_flow** %4, align 8
  br label %275

57:                                               ; preds = %48, %41
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %59 = call i32 @memset(i32* %58, i32 0, i32 8)
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call %struct.mlx4_ib_flow* @kzalloc(i32 16, i32 %60)
  store %struct.mlx4_ib_flow* %61, %struct.mlx4_ib_flow** %11, align 8
  %62 = load %struct.mlx4_ib_flow*, %struct.mlx4_ib_flow** %11, align 8
  %63 = icmp ne %struct.mlx4_ib_flow* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %57
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %8, align 4
  br label %270

67:                                               ; preds = %57
  %68 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %6, align 8
  %69 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  switch i32 %70, label %103 [
    i32 129, label %71
    i32 131, label %92
    i32 130, label %95
    i32 128, label %98
  ]

71:                                               ; preds = %67
  %72 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %6, align 8
  %73 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @IB_FLOW_ATTR_FLAGS_DONT_TRAP, align 4
  %76 = and i32 %74, %75
  %77 = call i32 @unlikely(i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %71
  %80 = load %struct.mlx4_dev*, %struct.mlx4_dev** %13, align 8
  %81 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %6, align 8
  %82 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %83 = call i32 @mlx4_ib_add_dont_trap_rule(%struct.mlx4_dev* %80, %struct.ib_flow_attr* %81, i32* %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %270

87:                                               ; preds = %79
  br label %91

88:                                               ; preds = %71
  %89 = load i32, i32* @MLX4_FS_REGULAR, align 4
  %90 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 %89, i32* %90, align 4
  br label %91

91:                                               ; preds = %88, %87
  br label %106

92:                                               ; preds = %67
  %93 = load i32, i32* @MLX4_FS_ALL_DEFAULT, align 4
  %94 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 %93, i32* %94, align 4
  br label %106

95:                                               ; preds = %67
  %96 = load i32, i32* @MLX4_FS_MC_DEFAULT, align 4
  %97 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 %96, i32* %97, align 4
  br label %106

98:                                               ; preds = %67
  %99 = load i32, i32* @MLX4_FS_MIRROR_RX_PORT, align 4
  %100 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 %99, i32* %100, align 4
  %101 = load i32, i32* @MLX4_FS_MIRROR_SX_PORT, align 4
  %102 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 %101, i32* %102, align 4
  br label %106

103:                                              ; preds = %67
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %8, align 4
  br label %270

106:                                              ; preds = %98, %95, %92, %91
  br label %107

107:                                              ; preds = %168, %106
  %108 = load i32, i32* %9, align 4
  %109 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %110 = call i32 @ARRAY_SIZE(i32* %109)
  %111 = icmp slt i32 %108, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %107
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br label %118

118:                                              ; preds = %112, %107
  %119 = phi i1 [ false, %107 ], [ %117, %112 ]
  br i1 %119, label %120, label %171

120:                                              ; preds = %118
  %121 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %122 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %6, align 8
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.mlx4_ib_flow*, %struct.mlx4_ib_flow** %11, align 8
  %129 = getelementptr inbounds %struct.mlx4_ib_flow, %struct.mlx4_ib_flow* %128, i32 0, i32 0
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  %131 = load i32, i32* %9, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  %135 = call i32 @__mlx4_ib_create_flow(%struct.ib_qp* %121, %struct.ib_flow_attr* %122, i32 %123, i32 %127, i32* %134)
  store i32 %135, i32* %8, align 4
  %136 = load i32, i32* %8, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %120
  br label %225

139:                                              ; preds = %120
  %140 = load i32, i32* %14, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %168

142:                                              ; preds = %139
  %143 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %6, align 8
  %144 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %143, i32 0, i32 0
  store i32 2, i32* %144, align 4
  %145 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %146 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %6, align 8
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* %10, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.mlx4_ib_flow*, %struct.mlx4_ib_flow** %11, align 8
  %153 = getelementptr inbounds %struct.mlx4_ib_flow, %struct.mlx4_ib_flow* %152, i32 0, i32 0
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %153, align 8
  %155 = load i32, i32* %10, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = call i32 @__mlx4_ib_create_flow(%struct.ib_qp* %145, %struct.ib_flow_attr* %146, i32 %147, i32 %151, i32* %158)
  store i32 %159, i32* %8, align 4
  %160 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %6, align 8
  %161 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %160, i32 0, i32 0
  store i32 1, i32* %161, align 4
  %162 = load i32, i32* %8, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %142
  br label %225

165:                                              ; preds = %142
  %166 = load i32, i32* %10, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %10, align 4
  br label %168

168:                                              ; preds = %165, %139
  %169 = load i32, i32* %9, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %9, align 4
  br label %107

171:                                              ; preds = %118
  %172 = load i32, i32* %9, align 4
  %173 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %174 = call i32 @ARRAY_SIZE(i32* %173)
  %175 = icmp slt i32 %172, %174
  br i1 %175, label %176, label %222

176:                                              ; preds = %171
  %177 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %6, align 8
  %178 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = icmp eq i32 %179, 129
  br i1 %180, label %181, label %222

181:                                              ; preds = %176
  %182 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %183 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %6, align 8
  %184 = load %struct.mlx4_ib_flow*, %struct.mlx4_ib_flow** %11, align 8
  %185 = getelementptr inbounds %struct.mlx4_ib_flow, %struct.mlx4_ib_flow* %184, i32 0, i32 0
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %185, align 8
  %187 = load i32, i32* %9, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 1
  %191 = call i32 @mlx4_ib_tunnel_steer_add(%struct.ib_qp* %182, %struct.ib_flow_attr* %183, i32* %190)
  store i32 %191, i32* %8, align 4
  %192 = load i32, i32* %8, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %181
  br label %225

195:                                              ; preds = %181
  %196 = load i32, i32* %14, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %219

198:                                              ; preds = %195
  %199 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %6, align 8
  %200 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %199, i32 0, i32 0
  store i32 2, i32* %200, align 4
  %201 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %202 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %6, align 8
  %203 = load %struct.mlx4_ib_flow*, %struct.mlx4_ib_flow** %11, align 8
  %204 = getelementptr inbounds %struct.mlx4_ib_flow, %struct.mlx4_ib_flow* %203, i32 0, i32 0
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %204, align 8
  %206 = load i32, i32* %10, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 0
  %210 = call i32 @mlx4_ib_tunnel_steer_add(%struct.ib_qp* %201, %struct.ib_flow_attr* %202, i32* %209)
  store i32 %210, i32* %8, align 4
  %211 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %6, align 8
  %212 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %211, i32 0, i32 0
  store i32 1, i32* %212, align 4
  %213 = load i32, i32* %8, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %198
  br label %225

216:                                              ; preds = %198
  %217 = load i32, i32* %10, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %10, align 4
  br label %219

219:                                              ; preds = %216, %195
  %220 = load i32, i32* %9, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %9, align 4
  br label %222

222:                                              ; preds = %219, %176, %171
  %223 = load %struct.mlx4_ib_flow*, %struct.mlx4_ib_flow** %11, align 8
  %224 = getelementptr inbounds %struct.mlx4_ib_flow, %struct.mlx4_ib_flow* %223, i32 0, i32 1
  store %struct.ib_flow* %224, %struct.ib_flow** %4, align 8
  br label %275

225:                                              ; preds = %215, %194, %164, %138
  br label %226

226:                                              ; preds = %229, %225
  %227 = load i32, i32* %9, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %247

229:                                              ; preds = %226
  %230 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %231 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %230, i32 0, i32 0
  %232 = load %struct.TYPE_6__*, %struct.TYPE_6__** %231, align 8
  %233 = call %struct.TYPE_5__* @to_mdev(%struct.TYPE_6__* %232)
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 0
  %235 = load %struct.mlx4_dev*, %struct.mlx4_dev** %234, align 8
  %236 = load %struct.mlx4_ib_flow*, %struct.mlx4_ib_flow** %11, align 8
  %237 = getelementptr inbounds %struct.mlx4_ib_flow, %struct.mlx4_ib_flow* %236, i32 0, i32 0
  %238 = load %struct.TYPE_4__*, %struct.TYPE_4__** %237, align 8
  %239 = load i32, i32* %9, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @__mlx4_ib_destroy_flow(%struct.mlx4_dev* %235, i32 %243)
  %245 = load i32, i32* %9, align 4
  %246 = add nsw i32 %245, -1
  store i32 %246, i32* %9, align 4
  br label %226

247:                                              ; preds = %226
  br label %248

248:                                              ; preds = %251, %247
  %249 = load i32, i32* %10, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %269

251:                                              ; preds = %248
  %252 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %253 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %252, i32 0, i32 0
  %254 = load %struct.TYPE_6__*, %struct.TYPE_6__** %253, align 8
  %255 = call %struct.TYPE_5__* @to_mdev(%struct.TYPE_6__* %254)
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %255, i32 0, i32 0
  %257 = load %struct.mlx4_dev*, %struct.mlx4_dev** %256, align 8
  %258 = load %struct.mlx4_ib_flow*, %struct.mlx4_ib_flow** %11, align 8
  %259 = getelementptr inbounds %struct.mlx4_ib_flow, %struct.mlx4_ib_flow* %258, i32 0, i32 0
  %260 = load %struct.TYPE_4__*, %struct.TYPE_4__** %259, align 8
  %261 = load i32, i32* %10, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = call i32 @__mlx4_ib_destroy_flow(%struct.mlx4_dev* %257, i32 %265)
  %267 = load i32, i32* %10, align 4
  %268 = add nsw i32 %267, -1
  store i32 %268, i32* %10, align 4
  br label %248

269:                                              ; preds = %248
  br label %270

270:                                              ; preds = %269, %103, %86, %64
  %271 = load %struct.mlx4_ib_flow*, %struct.mlx4_ib_flow** %11, align 8
  %272 = call i32 @kfree(%struct.mlx4_ib_flow* %271)
  %273 = load i32, i32* %8, align 4
  %274 = call %struct.ib_flow* @ERR_PTR(i32 %273)
  store %struct.ib_flow* %274, %struct.ib_flow** %4, align 8
  br label %275

275:                                              ; preds = %270, %222, %53, %37
  %276 = load %struct.ib_flow*, %struct.ib_flow** %4, align 8
  ret %struct.ib_flow* %276
}

declare dso_local %struct.TYPE_5__* @to_mdev(%struct.TYPE_6__*) #1

declare dso_local i32 @mlx4_is_bonded(%struct.mlx4_dev*) #1

declare dso_local %struct.ib_flow* @ERR_PTR(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local %struct.mlx4_ib_flow* @kzalloc(i32, i32) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @mlx4_ib_add_dont_trap_rule(%struct.mlx4_dev*, %struct.ib_flow_attr*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @__mlx4_ib_create_flow(%struct.ib_qp*, %struct.ib_flow_attr*, i32, i32, i32*) #1

declare dso_local i32 @mlx4_ib_tunnel_steer_add(%struct.ib_qp*, %struct.ib_flow_attr*, i32*) #1

declare dso_local i32 @__mlx4_ib_destroy_flow(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @kfree(%struct.mlx4_ib_flow*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
