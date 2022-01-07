; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_qp.c_is_master_qp0.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_qp.c_is_master_qp0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.mlx4_qp = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, %struct.mlx4_qp*, i32*, i32*)* @is_master_qp0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_master_qp0(%struct.mlx4_dev* %0, %struct.mlx4_qp* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.mlx4_dev*, align 8
  %6 = alloca %struct.mlx4_qp*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %5, align 8
  store %struct.mlx4_qp* %1, %struct.mlx4_qp** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %11 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %15 = call i32 @mlx4_master_func_num(%struct.mlx4_dev* %14)
  %16 = mul nsw i32 8, %15
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %13, %17
  store i64 %18, i64* %9, align 8
  %19 = load %struct.mlx4_qp*, %struct.mlx4_qp** %6, align 8
  %20 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %9, align 8
  %23 = icmp sge i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %4
  %25 = load %struct.mlx4_qp*, %struct.mlx4_qp** %6, align 8
  %26 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %9, align 8
  %29 = add nsw i64 %28, 1
  %30 = icmp sle i64 %27, %29
  br label %31

31:                                               ; preds = %24, %4
  %32 = phi i1 [ false, %4 ], [ %30, %24 ]
  %33 = zext i1 %32 to i32
  %34 = load i32*, i32** %8, align 8
  store i32 %33, i32* %34, align 4
  %35 = load %struct.mlx4_qp*, %struct.mlx4_qp** %6, align 8
  %36 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %39 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp sge i64 %37, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %31
  %44 = load %struct.mlx4_qp*, %struct.mlx4_qp** %6, align 8
  %45 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %48 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, 1
  %52 = icmp sle i64 %46, %51
  br label %53

53:                                               ; preds = %43, %31
  %54 = phi i1 [ false, %31 ], [ %52, %43 ]
  %55 = zext i1 %54 to i32
  %56 = load i32*, i32** %7, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %53
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br label %64

64:                                               ; preds = %60, %53
  %65 = phi i1 [ true, %53 ], [ %63, %60 ]
  %66 = zext i1 %65 to i32
  ret i32 %66
}

declare dso_local i32 @mlx4_master_func_num(%struct.mlx4_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
