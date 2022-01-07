; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_main.c_parse_flow_attr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_main.c_parse_flow_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%union.ib_flow_spec = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_15__, %struct.TYPE_24__ }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_24__ = type { i32, i32 }
%struct._rule_hw = type { i32, i32, %struct.TYPE_13__, %struct.TYPE_22__, %struct.TYPE_20__, %struct.TYPE_17__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i8*, i8* }
%struct.TYPE_17__ = type { i32, i32, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_15__, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_15__ }
%struct.TYPE_23__ = type { %struct.TYPE_15__, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32, i32 }

@LAST_ETH_FIELD = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@MLX4_NET_TRANS_RULE_ID_ETH = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@LAST_IB_FIELD = common dso_local global i32 0, align 4
@MLX4_NET_TRANS_RULE_ID_IB = common dso_local global i32 0, align 4
@MLX4_IB_FLOW_QPN_MASK = common dso_local global i32 0, align 4
@LAST_IPV4_FIELD = common dso_local global i32 0, align 4
@MLX4_NET_TRANS_RULE_ID_IPV4 = common dso_local global i32 0, align 4
@LAST_TCP_UDP_FIELD = common dso_local global i32 0, align 4
@MLX4_NET_TRANS_RULE_ID_TCP = common dso_local global i32 0, align 4
@MLX4_NET_TRANS_RULE_ID_UDP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, i32, %union.ib_flow_spec*, %struct._rule_hw*)* @parse_flow_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_flow_attr(%struct.mlx4_dev* %0, i32 %1, %union.ib_flow_spec* %2, %struct._rule_hw* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.ib_flow_spec*, align 8
  %9 = alloca %struct._rule_hw*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_15__, align 8
  %12 = alloca %struct.TYPE_15__, align 8
  %13 = alloca %struct.TYPE_15__, align 8
  %14 = alloca %struct.TYPE_15__, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store %union.ib_flow_spec* %2, %union.ib_flow_spec** %8, align 8
  store %struct._rule_hw* %3, %struct._rule_hw** %9, align 8
  %15 = load %union.ib_flow_spec*, %union.ib_flow_spec** %8, align 8
  %16 = bitcast %union.ib_flow_spec* %15 to i32*
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %195 [
    i32 132, label %18
    i32 131, label %70
    i32 130, label %94
    i32 129, label %140
    i32 128, label %140
  ]

18:                                               ; preds = %4
  %19 = load %union.ib_flow_spec*, %union.ib_flow_spec** %8, align 8
  %20 = bitcast %union.ib_flow_spec* %19 to %struct.TYPE_18__*
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 0
  %22 = load i32, i32* @LAST_ETH_FIELD, align 4
  %23 = bitcast %struct.TYPE_15__* %11 to i8*
  %24 = bitcast %struct.TYPE_15__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 4 %24, i64 24, i1 false)
  %25 = call i32 @FIELDS_NOT_SUPPORTED(%struct.TYPE_15__* byval(%struct.TYPE_15__) align 8 %11, i32 %22)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load i32, i32* @ENOTSUPP, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %227

30:                                               ; preds = %18
  %31 = load i32, i32* @MLX4_NET_TRANS_RULE_ID_ETH, align 4
  store i32 %31, i32* %10, align 4
  %32 = load %struct._rule_hw*, %struct._rule_hw** %9, align 8
  %33 = getelementptr inbounds %struct._rule_hw, %struct._rule_hw* %32, i32 0, i32 5
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %union.ib_flow_spec*, %union.ib_flow_spec** %8, align 8
  %37 = bitcast %union.ib_flow_spec* %36 to %struct.TYPE_18__*
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ETH_ALEN, align 4
  %42 = call i32 @memcpy(i32 %35, i32 %40, i32 %41)
  %43 = load %struct._rule_hw*, %struct._rule_hw** %9, align 8
  %44 = getelementptr inbounds %struct._rule_hw, %struct._rule_hw* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %union.ib_flow_spec*, %union.ib_flow_spec** %8, align 8
  %48 = bitcast %union.ib_flow_spec* %47 to %struct.TYPE_18__*
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @ETH_ALEN, align 4
  %53 = call i32 @memcpy(i32 %46, i32 %51, i32 %52)
  %54 = load %union.ib_flow_spec*, %union.ib_flow_spec** %8, align 8
  %55 = bitcast %union.ib_flow_spec* %54 to %struct.TYPE_18__*
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct._rule_hw*, %struct._rule_hw** %9, align 8
  %60 = getelementptr inbounds %struct._rule_hw, %struct._rule_hw* %59, i32 0, i32 5
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 4
  %62 = load %union.ib_flow_spec*, %union.ib_flow_spec** %8, align 8
  %63 = bitcast %union.ib_flow_spec* %62 to %struct.TYPE_18__*
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = load %struct._rule_hw*, %struct._rule_hw** %9, align 8
  %68 = getelementptr inbounds %struct._rule_hw, %struct._rule_hw* %67, i32 0, i32 5
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 8
  br label %198

