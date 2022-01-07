; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_hw_clock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_hw_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mlx5_init_seg* }
%struct.mlx5_init_seg = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*)* @mlx5e_hw_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_hw_clock(%struct.mlx5e_priv* %0) #0 {
  %2 = alloca %struct.mlx5e_priv*, align 8
  %3 = alloca %struct.mlx5_init_seg*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %2, align 8
  %7 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %8 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.mlx5_init_seg*, %struct.mlx5_init_seg** %10, align 8
  store %struct.mlx5_init_seg* %11, %struct.mlx5_init_seg** %3, align 8
  br label %12

12:                                               ; preds = %22, %1
  %13 = load %struct.mlx5_init_seg*, %struct.mlx5_init_seg** %3, align 8
  %14 = getelementptr inbounds %struct.mlx5_init_seg, %struct.mlx5_init_seg* %13, i32 0, i32 0
  %15 = call i64 @ioread32be(i32* %14)
  store i64 %15, i64* %4, align 8
  %16 = load %struct.mlx5_init_seg*, %struct.mlx5_init_seg** %3, align 8
  %17 = getelementptr inbounds %struct.mlx5_init_seg, %struct.mlx5_init_seg* %16, i32 0, i32 1
  %18 = call i64 @ioread32be(i32* %17)
  store i64 %18, i64* %6, align 8
  %19 = load %struct.mlx5_init_seg*, %struct.mlx5_init_seg** %3, align 8
  %20 = getelementptr inbounds %struct.mlx5_init_seg, %struct.mlx5_init_seg* %19, i32 0, i32 0
  %21 = call i64 @ioread32be(i32* %20)
  store i64 %21, i64* %5, align 8
  br label %22

22:                                               ; preds = %12
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* %4, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %12, label %26

26:                                               ; preds = %22
  %27 = load i64, i64* %4, align 8
  %28 = trunc i64 %27 to i32
  %29 = shl i32 %28, 32
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* %6, align 8
  %32 = or i64 %30, %31
  %33 = trunc i64 %32 to i32
  ret i32 %33
}

declare dso_local i64 @ioread32be(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
