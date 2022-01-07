; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_srq.c_mlx5_ib_query_srq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_srq.c_mlx5_ib_query_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_srq = type { i32 }
%struct.ib_srq_attr = type { i32, i64, i32 }
%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_ib_srq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.mlx5_srq_attr = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_ib_query_srq(%struct.ib_srq* %0, %struct.ib_srq_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_srq*, align 8
  %5 = alloca %struct.ib_srq_attr*, align 8
  %6 = alloca %struct.mlx5_ib_dev*, align 8
  %7 = alloca %struct.mlx5_ib_srq*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx5_srq_attr*, align 8
  store %struct.ib_srq* %0, %struct.ib_srq** %4, align 8
  store %struct.ib_srq_attr* %1, %struct.ib_srq_attr** %5, align 8
  %10 = load %struct.ib_srq*, %struct.ib_srq** %4, align 8
  %11 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.mlx5_ib_dev* @to_mdev(i32 %12)
  store %struct.mlx5_ib_dev* %13, %struct.mlx5_ib_dev** %6, align 8
  %14 = load %struct.ib_srq*, %struct.ib_srq** %4, align 8
  %15 = call %struct.mlx5_ib_srq* @to_msrq(%struct.ib_srq* %14)
  store %struct.mlx5_ib_srq* %15, %struct.mlx5_ib_srq** %7, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.mlx5_srq_attr* @kzalloc(i32 4, i32 %16)
  store %struct.mlx5_srq_attr* %17, %struct.mlx5_srq_attr** %9, align 8
  %18 = load %struct.mlx5_srq_attr*, %struct.mlx5_srq_attr** %9, align 8
  %19 = icmp ne %struct.mlx5_srq_attr* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %57

23:                                               ; preds = %2
  %24 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %25 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mlx5_ib_srq*, %struct.mlx5_ib_srq** %7, align 8
  %28 = getelementptr inbounds %struct.mlx5_ib_srq, %struct.mlx5_ib_srq* %27, i32 0, i32 0
  %29 = load %struct.mlx5_srq_attr*, %struct.mlx5_srq_attr** %9, align 8
  %30 = call i32 @mlx5_core_query_srq(i32 %26, %struct.TYPE_2__* %28, %struct.mlx5_srq_attr* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %53

34:                                               ; preds = %23
  %35 = load %struct.mlx5_srq_attr*, %struct.mlx5_srq_attr** %9, align 8
  %36 = getelementptr inbounds %struct.mlx5_srq_attr, %struct.mlx5_srq_attr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %5, align 8
  %39 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.mlx5_ib_srq*, %struct.mlx5_ib_srq** %7, align 8
  %41 = getelementptr inbounds %struct.mlx5_ib_srq, %struct.mlx5_ib_srq* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %43, 1
  %45 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %5, align 8
  %46 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  %47 = load %struct.mlx5_ib_srq*, %struct.mlx5_ib_srq** %7, align 8
  %48 = getelementptr inbounds %struct.mlx5_ib_srq, %struct.mlx5_ib_srq* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %5, align 8
  %52 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  br label %53

53:                                               ; preds = %34, %33
  %54 = load %struct.mlx5_srq_attr*, %struct.mlx5_srq_attr** %9, align 8
  %55 = call i32 @kfree(%struct.mlx5_srq_attr* %54)
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %53, %20
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(i32) #1

declare dso_local %struct.mlx5_ib_srq* @to_msrq(%struct.ib_srq*) #1

declare dso_local %struct.mlx5_srq_attr* @kzalloc(i32, i32) #1

declare dso_local i32 @mlx5_core_query_srq(i32, %struct.TYPE_2__*, %struct.mlx5_srq_attr*) #1

declare dso_local i32 @kfree(%struct.mlx5_srq_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
