; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_mlx5_set_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_mlx5_set_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.mlx5_ib_qp = type { %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i64 }
%struct.ib_ah_attr = type { i32, i32, i32, i32, %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { i64, i32, i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.mlx5_qp_path = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i8* }
%struct.ib_qp_attr = type { i32, i32, i32, i32 }

@IB_QP_PKEY_INDEX = common dso_local global i32 0, align 4
@IB_AH_GRH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"sgid_index (%u) too large. max is %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IB_LINK_LAYER_ETHERNET = common dso_local global i32 0, align 4
@IB_GID_TYPE_ROCE_UDP_ENCAP = common dso_local global i32 0, align 4
@MLX5_PATH_FLAG_FL = common dso_local global i32 0, align 4
@MLX5_PATH_FLAG_FREE_AR = common dso_local global i32 0, align 4
@IB_QP_TIMEOUT = common dso_local global i32 0, align 4
@IB_QPT_RAW_PACKET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, %struct.mlx5_ib_qp*, %struct.ib_ah_attr*, %struct.mlx5_qp_path*, i32, i32, i32, %struct.ib_qp_attr*, i32)* @mlx5_set_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_set_path(%struct.mlx5_ib_dev* %0, %struct.mlx5_ib_qp* %1, %struct.ib_ah_attr* %2, %struct.mlx5_qp_path* %3, i32 %4, i32 %5, i32 %6, %struct.ib_qp_attr* %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.mlx5_ib_dev*, align 8
  %12 = alloca %struct.mlx5_ib_qp*, align 8
  %13 = alloca %struct.ib_ah_attr*, align 8
  %14 = alloca %struct.mlx5_qp_path*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.ib_qp_attr*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %11, align 8
  store %struct.mlx5_ib_qp* %1, %struct.mlx5_ib_qp** %12, align 8
  store %struct.ib_ah_attr* %2, %struct.ib_ah_attr** %13, align 8
  store %struct.mlx5_qp_path* %3, %struct.mlx5_qp_path** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store %struct.ib_qp_attr* %7, %struct.ib_qp_attr** %18, align 8
  store i32 %8, i32* %19, align 4
  %23 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %11, align 8
  %24 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %23, i32 0, i32 1
  %25 = load i32, i32* %15, align 4
  %26 = call i32 @rdma_port_get_link_layer(i32* %24, i32 %25)
  store i32 %26, i32* %20, align 4
  %27 = load i32, i32* %16, align 4
  %28 = load i32, i32* @IB_QP_PKEY_INDEX, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %9
  %32 = load i32, i32* %19, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %18, align 8
  %36 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  br label %42

38:                                               ; preds = %31
  %39 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %18, align 8
  %40 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  br label %42

42:                                               ; preds = %38, %34
  %43 = phi i32 [ %37, %34 ], [ %41, %38 ]
  %44 = call i8* @cpu_to_be16(i32 %43)
  %45 = load %struct.mlx5_qp_path*, %struct.mlx5_qp_path** %14, align 8
  %46 = getelementptr inbounds %struct.mlx5_qp_path, %struct.mlx5_qp_path* %45, i32 0, i32 14
  store i8* %44, i8** %46, align 8
  br label %47

47:                                               ; preds = %42, %9
  %48 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %13, align 8
  %49 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @IB_AH_GRH, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %91

54:                                               ; preds = %47
  %55 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %13, align 8
  %56 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %11, align 8
  %60 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %59, i32 0, i32 0
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = load i32, i32* %15, align 4
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp sge i64 %58, %69
  br i1 %70, label %71, label %90

71:                                               ; preds = %54
  %72 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %13, align 8
  %73 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %11, align 8
  %77 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %76, i32 0, i32 0
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = load i32, i32* %15, align 4
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %75, i64 %86)
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %10, align 4
  br label %308

90:                                               ; preds = %54
  br label %91

91:                                               ; preds = %90, %47
  %92 = load i32, i32* %20, align 4
  %93 = load i32, i32* @IB_LINK_LAYER_ETHERNET, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %154

95:                                               ; preds = %91
  %96 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %13, align 8
  %97 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @IB_AH_GRH, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %95
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %10, align 4
  br label %308

105:                                              ; preds = %95
  %106 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %11, align 8
  %107 = load i32, i32* %15, align 4
  %108 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %13, align 8
  %109 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @mlx5_get_roce_gid_type(%struct.mlx5_ib_dev* %106, i32 %107, i64 %111, i32* %22)
  store i32 %112, i32* %21, align 4
  %113 = load i32, i32* %21, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %105
  %116 = load i32, i32* %21, align 4
  store i32 %116, i32* %10, align 4
  br label %308

