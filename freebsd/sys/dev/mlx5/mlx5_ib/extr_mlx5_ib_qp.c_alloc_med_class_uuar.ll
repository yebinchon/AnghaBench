; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_alloc_med_class_uuar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_alloc_med_class_uuar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_uuar_info = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_uuar_info*)* @alloc_med_class_uuar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_med_class_uuar(%struct.mlx5_uuar_info* %0) #0 {
  %2 = alloca %struct.mlx5_uuar_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.mlx5_uuar_info* %0, %struct.mlx5_uuar_info** %2, align 8
  %5 = call i32 (...) @first_med_uuar()
  store i32 %5, i32* %3, align 4
  %6 = call i32 (...) @first_med_uuar()
  store i32 %6, i32* %4, align 4
  br label %7

7:                                                ; preds = %31, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.mlx5_uuar_info*, %struct.mlx5_uuar_info** %2, align 8
  %10 = call i32 @first_hi_uuar(%struct.mlx5_uuar_info* %9)
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %34

12:                                               ; preds = %7
  %13 = load %struct.mlx5_uuar_info*, %struct.mlx5_uuar_info** %2, align 8
  %14 = getelementptr inbounds %struct.mlx5_uuar_info, %struct.mlx5_uuar_info* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.mlx5_uuar_info*, %struct.mlx5_uuar_info** %2, align 8
  %21 = getelementptr inbounds %struct.mlx5_uuar_info, %struct.mlx5_uuar_info* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %19, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %12
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %28, %12
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @next_uuar(i32 %32)
  store i32 %33, i32* %4, align 4
  br label %7

34:                                               ; preds = %7
  %35 = load %struct.mlx5_uuar_info*, %struct.mlx5_uuar_info** %2, align 8
  %36 = getelementptr inbounds %struct.mlx5_uuar_info, %struct.mlx5_uuar_info* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %40, align 8
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @first_med_uuar(...) #1

declare dso_local i32 @first_hi_uuar(%struct.mlx5_uuar_info*) #1

declare dso_local i32 @next_uuar(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
