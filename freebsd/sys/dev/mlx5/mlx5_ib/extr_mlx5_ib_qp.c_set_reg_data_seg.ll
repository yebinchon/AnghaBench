; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_set_reg_data_seg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_set_reg_data_seg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_wqe_data_seg = type { i8*, i8*, i32 }
%struct.mlx5_ib_mr = type { i32, i32, i32 }
%struct.mlx5_ib_pd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_wqe_data_seg*, %struct.mlx5_ib_mr*, %struct.mlx5_ib_pd*)* @set_reg_data_seg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_reg_data_seg(%struct.mlx5_wqe_data_seg* %0, %struct.mlx5_ib_mr* %1, %struct.mlx5_ib_pd* %2) #0 {
  %4 = alloca %struct.mlx5_wqe_data_seg*, align 8
  %5 = alloca %struct.mlx5_ib_mr*, align 8
  %6 = alloca %struct.mlx5_ib_pd*, align 8
  %7 = alloca i32, align 4
  store %struct.mlx5_wqe_data_seg* %0, %struct.mlx5_wqe_data_seg** %4, align 8
  store %struct.mlx5_ib_mr* %1, %struct.mlx5_ib_mr** %5, align 8
  store %struct.mlx5_ib_pd* %2, %struct.mlx5_ib_pd** %6, align 8
  %8 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %5, align 8
  %9 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %5, align 8
  %12 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = mul nsw i32 %10, %13
  store i32 %14, i32* %7, align 4
  %15 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %5, align 8
  %16 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @cpu_to_be64(i32 %17)
  %19 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %4, align 8
  %20 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @ALIGN(i32 %21, i32 64)
  %23 = call i8* @cpu_to_be32(i32 %22)
  %24 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %4, align 8
  %25 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load %struct.mlx5_ib_pd*, %struct.mlx5_ib_pd** %6, align 8
  %27 = getelementptr inbounds %struct.mlx5_ib_pd, %struct.mlx5_ib_pd* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @cpu_to_be32(i32 %29)
  %31 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %4, align 8
  %32 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  ret void
}

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
