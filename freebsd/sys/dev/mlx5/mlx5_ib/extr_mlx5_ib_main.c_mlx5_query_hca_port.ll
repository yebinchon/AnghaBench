; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_main.c_mlx5_query_hca_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_main.c_mlx5_query_hca_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_port_attr = type { i32, i32, i32, i8*, i32, i32, i8*, i32, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.mlx5_ib_dev = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_ptys_reg = type { i32, i32, i8*, i64, i32, i32 }
%struct.mlx5_pmtu_reg = type { i32, i32, i8*, i64, i32, i32 }
%struct.mlx5_pvlc_reg = type { i32, i32, i32, i8*, i32, i32, i8*, i32, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@query_hca_vport_context_out = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@hca_vport_context = common dso_local global i32 0, align 4
@lid = common dso_local global i32 0, align 4
@lmc = common dso_local global i32 0, align 4
@sm_lid = common dso_local global i32 0, align 4
@sm_sl = common dso_local global i32 0, align 4
@vport_state = common dso_local global i32 0, align 4
@port_physical_state = common dso_local global i32 0, align 4
@cap_mask1 = common dso_local global i32 0, align 4
@gid_table_size = common dso_local global i32 0, align 4
@log_max_msg = common dso_local global i32 0, align 4
@pkey_table_size = common dso_local global i32 0, align 4
@pkey_violation_counter = common dso_local global i32 0, align 4
@qkey_violation_counter = common dso_local global i32 0, align 4
@subnet_timeout = common dso_local global i32 0, align 4
@init_type_reply = common dso_local global i32 0, align 4
@grh_required = common dso_local global i32 0, align 4
@MLX5_PTYS_IB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i8*, %struct.ib_port_attr*)* @mlx5_query_hca_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_query_hca_port(%struct.ib_device* %0, i8* %1, %struct.ib_port_attr* %2) #0 {
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ib_port_attr*, align 8
  %7 = alloca %struct.mlx5_ib_dev*, align 8
  %8 = alloca %struct.mlx5_core_dev*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mlx5_ptys_reg*, align 8
  %12 = alloca %struct.mlx5_pmtu_reg*, align 8
  %13 = alloca %struct.mlx5_pvlc_reg, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.ib_port_attr* %2, %struct.ib_port_attr** %6, align 8
  %16 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %17 = call %struct.mlx5_ib_dev* @to_mdev(%struct.ib_device* %16)
  store %struct.mlx5_ib_dev* %17, %struct.mlx5_ib_dev** %7, align 8
  %18 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %19 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %18, i32 0, i32 0
  %20 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %19, align 8
  store %struct.mlx5_core_dev* %20, %struct.mlx5_core_dev** %8, align 8
  %21 = load i32, i32* @query_hca_vport_context_out, align 4
  %22 = call i32 @MLX5_ST_SZ_BYTES(i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32* @mlx5_vzalloc(i32 %23)
  store i32* %24, i32** %9, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.mlx5_ptys_reg* @kzalloc(i32 32, i32 %25)
  store %struct.mlx5_ptys_reg* %26, %struct.mlx5_ptys_reg** %11, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.mlx5_ptys_reg* @kzalloc(i32 32, i32 %27)
  %29 = bitcast %struct.mlx5_ptys_reg* %28 to %struct.mlx5_pmtu_reg*
  store %struct.mlx5_pmtu_reg* %29, %struct.mlx5_pmtu_reg** %12, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %3
  %33 = load %struct.mlx5_ptys_reg*, %struct.mlx5_ptys_reg** %11, align 8
  %34 = icmp ne %struct.mlx5_ptys_reg* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load %struct.mlx5_pmtu_reg*, %struct.mlx5_pmtu_reg** %12, align 8
  %37 = icmp ne %struct.mlx5_pmtu_reg* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %35, %32, %3
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %15, align 4
  br label %216

41:                                               ; preds = %35
  %42 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %43 = bitcast %struct.ib_port_attr* %42 to %struct.mlx5_pvlc_reg*
  %44 = call i32 @memset(%struct.mlx5_pvlc_reg* %43, i32 0, i32 152)
  %45 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @mlx5_query_hca_vport_context(%struct.mlx5_core_dev* %45, i8* %46, i32 0, i32* %47, i32 %48)
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %15, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %41
  br label %216

53:                                               ; preds = %41
  %54 = load i32, i32* @query_hca_vport_context_out, align 4
  %55 = load i32*, i32** %9, align 8
  %56 = load i32, i32* @hca_vport_context, align 4
  %57 = call i8* @MLX5_ADDR_OF(i32 %54, i32* %55, i32 %56)
  store i8* %57, i8** %14, align 8
  %58 = load i32, i32* @hca_vport_context, align 4
  %59 = load i8*, i8** %14, align 8
  %60 = load i32, i32* @lid, align 4
  %61 = call i8* @MLX5_GET(i32 %58, i8* %59, i32 %60)
  %62 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %63 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %62, i32 0, i32 21
  store i8* %61, i8** %63, align 8
  %64 = load i32, i32* @hca_vport_context, align 4
  %65 = load i8*, i8** %14, align 8
  %66 = load i32, i32* @lmc, align 4
  %67 = call i8* @MLX5_GET(i32 %64, i8* %65, i32 %66)
  %68 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %69 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %68, i32 0, i32 20
  store i8* %67, i8** %69, align 8
  %70 = load i32, i32* @hca_vport_context, align 4
  %71 = load i8*, i8** %14, align 8
  %72 = load i32, i32* @sm_lid, align 4
  %73 = call i8* @MLX5_GET(i32 %70, i8* %71, i32 %72)
  %74 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %75 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %74, i32 0, i32 19
  store i8* %73, i8** %75, align 8
  %76 = load i32, i32* @hca_vport_context, align 4
  %77 = load i8*, i8** %14, align 8
  %78 = load i32, i32* @sm_sl, align 4
  %79 = call i8* @MLX5_GET(i32 %76, i8* %77, i32 %78)
  %80 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %81 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %80, i32 0, i32 18
  store i8* %79, i8** %81, align 8
  %82 = load i32, i32* @hca_vport_context, align 4
  %83 = load i8*, i8** %14, align 8
  %84 = load i32, i32* @vport_state, align 4
  %85 = call i8* @MLX5_GET(i32 %82, i8* %83, i32 %84)
  %86 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %87 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %86, i32 0, i32 17
  store i8* %85, i8** %87, align 8
  %88 = load i32, i32* @hca_vport_context, align 4
  %89 = load i8*, i8** %14, align 8
  %90 = load i32, i32* @port_physical_state, align 4
  %91 = call i8* @MLX5_GET(i32 %88, i8* %89, i32 %90)
  %92 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %93 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %92, i32 0, i32 16
  store i8* %91, i8** %93, align 8
  %94 = load i32, i32* @hca_vport_context, align 4
  %95 = load i8*, i8** %14, align 8
  %96 = load i32, i32* @cap_mask1, align 4
  %97 = call i8* @MLX5_GET(i32 %94, i8* %95, i32 %96)
  %98 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %99 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %98, i32 0, i32 15
  store i8* %97, i8** %99, align 8
  %100 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %101 = load i32, i32* @gid_table_size, align 4
  %102 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %100, i32 %101)
  %103 = call i32 @mlx5_get_gid_table_len(i32 %102)
  %104 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %105 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %104, i32 0, i32 14
  store i32 %103, i32* %105, align 4
  %106 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %107 = load i32, i32* @log_max_msg, align 4
  %108 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %106, i32 %107)
  %109 = shl i32 1, %108
  %110 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %111 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  %112 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %113 = load i32, i32* @pkey_table_size, align 4
  %114 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %112, i32 %113)
  %115 = call i32 @mlx5_to_sw_pkey_sz(i32 %114)
  %116 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %117 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %116, i32 0, i32 13
  store i32 %115, i32* %117, align 8
  %118 = load i32, i32* @hca_vport_context, align 4
  %119 = load i8*, i8** %14, align 8
  %120 = load i32, i32* @pkey_violation_counter, align 4
  %121 = call i8* @MLX5_GET(i32 %118, i8* %119, i32 %120)
  %122 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %123 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %122, i32 0, i32 12
  store i8* %121, i8** %123, align 8
  %124 = load i32, i32* @hca_vport_context, align 4
  %125 = load i8*, i8** %14, align 8
  %126 = load i32, i32* @qkey_violation_counter, align 4
  %127 = call i8* @MLX5_GET(i32 %124, i8* %125, i32 %126)
  %128 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %129 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %128, i32 0, i32 11
  store i8* %127, i8** %129, align 8
  %130 = load i32, i32* @hca_vport_context, align 4
  %131 = load i8*, i8** %14, align 8
  %132 = load i32, i32* @subnet_timeout, align 4
  %133 = call i8* @MLX5_GET(i32 %130, i8* %131, i32 %132)
  %134 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %135 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %134, i32 0, i32 10
  store i8* %133, i8** %135, align 8
  %136 = load i32, i32* @hca_vport_context, align 4
  %137 = load i8*, i8** %14, align 8
  %138 = load i32, i32* @init_type_reply, align 4
  %139 = call i8* @MLX5_GET(i32 %136, i8* %137, i32 %138)
  %140 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %141 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %140, i32 0, i32 9
  store i8* %139, i8** %141, align 8
  %142 = load i32, i32* @hca_vport_context, align 4
  %143 = load i8*, i8** %14, align 8
  %144 = load i32, i32* @grh_required, align 4
  %145 = call i8* @MLX5_GET(i32 %142, i8* %143, i32 %144)
  %146 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %147 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %146, i32 0, i32 8
  store i8* %145, i8** %147, align 8
  %148 = load i32, i32* @MLX5_PTYS_IB, align 4
  %149 = load %struct.mlx5_ptys_reg*, %struct.mlx5_ptys_reg** %11, align 8
  %150 = getelementptr inbounds %struct.mlx5_ptys_reg, %struct.mlx5_ptys_reg* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 4
  %152 = or i32 %151, %148
  store i32 %152, i32* %150, align 4
  %153 = load i8*, i8** %5, align 8
  %154 = load %struct.mlx5_ptys_reg*, %struct.mlx5_ptys_reg** %11, align 8
  %155 = getelementptr inbounds %struct.mlx5_ptys_reg, %struct.mlx5_ptys_reg* %154, i32 0, i32 2
  store i8* %153, i8** %155, align 8
  %156 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %157 = load %struct.mlx5_ptys_reg*, %struct.mlx5_ptys_reg** %11, align 8
  %158 = call i32 @mlx5_core_access_ptys(%struct.mlx5_core_dev* %156, %struct.mlx5_ptys_reg* %157, i32 0)
  store i32 %158, i32* %15, align 4
  %159 = load i32, i32* %15, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %53
  br label %216

