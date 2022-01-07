; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_qp.c_build_mlx_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_qp.c_build_mlx_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_wqe_inline_seg = type { i32 }
%struct.mlx4_ib_sqp = type { i32, %struct.mlx4_wqe_inline_seg*, %struct.TYPE_39__, %struct.TYPE_37__, i32, i32 }
%struct.TYPE_39__ = type { i32, %struct.TYPE_34__, %struct.TYPE_33__, %struct.TYPE_31__, %struct.TYPE_30__, %struct.TYPE_29__, i32, %struct.TYPE_46__, %struct.TYPE_45__, %struct.TYPE_44__ }
%struct.TYPE_34__ = type { i32, i32 }
%struct.TYPE_33__ = type { i32, i32, i32, i8*, i32 }
%struct.TYPE_31__ = type { i32, i32, i8*, i8* }
%struct.TYPE_30__ = type { i8*, i8* }
%struct.TYPE_29__ = type { i8*, %struct.mlx4_wqe_inline_seg*, %union.ib_gid* }
%union.ib_gid = type { %struct.mlx4_wqe_inline_seg* }
%struct.TYPE_46__ = type { i64, i8*, i8* }
%struct.TYPE_45__ = type { i32, i32, %struct.mlx4_wqe_inline_seg, %struct.mlx4_wqe_inline_seg, i32, i8*, i64 }
%struct.TYPE_44__ = type { i32, i32, %struct.TYPE_43__, %union.ib_gid, i32 }
%struct.TYPE_43__ = type { %struct.mlx4_wqe_inline_seg* }
%struct.TYPE_37__ = type { i32, %struct.TYPE_35__ }
%struct.TYPE_35__ = type { i32, %struct.ib_device* }
%struct.ib_device = type { i32 }
%struct.ib_ud_wr = type { i32, i32, i32, %struct.TYPE_32__, i32 }
%struct.TYPE_32__ = type { i32, i32, i32, %struct.TYPE_47__, %struct.TYPE_36__* }
%struct.TYPE_47__ = type { i32 }
%struct.TYPE_36__ = type { i64 }
%struct.mlx4_wqe_mlx_seg = type { i32, i8*, i8* }
%struct.mlx4_wqe_ctrl_seg = type { %struct.mlx4_wqe_inline_seg, %struct.mlx4_wqe_inline_seg* }
%struct.mlx4_ib_ah = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { %struct.TYPE_27__, %struct.TYPE_26__ }
%struct.TYPE_27__ = type { i8*, %struct.mlx4_wqe_inline_seg*, i32, i32 }
%struct.TYPE_26__ = type { i32, i64, i32, i32, %struct.mlx4_wqe_inline_seg*, i32, i8* }
%struct.ib_gid_attr = type { i64, i64 }
%struct.in6_addr = type { i32 }
%struct.TYPE_38__ = type { %struct.TYPE_42__, i32 }
%struct.TYPE_42__ = type { %struct.TYPE_41__* }
%struct.TYPE_41__ = type { i32*, i32 }
%struct.TYPE_40__ = type { i32, i32 }

