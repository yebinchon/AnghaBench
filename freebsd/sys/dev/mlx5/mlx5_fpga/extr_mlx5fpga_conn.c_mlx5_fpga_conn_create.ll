; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga/extr_mlx5fpga_conn.c_mlx5_fpga_conn_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga/extr_mlx5fpga_conn.c_mlx5_fpga_conn_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fpga_conn = type { %struct.TYPE_6__, i32, %struct.mlx5_fpga_device*, i32, i32, i64 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.mlx5_fpga_device = type { i32 }
%struct.mlx5_fpga_conn_attr = type { i32, i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@fpga_qpc = common dso_local global i32 0, align 4
@remote_mac_47_32 = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"Failed to query local MAC: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to allocate SGID: %d\0A\00", align 1
@MLX5_ROCE_VERSION_2 = common dso_local global i32 0, align 4
@MLX5_ROCE_L3_TYPE_IPV6 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Failed to set SGID: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Reserved SGID index %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Failed to create CQ: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Failed to create QP: %d\0A\00", align 1
@state = common dso_local global i32 0, align 4
@MLX5_FPGA_QPC_STATE_INIT = common dso_local global i32 0, align 4
@st = common dso_local global i32 0, align 4
@MLX5_FPGA_QPC_ST_RC = common dso_local global i32 0, align 4
@ether_type = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@vid = common dso_local global i32 0, align 4
@next_rcv_psn = common dso_local global i32 0, align 4
@next_send_psn = common dso_local global i32 0, align 4
@pkey = common dso_local global i32 0, align 4
@MLX5_FPGA_PKEY = common dso_local global i32 0, align 4
@remote_qpn = common dso_local global i32 0, align 4
@rnr_retry = common dso_local global i32 0, align 4
@retry_count = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"Failed to create FPGA RC QP: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"FPGA QPN is %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlx5_fpga_conn* @mlx5_fpga_conn_create(%struct.mlx5_fpga_device* %0, %struct.mlx5_fpga_conn_attr* %1, i32 %2) #0 {
  %4 = alloca %struct.mlx5_fpga_conn*, align 8
  %5 = alloca %struct.mlx5_fpga_device*, align 8
  %6 = alloca %struct.mlx5_fpga_conn_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5_fpga_conn*, align 8
  %9 = alloca %struct.mlx5_fpga_conn*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.mlx5_fpga_device* %0, %struct.mlx5_fpga_device** %5, align 8
  store %struct.mlx5_fpga_conn_attr* %1, %struct.mlx5_fpga_conn_attr** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.mlx5_fpga_conn_attr*, %struct.mlx5_fpga_conn_attr** %6, align 8
  %14 = getelementptr inbounds %struct.mlx5_fpga_conn_attr, %struct.mlx5_fpga_conn_attr* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.mlx5_fpga_conn* @ERR_PTR(i32 %19)
  store %struct.mlx5_fpga_conn* %20, %struct.mlx5_fpga_conn** %4, align 8
  br label %315

21:                                               ; preds = %3
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.mlx5_fpga_conn* @kzalloc(i32 48, i32 %22)
  store %struct.mlx5_fpga_conn* %23, %struct.mlx5_fpga_conn** %9, align 8
  %24 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %25 = icmp ne %struct.mlx5_fpga_conn* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.mlx5_fpga_conn* @ERR_PTR(i32 %28)
  store %struct.mlx5_fpga_conn* %29, %struct.mlx5_fpga_conn** %4, align 8
  br label %315

30:                                               ; preds = %21
  %31 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %32 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %33 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %32, i32 0, i32 2
  store %struct.mlx5_fpga_device* %31, %struct.mlx5_fpga_device** %33, align 8
  %34 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %35 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = call i32 @INIT_LIST_HEAD(i32* %37)
  %39 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %40 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = call i32 @spin_lock_init(i32* %42)
  %44 = load %struct.mlx5_fpga_conn_attr*, %struct.mlx5_fpga_conn_attr** %6, align 8
  %45 = getelementptr inbounds %struct.mlx5_fpga_conn_attr, %struct.mlx5_fpga_conn_attr* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %48 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %47, i32 0, i32 5
  store i64 %46, i64* %48, align 8
  %49 = load %struct.mlx5_fpga_conn_attr*, %struct.mlx5_fpga_conn_attr** %6, align 8
  %50 = getelementptr inbounds %struct.mlx5_fpga_conn_attr, %struct.mlx5_fpga_conn_attr* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %53 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @fpga_qpc, align 4
  %55 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %56 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load i32*, i32** @remote_mac_47_32, align 8
  %59 = call i32* @MLX5_ADDR_OF(i32 %54, i32 %57, i32* %58)
  store i32* %59, i32** %10, align 8
  %60 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %61 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %10, align 8
  %64 = call i32 @mlx5_query_nic_vport_mac_address(i32 %62, i32 0, i32* %63)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %30
  %68 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @mlx5_fpga_err(%struct.mlx5_fpga_device* %68, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %12, align 4
  %72 = call %struct.mlx5_fpga_conn* @ERR_PTR(i32 %71)
  store %struct.mlx5_fpga_conn* %72, %struct.mlx5_fpga_conn** %8, align 8
  br label %310

73:                                               ; preds = %30
  %74 = load i32, i32* @fpga_qpc, align 4
  %75 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %76 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = load i32*, i32** %11, align 8
  %79 = call i32* @MLX5_ADDR_OF(i32 %74, i32 %77, i32* %78)
  store i32* %79, i32** %11, align 8
  %80 = load i32*, i32** %11, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  store i32 254, i32* %81, align 4
  %82 = load i32*, i32** %11, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  store i32 128, i32* %83, align 4
  %84 = load i32*, i32** %11, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 8
  %86 = load i32*, i32** %10, align 8
  %87 = call i32 @addrconf_addr_eui48(i32* %85, i32* %86)
  %88 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %89 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %92 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = call i32 @mlx5_core_reserved_gid_alloc(i32 %90, i32* %93)
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %12, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %73
  %98 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @mlx5_fpga_err(%struct.mlx5_fpga_device* %98, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* %12, align 4
  %102 = call %struct.mlx5_fpga_conn* @ERR_PTR(i32 %101)
  store %struct.mlx5_fpga_conn* %102, %struct.mlx5_fpga_conn** %8, align 8
  br label %310

103:                                              ; preds = %73
  %104 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %105 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %108 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @MLX5_ROCE_VERSION_2, align 4
  %112 = load i32, i32* @MLX5_ROCE_L3_TYPE_IPV6, align 4
  %113 = load i32*, i32** %11, align 8
  %114 = load i32*, i32** %10, align 8
  %115 = call i32 @mlx5_core_roce_gid_set(i32 %106, i32 %110, i32 %111, i32 %112, i32* %113, i32* %114, i32 1, i32 0)
  store i32 %115, i32* %12, align 4
  %116 = load i32, i32* %12, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %103
  %119 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %120 = load i32, i32* %12, align 4
  %121 = call i32 @mlx5_fpga_err(%struct.mlx5_fpga_device* %119, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* %12, align 4
  %123 = call %struct.mlx5_fpga_conn* @ERR_PTR(i32 %122)
  store %struct.mlx5_fpga_conn* %123, %struct.mlx5_fpga_conn** %8, align 8
  br label %301

124:                                              ; preds = %103
  %125 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %126 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %127 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @mlx5_fpga_dbg(%struct.mlx5_fpga_device* %125, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %129)
  %131 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %132 = load %struct.mlx5_fpga_conn_attr*, %struct.mlx5_fpga_conn_attr** %6, align 8
  %133 = getelementptr inbounds %struct.mlx5_fpga_conn_attr, %struct.mlx5_fpga_conn_attr* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.mlx5_fpga_conn_attr*, %struct.mlx5_fpga_conn_attr** %6, align 8
  %136 = getelementptr inbounds %struct.mlx5_fpga_conn_attr, %struct.mlx5_fpga_conn_attr* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %134, %137
  %139 = mul nsw i32 %138, 2
  %140 = call i32 @mlx5_fpga_conn_create_cq(%struct.mlx5_fpga_conn* %131, i32 %139)
  store i32 %140, i32* %12, align 4
  %141 = load i32, i32* %12, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %124
  %144 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %145 = load i32, i32* %12, align 4
  %146 = call i32 @mlx5_fpga_err(%struct.mlx5_fpga_device* %144, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %145)
  %147 = load i32, i32* %12, align 4
  %148 = call %struct.mlx5_fpga_conn* @ERR_PTR(i32 %147)
  store %struct.mlx5_fpga_conn* %148, %struct.mlx5_fpga_conn** %8, align 8
  br label %292

149:                                              ; preds = %124
  %150 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %151 = call i32 @mlx5_fpga_conn_arm_cq(%struct.mlx5_fpga_conn* %150)
  %152 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %153 = load %struct.mlx5_fpga_conn_attr*, %struct.mlx5_fpga_conn_attr** %6, align 8
  %154 = getelementptr inbounds %struct.mlx5_fpga_conn_attr, %struct.mlx5_fpga_conn_attr* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.mlx5_fpga_conn_attr*, %struct.mlx5_fpga_conn_attr** %6, align 8
  %157 = getelementptr inbounds %struct.mlx5_fpga_conn_attr, %struct.mlx5_fpga_conn_attr* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @mlx5_fpga_conn_create_qp(%struct.mlx5_fpga_conn* %152, i32 %155, i32 %158)
  store i32 %159, i32* %12, align 4
  %160 = load i32, i32* %12, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %149
  %163 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %164 = load i32, i32* %12, align 4
  %165 = call i32 @mlx5_fpga_err(%struct.mlx5_fpga_device* %163, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %164)
  %166 = load i32, i32* %12, align 4
  %167 = call %struct.mlx5_fpga_conn* @ERR_PTR(i32 %166)
  store %struct.mlx5_fpga_conn* %167, %struct.mlx5_fpga_conn** %8, align 8
  br label %289

168:                                              ; preds = %149
  %169 = load i32, i32* @fpga_qpc, align 4
  %170 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %171 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @state, align 4
  %174 = load i32, i32* @MLX5_FPGA_QPC_STATE_INIT, align 4
  %175 = call i32 @MLX5_SET(i32 %169, i32 %172, i32 %173, i32 %174)
  %176 = load i32, i32* @fpga_qpc, align 4
  %177 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %178 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* %7, align 4
  %181 = load i32, i32* %7, align 4
  %182 = call i32 @MLX5_SET(i32 %176, i32 %179, i32 %180, i32 %181)
  %183 = load i32, i32* @fpga_qpc, align 4
  %184 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %185 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @st, align 4
  %188 = load i32, i32* @MLX5_FPGA_QPC_ST_RC, align 4
  %189 = call i32 @MLX5_SET(i32 %183, i32 %186, i32 %187, i32 %188)
  %190 = load i32, i32* @fpga_qpc, align 4
  %191 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %192 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @ether_type, align 4
  %195 = load i32, i32* @ETH_P_8021Q, align 4
  %196 = call i32 @MLX5_SET(i32 %190, i32 %193, i32 %194, i32 %195)
  %197 = load i32, i32* @fpga_qpc, align 4
  %198 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %199 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @vid, align 4
  %202 = call i32 @MLX5_SET(i32 %197, i32 %200, i32 %201, i32 0)
  %203 = load i32, i32* @fpga_qpc, align 4
  %204 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %205 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @next_rcv_psn, align 4
  %208 = call i32 @MLX5_SET(i32 %203, i32 %206, i32 %207, i32 1)
  %209 = load i32, i32* @fpga_qpc, align 4
  %210 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %211 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @next_send_psn, align 4
  %214 = call i32 @MLX5_SET(i32 %209, i32 %212, i32 %213, i32 0)
  %215 = load i32, i32* @fpga_qpc, align 4
  %216 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %217 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @pkey, align 4
  %220 = load i32, i32* @MLX5_FPGA_PKEY, align 4
  %221 = call i32 @MLX5_SET(i32 %215, i32 %218, i32 %219, i32 %220)
  %222 = load i32, i32* @fpga_qpc, align 4
  %223 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %224 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* @remote_qpn, align 4
  %227 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %228 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @MLX5_SET(i32 %222, i32 %225, i32 %226, i32 %231)
  %233 = load i32, i32* @fpga_qpc, align 4
  %234 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %235 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* @rnr_retry, align 4
  %238 = call i32 @MLX5_SET(i32 %233, i32 %236, i32 %237, i32 7)
  %239 = load i32, i32* @fpga_qpc, align 4
  %240 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %241 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* @retry_count, align 4
  %244 = call i32 @MLX5_SET(i32 %239, i32 %242, i32 %243, i32 7)
  %245 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %246 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %249 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %248, i32 0, i32 3
  %250 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %251 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %250, i32 0, i32 1
  %252 = call i32 @mlx5_fpga_create_qp(i32 %247, i32* %249, i32* %251)
  store i32 %252, i32* %12, align 4
  %253 = load i32, i32* %12, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %261

255:                                              ; preds = %168
  %256 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %257 = load i32, i32* %12, align 4
  %258 = call i32 @mlx5_fpga_err(%struct.mlx5_fpga_device* %256, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %257)
  %259 = load i32, i32* %12, align 4
  %260 = call %struct.mlx5_fpga_conn* @ERR_PTR(i32 %259)
  store %struct.mlx5_fpga_conn* %260, %struct.mlx5_fpga_conn** %8, align 8
  br label %286

261:                                              ; preds = %168
  %262 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %263 = call i32 @mlx5_fpga_conn_connect(%struct.mlx5_fpga_conn* %262)
  store i32 %263, i32* %12, align 4
  %264 = load i32, i32* %12, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %269

266:                                              ; preds = %261
  %267 = load i32, i32* %12, align 4
  %268 = call %struct.mlx5_fpga_conn* @ERR_PTR(i32 %267)
  store %struct.mlx5_fpga_conn* %268, %struct.mlx5_fpga_conn** %8, align 8
  br label %276

269:                                              ; preds = %261
  %270 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %271 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %272 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 8
  %274 = call i32 @mlx5_fpga_dbg(%struct.mlx5_fpga_device* %270, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %273)
  %275 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  store %struct.mlx5_fpga_conn* %275, %struct.mlx5_fpga_conn** %8, align 8
  br label %313

276:                                              ; preds = %266
  %277 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %278 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %277, i32 0, i32 2
  %279 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %278, align 8
  %280 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %283 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 8
  %285 = call i32 @mlx5_fpga_destroy_qp(i32 %281, i32 %284)
  br label %286

286:                                              ; preds = %276, %255
  %287 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %288 = call i32 @mlx5_fpga_conn_destroy_qp(%struct.mlx5_fpga_conn* %287)
  br label %289

289:                                              ; preds = %286, %162
  %290 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %291 = call i32 @mlx5_fpga_conn_destroy_cq(%struct.mlx5_fpga_conn* %290)
  br label %292

292:                                              ; preds = %289, %143
  %293 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %294 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %297 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = call i32 @mlx5_core_roce_gid_set(i32 %295, i32 %299, i32 0, i32 0, i32* null, i32* null, i32 0, i32 0)
  br label %301

301:                                              ; preds = %292, %118
  %302 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %303 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %306 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = call i32 @mlx5_core_reserved_gid_free(i32 %304, i32 %308)
  br label %310

310:                                              ; preds = %301, %97, %67
  %311 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %312 = call i32 @kfree(%struct.mlx5_fpga_conn* %311)
  br label %313

313:                                              ; preds = %310, %269
  %314 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %8, align 8
  store %struct.mlx5_fpga_conn* %314, %struct.mlx5_fpga_conn** %4, align 8
  br label %315

315:                                              ; preds = %313, %26, %17
  %316 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  ret %struct.mlx5_fpga_conn* %316
}

declare dso_local %struct.mlx5_fpga_conn* @ERR_PTR(i32) #1

declare dso_local %struct.mlx5_fpga_conn* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32* @MLX5_ADDR_OF(i32, i32, i32*) #1

declare dso_local i32 @mlx5_query_nic_vport_mac_address(i32, i32, i32*) #1

declare dso_local i32 @mlx5_fpga_err(%struct.mlx5_fpga_device*, i8*, i32) #1

declare dso_local i32 @addrconf_addr_eui48(i32*, i32*) #1

declare dso_local i32 @mlx5_core_reserved_gid_alloc(i32, i32*) #1

declare dso_local i32 @mlx5_core_roce_gid_set(i32, i32, i32, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @mlx5_fpga_dbg(%struct.mlx5_fpga_device*, i8*, i32) #1

declare dso_local i32 @mlx5_fpga_conn_create_cq(%struct.mlx5_fpga_conn*, i32) #1

declare dso_local i32 @mlx5_fpga_conn_arm_cq(%struct.mlx5_fpga_conn*) #1

declare dso_local i32 @mlx5_fpga_conn_create_qp(%struct.mlx5_fpga_conn*, i32, i32) #1

declare dso_local i32 @MLX5_SET(i32, i32, i32, i32) #1

declare dso_local i32 @mlx5_fpga_create_qp(i32, i32*, i32*) #1

declare dso_local i32 @mlx5_fpga_conn_connect(%struct.mlx5_fpga_conn*) #1

declare dso_local i32 @mlx5_fpga_destroy_qp(i32, i32) #1

declare dso_local i32 @mlx5_fpga_conn_destroy_qp(%struct.mlx5_fpga_conn*) #1

declare dso_local i32 @mlx5_fpga_conn_destroy_cq(%struct.mlx5_fpga_conn*) #1

declare dso_local i32 @mlx5_core_reserved_gid_free(i32, i32) #1

declare dso_local i32 @kfree(%struct.mlx5_fpga_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
