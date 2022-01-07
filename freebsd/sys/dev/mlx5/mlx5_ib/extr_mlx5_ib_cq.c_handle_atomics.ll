; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_cq.c_handle_atomics.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_cq.c_handle_atomics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_qp = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mlx5_cqe64 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_ib_qp*, %struct.mlx5_cqe64*, i32, i32)* @handle_atomics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_atomics(%struct.mlx5_ib_qp* %0, %struct.mlx5_cqe64* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mlx5_ib_qp*, align 8
  %6 = alloca %struct.mlx5_cqe64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mlx5_ib_qp* %0, %struct.mlx5_ib_qp** %5, align 8
  store %struct.mlx5_cqe64* %1, %struct.mlx5_cqe64** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  br label %10

10:                                               ; preds = %36, %4
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %5, align 8
  %13 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sub nsw i32 %15, 1
  %17 = and i32 %11, %16
  store i32 %17, i32* %9, align 4
  %18 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %5, align 8
  %19 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %6, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @handle_atomic(%struct.mlx5_ib_qp* %18, %struct.mlx5_cqe64* %19, i32 %20)
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %10
  br label %37

26:                                               ; preds = %10
  %27 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %5, align 8
  %28 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %26
  br i1 true, label %10, label %37

37:                                               ; preds = %36, %25
  %38 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %5, align 8
  %39 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %5, align 8
  %49 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 4
  ret void
}

declare dso_local i32 @handle_atomic(%struct.mlx5_ib_qp*, %struct.mlx5_cqe64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
