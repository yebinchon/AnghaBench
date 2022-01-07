; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_uar.c_mlx5_free_uuars.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_uar.c_mlx5_free_uuars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_uuar_info = type { i32, %struct.TYPE_2__*, %struct.TYPE_2__*, %struct.TYPE_2__*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_free_uuars(%struct.mlx5_core_dev* %0, %struct.mlx5_uuar_info* %1) #0 {
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca %struct.mlx5_uuar_info*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  store %struct.mlx5_uuar_info* %1, %struct.mlx5_uuar_info** %4, align 8
  %6 = load %struct.mlx5_uuar_info*, %struct.mlx5_uuar_info** %4, align 8
  %7 = getelementptr inbounds %struct.mlx5_uuar_info, %struct.mlx5_uuar_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* %5, align 4
  br label %11

11:                                               ; preds = %34, %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %11
  %15 = load %struct.mlx5_uuar_info*, %struct.mlx5_uuar_info** %4, align 8
  %16 = getelementptr inbounds %struct.mlx5_uuar_info, %struct.mlx5_uuar_info* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @iounmap(i32 %22)
  %24 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %25 = load %struct.mlx5_uuar_info*, %struct.mlx5_uuar_info** %4, align 8
  %26 = getelementptr inbounds %struct.mlx5_uuar_info, %struct.mlx5_uuar_info* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @mlx5_cmd_free_uar(%struct.mlx5_core_dev* %24, i32 %32)
  br label %34

34:                                               ; preds = %14
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %5, align 4
  br label %11

37:                                               ; preds = %11
  %38 = load %struct.mlx5_uuar_info*, %struct.mlx5_uuar_info** %4, align 8
  %39 = getelementptr inbounds %struct.mlx5_uuar_info, %struct.mlx5_uuar_info* %38, i32 0, i32 4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = call i32 @kfree(%struct.TYPE_2__* %40)
  %42 = load %struct.mlx5_uuar_info*, %struct.mlx5_uuar_info** %4, align 8
  %43 = getelementptr inbounds %struct.mlx5_uuar_info, %struct.mlx5_uuar_info* %42, i32 0, i32 3
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = call i32 @kfree(%struct.TYPE_2__* %44)
  %46 = load %struct.mlx5_uuar_info*, %struct.mlx5_uuar_info** %4, align 8
  %47 = getelementptr inbounds %struct.mlx5_uuar_info, %struct.mlx5_uuar_info* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = call i32 @kfree(%struct.TYPE_2__* %48)
  %50 = load %struct.mlx5_uuar_info*, %struct.mlx5_uuar_info** %4, align 8
  %51 = getelementptr inbounds %struct.mlx5_uuar_info, %struct.mlx5_uuar_info* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = call i32 @kfree(%struct.TYPE_2__* %52)
  ret i32 0
}

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @mlx5_cmd_free_uar(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
