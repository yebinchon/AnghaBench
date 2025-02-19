; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_raw_packet_qp_copy_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_raw_packet_qp_copy_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_qp = type { i32, i32, i32 }
%struct.mlx5_ib_raw_packet_qp = type { %struct.mlx5_ib_rq, %struct.mlx5_ib_sq }
%struct.mlx5_ib_rq = type { i32*, i32* }
%struct.mlx5_ib_sq = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_ib_qp*, %struct.mlx5_ib_raw_packet_qp*)* @raw_packet_qp_copy_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raw_packet_qp_copy_info(%struct.mlx5_ib_qp* %0, %struct.mlx5_ib_raw_packet_qp* %1) #0 {
  %3 = alloca %struct.mlx5_ib_qp*, align 8
  %4 = alloca %struct.mlx5_ib_raw_packet_qp*, align 8
  %5 = alloca %struct.mlx5_ib_sq*, align 8
  %6 = alloca %struct.mlx5_ib_rq*, align 8
  store %struct.mlx5_ib_qp* %0, %struct.mlx5_ib_qp** %3, align 8
  store %struct.mlx5_ib_raw_packet_qp* %1, %struct.mlx5_ib_raw_packet_qp** %4, align 8
  %7 = load %struct.mlx5_ib_raw_packet_qp*, %struct.mlx5_ib_raw_packet_qp** %4, align 8
  %8 = getelementptr inbounds %struct.mlx5_ib_raw_packet_qp, %struct.mlx5_ib_raw_packet_qp* %7, i32 0, i32 1
  store %struct.mlx5_ib_sq* %8, %struct.mlx5_ib_sq** %5, align 8
  %9 = load %struct.mlx5_ib_raw_packet_qp*, %struct.mlx5_ib_raw_packet_qp** %4, align 8
  %10 = getelementptr inbounds %struct.mlx5_ib_raw_packet_qp, %struct.mlx5_ib_raw_packet_qp* %9, i32 0, i32 0
  store %struct.mlx5_ib_rq* %10, %struct.mlx5_ib_rq** %6, align 8
  %11 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %3, align 8
  %12 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %11, i32 0, i32 2
  %13 = load %struct.mlx5_ib_sq*, %struct.mlx5_ib_sq** %5, align 8
  %14 = getelementptr inbounds %struct.mlx5_ib_sq, %struct.mlx5_ib_sq* %13, i32 0, i32 1
  store i32* %12, i32** %14, align 8
  %15 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %3, align 8
  %16 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %15, i32 0, i32 1
  %17 = load %struct.mlx5_ib_rq*, %struct.mlx5_ib_rq** %6, align 8
  %18 = getelementptr inbounds %struct.mlx5_ib_rq, %struct.mlx5_ib_rq* %17, i32 0, i32 1
  store i32* %16, i32** %18, align 8
  %19 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %3, align 8
  %20 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %19, i32 0, i32 0
  %21 = load %struct.mlx5_ib_sq*, %struct.mlx5_ib_sq** %5, align 8
  %22 = getelementptr inbounds %struct.mlx5_ib_sq, %struct.mlx5_ib_sq* %21, i32 0, i32 0
  store i32* %20, i32** %22, align 8
  %23 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %3, align 8
  %24 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %23, i32 0, i32 0
  %25 = load %struct.mlx5_ib_rq*, %struct.mlx5_ib_rq** %6, align 8
  %26 = getelementptr inbounds %struct.mlx5_ib_rq, %struct.mlx5_ib_rq* %25, i32 0, i32 0
  store i32* %24, i32** %26, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