70:                                               ; preds = %4
  %71 = load %union.ib_flow_spec*, %union.ib_flow_spec** %8, align 8
  %72 = bitcast %union.ib_flow_spec* %71 to %struct.TYPE_19__*
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 0
  %74 = load i32, i32* @LAST_IB_FIELD, align 4
  %75 = bitcast %struct.TYPE_15__* %12 to i8*
  %76 = bitcast %struct.TYPE_15__* %73 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %75, i8* align 4 %76, i64 24, i1 false)
  %77 = call i32 @FIELDS_NOT_SUPPORTED(%struct.TYPE_15__* byval(%struct.TYPE_15__) align 8 %12, i32 %74)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %70
  %80 = load i32, i32* @ENOTSUPP, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %5, align 4
  br label %227

82:                                               ; preds = %70
  %83 = load i32, i32* @MLX4_NET_TRANS_RULE_ID_IB, align 4
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %7, align 4
  %85 = call i8* @cpu_to_be32(i32 %84)
  %86 = load %struct._rule_hw*, %struct._rule_hw** %9, align 8
  %87 = getelementptr inbounds %struct._rule_hw, %struct._rule_hw* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 1
  store i8* %85, i8** %88, align 8
  %89 = load i32, i32* @MLX4_IB_FLOW_QPN_MASK, align 4
  %90 = call i8* @cpu_to_be32(i32 %89)
  %91 = load %struct._rule_hw*, %struct._rule_hw** %9, align 8
  %92 = getelementptr inbounds %struct._rule_hw, %struct._rule_hw* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 0
  store i8* %90, i8** %93, align 8
  br label %198

94:                                               ; preds = %4
  %95 = load %union.ib_flow_spec*, %union.ib_flow_spec** %8, align 8
  %96 = bitcast %union.ib_flow_spec* %95 to %struct.TYPE_23__*
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 0
  %98 = load i32, i32* @LAST_IPV4_FIELD, align 4
  %99 = bitcast %struct.TYPE_15__* %13 to i8*
  %100 = bitcast %struct.TYPE_15__* %97 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %99, i8* align 4 %100, i64 24, i1 false)
  %101 = call i32 @FIELDS_NOT_SUPPORTED(%struct.TYPE_15__* byval(%struct.TYPE_15__) align 8 %13, i32 %98)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %94
  %104 = load i32, i32* @ENOTSUPP, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %5, align 4
  br label %227

106:                                              ; preds = %94
  %107 = load i32, i32* @MLX4_NET_TRANS_RULE_ID_IPV4, align 4
  store i32 %107, i32* %10, align 4
  %108 = load %union.ib_flow_spec*, %union.ib_flow_spec** %8, align 8
  %109 = bitcast %union.ib_flow_spec* %108 to %struct.TYPE_23__*
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct._rule_hw*, %struct._rule_hw** %9, align 8
  %114 = getelementptr inbounds %struct._rule_hw, %struct._rule_hw* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 3
  store i32 %112, i32* %115, align 4
  %116 = load %union.ib_flow_spec*, %union.ib_flow_spec** %8, align 8
  %117 = bitcast %union.ib_flow_spec* %116 to %struct.TYPE_23__*
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = load %struct._rule_hw*, %struct._rule_hw** %9, align 8
  %122 = getelementptr inbounds %struct._rule_hw, %struct._rule_hw* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %122, i32 0, i32 2
  store i32 %120, i32* %123, align 8
  %124 = load %union.ib_flow_spec*, %union.ib_flow_spec** %8, align 8
  %125 = bitcast %union.ib_flow_spec* %124 to %struct.TYPE_23__*
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct._rule_hw*, %struct._rule_hw** %9, align 8
  %130 = getelementptr inbounds %struct._rule_hw, %struct._rule_hw* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 1
  store i32 %128, i32* %131, align 4
  %132 = load %union.ib_flow_spec*, %union.ib_flow_spec** %8, align 8
  %133 = bitcast %union.ib_flow_spec* %132 to %struct.TYPE_23__*
  %134 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load %struct._rule_hw*, %struct._rule_hw** %9, align 8
  %138 = getelementptr inbounds %struct._rule_hw, %struct._rule_hw* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 0
  store i32 %136, i32* %139, align 8
  br label %198

140:                                              ; preds = %4, %4
  %141 = load %union.ib_flow_spec*, %union.ib_flow_spec** %8, align 8
  %142 = bitcast %union.ib_flow_spec* %141 to %struct.TYPE_14__*
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 0
  %144 = load i32, i32* @LAST_TCP_UDP_FIELD, align 4
  %145 = bitcast %struct.TYPE_15__* %14 to i8*
  %146 = bitcast %struct.TYPE_15__* %143 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %145, i8* align 4 %146, i64 24, i1 false)
  %147 = call i32 @FIELDS_NOT_SUPPORTED(%struct.TYPE_15__* byval(%struct.TYPE_15__) align 8 %14, i32 %144)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %140
  %150 = load i32, i32* @ENOTSUPP, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %5, align 4
  br label %227

