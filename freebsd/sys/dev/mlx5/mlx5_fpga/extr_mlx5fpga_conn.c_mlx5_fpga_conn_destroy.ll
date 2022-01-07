; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga/extr_mlx5fpga_conn.c_mlx5_fpga_conn_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga/extr_mlx5fpga_conn.c_mlx5_fpga_conn_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fpga_conn = type { %struct.TYPE_6__, %struct.mlx5_fpga_device*, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.mlx5_fpga_device = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@MLX5_CMD_OP_2ERR_QP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"qp_modify 2ERR failed: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_fpga_conn_destroy(%struct.mlx5_fpga_conn* %0) #0 {
  %2 = alloca %struct.mlx5_fpga_conn*, align 8
  %3 = alloca %struct.mlx5_fpga_device*, align 8
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx5_fpga_conn* %0, %struct.mlx5_fpga_conn** %2, align 8
  %6 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %2, align 8
  %7 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %6, i32 0, i32 1
  %8 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %7, align 8
  store %struct.mlx5_fpga_device* %8, %struct.mlx5_fpga_device** %3, align 8
  %9 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %10 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %9, i32 0, i32 0
  %11 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %10, align 8
  store %struct.mlx5_core_dev* %11, %struct.mlx5_core_dev** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %2, align 8
  %13 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %2, align 8
  %16 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = call i32 @tasklet_disable(i32* %17)
  %19 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %2, align 8
  %20 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @synchronize_irq(i32 %23)
  %25 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %2, align 8
  %26 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %25, i32 0, i32 1
  %27 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %26, align 8
  %28 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %27, i32 0, i32 0
  %29 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %28, align 8
  %30 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %2, align 8
  %31 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @mlx5_fpga_destroy_qp(%struct.mlx5_core_dev* %29, i32 %32)
  %34 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %35 = load i32, i32* @MLX5_CMD_OP_2ERR_QP, align 4
  %36 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %2, align 8
  %37 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  %39 = call i32 @mlx5_core_qp_modify(%struct.mlx5_core_dev* %34, i32 %35, i32 0, i32* null, i32* %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %1
  %43 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @mlx5_fpga_warn(%struct.mlx5_fpga_device* %43, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %42, %1
  %47 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %2, align 8
  %48 = call i32 @mlx5_fpga_conn_destroy_qp(%struct.mlx5_fpga_conn* %47)
  %49 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %2, align 8
  %50 = call i32 @mlx5_fpga_conn_destroy_cq(%struct.mlx5_fpga_conn* %49)
  %51 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %2, align 8
  %52 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %51, i32 0, i32 1
  %53 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %52, align 8
  %54 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %53, i32 0, i32 0
  %55 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %54, align 8
  %56 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %2, align 8
  %57 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @mlx5_core_roce_gid_set(%struct.mlx5_core_dev* %55, i32 %59, i32 0, i32 0, i32* null, i32* null, i32 0, i32 0)
  %61 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %2, align 8
  %62 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %61, i32 0, i32 1
  %63 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %62, align 8
  %64 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %63, i32 0, i32 0
  %65 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %64, align 8
  %66 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %2, align 8
  %67 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @mlx5_core_reserved_gid_free(%struct.mlx5_core_dev* %65, i32 %69)
  %71 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %2, align 8
  %72 = call i32 @kfree(%struct.mlx5_fpga_conn* %71)
  ret void
}

declare dso_local i32 @tasklet_disable(i32*) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @mlx5_fpga_destroy_qp(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_core_qp_modify(%struct.mlx5_core_dev*, i32, i32, i32*, i32*) #1

declare dso_local i32 @mlx5_fpga_warn(%struct.mlx5_fpga_device*, i8*, i32) #1

declare dso_local i32 @mlx5_fpga_conn_destroy_qp(%struct.mlx5_fpga_conn*) #1

declare dso_local i32 @mlx5_fpga_conn_destroy_cq(%struct.mlx5_fpga_conn*) #1

declare dso_local i32 @mlx5_core_roce_gid_set(%struct.mlx5_core_dev*, i32, i32, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @mlx5_core_reserved_gid_free(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @kfree(%struct.mlx5_fpga_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