162:                                              ; preds = %53
  %163 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %164 = load %struct.mlx5_ptys_reg*, %struct.mlx5_ptys_reg** %11, align 8
  %165 = getelementptr inbounds %struct.mlx5_ptys_reg, %struct.mlx5_ptys_reg* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %168 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %167, i32 0, i32 7
  %169 = call i32 @translate_active_width(%struct.ib_device* %163, i32 %166, i32* %168)
  store i32 %169, i32* %15, align 4
  %170 = load i32, i32* %15, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %162
  br label %216

173:                                              ; preds = %162
  %174 = load %struct.mlx5_ptys_reg*, %struct.mlx5_ptys_reg** %11, align 8
  %175 = getelementptr inbounds %struct.mlx5_ptys_reg, %struct.mlx5_ptys_reg* %174, i32 0, i32 3
  %176 = load i64, i64* %175, align 8
  %177 = inttoptr i64 %176 to i8*
  %178 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %179 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %178, i32 0, i32 6
  store i8* %177, i8** %179, align 8
  %180 = load i8*, i8** %5, align 8
  %181 = load %struct.mlx5_pmtu_reg*, %struct.mlx5_pmtu_reg** %12, align 8
  %182 = getelementptr inbounds %struct.mlx5_pmtu_reg, %struct.mlx5_pmtu_reg* %181, i32 0, i32 2
  store i8* %180, i8** %182, align 8
  %183 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %184 = load %struct.mlx5_pmtu_reg*, %struct.mlx5_pmtu_reg** %12, align 8
  %185 = bitcast %struct.mlx5_pmtu_reg* %184 to %struct.mlx5_ptys_reg*
  %186 = call i32 @mlx5_core_access_pmtu(%struct.mlx5_core_dev* %183, %struct.mlx5_ptys_reg* %185, i32 0)
  store i32 %186, i32* %15, align 4
  %187 = load i32, i32* %15, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %173
  br label %216

