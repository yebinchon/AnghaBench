; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga/extr_mlx5fpga_conn.c_mlx5_fpga_conn_rts_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga/extr_mlx5fpga_conn.c_mlx5_fpga_conn_rts_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.mlx5_fpga_conn = type { %struct.TYPE_3__, i32, %struct.mlx5_fpga_device* }
%struct.TYPE_3__ = type { i32 }
%struct.mlx5_fpga_device = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"QP RTS\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@log_ack_req_freq = common dso_local global i32 0, align 4
@min_rnr_nak = common dso_local global i32 0, align 4
@primary_address_path = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@next_send_psn = common dso_local global i32 0, align 4
@fpga_qpc = common dso_local global i32 0, align 4
@next_rcv_psn = common dso_local global i32 0, align 4
@retry_count = common dso_local global i32 0, align 4
@rnr_retry = common dso_local global i32 0, align 4
@MLX5_QP_OPTPAR_RNR_TIMEOUT = common dso_local global i32 0, align 4
@MLX5_CMD_OP_RTR2RTS_QP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"qp_modify RST2INIT failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_fpga_conn*)* @mlx5_fpga_conn_rts_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_fpga_conn_rts_qp(%struct.mlx5_fpga_conn* %0) #0 {
  %2 = alloca %struct.mlx5_fpga_conn*, align 8
  %3 = alloca %struct.mlx5_fpga_device*, align 8
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mlx5_fpga_conn* %0, %struct.mlx5_fpga_conn** %2, align 8
  %8 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %2, align 8
  %9 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %8, i32 0, i32 2
  %10 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %9, align 8
  store %struct.mlx5_fpga_device* %10, %struct.mlx5_fpga_device** %3, align 8
  %11 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %12 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %11, i32 0, i32 0
  %13 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %12, align 8
  store %struct.mlx5_core_dev* %13, %struct.mlx5_core_dev** %4, align 8
  store i32* null, i32** %5, align 8
  %14 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %2, align 8
  %15 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %14, i32 0, i32 2
  %16 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %15, align 8
  %17 = call i32 @mlx5_fpga_dbg(%struct.mlx5_fpga_device* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @MLX5_ST_SZ_BYTES(i32* %18)
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i32* @kzalloc(i32 %19, i32 %20)
  store i32* %21, i32** %5, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %74

27:                                               ; preds = %1
  %28 = load i32*, i32** %5, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* @log_ack_req_freq, align 4
  %31 = call i32 @MLX5_SET(i32* %28, i32* %29, i32 %30, i32 8)
  %32 = load i32*, i32** %5, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* @min_rnr_nak, align 4
  %35 = call i32 @MLX5_SET(i32* %32, i32* %33, i32 %34, i32 18)
  %36 = load i32*, i32** %5, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @primary_address_path, i32 0, i32 0), align 4
  %39 = call i32 @MLX5_SET(i32* %36, i32* %37, i32 %38, i32 18)
  %40 = load i32*, i32** %5, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* @next_send_psn, align 4
  %43 = load i32, i32* @fpga_qpc, align 4
  %44 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %2, align 8
  %45 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @next_rcv_psn, align 4
  %48 = call i32 @MLX5_GET(i32 %43, i32 %46, i32 %47)
  %49 = call i32 @MLX5_SET(i32* %40, i32* %41, i32 %42, i32 %48)
  %50 = load i32*, i32** %5, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* @retry_count, align 4
  %53 = call i32 @MLX5_SET(i32* %50, i32* %51, i32 %52, i32 7)
  %54 = load i32*, i32** %5, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* @rnr_retry, align 4
  %57 = call i32 @MLX5_SET(i32* %54, i32* %55, i32 %56, i32 7)
  %58 = load i32, i32* @MLX5_QP_OPTPAR_RNR_TIMEOUT, align 4
  store i32 %58, i32* %6, align 4
  %59 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %60 = load i32, i32* @MLX5_CMD_OP_RTR2RTS_QP, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32*, i32** %5, align 8
  %63 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %2, align 8
  %64 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = call i32 @mlx5_core_qp_modify(%struct.mlx5_core_dev* %59, i32 %60, i32 %61, i32* %62, i32* %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %27
  %70 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @mlx5_fpga_warn(%struct.mlx5_fpga_device* %70, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  br label %74

73:                                               ; preds = %27
  br label %74

74:                                               ; preds = %73, %69, %24
  %75 = load i32*, i32** %5, align 8
  %76 = call i32 @kfree(i32* %75)
  %77 = load i32, i32* %7, align 4
  ret i32 %77
}

declare dso_local i32 @mlx5_fpga_dbg(%struct.mlx5_fpga_device*, i8*) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32*) #1

declare dso_local i32 @MLX5_SET(i32*, i32*, i32, i32) #1

declare dso_local i32 @MLX5_GET(i32, i32, i32) #1

declare dso_local i32 @mlx5_core_qp_modify(%struct.mlx5_core_dev*, i32, i32, i32*, i32*) #1

declare dso_local i32 @mlx5_fpga_warn(%struct.mlx5_fpga_device*, i8*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
