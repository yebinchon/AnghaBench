; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga/extr_mlx5fpga_conn.c_mlx5_fpga_conn_destroy_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga/extr_mlx5fpga_conn.c_mlx5_fpga_conn_destroy_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fpga_conn = type { %struct.TYPE_8__, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_fpga_conn*)* @mlx5_fpga_conn_destroy_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_fpga_conn_destroy_qp(%struct.mlx5_fpga_conn* %0) #0 {
  %2 = alloca %struct.mlx5_fpga_conn*, align 8
  store %struct.mlx5_fpga_conn* %0, %struct.mlx5_fpga_conn** %2, align 8
  %3 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %2, align 8
  %4 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %3, i32 0, i32 1
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %2, align 8
  %9 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 3
  %11 = call i32 @mlx5_core_destroy_qp(i32 %7, i32* %10)
  %12 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %2, align 8
  %13 = call i32 @mlx5_fpga_conn_free_recv_bufs(%struct.mlx5_fpga_conn* %12)
  %14 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %2, align 8
  %15 = call i32 @mlx5_fpga_conn_flush_send_bufs(%struct.mlx5_fpga_conn* %14)
  %16 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %2, align 8
  %17 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @kvfree(i32 %20)
  %22 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %2, align 8
  %23 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @kvfree(i32 %26)
  %28 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %2, align 8
  %29 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = call i32 @mlx5_wq_destroy(i32* %30)
  ret void
}

declare dso_local i32 @mlx5_core_destroy_qp(i32, i32*) #1

declare dso_local i32 @mlx5_fpga_conn_free_recv_bufs(%struct.mlx5_fpga_conn*) #1

declare dso_local i32 @mlx5_fpga_conn_flush_send_bufs(%struct.mlx5_fpga_conn*) #1

declare dso_local i32 @kvfree(i32) #1

declare dso_local i32 @mlx5_wq_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
