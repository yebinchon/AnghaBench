; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_gsi.c_mlx5_ib_gsi_post_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_gsi.c_mlx5_ib_gsi_post_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_recv_wr = type { i32 }
%struct.mlx5_ib_gsi_qp = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_ib_gsi_post_recv(%struct.ib_qp* %0, %struct.ib_recv_wr* %1, %struct.ib_recv_wr** %2) #0 {
  %4 = alloca %struct.ib_qp*, align 8
  %5 = alloca %struct.ib_recv_wr*, align 8
  %6 = alloca %struct.ib_recv_wr**, align 8
  %7 = alloca %struct.mlx5_ib_gsi_qp*, align 8
  store %struct.ib_qp* %0, %struct.ib_qp** %4, align 8
  store %struct.ib_recv_wr* %1, %struct.ib_recv_wr** %5, align 8
  store %struct.ib_recv_wr** %2, %struct.ib_recv_wr*** %6, align 8
  %8 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %9 = call %struct.mlx5_ib_gsi_qp* @gsi_qp(%struct.ib_qp* %8)
  store %struct.mlx5_ib_gsi_qp* %9, %struct.mlx5_ib_gsi_qp** %7, align 8
  %10 = load %struct.mlx5_ib_gsi_qp*, %struct.mlx5_ib_gsi_qp** %7, align 8
  %11 = getelementptr inbounds %struct.mlx5_ib_gsi_qp, %struct.mlx5_ib_gsi_qp* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %14 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %6, align 8
  %15 = call i32 @ib_post_recv(i32 %12, %struct.ib_recv_wr* %13, %struct.ib_recv_wr** %14)
  ret i32 %15
}

declare dso_local %struct.mlx5_ib_gsi_qp* @gsi_qp(%struct.ib_qp*) #1

declare dso_local i32 @ib_post_recv(i32, %struct.ib_recv_wr*, %struct.ib_recv_wr**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
