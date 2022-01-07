; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_open_channels.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_open_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.mlx5e_channel_param = type { i32 }

@M_MLX5EN = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*)* @mlx5e_open_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_open_channels(%struct.mlx5e_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5e_priv*, align 8
  %4 = alloca %struct.mlx5e_channel_param*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %3, align 8
  %8 = load i32, i32* @M_MLX5EN, align 4
  %9 = load i32, i32* @M_WAITOK, align 4
  %10 = call %struct.mlx5e_channel_param* @malloc(i32 4, i32 %8, i32 %9)
  store %struct.mlx5e_channel_param* %10, %struct.mlx5e_channel_param** %4, align 8
  %11 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %12 = load %struct.mlx5e_channel_param*, %struct.mlx5e_channel_param** %4, align 8
  %13 = call i32 @mlx5e_build_channel_param(%struct.mlx5e_priv* %11, %struct.mlx5e_channel_param* %12)
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %35, %1
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %17 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %15, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %14
  %22 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %23 = load %struct.mlx5e_channel_param*, %struct.mlx5e_channel_param** %4, align 8
  %24 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %25 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 %28
  %30 = call i32 @mlx5e_open_channel(%struct.mlx5e_priv* %22, %struct.mlx5e_channel_param* %23, %struct.TYPE_6__* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %21
  br label %66

34:                                               ; preds = %21
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %14

38:                                               ; preds = %14
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %59, %38
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %42 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %40, %44
  br i1 %45, label %46, label %62

46:                                               ; preds = %39
  %47 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %48 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = call i32 @mlx5e_wait_for_min_rx_wqes(i32* %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %46
  br label %66

58:                                               ; preds = %46
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %39

62:                                               ; preds = %39
  %63 = load %struct.mlx5e_channel_param*, %struct.mlx5e_channel_param** %4, align 8
  %64 = load i32, i32* @M_MLX5EN, align 4
  %65 = call i32 @free(%struct.mlx5e_channel_param* %63, i32 %64)
  store i32 0, i32* %2, align 4
  br label %91

66:                                               ; preds = %57, %33
  br label %67

67:                                               ; preds = %71, %66
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %6, align 4
  %70 = icmp ne i32 %68, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %67
  %72 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %73 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %72, i32 0, i32 0
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i64 %76
  %78 = call i32 @mlx5e_close_channel(%struct.TYPE_6__* %77)
  %79 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %80 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %79, i32 0, i32 0
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i64 %83
  %85 = call i32 @mlx5e_close_channel_wait(%struct.TYPE_6__* %84)
  br label %67

86:                                               ; preds = %67
  %87 = load %struct.mlx5e_channel_param*, %struct.mlx5e_channel_param** %4, align 8
  %88 = load i32, i32* @M_MLX5EN, align 4
  %89 = call i32 @free(%struct.mlx5e_channel_param* %87, i32 %88)
  %90 = load i32, i32* %5, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %86, %62
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local %struct.mlx5e_channel_param* @malloc(i32, i32, i32) #1

declare dso_local i32 @mlx5e_build_channel_param(%struct.mlx5e_priv*, %struct.mlx5e_channel_param*) #1

declare dso_local i32 @mlx5e_open_channel(%struct.mlx5e_priv*, %struct.mlx5e_channel_param*, %struct.TYPE_6__*) #1

declare dso_local i32 @mlx5e_wait_for_min_rx_wqes(i32*) #1

declare dso_local i32 @free(%struct.mlx5e_channel_param*, i32) #1

declare dso_local i32 @mlx5e_close_channel(%struct.TYPE_6__*) #1

declare dso_local i32 @mlx5e_close_channel_wait(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