152:                                              ; preds = %140
  %153 = load %union.ib_flow_spec*, %union.ib_flow_spec** %8, align 8
  %154 = bitcast %union.ib_flow_spec* %153 to i32*
  %155 = load i32, i32* %154, align 4
  %156 = icmp eq i32 %155, 129
  br i1 %156, label %157, label %159

157:                                              ; preds = %152
  %158 = load i32, i32* @MLX4_NET_TRANS_RULE_ID_TCP, align 4
  br label %161

159:                                              ; preds = %152
  %160 = load i32, i32* @MLX4_NET_TRANS_RULE_ID_UDP, align 4
  br label %161

161:                                              ; preds = %159, %157
  %162 = phi i32 [ %158, %157 ], [ %160, %159 ]
  store i32 %162, i32* %10, align 4
  %163 = load %union.ib_flow_spec*, %union.ib_flow_spec** %8, align 8
  %164 = bitcast %union.ib_flow_spec* %163 to %struct.TYPE_14__*
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct._rule_hw*, %struct._rule_hw** %9, align 8
  %169 = getelementptr inbounds %struct._rule_hw, %struct._rule_hw* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 3
  store i32 %167, i32* %170, align 4
  %171 = load %union.ib_flow_spec*, %union.ib_flow_spec** %8, align 8
  %172 = bitcast %union.ib_flow_spec* %171 to %struct.TYPE_14__*
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct._rule_hw*, %struct._rule_hw** %9, align 8
  %177 = getelementptr inbounds %struct._rule_hw, %struct._rule_hw* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 2
  store i32 %175, i32* %178, align 8
  %179 = load %union.ib_flow_spec*, %union.ib_flow_spec** %8, align 8
  %180 = bitcast %union.ib_flow_spec* %179 to %struct.TYPE_14__*
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load %struct._rule_hw*, %struct._rule_hw** %9, align 8
  %185 = getelementptr inbounds %struct._rule_hw, %struct._rule_hw* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 1
  store i32 %183, i32* %186, align 4
  %187 = load %union.ib_flow_spec*, %union.ib_flow_spec** %8, align 8
  %188 = bitcast %union.ib_flow_spec* %187 to %struct.TYPE_14__*
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load %struct._rule_hw*, %struct._rule_hw** %9, align 8
  %193 = getelementptr inbounds %struct._rule_hw, %struct._rule_hw* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 0
  store i32 %191, i32* %194, align 8
  br label %198

195:                                              ; preds = %4
  %196 = load i32, i32* @EINVAL, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %5, align 4
  br label %227

198:                                              ; preds = %161, %106, %82, %30
  %199 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %200 = load i32, i32* %10, align 4
  %201 = call i64 @mlx4_map_sw_to_hw_steering_id(%struct.mlx4_dev* %199, i32 %200)
  %202 = icmp slt i64 %201, 0
  br i1 %202, label %208, label %203

203:                                              ; preds = %198
  %204 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %205 = load i32, i32* %10, align 4
  %206 = call i32 @mlx4_hw_rule_sz(%struct.mlx4_dev* %204, i32 %205)
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %203, %198
  %209 = load i32, i32* @EINVAL, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %5, align 4
  br label %227

211:                                              ; preds = %203
  %212 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %213 = load i32, i32* %10, align 4
  %214 = call i64 @mlx4_map_sw_to_hw_steering_id(%struct.mlx4_dev* %212, i32 %213)
  %215 = call i32 @cpu_to_be16(i64 %214)
  %216 = load %struct._rule_hw*, %struct._rule_hw** %9, align 8
  %217 = getelementptr inbounds %struct._rule_hw, %struct._rule_hw* %216, i32 0, i32 1
  store i32 %215, i32* %217, align 4
  %218 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %219 = load i32, i32* %10, align 4
  %220 = call i32 @mlx4_hw_rule_sz(%struct.mlx4_dev* %218, i32 %219)
  %221 = ashr i32 %220, 2
  %222 = load %struct._rule_hw*, %struct._rule_hw** %9, align 8
  %223 = getelementptr inbounds %struct._rule_hw, %struct._rule_hw* %222, i32 0, i32 0
  store i32 %221, i32* %223, align 8
  %224 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %225 = load i32, i32* %10, align 4
  %226 = call i32 @mlx4_hw_rule_sz(%struct.mlx4_dev* %224, i32 %225)
  store i32 %226, i32* %5, align 4
  br label %227

227:                                              ; preds = %211, %208, %195, %149, %103, %79, %27
  %228 = load i32, i32* %5, align 4
  ret i32 %228
}

declare dso_local i32 @FIELDS_NOT_SUPPORTED(%struct.TYPE_15__* byval(%struct.TYPE_15__) align 8, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i64 @mlx4_map_sw_to_hw_steering_id(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @mlx4_hw_rule_sz(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @cpu_to_be16(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
