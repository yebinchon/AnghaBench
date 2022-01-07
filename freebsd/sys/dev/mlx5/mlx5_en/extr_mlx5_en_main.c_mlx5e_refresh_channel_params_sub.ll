; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_refresh_channel_params_sub.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_refresh_channel_params_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32 }
%struct.mlx5e_channel = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, %struct.mlx5e_channel*)* @mlx5e_refresh_channel_params_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_refresh_channel_params_sub(%struct.mlx5e_priv* %0, %struct.mlx5e_channel* %1) #0 {
  %3 = alloca %struct.mlx5e_priv*, align 8
  %4 = alloca %struct.mlx5e_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %3, align 8
  store %struct.mlx5e_channel* %1, %struct.mlx5e_channel** %4, align 8
  %7 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %8 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %4, align 8
  %9 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %8, i32 0, i32 1
  %10 = call i32 @mlx5e_refresh_rq_params(%struct.mlx5e_priv* %7, i32* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %38

14:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %34, %14
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %18 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %16, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %15
  %22 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %23 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %4, align 8
  %24 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = call i32 @mlx5e_refresh_sq_params(%struct.mlx5e_priv* %22, i32* %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %38

33:                                               ; preds = %21
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %15

37:                                               ; preds = %15
  br label %38

38:                                               ; preds = %37, %32, %13
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @mlx5e_refresh_rq_params(%struct.mlx5e_priv*, i32*) #1

declare dso_local i32 @mlx5e_refresh_sq_params(%struct.mlx5e_priv*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
