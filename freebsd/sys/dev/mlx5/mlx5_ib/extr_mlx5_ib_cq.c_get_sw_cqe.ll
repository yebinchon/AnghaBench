; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_cq.c_get_sw_cqe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_cq.c_get_sw_cqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_cq = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.mlx5_cqe64 = type { i32 }

@MLX5_CQE_INVALID = common dso_local global i32 0, align 4
@MLX5_CQE_OWNER_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.mlx5_ib_cq*, i32)* @get_sw_cqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_sw_cqe(%struct.mlx5_ib_cq* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.mlx5_ib_cq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mlx5_cqe64*, align 8
  store %struct.mlx5_ib_cq* %0, %struct.mlx5_ib_cq** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %4, align 8
  %11 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %9, %13
  %15 = call i8* @get_cqe(%struct.mlx5_ib_cq* %8, i32 %14)
  store i8* %15, i8** %6, align 8
  %16 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %4, align 8
  %17 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 64
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i8*, i8** %6, align 8
  br label %26

23:                                               ; preds = %2
  %24 = load i8*, i8** %6, align 8
  %25 = getelementptr i8, i8* %24, i64 64
  br label %26

26:                                               ; preds = %23, %21
  %27 = phi i8* [ %22, %21 ], [ %25, %23 ]
  %28 = bitcast i8* %27 to %struct.mlx5_cqe64*
  store %struct.mlx5_cqe64* %28, %struct.mlx5_cqe64** %7, align 8
  %29 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %7, align 8
  %30 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %31, 4
  %33 = load i32, i32* @MLX5_CQE_INVALID, align 4
  %34 = icmp ne i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i64 @likely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %59

38:                                               ; preds = %26
  %39 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %7, align 8
  %40 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @MLX5_CQE_OWNER_MASK, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %4, align 8
  %46 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  %50 = and i32 %44, %49
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = xor i32 %43, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %38
  %58 = load i8*, i8** %6, align 8
  store i8* %58, i8** %3, align 8
  br label %60

59:                                               ; preds = %38, %26
  store i8* null, i8** %3, align 8
  br label %60

60:                                               ; preds = %59, %57
  %61 = load i8*, i8** %3, align 8
  ret i8* %61
}

declare dso_local i8* @get_cqe(%struct.mlx5_ib_cq*, i32) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
