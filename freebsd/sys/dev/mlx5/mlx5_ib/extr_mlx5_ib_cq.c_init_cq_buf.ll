; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_cq.c_init_cq_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_cq.c_init_cq_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_cq = type { i32 }
%struct.mlx5_ib_cq_buf = type { i32, i32 }
%struct.mlx5_cqe64 = type { i32 }

@MLX5_CQE_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_ib_cq*, %struct.mlx5_ib_cq_buf*)* @init_cq_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_cq_buf(%struct.mlx5_ib_cq* %0, %struct.mlx5_ib_cq_buf* %1) #0 {
  %3 = alloca %struct.mlx5_ib_cq*, align 8
  %4 = alloca %struct.mlx5_ib_cq_buf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mlx5_cqe64*, align 8
  store %struct.mlx5_ib_cq* %0, %struct.mlx5_ib_cq** %3, align 8
  store %struct.mlx5_ib_cq_buf* %1, %struct.mlx5_ib_cq_buf** %4, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %37, %2
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.mlx5_ib_cq_buf*, %struct.mlx5_ib_cq_buf** %4, align 8
  %11 = getelementptr inbounds %struct.mlx5_ib_cq_buf, %struct.mlx5_ib_cq_buf* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %40

14:                                               ; preds = %8
  %15 = load %struct.mlx5_ib_cq_buf*, %struct.mlx5_ib_cq_buf** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.mlx5_ib_cq_buf*, %struct.mlx5_ib_cq_buf** %4, align 8
  %18 = getelementptr inbounds %struct.mlx5_ib_cq_buf, %struct.mlx5_ib_cq_buf* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @get_cqe_from_buf(%struct.mlx5_ib_cq_buf* %15, i32 %16, i32 %19)
  store i8* %20, i8** %6, align 8
  %21 = load %struct.mlx5_ib_cq_buf*, %struct.mlx5_ib_cq_buf** %4, align 8
  %22 = getelementptr inbounds %struct.mlx5_ib_cq_buf, %struct.mlx5_ib_cq_buf* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 64
  br i1 %24, label %25, label %27

25:                                               ; preds = %14
  %26 = load i8*, i8** %6, align 8
  br label %30

27:                                               ; preds = %14
  %28 = load i8*, i8** %6, align 8
  %29 = getelementptr i8, i8* %28, i64 64
  br label %30

30:                                               ; preds = %27, %25
  %31 = phi i8* [ %26, %25 ], [ %29, %27 ]
  %32 = bitcast i8* %31 to %struct.mlx5_cqe64*
  store %struct.mlx5_cqe64* %32, %struct.mlx5_cqe64** %7, align 8
  %33 = load i32, i32* @MLX5_CQE_INVALID, align 4
  %34 = shl i32 %33, 4
  %35 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %7, align 8
  %36 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %30
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %8

40:                                               ; preds = %8
  ret void
}

declare dso_local i8* @get_cqe_from_buf(%struct.mlx5_ib_cq_buf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
