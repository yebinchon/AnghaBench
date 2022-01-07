; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_gsi.c_setup_qps.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_gsi.c_setup_qps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_gsi_qp = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_ib_gsi_qp*)* @setup_qps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_qps(%struct.mlx5_ib_gsi_qp* %0) #0 {
  %2 = alloca %struct.mlx5_ib_gsi_qp*, align 8
  %3 = alloca i64, align 8
  store %struct.mlx5_ib_gsi_qp* %0, %struct.mlx5_ib_gsi_qp** %2, align 8
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %14, %1
  %5 = load i64, i64* %3, align 8
  %6 = load %struct.mlx5_ib_gsi_qp*, %struct.mlx5_ib_gsi_qp** %2, align 8
  %7 = getelementptr inbounds %struct.mlx5_ib_gsi_qp, %struct.mlx5_ib_gsi_qp* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp slt i64 %5, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %4
  %11 = load %struct.mlx5_ib_gsi_qp*, %struct.mlx5_ib_gsi_qp** %2, align 8
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @setup_qp(%struct.mlx5_ib_gsi_qp* %11, i64 %12)
  br label %14

14:                                               ; preds = %10
  %15 = load i64, i64* %3, align 8
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* %3, align 8
  br label %4

17:                                               ; preds = %4
  ret void
}

declare dso_local i32 @setup_qp(%struct.mlx5_ib_gsi_qp*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
