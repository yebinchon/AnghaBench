; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_open_sqs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_open_sqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_channel = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mlx5e_channel_param = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_channel*, %struct.mlx5e_channel_param*)* @mlx5e_open_sqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_open_sqs(%struct.mlx5e_channel* %0, %struct.mlx5e_channel_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5e_channel*, align 8
  %5 = alloca %struct.mlx5e_channel_param*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mlx5e_channel* %0, %struct.mlx5e_channel** %4, align 8
  store %struct.mlx5e_channel_param* %1, %struct.mlx5e_channel_param** %5, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %32, %2
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %4, align 8
  %11 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %9, %14
  br i1 %15, label %16, label %35

16:                                               ; preds = %8
  %17 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %4, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.mlx5e_channel_param*, %struct.mlx5e_channel_param** %5, align 8
  %20 = getelementptr inbounds %struct.mlx5e_channel_param, %struct.mlx5e_channel_param* %19, i32 0, i32 0
  %21 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %4, align 8
  %22 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = call i32 @mlx5e_open_sq(%struct.mlx5e_channel* %17, i32 %18, i32* %20, i32* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %16
  br label %36

31:                                               ; preds = %16
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %8

35:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %55

36:                                               ; preds = %30
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %50, %36
  %40 = load i32, i32* %7, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %39
  %43 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %4, align 8
  %44 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = call i32 @mlx5e_close_sq_wait(i32* %48)
  br label %50

50:                                               ; preds = %42
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %7, align 4
  br label %39

53:                                               ; preds = %39
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %53, %35
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @mlx5e_open_sq(%struct.mlx5e_channel*, i32, i32*, i32*) #1

declare dso_local i32 @mlx5e_close_sq_wait(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