@IB_LINK_LAYER_ETHERNET = common dso_local global i64 0, align 8
@zgid = common dso_local global %struct.mlx4_wqe_inline_seg zeroinitializer, align 4
@ENOENT = common dso_local global i32 0, align 4
@IB_GID_TYPE_ROCE_UDP_ENCAP = common dso_local global i64 0, align 8
@IP_DF = common dso_local global i32 0, align 4
@ROCE_V2_UDP_DPORT = common dso_local global i32 0, align 4
@MLX4_ROCEV2_QP1_SPORT = common dso_local global i32 0, align 4
@MLX4_WQE_CTRL_CQ_UPDATE = common dso_local global i32 0, align 4
@MLX4_WQE_MLX_VL15 = common dso_local global i32 0, align 4
@IB_LID_PERMISSIVE = common dso_local global i8* null, align 8
@MLX4_WQE_MLX_SLR = common dso_local global i32 0, align 4
@IB_OPCODE_UD_SEND_ONLY = common dso_local global i32 0, align 4
@IB_OPCODE_UD_SEND_ONLY_WITH_IMMEDIATE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MLX4_IB_IBOE_ETHERTYPE = common dso_local global i32 0, align 4
@ETHERTYPE_IP = common dso_local global i32 0, align 4
@ETHERTYPE_IPV6 = common dso_local global i32 0, align 4
@MLX4_WQE_CTRL_FORCE_LOOPBACK = common dso_local global i32 0, align 4
@IB_SEND_SOLICITED = common dso_local global i32 0, align 4
@MLX4_INLINE_ALIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_ib_sqp*, %struct.ib_ud_wr*, i8*, i32*)* @build_mlx_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_mlx_header(%struct.mlx4_ib_sqp* %0, %struct.ib_ud_wr* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_ib_sqp*, align 8
  %7 = alloca %struct.ib_ud_wr*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ib_device*, align 8
  %11 = alloca %struct.mlx4_wqe_mlx_seg*, align 8
  %12 = alloca %struct.mlx4_wqe_ctrl_seg*, align 8
  %13 = alloca %struct.mlx4_wqe_inline_seg*, align 8
  %14 = alloca %struct.mlx4_ib_ah*, align 8
  %15 = alloca %union.ib_gid, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.ib_gid_attr, align 8
  %29 = alloca %struct.in6_addr, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store %struct.mlx4_ib_sqp* %0, %struct.mlx4_ib_sqp** %6, align 8
  store %struct.ib_ud_wr* %1, %struct.ib_ud_wr** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %32 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %33 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %34, i32 0, i32 1
  %36 = load %struct.ib_device*, %struct.ib_device** %35, align 8
  store %struct.ib_device* %36, %struct.ib_device** %10, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = bitcast i8* %37 to %struct.mlx4_wqe_mlx_seg*
  store %struct.mlx4_wqe_mlx_seg* %38, %struct.mlx4_wqe_mlx_seg** %11, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = bitcast i8* %39 to %struct.mlx4_wqe_ctrl_seg*
  store %struct.mlx4_wqe_ctrl_seg* %40, %struct.mlx4_wqe_ctrl_seg** %12, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr i8, i8* %41, i64 24
  %43 = bitcast i8* %42 to %struct.mlx4_wqe_inline_seg*
  store %struct.mlx4_wqe_inline_seg* %43, %struct.mlx4_wqe_inline_seg** %13, align 8
  %44 = load %struct.ib_ud_wr*, %struct.ib_ud_wr** %7, align 8
  %45 = getelementptr inbounds %struct.ib_ud_wr, %struct.ib_ud_wr* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = call %struct.mlx4_ib_ah* @to_mah(i32 %46)
  store %struct.mlx4_ib_ah* %47, %struct.mlx4_ib_ah** %14, align 8
  store i32 0, i32* %21, align 4
  store i32 65535, i32* %22, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %20, align 4
  br label %48

48:                                               ; preds = %69, %4
  %49 = load i32, i32* %20, align 4
  %50 = load %struct.ib_ud_wr*, %struct.ib_ud_wr** %7, align 8
  %51 = getelementptr inbounds %struct.ib_ud_wr, %struct.ib_ud_wr* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %49, %53
  br i1 %54, label %55, label %72

55:                                               ; preds = %48
  %56 = load %struct.ib_ud_wr*, %struct.ib_ud_wr** %7, align 8
  %57 = getelementptr inbounds %struct.ib_ud_wr, %struct.ib_ud_wr* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %57, i32 0, i32 4
  %59 = load %struct.TYPE_36__*, %struct.TYPE_36__** %58, align 8
  %60 = load i32, i32* %20, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* %17, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %66, %64
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %17, align 4
  br label %69

69:                                               ; preds = %55
  %70 = load i32, i32* %20, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %20, align 4
  br label %48

72:                                               ; preds = %48
  %73 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %74 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %75, i32 0, i32 1
  %77 = load %struct.ib_device*, %struct.ib_device** %76, align 8
  %78 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %79 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @rdma_port_get_link_layer(%struct.ib_device* %77, i32 %81)
  %83 = load i64, i64* @IB_LINK_LAYER_ETHERNET, align 8
  %84 = icmp eq i64 %82, %83
  %85 = zext i1 %84 to i32
  store i32 %85, i32* %23, align 4
  %86 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %14, align 8
  %87 = call i32 @mlx4_ib_ah_grh_present(%struct.mlx4_ib_ah* %86)
  store i32 %87, i32* %25, align 4
  %88 = load i32, i32* %23, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %195

90:                                               ; preds = %72
  %91 = load %struct.ib_device*, %struct.ib_device** %10, align 8
  %92 = call %struct.TYPE_38__* @to_mdev(%struct.ib_device* %91)
  %93 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @mlx4_is_mfunc(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %123

97:                                               ; preds = %90
  %98 = load %struct.ib_device*, %struct.ib_device** %10, align 8
  %99 = call %struct.TYPE_38__* @to_mdev(%struct.ib_device* %98)
  %100 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %14, align 8
  %103 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @be32_to_cpu(i32 %106)
  %108 = ashr i32 %107, 24
  %109 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %14, align 8
  %110 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = bitcast %union.ib_gid* %15 to %struct.mlx4_wqe_inline_seg**
  %115 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %114, align 8
  %116 = getelementptr inbounds %struct.mlx4_wqe_inline_seg, %struct.mlx4_wqe_inline_seg* %115, i64 0
  %117 = call i32 @mlx4_get_roce_gid_from_slave(i32 %101, i32 %108, i64 %113, %struct.mlx4_wqe_inline_seg* %116)
  store i32 %117, i32* %21, align 4
  %118 = load i32, i32* %21, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %97
  %121 = load i32, i32* %21, align 4
  store i32 %121, i32* %5, align 4
  br label %929

122:                                              ; preds = %97
  br label %178

123:                                              ; preds = %90
  %124 = load %struct.ib_device*, %struct.ib_device** %10, align 8
  %125 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %14, align 8
  %126 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @be32_to_cpu(i32 %129)
  %131 = ashr i32 %130, 24
  %132 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %14, align 8
  %133 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @ib_get_cached_gid(%struct.ib_device* %124, i32 %131, i64 %136, %union.ib_gid* %15, %struct.ib_gid_attr* %28)
  store i32 %137, i32* %21, align 4
  %138 = load i32, i32* %21, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %155, label %140

140:                                              ; preds = %123
  %141 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %28, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %28, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @dev_put(i64 %146)
  br label %148

148:                                              ; preds = %144, %140
  %149 = call i32 @memcmp(%union.ib_gid* %15, %struct.mlx4_wqe_inline_seg* @zgid, i32 8)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %154, label %151

151:                                              ; preds = %148
  %152 = load i32, i32* @ENOENT, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %21, align 4
  br label %154

154:                                              ; preds = %151, %148
  br label %155

155:                                              ; preds = %154, %123
  %156 = load i32, i32* %21, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %175, label %158

158:                                              ; preds = %155
  %159 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %28, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @IB_GID_TYPE_ROCE_UDP_ENCAP, align 8
  %162 = icmp eq i64 %160, %161
  %163 = zext i1 %162 to i32
  store i32 %163, i32* %26, align 4
  %164 = load i32, i32* %26, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %174

166:                                              ; preds = %158
  %167 = bitcast %union.ib_gid* %15 to %struct.in6_addr*
  %168 = bitcast %struct.in6_addr* %167 to %struct.mlx4_wqe_inline_seg*
  %169 = call i64 @ipv6_addr_v4mapped(%struct.mlx4_wqe_inline_seg* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %166
  store i32 4, i32* %27, align 4
  br label %173

172:                                              ; preds = %166
  store i32 6, i32* %27, align 4
  br label %173

173:                                              ; preds = %172, %171
  store i32 0, i32* %25, align 4
  br label %174

174:                                              ; preds = %173, %158
  br label %177

175:                                              ; preds = %155
  %176 = load i32, i32* %21, align 4
  store i32 %176, i32* %5, align 4
  br label %929

177:                                              ; preds = %174
  br label %178

178:                                              ; preds = %177, %122
  %179 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %14, align 8
  %180 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %181, i32 0, i32 0
  %183 = load i8*, i8** %182, align 8
  %184 = call i8* @cpu_to_be16(i32 65535)
  %185 = icmp ne i8* %183, %184
  br i1 %185, label %186, label %194

186:                                              ; preds = %178
  %187 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %14, align 8
  %188 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %189, i32 0, i32 0
  %191 = load i8*, i8** %190, align 8
  %192 = call i32 @be16_to_cpu(i8* %191)
  %193 = and i32 %192, 4095
  store i32 %193, i32* %22, align 4
  store i32 1, i32* %24, align 4
  br label %194

194:                                              ; preds = %186, %178
  br label %195

195:                                              ; preds = %194, %72
  %196 = load i32, i32* %17, align 4
  %197 = load i32, i32* %23, align 4
  %198 = icmp ne i32 %197, 0
  %199 = xor i1 %198, true
  %200 = zext i1 %199 to i32
  %201 = load i32, i32* %23, align 4
  %202 = load i32, i32* %24, align 4
  %203 = load i32, i32* %25, align 4
  %204 = load i32, i32* %27, align 4
  %205 = load i32, i32* %26, align 4
  %206 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %207 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %206, i32 0, i32 2
  %208 = call i32 @ib_ud_header_init(i32 %196, i32 %200, i32 %201, i32 %202, i32 %203, i32 %204, i32 %205, i32 0, %struct.TYPE_39__* %207)
  store i32 %208, i32* %21, align 4
  %209 = load i32, i32* %21, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %195
  %212 = load i32, i32* %21, align 4
  store i32 %212, i32* %5, align 4
  br label %929

213:                                              ; preds = %195
  %214 = load i32, i32* %23, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %248, label %216

216:                                              ; preds = %213
  %217 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %14, align 8
  %218 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @be32_to_cpu(i32 %221)
  %223 = ashr i32 %222, 28
  %224 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %225 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %224, i32 0, i32 2
  %226 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %225, i32 0, i32 3
  %227 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %226, i32 0, i32 0
  store i32 %223, i32* %227, align 8
  %228 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %14, align 8
  %229 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %230, i32 0, i32 6
  %232 = load i8*, i8** %231, align 8
  %233 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %234 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %233, i32 0, i32 2
  %235 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %234, i32 0, i32 3
  %236 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %235, i32 0, i32 3
  store i8* %232, i8** %236, align 8
  %237 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %14, align 8
  %238 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %239, i32 0, i32 3
  %241 = load i32, i32* %240, align 4
  %242 = and i32 %241, 127
  %243 = call i8* @cpu_to_be16(i32 %242)
  %244 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %245 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %244, i32 0, i32 2
  %246 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %245, i32 0, i32 3
  %247 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %246, i32 0, i32 2
  store i8* %243, i8** %247, align 8
  br label %248

248:                                              ; preds = %216, %213
  %249 = load i32, i32* %25, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %254, label %251

251:                                              ; preds = %248
  %252 = load i32, i32* %27, align 4
  %253 = icmp eq i32 %252, 6
  br i1 %253, label %254, label %388

254:                                              ; preds = %251, %248
  %255 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %14, align 8
  %256 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = call i32 @be32_to_cpu(i32 %259)
  %261 = ashr i32 %260, 20
  %262 = and i32 %261, 255
  %263 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %264 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %263, i32 0, i32 2
  %265 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %264, i32 0, i32 9
  %266 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %265, i32 0, i32 0
  store i32 %262, i32* %266, align 8
  %267 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %14, align 8
  %268 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 8
  %272 = call i32 @cpu_to_be32(i32 1048575)
  %273 = and i32 %271, %272
  %274 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %275 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %274, i32 0, i32 2
  %276 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %275, i32 0, i32 9
  %277 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %276, i32 0, i32 1
  store i32 %273, i32* %277, align 4
  %278 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %14, align 8
  %279 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %279, i32 0, i32 1
  %281 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %280, i32 0, i32 5
  %282 = load i32, i32* %281, align 8
  %283 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %284 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %283, i32 0, i32 2
  %285 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %284, i32 0, i32 9
  %286 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %285, i32 0, i32 4
  store i32 %282, i32* %286, align 8
  %287 = load i32, i32* %23, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %299

289:                                              ; preds = %254
  %290 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %291 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %290, i32 0, i32 2
  %292 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %291, i32 0, i32 9
  %293 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %292, i32 0, i32 3
  %294 = bitcast %union.ib_gid* %293 to %struct.mlx4_wqe_inline_seg**
  %295 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %294, align 8
  %296 = bitcast %union.ib_gid* %15 to %struct.mlx4_wqe_inline_seg**
  %297 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %296, align 8
  %298 = call i32 @memcpy(%struct.mlx4_wqe_inline_seg* %295, %struct.mlx4_wqe_inline_seg* %297, i32 16)
  br label %375

299:                                              ; preds = %254
  %300 = load %struct.ib_device*, %struct.ib_device** %10, align 8
  %301 = call %struct.TYPE_38__* @to_mdev(%struct.ib_device* %300)
  %302 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 8
  %304 = call i64 @mlx4_is_mfunc(i32 %303)
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %355

306:                                              ; preds = %299
  %307 = load %struct.ib_device*, %struct.ib_device** %10, align 8
  %308 = call %struct.TYPE_38__* @to_mdev(%struct.ib_device* %307)
  %309 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %309, i32 0, i32 0
  %311 = load %struct.TYPE_41__*, %struct.TYPE_41__** %310, align 8
  %312 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %313 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %312, i32 0, i32 3
  %314 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = sub nsw i32 %315, 1
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %311, i64 %317
  %319 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %318, i32 0, i32 1
  %320 = call i32 @atomic64_read(i32* %319)
  %321 = call i32 @cpu_to_be64(i32 %320)
  %322 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %323 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %322, i32 0, i32 2
  %324 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %323, i32 0, i32 9
  %325 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %324, i32 0, i32 3
  %326 = bitcast %union.ib_gid* %325 to %struct.TYPE_40__*
  %327 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %326, i32 0, i32 1
  store i32 %321, i32* %327, align 4
  %328 = load %struct.ib_device*, %struct.ib_device** %10, align 8
  %329 = call %struct.TYPE_38__* @to_mdev(%struct.ib_device* %328)
  %330 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %330, i32 0, i32 0
  %332 = load %struct.TYPE_41__*, %struct.TYPE_41__** %331, align 8
  %333 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %334 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %333, i32 0, i32 3
  %335 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = sub nsw i32 %336, 1
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %332, i64 %338
  %340 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %339, i32 0, i32 0
  %341 = load i32*, i32** %340, align 8
  %342 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %14, align 8
  %343 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %342, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %343, i32 0, i32 1
  %345 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %344, i32 0, i32 1
  %346 = load i64, i64* %345, align 8
  %347 = getelementptr inbounds i32, i32* %341, i64 %346
  %348 = load i32, i32* %347, align 4
  %349 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %350 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %349, i32 0, i32 2
  %351 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %350, i32 0, i32 9
  %352 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %351, i32 0, i32 3
  %353 = bitcast %union.ib_gid* %352 to %struct.TYPE_40__*
  %354 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %353, i32 0, i32 0
  store i32 %348, i32* %354, align 8
  br label %374

355:                                              ; preds = %299
  %356 = load %struct.ib_device*, %struct.ib_device** %10, align 8
  %357 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %14, align 8
  %358 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %358, i32 0, i32 1
  %360 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 8
  %362 = call i32 @be32_to_cpu(i32 %361)
  %363 = ashr i32 %362, 24
  %364 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %14, align 8
  %365 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %365, i32 0, i32 1
  %367 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %366, i32 0, i32 1
  %368 = load i64, i64* %367, align 8
  %369 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %370 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %369, i32 0, i32 2
  %371 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %370, i32 0, i32 9
  %372 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %371, i32 0, i32 3
  %373 = call i32 @ib_get_cached_gid(%struct.ib_device* %356, i32 %363, i64 %368, %union.ib_gid* %372, %struct.ib_gid_attr* null)
  br label %374

374:                                              ; preds = %355, %306
  br label %375

375:                                              ; preds = %374, %289
  %376 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %377 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %376, i32 0, i32 2
  %378 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %377, i32 0, i32 9
  %379 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %378, i32 0, i32 2
  %380 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %379, i32 0, i32 0
  %381 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %380, align 8
  %382 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %14, align 8
  %383 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %382, i32 0, i32 0
  %384 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %383, i32 0, i32 1
  %385 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %384, i32 0, i32 4
  %386 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %385, align 8
  %387 = call i32 @memcpy(%struct.mlx4_wqe_inline_seg* %381, %struct.mlx4_wqe_inline_seg* %386, i32 16)
  br label %388

388:                                              ; preds = %375, %251
  %389 = load i32, i32* %27, align 4
  %390 = icmp eq i32 %389, 4
  br i1 %390, label %391, label %449

391:                                              ; preds = %388
  %392 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %14, align 8
  %393 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %392, i32 0, i32 0
  %394 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %393, i32 0, i32 1
  %395 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %394, i32 0, i32 2
  %396 = load i32, i32* %395, align 8
  %397 = call i32 @be32_to_cpu(i32 %396)
  %398 = ashr i32 %397, 20
  %399 = and i32 %398, 255
  %400 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %401 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %400, i32 0, i32 2
  %402 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %401, i32 0, i32 8
  %403 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %402, i32 0, i32 0
  store i32 %399, i32* %403, align 8
  %404 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %405 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %404, i32 0, i32 2
  %406 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %405, i32 0, i32 8
  %407 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %406, i32 0, i32 6
  store i64 0, i64* %407, align 8
  %408 = load i32, i32* @IP_DF, align 4
  %409 = call i8* @htons(i32 %408)
  %410 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %411 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %410, i32 0, i32 2
  %412 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %411, i32 0, i32 8
  %413 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %412, i32 0, i32 5
  store i8* %409, i8** %413, align 8
  %414 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %14, align 8
  %415 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %414, i32 0, i32 0
  %416 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %415, i32 0, i32 0
  %417 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %416, i32 0, i32 3
  %418 = load i32, i32* %417, align 4
  %419 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %420 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %419, i32 0, i32 2
  %421 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %420, i32 0, i32 8
  %422 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %421, i32 0, i32 4
  store i32 %418, i32* %422, align 8
  %423 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %424 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %423, i32 0, i32 2
  %425 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %424, i32 0, i32 8
  %426 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %425, i32 0, i32 3
  %427 = bitcast %union.ib_gid* %15 to %struct.mlx4_wqe_inline_seg**
  %428 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %427, align 8
  %429 = getelementptr inbounds %struct.mlx4_wqe_inline_seg, %struct.mlx4_wqe_inline_seg* %428, i64 12
  %430 = call i32 @memcpy(%struct.mlx4_wqe_inline_seg* %426, %struct.mlx4_wqe_inline_seg* %429, i32 4)
  %431 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %432 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %431, i32 0, i32 2
  %433 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %432, i32 0, i32 8
  %434 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %433, i32 0, i32 2
  %435 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %14, align 8
  %436 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %435, i32 0, i32 0
  %437 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %436, i32 0, i32 1
  %438 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %437, i32 0, i32 4
  %439 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %438, align 8
  %440 = getelementptr inbounds %struct.mlx4_wqe_inline_seg, %struct.mlx4_wqe_inline_seg* %439, i64 12
  %441 = call i32 @memcpy(%struct.mlx4_wqe_inline_seg* %434, %struct.mlx4_wqe_inline_seg* %440, i32 4)
  %442 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %443 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %442, i32 0, i32 2
  %444 = call i32 @ib_ud_ip4_csum(%struct.TYPE_39__* %443)
  %445 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %446 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %445, i32 0, i32 2
  %447 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %446, i32 0, i32 8
  %448 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %447, i32 0, i32 1
  store i32 %444, i32* %448, align 4
  br label %449

449:                                              ; preds = %391, %388
  %450 = load i32, i32* %26, align 4
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %452, label %469

452:                                              ; preds = %449
  %453 = load i32, i32* @ROCE_V2_UDP_DPORT, align 4
  %454 = call i8* @htons(i32 %453)
  %455 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %456 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %455, i32 0, i32 2
  %457 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %456, i32 0, i32 7
  %458 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %457, i32 0, i32 2
  store i8* %454, i8** %458, align 8
  %459 = load i32, i32* @MLX4_ROCEV2_QP1_SPORT, align 4
  %460 = call i8* @htons(i32 %459)
  %461 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %462 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %461, i32 0, i32 2
  %463 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %462, i32 0, i32 7
  %464 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %463, i32 0, i32 1
  store i8* %460, i8** %464, align 8
  %465 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %466 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %465, i32 0, i32 2
  %467 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %466, i32 0, i32 7
  %468 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %467, i32 0, i32 0
  store i64 0, i64* %468, align 8
  br label %469

469:                                              ; preds = %452, %449
  %470 = load i32, i32* @MLX4_WQE_CTRL_CQ_UPDATE, align 4
  %471 = call i32 @cpu_to_be32(i32 %470)
  %472 = load %struct.mlx4_wqe_mlx_seg*, %struct.mlx4_wqe_mlx_seg** %11, align 8
  %473 = getelementptr inbounds %struct.mlx4_wqe_mlx_seg, %struct.mlx4_wqe_mlx_seg* %472, i32 0, i32 0
  %474 = load i32, i32* %473, align 8
  %475 = and i32 %474, %471
  store i32 %475, i32* %473, align 8
  %476 = load i32, i32* %23, align 4
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %537, label %478

478:                                              ; preds = %469
  %479 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %480 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %479, i32 0, i32 3
  %481 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %480, i32 0, i32 1
  %482 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %481, i32 0, i32 0
  %483 = load i32, i32* %482, align 8
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %487, label %485

485:                                              ; preds = %478
  %486 = load i32, i32* @MLX4_WQE_MLX_VL15, align 4
  br label %488

487:                                              ; preds = %478
  br label %488

488:                                              ; preds = %487, %485
  %489 = phi i32 [ %486, %485 ], [ 0, %487 ]
  %490 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %491 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %490, i32 0, i32 2
  %492 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %491, i32 0, i32 3
  %493 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %492, i32 0, i32 3
  %494 = load i8*, i8** %493, align 8
  %495 = load i8*, i8** @IB_LID_PERMISSIVE, align 8
  %496 = icmp eq i8* %494, %495
  br i1 %496, label %497, label %499

497:                                              ; preds = %488
  %498 = load i32, i32* @MLX4_WQE_MLX_SLR, align 4
  br label %500

499:                                              ; preds = %488
  br label %500

500:                                              ; preds = %499, %497
  %501 = phi i32 [ %498, %497 ], [ 0, %499 ]
  %502 = or i32 %489, %501
  %503 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %504 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %503, i32 0, i32 2
  %505 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %504, i32 0, i32 3
  %506 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %505, i32 0, i32 0
  %507 = load i32, i32* %506, align 8
  %508 = shl i32 %507, 8
  %509 = or i32 %502, %508
  %510 = call i32 @cpu_to_be32(i32 %509)
  %511 = load %struct.mlx4_wqe_mlx_seg*, %struct.mlx4_wqe_mlx_seg** %11, align 8
  %512 = getelementptr inbounds %struct.mlx4_wqe_mlx_seg, %struct.mlx4_wqe_mlx_seg* %511, i32 0, i32 0
  %513 = load i32, i32* %512, align 8
  %514 = or i32 %513, %510
  store i32 %514, i32* %512, align 8
  %515 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %14, align 8
  %516 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %515, i32 0, i32 0
  %517 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %516, i32 0, i32 1
  %518 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %517, i32 0, i32 0
  %519 = load i32, i32* %518, align 8
  %520 = call i32 @cpu_to_be32(i32 -2147483648)
  %521 = and i32 %519, %520
  %522 = icmp ne i32 %521, 0
  br i1 %522, label %523, label %529

523:                                              ; preds = %500
  %524 = call i32 @cpu_to_be32(i32 1)
  %525 = load %struct.mlx4_wqe_mlx_seg*, %struct.mlx4_wqe_mlx_seg** %11, align 8
  %526 = getelementptr inbounds %struct.mlx4_wqe_mlx_seg, %struct.mlx4_wqe_mlx_seg* %525, i32 0, i32 0
  %527 = load i32, i32* %526, align 8
  %528 = or i32 %527, %524
  store i32 %528, i32* %526, align 8
  br label %529

529:                                              ; preds = %523, %500
  %530 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %531 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %530, i32 0, i32 2
  %532 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %531, i32 0, i32 3
  %533 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %532, i32 0, i32 3
  %534 = load i8*, i8** %533, align 8
  %535 = load %struct.mlx4_wqe_mlx_seg*, %struct.mlx4_wqe_mlx_seg** %11, align 8
  %536 = getelementptr inbounds %struct.mlx4_wqe_mlx_seg, %struct.mlx4_wqe_mlx_seg* %535, i32 0, i32 2
  store i8* %534, i8** %536, align 8
  br label %537

537:                                              ; preds = %529, %469
  %538 = load %struct.ib_ud_wr*, %struct.ib_ud_wr** %7, align 8
  %539 = getelementptr inbounds %struct.ib_ud_wr, %struct.ib_ud_wr* %538, i32 0, i32 3
  %540 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %539, i32 0, i32 1
  %541 = load i32, i32* %540, align 4
  switch i32 %541, label %568 [
    i32 129, label %542
    i32 128, label %551
  ]

542:                                              ; preds = %537
  %543 = load i32, i32* @IB_OPCODE_UD_SEND_ONLY, align 4
  %544 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %545 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %544, i32 0, i32 2
  %546 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %545, i32 0, i32 2
  %547 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %546, i32 0, i32 4
  store i32 %543, i32* %547, align 8
  %548 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %549 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %548, i32 0, i32 2
  %550 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %549, i32 0, i32 0
  store i32 0, i32* %550, align 8
  br label %571

551:                                              ; preds = %537
  %552 = load i32, i32* @IB_OPCODE_UD_SEND_ONLY_WITH_IMMEDIATE, align 4
  %553 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %554 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %553, i32 0, i32 2
  %555 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %554, i32 0, i32 2
  %556 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %555, i32 0, i32 4
  store i32 %552, i32* %556, align 8
  %557 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %558 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %557, i32 0, i32 2
  %559 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %558, i32 0, i32 0
  store i32 1, i32* %559, align 8
  %560 = load %struct.ib_ud_wr*, %struct.ib_ud_wr** %7, align 8
  %561 = getelementptr inbounds %struct.ib_ud_wr, %struct.ib_ud_wr* %560, i32 0, i32 3
  %562 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %561, i32 0, i32 3
  %563 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %562, i32 0, i32 0
  %564 = load i32, i32* %563, align 4
  %565 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %566 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %565, i32 0, i32 2
  %567 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %566, i32 0, i32 6
  store i32 %564, i32* %567, align 8
  br label %571

568:                                              ; preds = %537
  %569 = load i32, i32* @EINVAL, align 4
  %570 = sub nsw i32 0, %569
  store i32 %570, i32* %5, align 4
  br label %929

571:                                              ; preds = %551, %542
  %572 = load i32, i32* %23, align 4
  %573 = icmp ne i32 %572, 0
  br i1 %573, label %574, label %692

574:                                              ; preds = %571
  %575 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %14, align 8
  %576 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %575, i32 0, i32 0
  %577 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %576, i32 0, i32 1
  %578 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %577, i32 0, i32 2
  %579 = load i32, i32* %578, align 8
  %580 = call i32 @be32_to_cpu(i32 %579)
  %581 = ashr i32 %580, 29
  %582 = shl i32 %581, 13
  store i32 %582, i32* %31, align 4
  %583 = load i32, i32* %26, align 4
  %584 = icmp ne i32 %583, 0
  br i1 %584, label %587, label %585

585:                                              ; preds = %574
  %586 = load i32, i32* @MLX4_IB_IBOE_ETHERTYPE, align 4
  br label %596

587:                                              ; preds = %574
  %588 = load i32, i32* %27, align 4
  %589 = icmp eq i32 %588, 4
  br i1 %589, label %590, label %592

590:                                              ; preds = %587
  %591 = load i32, i32* @ETHERTYPE_IP, align 4
  br label %594

592:                                              ; preds = %587
  %593 = load i32, i32* @ETHERTYPE_IPV6, align 4
  br label %594

594:                                              ; preds = %592, %590
  %595 = phi i32 [ %591, %590 ], [ %593, %592 ]
  br label %596

596:                                              ; preds = %594, %585
  %597 = phi i32 [ %586, %585 ], [ %595, %594 ]
  store i32 %597, i32* %30, align 4
  %598 = load i32, i32* %31, align 4
  %599 = call i8* @cpu_to_be16(i32 %598)
  %600 = load %struct.mlx4_wqe_mlx_seg*, %struct.mlx4_wqe_mlx_seg** %11, align 8
  %601 = getelementptr inbounds %struct.mlx4_wqe_mlx_seg, %struct.mlx4_wqe_mlx_seg* %600, i32 0, i32 1
  store i8* %599, i8** %601, align 8
  %602 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %603 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %602, i32 0, i32 2
  %604 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %603, i32 0, i32 5
  %605 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %604, i32 0, i32 2
  %606 = load %union.ib_gid*, %union.ib_gid** %605, align 8
  %607 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %14, align 8
  %608 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %607, i32 0, i32 0
  %609 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %608, i32 0, i32 0
  %610 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %609, i32 0, i32 2
  %611 = load i32, i32* %610, align 8
  %612 = call i32 @ether_addr_copy(%union.ib_gid* %606, i32 %611)
  %613 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %614 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %613, i32 0, i32 2
  %615 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %614, i32 0, i32 5
  %616 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %615, i32 0, i32 1
  %617 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %616, align 8
  %618 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %14, align 8
  %619 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %618, i32 0, i32 0
  %620 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %619, i32 0, i32 0
  %621 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %620, i32 0, i32 1
  %622 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %621, align 8
  %623 = call i32 @memcpy(%struct.mlx4_wqe_inline_seg* %617, %struct.mlx4_wqe_inline_seg* %622, i32 6)
  %624 = load %struct.mlx4_wqe_ctrl_seg*, %struct.mlx4_wqe_ctrl_seg** %12, align 8
  %625 = getelementptr inbounds %struct.mlx4_wqe_ctrl_seg, %struct.mlx4_wqe_ctrl_seg* %624, i32 0, i32 1
  %626 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %625, align 8
  %627 = getelementptr inbounds %struct.mlx4_wqe_inline_seg, %struct.mlx4_wqe_inline_seg* %626, i64 0
  %628 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %14, align 8
  %629 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %628, i32 0, i32 0
  %630 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %629, i32 0, i32 0
  %631 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %630, i32 0, i32 1
  %632 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %631, align 8
  %633 = call i32 @memcpy(%struct.mlx4_wqe_inline_seg* %627, %struct.mlx4_wqe_inline_seg* %632, i32 2)
  %634 = load %struct.mlx4_wqe_ctrl_seg*, %struct.mlx4_wqe_ctrl_seg** %12, align 8
  %635 = getelementptr inbounds %struct.mlx4_wqe_ctrl_seg, %struct.mlx4_wqe_ctrl_seg* %634, i32 0, i32 0
  %636 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %14, align 8
  %637 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %636, i32 0, i32 0
  %638 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %637, i32 0, i32 0
  %639 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %638, i32 0, i32 1
  %640 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %639, align 8
  %641 = getelementptr inbounds %struct.mlx4_wqe_inline_seg, %struct.mlx4_wqe_inline_seg* %640, i64 2
  %642 = call i32 @memcpy(%struct.mlx4_wqe_inline_seg* %635, %struct.mlx4_wqe_inline_seg* %641, i32 4)
  %643 = bitcast %struct.in6_addr* %29 to %struct.mlx4_wqe_inline_seg*
  %644 = bitcast %union.ib_gid* %15 to %struct.mlx4_wqe_inline_seg**
  %645 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %644, align 8
  %646 = call i32 @memcpy(%struct.mlx4_wqe_inline_seg* %643, %struct.mlx4_wqe_inline_seg* %645, i32 4)
  %647 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %648 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %647, i32 0, i32 2
  %649 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %648, i32 0, i32 5
  %650 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %649, i32 0, i32 2
  %651 = load %union.ib_gid*, %union.ib_gid** %650, align 8
  %652 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %653 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %652, i32 0, i32 2
  %654 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %653, i32 0, i32 5
  %655 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %654, i32 0, i32 1
  %656 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %655, align 8
  %657 = call i32 @memcmp(%union.ib_gid* %651, %struct.mlx4_wqe_inline_seg* %656, i32 6)
  %658 = icmp ne i32 %657, 0
  br i1 %658, label %666, label %659

659:                                              ; preds = %596
  %660 = load i32, i32* @MLX4_WQE_CTRL_FORCE_LOOPBACK, align 4
  %661 = call i32 @cpu_to_be32(i32 %660)
  %662 = load %struct.mlx4_wqe_mlx_seg*, %struct.mlx4_wqe_mlx_seg** %11, align 8
  %663 = getelementptr inbounds %struct.mlx4_wqe_mlx_seg, %struct.mlx4_wqe_mlx_seg* %662, i32 0, i32 0
  %664 = load i32, i32* %663, align 8
  %665 = or i32 %664, %661
  store i32 %665, i32* %663, align 8
  br label %666

666:                                              ; preds = %659, %596
  %667 = load i32, i32* %24, align 4
  %668 = icmp ne i32 %667, 0
  br i1 %668, label %676, label %669

669:                                              ; preds = %666
  %670 = load i32, i32* %30, align 4
  %671 = call i8* @cpu_to_be16(i32 %670)
  %672 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %673 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %672, i32 0, i32 2
  %674 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %673, i32 0, i32 5
  %675 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %674, i32 0, i32 0
  store i8* %671, i8** %675, align 8
  br label %691

676:                                              ; preds = %666
  %677 = load i32, i32* %30, align 4
  %678 = call i8* @cpu_to_be16(i32 %677)
  %679 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %680 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %679, i32 0, i32 2
  %681 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %680, i32 0, i32 4
  %682 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %681, i32 0, i32 1
  store i8* %678, i8** %682, align 8
  %683 = load i32, i32* %22, align 4
  %684 = load i32, i32* %31, align 4
  %685 = or i32 %683, %684
  %686 = call i8* @cpu_to_be16(i32 %685)
  %687 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %688 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %687, i32 0, i32 2
  %689 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %688, i32 0, i32 4
  %690 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %689, i32 0, i32 0
  store i8* %686, i8** %690, align 8
  br label %691

691:                                              ; preds = %676, %669
  br label %750

692:                                              ; preds = %571
  %693 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %694 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %693, i32 0, i32 3
  %695 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %694, i32 0, i32 1
  %696 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %695, i32 0, i32 0
  %697 = load i32, i32* %696, align 8
  %698 = icmp ne i32 %697, 0
  br i1 %698, label %700, label %699

699:                                              ; preds = %692
  br label %713

700:                                              ; preds = %692
  %701 = load %struct.ib_device*, %struct.ib_device** %10, align 8
  %702 = call %struct.TYPE_38__* @to_mdev(%struct.ib_device* %701)
  %703 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %704 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %703, i32 0, i32 2
  %705 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %704, i32 0, i32 3
  %706 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %705, i32 0, i32 0
  %707 = load i32, i32* %706, align 8
  %708 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %709 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %708, i32 0, i32 3
  %710 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %709, i32 0, i32 0
  %711 = load i32, i32* %710, align 8
  %712 = call i32 @sl_to_vl(%struct.TYPE_38__* %702, i32 %707, i32 %711)
  br label %713

713:                                              ; preds = %700, %699
  %714 = phi i32 [ 15, %699 ], [ %712, %700 ]
  %715 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %716 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %715, i32 0, i32 2
  %717 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %716, i32 0, i32 3
  %718 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %717, i32 0, i32 1
  store i32 %714, i32* %718, align 4
  %719 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %720 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %719, i32 0, i32 3
  %721 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %720, i32 0, i32 1
  %722 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %721, i32 0, i32 0
  %723 = load i32, i32* %722, align 8
  %724 = icmp ne i32 %723, 0
  br i1 %724, label %725, label %735

725:                                              ; preds = %713
  %726 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %727 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %726, i32 0, i32 2
  %728 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %727, i32 0, i32 3
  %729 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %728, i32 0, i32 1
  %730 = load i32, i32* %729, align 4
  %731 = icmp eq i32 %730, 15
  br i1 %731, label %732, label %735

732:                                              ; preds = %725
  %733 = load i32, i32* @EINVAL, align 4
  %734 = sub nsw i32 0, %733
  store i32 %734, i32* %5, align 4
  br label %929

735:                                              ; preds = %725, %713
  %736 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %737 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %736, i32 0, i32 2
  %738 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %737, i32 0, i32 3
  %739 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %738, i32 0, i32 3
  %740 = load i8*, i8** %739, align 8
  %741 = load i8*, i8** @IB_LID_PERMISSIVE, align 8
  %742 = icmp eq i8* %740, %741
  br i1 %742, label %743, label %749

743:                                              ; preds = %735
  %744 = load i8*, i8** @IB_LID_PERMISSIVE, align 8
  %745 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %746 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %745, i32 0, i32 2
  %747 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %746, i32 0, i32 3
  %748 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %747, i32 0, i32 2
  store i8* %744, i8** %748, align 8
  br label %749

749:                                              ; preds = %743, %735
  br label %750

750:                                              ; preds = %749, %691
  %751 = load %struct.ib_ud_wr*, %struct.ib_ud_wr** %7, align 8
  %752 = getelementptr inbounds %struct.ib_ud_wr, %struct.ib_ud_wr* %751, i32 0, i32 3
  %753 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %752, i32 0, i32 2
  %754 = load i32, i32* %753, align 8
  %755 = load i32, i32* @IB_SEND_SOLICITED, align 4
  %756 = and i32 %754, %755
  %757 = icmp ne i32 %756, 0
  %758 = xor i1 %757, true
  %759 = xor i1 %758, true
  %760 = zext i1 %759 to i32
  %761 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %762 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %761, i32 0, i32 2
  %763 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %762, i32 0, i32 2
  %764 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %763, i32 0, i32 0
  store i32 %760, i32* %764, align 8
  %765 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %766 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %765, i32 0, i32 3
  %767 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %766, i32 0, i32 1
  %768 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %767, i32 0, i32 0
  %769 = load i32, i32* %768, align 8
  %770 = icmp ne i32 %769, 0
  br i1 %770, label %781, label %771

771:                                              ; preds = %750
  %772 = load %struct.ib_device*, %struct.ib_device** %10, align 8
  %773 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %774 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %773, i32 0, i32 3
  %775 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %774, i32 0, i32 0
  %776 = load i32, i32* %775, align 8
  %777 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %778 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %777, i32 0, i32 5
  %779 = load i32, i32* %778, align 4
  %780 = call i32 @ib_get_cached_pkey(%struct.ib_device* %772, i32 %776, i32 %779, i32* %16)
  br label %791

781:                                              ; preds = %750
  %782 = load %struct.ib_device*, %struct.ib_device** %10, align 8
  %783 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %784 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %783, i32 0, i32 3
  %785 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %784, i32 0, i32 0
  %786 = load i32, i32* %785, align 8
  %787 = load %struct.ib_ud_wr*, %struct.ib_ud_wr** %7, align 8
  %788 = getelementptr inbounds %struct.ib_ud_wr, %struct.ib_ud_wr* %787, i32 0, i32 2
  %789 = load i32, i32* %788, align 8
  %790 = call i32 @ib_get_cached_pkey(%struct.ib_device* %782, i32 %786, i32 %789, i32* %16)
  br label %791

791:                                              ; preds = %781, %771
  %792 = load i32, i32* %16, align 4
  %793 = call i8* @cpu_to_be16(i32 %792)
  %794 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %795 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %794, i32 0, i32 2
  %796 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %795, i32 0, i32 2
  %797 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %796, i32 0, i32 3
  store i8* %793, i8** %797, align 8
  %798 = load %struct.ib_ud_wr*, %struct.ib_ud_wr** %7, align 8
  %799 = getelementptr inbounds %struct.ib_ud_wr, %struct.ib_ud_wr* %798, i32 0, i32 0
  %800 = load i32, i32* %799, align 8
  %801 = call i32 @cpu_to_be32(i32 %800)
  %802 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %803 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %802, i32 0, i32 2
  %804 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %803, i32 0, i32 2
  %805 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %804, i32 0, i32 1
  store i32 %801, i32* %805, align 4
  %806 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %807 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %806, i32 0, i32 4
  %808 = load i32, i32* %807, align 8
  %809 = add nsw i32 %808, 1
  store i32 %809, i32* %807, align 8
  %810 = and i32 %808, 16777215
  %811 = call i32 @cpu_to_be32(i32 %810)
  %812 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %813 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %812, i32 0, i32 2
  %814 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %813, i32 0, i32 2
  %815 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %814, i32 0, i32 2
  store i32 %811, i32* %815, align 8
  %816 = load %struct.ib_ud_wr*, %struct.ib_ud_wr** %7, align 8
  %817 = getelementptr inbounds %struct.ib_ud_wr, %struct.ib_ud_wr* %816, i32 0, i32 1
  %818 = load i32, i32* %817, align 4
  %819 = and i32 %818, -2147483648
  %820 = icmp ne i32 %819, 0
  br i1 %820, label %821, label %825

821:                                              ; preds = %791
  %822 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %823 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %822, i32 0, i32 0
  %824 = load i32, i32* %823, align 8
  br label %829

825:                                              ; preds = %791
  %826 = load %struct.ib_ud_wr*, %struct.ib_ud_wr** %7, align 8
  %827 = getelementptr inbounds %struct.ib_ud_wr, %struct.ib_ud_wr* %826, i32 0, i32 1
  %828 = load i32, i32* %827, align 4
  br label %829

829:                                              ; preds = %825, %821
  %830 = phi i32 [ %824, %821 ], [ %828, %825 ]
  %831 = call i32 @cpu_to_be32(i32 %830)
  %832 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %833 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %832, i32 0, i32 2
  %834 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %833, i32 0, i32 1
  %835 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %834, i32 0, i32 0
  store i32 %831, i32* %835, align 4
  %836 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %837 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %836, i32 0, i32 3
  %838 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %837, i32 0, i32 1
  %839 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %838, i32 0, i32 0
  %840 = load i32, i32* %839, align 8
  %841 = call i32 @cpu_to_be32(i32 %840)
  %842 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %843 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %842, i32 0, i32 2
  %844 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %843, i32 0, i32 1
  %845 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %844, i32 0, i32 1
  store i32 %841, i32* %845, align 4
  %846 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %847 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %846, i32 0, i32 2
  %848 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %849 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %848, i32 0, i32 1
  %850 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %849, align 8
  %851 = call i32 @ib_ud_header_pack(%struct.TYPE_39__* %847, %struct.mlx4_wqe_inline_seg* %850)
  store i32 %851, i32* %18, align 4
  %852 = load i32, i32* @MLX4_INLINE_ALIGN, align 4
  %853 = sext i32 %852 to i64
  %854 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %13, align 8
  %855 = getelementptr inbounds %struct.mlx4_wqe_inline_seg, %struct.mlx4_wqe_inline_seg* %854, i64 1
  %856 = ptrtoint %struct.mlx4_wqe_inline_seg* %855 to i64
  %857 = load i32, i32* @MLX4_INLINE_ALIGN, align 4
  %858 = sub nsw i32 %857, 1
  %859 = sext i32 %858 to i64
  %860 = and i64 %856, %859
  %861 = sub i64 %853, %860
  %862 = trunc i64 %861 to i32
  store i32 %862, i32* %19, align 4
  %863 = load i32, i32* %18, align 4
  %864 = load i32, i32* %19, align 4
  %865 = icmp sle i32 %863, %864
  br i1 %865, label %866, label %879

866:                                              ; preds = %829
  %867 = load i32, i32* %18, align 4
  %868 = or i32 -2147483648, %867
  %869 = call i32 @cpu_to_be32(i32 %868)
  %870 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %13, align 8
  %871 = getelementptr inbounds %struct.mlx4_wqe_inline_seg, %struct.mlx4_wqe_inline_seg* %870, i32 0, i32 0
  store i32 %869, i32* %871, align 4
  %872 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %13, align 8
  %873 = getelementptr inbounds %struct.mlx4_wqe_inline_seg, %struct.mlx4_wqe_inline_seg* %872, i64 1
  %874 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %875 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %874, i32 0, i32 1
  %876 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %875, align 8
  %877 = load i32, i32* %18, align 4
  %878 = call i32 @memcpy(%struct.mlx4_wqe_inline_seg* %873, %struct.mlx4_wqe_inline_seg* %876, i32 %877)
  store i32 1, i32* %20, align 4
  br label %919

879:                                              ; preds = %829
  %880 = load i32, i32* %19, align 4
  %881 = or i32 -2147483648, %880
  %882 = call i32 @cpu_to_be32(i32 %881)
  %883 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %13, align 8
  %884 = getelementptr inbounds %struct.mlx4_wqe_inline_seg, %struct.mlx4_wqe_inline_seg* %883, i32 0, i32 0
  store i32 %882, i32* %884, align 4
  %885 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %13, align 8
  %886 = getelementptr inbounds %struct.mlx4_wqe_inline_seg, %struct.mlx4_wqe_inline_seg* %885, i64 1
  %887 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %888 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %887, i32 0, i32 1
  %889 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %888, align 8
  %890 = load i32, i32* %19, align 4
  %891 = call i32 @memcpy(%struct.mlx4_wqe_inline_seg* %886, %struct.mlx4_wqe_inline_seg* %889, i32 %890)
  %892 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %13, align 8
  %893 = getelementptr inbounds %struct.mlx4_wqe_inline_seg, %struct.mlx4_wqe_inline_seg* %892, i64 1
  %894 = bitcast %struct.mlx4_wqe_inline_seg* %893 to i8*
  %895 = load i32, i32* %19, align 4
  %896 = sext i32 %895 to i64
  %897 = getelementptr i8, i8* %894, i64 %896
  %898 = bitcast i8* %897 to %struct.mlx4_wqe_inline_seg*
  store %struct.mlx4_wqe_inline_seg* %898, %struct.mlx4_wqe_inline_seg** %13, align 8
  %899 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %13, align 8
  %900 = getelementptr inbounds %struct.mlx4_wqe_inline_seg, %struct.mlx4_wqe_inline_seg* %899, i64 1
  %901 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %902 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %901, i32 0, i32 1
  %903 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %902, align 8
  %904 = load i32, i32* %19, align 4
  %905 = sext i32 %904 to i64
  %906 = getelementptr inbounds %struct.mlx4_wqe_inline_seg, %struct.mlx4_wqe_inline_seg* %903, i64 %905
  %907 = load i32, i32* %18, align 4
  %908 = load i32, i32* %19, align 4
  %909 = sub nsw i32 %907, %908
  %910 = call i32 @memcpy(%struct.mlx4_wqe_inline_seg* %900, %struct.mlx4_wqe_inline_seg* %906, i32 %909)
  %911 = call i32 (...) @wmb()
  %912 = load i32, i32* %18, align 4
  %913 = load i32, i32* %19, align 4
  %914 = sub nsw i32 %912, %913
  %915 = or i32 -2147483648, %914
  %916 = call i32 @cpu_to_be32(i32 %915)
  %917 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %13, align 8
  %918 = getelementptr inbounds %struct.mlx4_wqe_inline_seg, %struct.mlx4_wqe_inline_seg* %917, i32 0, i32 0
  store i32 %916, i32* %918, align 4
  store i32 2, i32* %20, align 4
  br label %919

919:                                              ; preds = %879, %866
  %920 = load i32, i32* %20, align 4
  %921 = sext i32 %920 to i64
  %922 = mul i64 %921, 4
  %923 = load i32, i32* %18, align 4
  %924 = sext i32 %923 to i64
  %925 = add i64 %922, %924
  %926 = trunc i64 %925 to i32
  %927 = call i32 @ALIGN(i32 %926, i32 16)
  %928 = load i32*, i32** %9, align 8
  store i32 %927, i32* %928, align 4
  store i32 0, i32* %5, align 4
  br label %929

929:                                              ; preds = %919, %732, %568, %211, %175, %120
  %930 = load i32, i32* %5, align 4
  ret i32 %930
}

declare dso_local %struct.mlx4_ib_ah* @to_mah(i32) #1

declare dso_local i64 @rdma_port_get_link_layer(%struct.ib_device*, i32) #1

declare dso_local i32 @mlx4_ib_ah_grh_present(%struct.mlx4_ib_ah*) #1

declare dso_local i64 @mlx4_is_mfunc(i32) #1

declare dso_local %struct.TYPE_38__* @to_mdev(%struct.ib_device*) #1

declare dso_local i32 @mlx4_get_roce_gid_from_slave(i32, i32, i64, %struct.mlx4_wqe_inline_seg*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @ib_get_cached_gid(%struct.ib_device*, i32, i64, %union.ib_gid*, %struct.ib_gid_attr*) #1

declare dso_local i32 @dev_put(i64) #1

declare dso_local i32 @memcmp(%union.ib_gid*, %struct.mlx4_wqe_inline_seg*, i32) #1

declare dso_local i64 @ipv6_addr_v4mapped(%struct.mlx4_wqe_inline_seg*) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @be16_to_cpu(i8*) #1

declare dso_local i32 @ib_ud_header_init(i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_39__*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @memcpy(%struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg*, i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @atomic64_read(i32*) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @ib_ud_ip4_csum(%struct.TYPE_39__*) #1

declare dso_local i32 @ether_addr_copy(%union.ib_gid*, i32) #1

declare dso_local i32 @sl_to_vl(%struct.TYPE_38__*, i32, i32) #1

declare dso_local i32 @ib_get_cached_pkey(%struct.ib_device*, i32, i32, i32*) #1

declare dso_local i32 @ib_ud_header_pack(%struct.TYPE_39__*, %struct.mlx4_wqe_inline_seg*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @ALIGN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