190:                                              ; preds = %173
  %191 = load %struct.mlx5_pmtu_reg*, %struct.mlx5_pmtu_reg** %12, align 8
  %192 = getelementptr inbounds %struct.mlx5_pmtu_reg, %struct.mlx5_pmtu_reg* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %195 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %194, i32 0, i32 5
  store i32 %193, i32* %195, align 4
  %196 = load %struct.mlx5_pmtu_reg*, %struct.mlx5_pmtu_reg** %12, align 8
  %197 = getelementptr inbounds %struct.mlx5_pmtu_reg, %struct.mlx5_pmtu_reg* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %200 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %199, i32 0, i32 4
  store i32 %198, i32* %200, align 8
  %201 = call i32 @memset(%struct.mlx5_pvlc_reg* %13, i32 0, i32 152)
  %202 = load i8*, i8** %5, align 8
  %203 = getelementptr inbounds %struct.mlx5_pvlc_reg, %struct.mlx5_pvlc_reg* %13, i32 0, i32 3
  store i8* %202, i8** %203, align 8
  %204 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %205 = call i32 @mlx5_core_access_pvlc(%struct.mlx5_core_dev* %204, %struct.mlx5_pvlc_reg* %13, i32 0)
  store i32 %205, i32* %15, align 4
  %206 = load i32, i32* %15, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %190
  br label %216

