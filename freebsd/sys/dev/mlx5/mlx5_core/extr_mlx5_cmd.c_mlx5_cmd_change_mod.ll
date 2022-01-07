; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_cmd.c_mlx5_cmd_change_mod.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_cmd.c_mlx5_cmd_change_mod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.mlx5_cmd }
%struct.mlx5_cmd = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_core_dev*, i32)* @mlx5_cmd_change_mod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_cmd_change_mod(%struct.mlx5_core_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_cmd*, align 8
  %6 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %8 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %7, i32 0, i32 0
  store %struct.mlx5_cmd* %8, %struct.mlx5_cmd** %5, align 8
  %9 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %5, align 8
  %10 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %52

15:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %26, %15
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %5, align 8
  %19 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %5, align 8
  %24 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %23, i32 0, i32 2
  %25 = call i32 @down(i32* %24)
  br label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %16

29:                                               ; preds = %16
  %30 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %5, align 8
  %31 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %30, i32 0, i32 3
  %32 = call i32 @down(i32* %31)
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %5, align 8
  %35 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %5, align 8
  %37 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %36, i32 0, i32 3
  %38 = call i32 @up(i32* %37)
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %49, %29
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %5, align 8
  %42 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %5, align 8
  %47 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %46, i32 0, i32 2
  %48 = call i32 @up(i32* %47)
  br label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %39

52:                                               ; preds = %14, %39
  ret void
}

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
