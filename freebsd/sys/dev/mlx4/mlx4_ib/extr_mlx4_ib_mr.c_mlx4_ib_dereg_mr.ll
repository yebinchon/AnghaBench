; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mr.c_mlx4_ib_dereg_mr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mr.c_mlx4_ib_dereg_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32 }
%struct.mlx4_ib_mr = type { i64, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_ib_dereg_mr(%struct.ib_mr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ib_mr*, align 8
  %4 = alloca %struct.mlx4_ib_mr*, align 8
  %5 = alloca i32, align 4
  store %struct.ib_mr* %0, %struct.ib_mr** %3, align 8
  %6 = load %struct.ib_mr*, %struct.ib_mr** %3, align 8
  %7 = call %struct.mlx4_ib_mr* @to_mmr(%struct.ib_mr* %6)
  store %struct.mlx4_ib_mr* %7, %struct.mlx4_ib_mr** %4, align 8
  %8 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %4, align 8
  %9 = call i32 @mlx4_free_priv_pages(%struct.mlx4_ib_mr* %8)
  %10 = load %struct.ib_mr*, %struct.ib_mr** %3, align 8
  %11 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.TYPE_2__* @to_mdev(i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %4, align 8
  %17 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %16, i32 0, i32 1
  %18 = call i32 @mlx4_mr_free(i32 %15, i32* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %2, align 4
  br label %36

23:                                               ; preds = %1
  %24 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %4, align 8
  %25 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %4, align 8
  %30 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @ib_umem_release(i64 %31)
  br label %33

33:                                               ; preds = %28, %23
  %34 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %4, align 8
  %35 = call i32 @kfree(%struct.mlx4_ib_mr* %34)
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %33, %21
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.mlx4_ib_mr* @to_mmr(%struct.ib_mr*) #1

declare dso_local i32 @mlx4_free_priv_pages(%struct.mlx4_ib_mr*) #1

declare dso_local i32 @mlx4_mr_free(i32, i32*) #1

declare dso_local %struct.TYPE_2__* @to_mdev(i32) #1

declare dso_local i32 @ib_umem_release(i64) #1

declare dso_local i32 @kfree(%struct.mlx4_ib_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