209:                                              ; preds = %190
  %210 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %211 = getelementptr inbounds %struct.mlx5_pvlc_reg, %struct.mlx5_pvlc_reg* %13, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %214 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %213, i32 0, i32 1
  %215 = call i32 @translate_max_vl_num(%struct.ib_device* %210, i32 %212, i32* %214)
  store i32 %215, i32* %15, align 4
  br label %216

216:                                              ; preds = %209, %208, %189, %172, %161, %52, %38
  %217 = load i32*, i32** %9, align 8
  %218 = call i32 @kvfree(i32* %217)
  %219 = load %struct.mlx5_ptys_reg*, %struct.mlx5_ptys_reg** %11, align 8
  %220 = call i32 @kfree(%struct.mlx5_ptys_reg* %219)
  %221 = load %struct.mlx5_pmtu_reg*, %struct.mlx5_pmtu_reg** %12, align 8
  %222 = bitcast %struct.mlx5_pmtu_reg* %221 to %struct.mlx5_ptys_reg*
  %223 = call i32 @kfree(%struct.mlx5_ptys_reg* %222)
  %224 = load i32, i32* %15, align 4
  ret i32 %224
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(%struct.ib_device*) #1

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i32* @mlx5_vzalloc(i32) #1

declare dso_local %struct.mlx5_ptys_reg* @kzalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.mlx5_pvlc_reg*, i32, i32) #1

declare dso_local i32 @mlx5_query_hca_vport_context(%struct.mlx5_core_dev*, i8*, i32, i32*, i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i32, i32*, i32) #1

declare dso_local i8* @MLX5_GET(i32, i8*, i32) #1

declare dso_local i32 @mlx5_get_gid_table_len(i32) #1

declare dso_local i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_to_sw_pkey_sz(i32) #1

declare dso_local i32 @mlx5_core_access_ptys(%struct.mlx5_core_dev*, %struct.mlx5_ptys_reg*, i32) #1

declare dso_local i32 @translate_active_width(%struct.ib_device*, i32, i32*) #1

declare dso_local i32 @mlx5_core_access_pmtu(%struct.mlx5_core_dev*, %struct.mlx5_ptys_reg*, i32) #1

declare dso_local i32 @mlx5_core_access_pvlc(%struct.mlx5_core_dev*, %struct.mlx5_pvlc_reg*, i32) #1

declare dso_local i32 @translate_max_vl_num(%struct.ib_device*, i32, i32*) #1

declare dso_local i32 @kvfree(i32*) #1

declare dso_local i32 @kfree(%struct.mlx5_ptys_reg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
