; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_free_uuar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_free_uuar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_uuar_info = type { i32, i32, i32, i32* }

@MLX5_BF_REGS_PER_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_uuar_info*, i32)* @free_uuar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_uuar(%struct.mlx5_uuar_info* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx5_uuar_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mlx5_uuar_info* %0, %struct.mlx5_uuar_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mlx5_uuar_info*, %struct.mlx5_uuar_info** %3, align 8
  %8 = getelementptr inbounds %struct.mlx5_uuar_info, %struct.mlx5_uuar_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @MLX5_BF_REGS_PER_PAGE, align 4
  %11 = mul nsw i32 %9, %10
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.mlx5_uuar_info*, %struct.mlx5_uuar_info** %3, align 8
  %14 = getelementptr inbounds %struct.mlx5_uuar_info, %struct.mlx5_uuar_info* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %12, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.mlx5_uuar_info*, %struct.mlx5_uuar_info** %3, align 8
  %18 = getelementptr inbounds %struct.mlx5_uuar_info, %struct.mlx5_uuar_info* %17, i32 0, i32 2
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %2
  %23 = load %struct.mlx5_uuar_info*, %struct.mlx5_uuar_info** %3, align 8
  %24 = getelementptr inbounds %struct.mlx5_uuar_info, %struct.mlx5_uuar_info* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %28, align 4
  br label %43

31:                                               ; preds = %2
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load %struct.mlx5_uuar_info*, %struct.mlx5_uuar_info** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @free_med_class_uuar(%struct.mlx5_uuar_info* %36, i32 %37)
  br label %43

39:                                               ; preds = %31
  %40 = load %struct.mlx5_uuar_info*, %struct.mlx5_uuar_info** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @free_high_class_uuar(%struct.mlx5_uuar_info* %40, i32 %41)
  br label %43

43:                                               ; preds = %39, %35, %22
  %44 = load %struct.mlx5_uuar_info*, %struct.mlx5_uuar_info** %3, align 8
  %45 = getelementptr inbounds %struct.mlx5_uuar_info, %struct.mlx5_uuar_info* %44, i32 0, i32 2
  %46 = call i32 @mutex_unlock(i32* %45)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @free_med_class_uuar(%struct.mlx5_uuar_info*, i32) #1

declare dso_local i32 @free_high_class_uuar(%struct.mlx5_uuar_info*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
