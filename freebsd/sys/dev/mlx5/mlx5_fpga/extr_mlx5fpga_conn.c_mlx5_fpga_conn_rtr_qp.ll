; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga/extr_mlx5fpga_conn.c_mlx5_fpga_conn_rtr_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga/extr_mlx5fpga_conn.c_mlx5_fpga_conn_rtr_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.mlx5_fpga_conn = type { %struct.TYPE_3__, i32*, i32, %struct.mlx5_fpga_device* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.mlx5_fpga_device = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"QP RTR\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mtu = common dso_local global i32 0, align 4
@MLX5_QPC_MTU_1K_BYTES = common dso_local global i32 0, align 4
@log_msg_max = common dso_local global i32 0, align 4
@log_max_msg = common dso_local global i32 0, align 4
@remote_qpn = common dso_local global i32 0, align 4
@next_rcv_psn = common dso_local global i32 0, align 4
@fpga_qpc = common dso_local global i32* null, align 8
@next_send_psn = common dso_local global i32 0, align 4
@primary_address_path = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@MLX5_FPGA_PKEY_INDEX = common dso_local global i32 0, align 4
@MLX5_FPGA_PORT_NUM = common dso_local global i32 0, align 4
@fpga_mac_47_32 = common dso_local global i32 0, align 4
@r_roce_min_src_udp_port = common dso_local global i32 0, align 4
@fpga_ip = common dso_local global i32 0, align 4
@MLX5_CMD_OP_INIT2RTR_QP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"qp_modify RST2INIT failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_fpga_conn*)* @mlx5_fpga_conn_rtr_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_fpga_conn_rtr_qp(%struct.mlx5_fpga_conn* %0) #0 {
  %2 = alloca %struct.mlx5_fpga_conn*, align 8
  %3 = alloca %struct.mlx5_fpga_device*, align 8
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.mlx5_fpga_conn* %0, %struct.mlx5_fpga_conn** %2, align 8
  %7 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %2, align 8
  %8 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %7, i32 0, i32 3
  %9 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %8, align 8
  store %struct.mlx5_fpga_device* %9, %struct.mlx5_fpga_device** %3, align 8
  %10 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %11 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %10, i32 0, i32 0
  %12 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %11, align 8
  store %struct.mlx5_core_dev* %12, %struct.mlx5_core_dev** %4, align 8
  store i32* null, i32** %5, align 8
  %13 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %2, align 8
  %14 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %13, i32 0, i32 3
  %15 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %14, align 8
  %16 = call i32 @mlx5_fpga_dbg(%struct.mlx5_fpga_device* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @MLX5_ST_SZ_BYTES(i32* %17)
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i32* @kzalloc(i32 %18, i32 %19)
  store i32* %20, i32** %5, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %125

26:                                               ; preds = %1
  %27 = load i32*, i32** %5, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* @mtu, align 4
  %30 = load i32, i32* @MLX5_QPC_MTU_1K_BYTES, align 4
  %31 = call i32 @MLX5_SET(i32* %27, i32* %28, i32 %29, i32 %30)
  %32 = load i32*, i32** %5, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* @log_msg_max, align 4
  %35 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %36 = load i32, i32* @log_max_msg, align 4
  %37 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %35, i32 %36)
  %38 = trunc i64 %37 to i32
  %39 = call i32 @MLX5_SET(i32* %32, i32* %33, i32 %34, i32 %38)
  %40 = load i32*, i32** %5, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* @remote_qpn, align 4
  %43 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %2, align 8
  %44 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @MLX5_SET(i32* %40, i32* %41, i32 %42, i32 %45)
  %47 = load i32*, i32** %5, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* @next_rcv_psn, align 4
  %50 = load i32*, i32** @fpga_qpc, align 8
  %51 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %2, align 8
  %52 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* @next_send_psn, align 4
  %55 = call i32 @MLX5_GET(i32* %50, i32* %53, i32 %54)
  %56 = call i32 @MLX5_SET(i32* %47, i32* %48, i32 %49, i32 %55)
  %57 = load i32*, i32** %5, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @primary_address_path, i32 0, i32 6), align 4
  %60 = load i32, i32* @MLX5_FPGA_PKEY_INDEX, align 4
  %61 = call i32 @MLX5_SET(i32* %57, i32* %58, i32 %59, i32 %60)
  %62 = load i32*, i32** %5, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @primary_address_path, i32 0, i32 5), align 4
  %65 = load i32, i32* @MLX5_FPGA_PORT_NUM, align 4
  %66 = call i32 @MLX5_SET(i32* %62, i32* %63, i32 %64, i32 %65)
  %67 = load i32*, i32** %5, align 8
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @primary_address_path, i32 0, i32 4), align 4
  %70 = call i32 @MLX5_ADDR_OF(i32* %67, i32* %68, i32 %69)
  %71 = load i32*, i32** @fpga_qpc, align 8
  %72 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %2, align 8
  %73 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* @fpga_mac_47_32, align 4
  %76 = call i32 @MLX5_ADDR_OF(i32* %71, i32* %74, i32 %75)
  %77 = call i32 @ether_addr_copy(i32 %70, i32 %76)
  %78 = load i32*, i32** %5, align 8
  %79 = load i32*, i32** %5, align 8
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @primary_address_path, i32 0, i32 3), align 4
  %81 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %82 = load i32, i32* @r_roce_min_src_udp_port, align 4
  %83 = call i32 @MLX5_CAP_ROCE(%struct.mlx5_core_dev* %81, i32 %82)
  %84 = call i32 @MLX5_SET(i32* %78, i32* %79, i32 %80, i32 %83)
  %85 = load i32*, i32** %5, align 8
  %86 = load i32*, i32** %5, align 8
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @primary_address_path, i32 0, i32 2), align 4
  %88 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %2, align 8
  %89 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @MLX5_SET(i32* %85, i32* %86, i32 %87, i32 %91)
  %93 = load i32*, i32** %5, align 8
  %94 = load i32*, i32** %5, align 8
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @primary_address_path, i32 0, i32 1), align 4
  %96 = call i32 @MLX5_SET(i32* %93, i32* %94, i32 %95, i32 0)
  %97 = load i32*, i32** %5, align 8
  %98 = load i32*, i32** %5, align 8
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @primary_address_path, i32 0, i32 0), align 4
  %100 = call i32 @MLX5_ADDR_OF(i32* %97, i32* %98, i32 %99)
  %101 = load i32*, i32** @fpga_qpc, align 8
  %102 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %2, align 8
  %103 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* @fpga_ip, align 4
  %106 = call i32 @MLX5_ADDR_OF(i32* %101, i32* %104, i32 %105)
  %107 = load i32*, i32** %5, align 8
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @primary_address_path, i32 0, i32 0), align 4
  %109 = call i32 @MLX5_FLD_SZ_BYTES(i32* %107, i32 %108)
  %110 = call i32 @memcpy(i32 %100, i32 %106, i32 %109)
  %111 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %112 = load i32, i32* @MLX5_CMD_OP_INIT2RTR_QP, align 4
  %113 = load i32*, i32** %5, align 8
  %114 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %2, align 8
  %115 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = call i32 @mlx5_core_qp_modify(%struct.mlx5_core_dev* %111, i32 %112, i32 0, i32* %113, i32* %116)
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %6, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %26
  %121 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %122 = load i32, i32* %6, align 4
  %123 = call i32 @mlx5_fpga_warn(%struct.mlx5_fpga_device* %121, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %122)
  br label %125

124:                                              ; preds = %26
  br label %125

125:                                              ; preds = %124, %120, %23
  %126 = load i32*, i32** %5, align 8
  %127 = call i32 @kfree(i32* %126)
  %128 = load i32, i32* %6, align 4
  ret i32 %128
}

declare dso_local i32 @mlx5_fpga_dbg(%struct.mlx5_fpga_device*, i8*) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32*) #1

declare dso_local i32 @MLX5_SET(i32*, i32*, i32, i32) #1

declare dso_local i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @MLX5_GET(i32*, i32*, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @MLX5_ADDR_OF(i32*, i32*, i32) #1

declare dso_local i32 @MLX5_CAP_ROCE(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @MLX5_FLD_SZ_BYTES(i32*, i32) #1

declare dso_local i32 @mlx5_core_qp_modify(%struct.mlx5_core_dev*, i32, i32, i32*, i32*) #1

declare dso_local i32 @mlx5_fpga_warn(%struct.mlx5_fpga_device*, i8*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
