; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_alloc_uuar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_alloc_uuar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_uuar_info = type { i32, i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_uuar_info*, i32)* @alloc_uuar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_uuar(%struct.mlx5_uuar_info* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx5_uuar_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mlx5_uuar_info* %0, %struct.mlx5_uuar_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @EINVAL, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load %struct.mlx5_uuar_info*, %struct.mlx5_uuar_info** %3, align 8
  %9 = getelementptr inbounds %struct.mlx5_uuar_info, %struct.mlx5_uuar_info* %8, i32 0, i32 1
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %46 [
    i32 129, label %12
    i32 128, label %21
    i32 130, label %33
    i32 131, label %45
  ]

12:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  %13 = load %struct.mlx5_uuar_info*, %struct.mlx5_uuar_info** %3, align 8
  %14 = getelementptr inbounds %struct.mlx5_uuar_info, %struct.mlx5_uuar_info* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  br label %46

21:                                               ; preds = %2
  %22 = load %struct.mlx5_uuar_info*, %struct.mlx5_uuar_info** %3, align 8
  %23 = getelementptr inbounds %struct.mlx5_uuar_info, %struct.mlx5_uuar_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %24, 2
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %32

29:                                               ; preds = %21
  %30 = load %struct.mlx5_uuar_info*, %struct.mlx5_uuar_info** %3, align 8
  %31 = call i32 @alloc_med_class_uuar(%struct.mlx5_uuar_info* %30)
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %29, %26
  br label %46

33:                                               ; preds = %2
  %34 = load %struct.mlx5_uuar_info*, %struct.mlx5_uuar_info** %3, align 8
  %35 = getelementptr inbounds %struct.mlx5_uuar_info, %struct.mlx5_uuar_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %36, 2
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %44

41:                                               ; preds = %33
  %42 = load %struct.mlx5_uuar_info*, %struct.mlx5_uuar_info** %3, align 8
  %43 = call i32 @alloc_high_class_uuar(%struct.mlx5_uuar_info* %42)
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %41, %38
  br label %46

45:                                               ; preds = %2
  store i32 2, i32* %5, align 4
  br label %46

46:                                               ; preds = %2, %45, %44, %32, %12
  %47 = load %struct.mlx5_uuar_info*, %struct.mlx5_uuar_info** %3, align 8
  %48 = getelementptr inbounds %struct.mlx5_uuar_info, %struct.mlx5_uuar_info* %47, i32 0, i32 1
  %49 = call i32 @mutex_unlock(i32* %48)
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @alloc_med_class_uuar(%struct.mlx5_uuar_info*) #1

declare dso_local i32 @alloc_high_class_uuar(%struct.mlx5_uuar_info*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