117:                                              ; preds = %105
  %118 = load %struct.mlx5_qp_path*, %struct.mlx5_qp_path** %14, align 8
  %119 = getelementptr inbounds %struct.mlx5_qp_path, %struct.mlx5_qp_path* %118, i32 0, i32 13
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %13, align 8
  %122 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @memcpy(i32 %120, i32 %123, i32 4)
  %125 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %11, align 8
  %126 = load i32, i32* %15, align 4
  %127 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %13, align 8
  %128 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %127, i32 0, i32 4
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @mlx5_get_roce_udp_sport(%struct.mlx5_ib_dev* %125, i32 %126, i64 %130)
  %132 = load %struct.mlx5_qp_path*, %struct.mlx5_qp_path** %14, align 8
  %133 = getelementptr inbounds %struct.mlx5_qp_path, %struct.mlx5_qp_path* %132, i32 0, i32 12
  store i32 %131, i32* %133, align 8
  %134 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %13, align 8
  %135 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = and i32 %136, 7
  %138 = shl i32 %137, 4
  %139 = load %struct.mlx5_qp_path*, %struct.mlx5_qp_path** %14, align 8
  %140 = getelementptr inbounds %struct.mlx5_qp_path, %struct.mlx5_qp_path* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  %141 = load i32, i32* %22, align 4
  %142 = load i32, i32* @IB_GID_TYPE_ROCE_UDP_ENCAP, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %153

144:                                              ; preds = %117
  %145 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %13, align 8
  %146 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %145, i32 0, i32 4
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = ashr i32 %148, 2
  %150 = and i32 %149, 63
  %151 = load %struct.mlx5_qp_path*, %struct.mlx5_qp_path** %14, align 8
  %152 = getelementptr inbounds %struct.mlx5_qp_path, %struct.mlx5_qp_path* %151, i32 0, i32 1
  store i32 %150, i32* %152, align 4
  br label %153

153:                                              ; preds = %144, %117
  br label %203

154:                                              ; preds = %91
  %155 = load i32, i32* %17, align 4
  %156 = load i32, i32* @MLX5_PATH_FLAG_FL, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  %159 = zext i1 %158 to i64
  %160 = select i1 %158, i32 128, i32 0
  %161 = load %struct.mlx5_qp_path*, %struct.mlx5_qp_path** %14, align 8
  %162 = getelementptr inbounds %struct.mlx5_qp_path, %struct.mlx5_qp_path* %161, i32 0, i32 2
  store i32 %160, i32* %162, align 8
  %163 = load i32, i32* %17, align 4
  %164 = load i32, i32* @MLX5_PATH_FLAG_FREE_AR, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  %167 = zext i1 %166 to i64
  %168 = select i1 %166, i32 64, i32 0
  %169 = load %struct.mlx5_qp_path*, %struct.mlx5_qp_path** %14, align 8
  %170 = getelementptr inbounds %struct.mlx5_qp_path, %struct.mlx5_qp_path* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = or i32 %171, %168
  store i32 %172, i32* %170, align 8
  %173 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %13, align 8
  %174 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 8
  %176 = call i8* @cpu_to_be16(i32 %175)
  %177 = load %struct.mlx5_qp_path*, %struct.mlx5_qp_path** %14, align 8
  %178 = getelementptr inbounds %struct.mlx5_qp_path, %struct.mlx5_qp_path* %177, i32 0, i32 11
  store i8* %176, i8** %178, align 8
  %179 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %13, align 8
  %180 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = and i32 %181, 127
  %183 = load %struct.mlx5_qp_path*, %struct.mlx5_qp_path** %14, align 8
  %184 = getelementptr inbounds %struct.mlx5_qp_path, %struct.mlx5_qp_path* %183, i32 0, i32 3
  store i32 %182, i32* %184, align 4
  %185 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %13, align 8
  %186 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @IB_AH_GRH, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %154
  %192 = load %struct.mlx5_qp_path*, %struct.mlx5_qp_path** %14, align 8
  %193 = getelementptr inbounds %struct.mlx5_qp_path, %struct.mlx5_qp_path* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = or i32 %194, 128
  store i32 %195, i32* %193, align 4
  br label %196

196:                                              ; preds = %191, %154
  %197 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %13, align 8
  %198 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = and i32 %199, 15
  %201 = load %struct.mlx5_qp_path*, %struct.mlx5_qp_path** %14, align 8
  %202 = getelementptr inbounds %struct.mlx5_qp_path, %struct.mlx5_qp_path* %201, i32 0, i32 0
  store i32 %200, i32* %202, align 8
  br label %203

203:                                              ; preds = %196, %153
  %204 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %13, align 8
  %205 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @IB_AH_GRH, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %245

