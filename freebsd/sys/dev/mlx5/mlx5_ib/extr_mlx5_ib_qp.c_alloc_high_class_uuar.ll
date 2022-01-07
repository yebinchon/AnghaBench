; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_alloc_high_class_uuar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_alloc_high_class_uuar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_uuar_info = type { i32*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_uuar_info*)* @alloc_high_class_uuar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_high_class_uuar(%struct.mlx5_uuar_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_uuar_info*, align 8
  %4 = alloca i32, align 4
  store %struct.mlx5_uuar_info* %0, %struct.mlx5_uuar_info** %3, align 8
  %5 = load %struct.mlx5_uuar_info*, %struct.mlx5_uuar_info** %3, align 8
  %6 = call i32 @first_hi_uuar(%struct.mlx5_uuar_info* %5)
  store i32 %6, i32* %4, align 4
  br label %7

7:                                                ; preds = %35, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.mlx5_uuar_info*, %struct.mlx5_uuar_info** %3, align 8
  %10 = call i32 @max_uuari(%struct.mlx5_uuar_info* %9)
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %38

12:                                               ; preds = %7
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.mlx5_uuar_info*, %struct.mlx5_uuar_info** %3, align 8
  %15 = getelementptr inbounds %struct.mlx5_uuar_info, %struct.mlx5_uuar_info* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @test_bit(i32 %13, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %34, label %19

19:                                               ; preds = %12
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.mlx5_uuar_info*, %struct.mlx5_uuar_info** %3, align 8
  %22 = getelementptr inbounds %struct.mlx5_uuar_info, %struct.mlx5_uuar_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @set_bit(i32 %20, i32 %23)
  %25 = load %struct.mlx5_uuar_info*, %struct.mlx5_uuar_info** %3, align 8
  %26 = getelementptr inbounds %struct.mlx5_uuar_info, %struct.mlx5_uuar_info* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %41

34:                                               ; preds = %12
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @next_uuar(i32 %36)
  store i32 %37, i32* %4, align 4
  br label %7

38:                                               ; preds = %7
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %38, %19
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @first_hi_uuar(%struct.mlx5_uuar_info*) #1

declare dso_local i32 @max_uuari(%struct.mlx5_uuar_info*) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @next_uuar(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
