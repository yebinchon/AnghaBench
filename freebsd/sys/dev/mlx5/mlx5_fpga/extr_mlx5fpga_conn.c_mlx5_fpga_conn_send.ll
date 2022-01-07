; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga/extr_mlx5fpga_conn.c_mlx5_fpga_conn_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga/extr_mlx5fpga_conn.c_mlx5_fpga_conn_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fpga_conn = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i64, i64, i32, i32 }
%struct.mlx5_fpga_dma_buf = type { i32 }

@ENOTCONN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_fpga_conn_send(%struct.mlx5_fpga_conn* %0, %struct.mlx5_fpga_dma_buf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_fpga_conn*, align 8
  %5 = alloca %struct.mlx5_fpga_dma_buf*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.mlx5_fpga_conn* %0, %struct.mlx5_fpga_conn** %4, align 8
  store %struct.mlx5_fpga_dma_buf* %1, %struct.mlx5_fpga_dma_buf** %5, align 8
  %8 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  %9 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOTCONN, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %68

16:                                               ; preds = %2
  %17 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  %18 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %5, align 8
  %19 = call i32 @mlx5_fpga_conn_map_buf(%struct.mlx5_fpga_conn* %17, %struct.mlx5_fpga_dma_buf* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %3, align 4
  br label %68

24:                                               ; preds = %16
  %25 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  %26 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 3
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  %32 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  %37 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %35, %40
  %42 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  %43 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp sge i64 %41, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %24
  %49 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %5, align 8
  %50 = getelementptr inbounds %struct.mlx5_fpga_dma_buf, %struct.mlx5_fpga_dma_buf* %49, i32 0, i32 0
  %51 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  %52 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 4
  %55 = call i32 @list_add_tail(i32* %50, i32* %54)
  br label %60

56:                                               ; preds = %24
  %57 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  %58 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %5, align 8
  %59 = call i32 @mlx5_fpga_conn_post_send(%struct.mlx5_fpga_conn* %57, %struct.mlx5_fpga_dma_buf* %58)
  br label %60

60:                                               ; preds = %56, %48
  %61 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  %62 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 3
  %65 = load i64, i64* %6, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i64 %65)
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %60, %22, %13
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @mlx5_fpga_conn_map_buf(%struct.mlx5_fpga_conn*, %struct.mlx5_fpga_dma_buf*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mlx5_fpga_conn_post_send(%struct.mlx5_fpga_conn*, %struct.mlx5_fpga_dma_buf*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