210:                                              ; preds = %203
  %211 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %13, align 8
  %212 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %211, i32 0, i32 4
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load %struct.mlx5_qp_path*, %struct.mlx5_qp_path** %14, align 8
  %216 = getelementptr inbounds %struct.mlx5_qp_path, %struct.mlx5_qp_path* %215, i32 0, i32 4
  store i64 %214, i64* %216, align 8
  %217 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %13, align 8
  %218 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %217, i32 0, i32 4
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 4
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.mlx5_qp_path*, %struct.mlx5_qp_path** %14, align 8
  %222 = getelementptr inbounds %struct.mlx5_qp_path, %struct.mlx5_qp_path* %221, i32 0, i32 10
  store i32 %220, i32* %222, align 4
  %223 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %13, align 8
  %224 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %223, i32 0, i32 4
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 8
  %227 = shl i32 %226, 20
  %228 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %13, align 8
  %229 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %228, i32 0, i32 4
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = or i32 %227, %231
  %233 = call i32 @cpu_to_be32(i32 %232)
  %234 = load %struct.mlx5_qp_path*, %struct.mlx5_qp_path** %14, align 8
  %235 = getelementptr inbounds %struct.mlx5_qp_path, %struct.mlx5_qp_path* %234, i32 0, i32 9
  store i32 %233, i32* %235, align 8
  %236 = load %struct.mlx5_qp_path*, %struct.mlx5_qp_path** %14, align 8
  %237 = getelementptr inbounds %struct.mlx5_qp_path, %struct.mlx5_qp_path* %236, i32 0, i32 8
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %13, align 8
  %240 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %239, i32 0, i32 4
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 3
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @memcpy(i32 %238, i32 %243, i32 16)
  br label %245

245:                                              ; preds = %210, %203
  %246 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %11, align 8
  %247 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %13, align 8
  %248 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @ib_rate_to_mlx5(%struct.mlx5_ib_dev* %246, i32 %249)
  store i32 %250, i32* %21, align 4
  %251 = load i32, i32* %21, align 4
  %252 = icmp slt i32 %251, 0
  br i1 %252, label %253, label %255

253:                                              ; preds = %245
  %254 = load i32, i32* %21, align 4
  store i32 %254, i32* %10, align 4
  br label %308

255:                                              ; preds = %245
  %256 = load i32, i32* %21, align 4
  %257 = load %struct.mlx5_qp_path*, %struct.mlx5_qp_path** %14, align 8
  %258 = getelementptr inbounds %struct.mlx5_qp_path, %struct.mlx5_qp_path* %257, i32 0, i32 5
  store i32 %256, i32* %258, align 8
  %259 = load i32, i32* %15, align 4
  %260 = load %struct.mlx5_qp_path*, %struct.mlx5_qp_path** %14, align 8
  %261 = getelementptr inbounds %struct.mlx5_qp_path, %struct.mlx5_qp_path* %260, i32 0, i32 6
  store i32 %259, i32* %261, align 4
  %262 = load i32, i32* %16, align 4
  %263 = load i32, i32* @IB_QP_TIMEOUT, align 4
  %264 = and i32 %262, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %282

266:                                              ; preds = %255
  %267 = load i32, i32* %19, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %273

269:                                              ; preds = %266
  %270 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %18, align 8
  %271 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  br label %277

273:                                              ; preds = %266
  %274 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %18, align 8
  %275 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  br label %277

277:                                              ; preds = %273, %269
  %278 = phi i32 [ %272, %269 ], [ %276, %273 ]
  %279 = shl i32 %278, 3
  %280 = load %struct.mlx5_qp_path*, %struct.mlx5_qp_path** %14, align 8
  %281 = getelementptr inbounds %struct.mlx5_qp_path, %struct.mlx5_qp_path* %280, i32 0, i32 7
  store i32 %279, i32* %281, align 8
  br label %282

282:                                              ; preds = %277, %255
  %283 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %12, align 8
  %284 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %283, i32 0, i32 2
  %285 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = load i64, i64* @IB_QPT_RAW_PACKET, align 8
  %288 = icmp eq i64 %286, %287
  br i1 %288, label %289, label %307

289:                                              ; preds = %282
  %290 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %12, align 8
  %291 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %290, i32 0, i32 1
  %292 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %307

295:                                              ; preds = %289
  %296 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %11, align 8
  %297 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %296, i32 0, i32 0
  %298 = load %struct.TYPE_14__*, %struct.TYPE_14__** %297, align 8
  %299 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %12, align 8
  %300 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %300, i32 0, i32 0
  %302 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %13, align 8
  %303 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = and i32 %304, 15
  %306 = call i32 @modify_raw_packet_eth_prio(%struct.TYPE_14__* %298, i32* %301, i32 %305)
  store i32 %306, i32* %10, align 4
  br label %308

307:                                              ; preds = %289, %282
  store i32 0, i32* %10, align 4
  br label %308

308:                                              ; preds = %307, %295, %253, %115, %102, %71
  %309 = load i32, i32* %10, align 4
  ret i32 %309
}

declare dso_local i32 @rdma_port_get_link_layer(i32*, i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @pr_err(i8*, i64, i64) #1

declare dso_local i32 @mlx5_get_roce_gid_type(%struct.mlx5_ib_dev*, i32, i64, i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @mlx5_get_roce_udp_sport(%struct.mlx5_ib_dev*, i32, i64) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @ib_rate_to_mlx5(%struct.mlx5_ib_dev*, i32) #1

declare dso_local i32 @modify_raw_packet_eth_prio(%struct.TYPE_14__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
