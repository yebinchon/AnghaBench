; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_cq.c_handle_atomic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_cq.c_handle_atomic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_qp = type { i32 }
%struct.mlx5_cqe64 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_ib_qp*, %struct.mlx5_cqe64*, i32)* @handle_atomic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_atomic(%struct.mlx5_ib_qp* %0, %struct.mlx5_cqe64* %1, i32 %2) #0 {
  %4 = alloca %struct.mlx5_ib_qp*, align 8
  %5 = alloca %struct.mlx5_cqe64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mlx5_ib_qp* %0, %struct.mlx5_ib_qp** %4, align 8
  store %struct.mlx5_cqe64* %1, %struct.mlx5_cqe64** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %4, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @is_atomic_response(%struct.mlx5_ib_qp* %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %52

15:                                               ; preds = %3
  %16 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %5, align 8
  %17 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @be32_to_cpu(i32 %18)
  %20 = ptrtoint i8* %19 to i32
  store i32 %20, i32* %8, align 4
  %21 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i8* @mlx5_get_atomic_laddr(%struct.mlx5_ib_qp* %21, i32 %22)
  store i8* %23, i8** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 %24, 4
  br i1 %25, label %26, label %33

26:                                               ; preds = %15
  %27 = load i8*, i8** %7, align 8
  %28 = bitcast i8* %27 to i32*
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @be32_to_cpu(i32 %29)
  %31 = load i8*, i8** %7, align 8
  %32 = bitcast i8* %31 to i8**
  store i8* %30, i8** %32, align 8
  br label %51

33:                                               ; preds = %15
  store i32 0, i32* %9, align 4
  br label %34

34:                                               ; preds = %47, %33
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %34
  %39 = load i8*, i8** %7, align 8
  %40 = bitcast i8* %39 to i32*
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @be64_to_cpu(i32 %41)
  %43 = load i8*, i8** %7, align 8
  %44 = bitcast i8* %43 to i32*
  store i32 %42, i32* %44, align 4
  %45 = load i8*, i8** %7, align 8
  %46 = getelementptr i8, i8* %45, i64 8
  store i8* %46, i8** %7, align 8
  br label %47

47:                                               ; preds = %38
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 8
  store i32 %49, i32* %9, align 4
  br label %34

50:                                               ; preds = %34
  br label %51

51:                                               ; preds = %50, %26
  br label %52

52:                                               ; preds = %51, %14
  ret void
}

declare dso_local i32 @is_atomic_response(%struct.mlx5_ib_qp*, i32) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i8* @mlx5_get_atomic_laddr(%struct.mlx5_ib_qp*, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
