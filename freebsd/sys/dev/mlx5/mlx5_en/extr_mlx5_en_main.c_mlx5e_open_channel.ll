; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_open_channel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_open_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32 }
%struct.mlx5e_channel_param = type { i32, i32 }
%struct.mlx5e_channel = type { %struct.TYPE_7__, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*)* }

@mlx5e_rq_zero_start = common dso_local global i32 0, align 4
@mlx5e_sq_zero_start = common dso_local global i32 0, align 4
@mlx5e_rx_cq_comp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, %struct.mlx5e_channel_param*, %struct.mlx5e_channel*)* @mlx5e_open_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_open_channel(%struct.mlx5e_priv* %0, %struct.mlx5e_channel_param* %1, %struct.mlx5e_channel* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5e_priv*, align 8
  %6 = alloca %struct.mlx5e_channel_param*, align 8
  %7 = alloca %struct.mlx5e_channel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %5, align 8
  store %struct.mlx5e_channel_param* %1, %struct.mlx5e_channel_param** %6, align 8
  store %struct.mlx5e_channel* %2, %struct.mlx5e_channel** %7, align 8
  %10 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %7, align 8
  %11 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %10, i32 0, i32 0
  %12 = load i32, i32* @mlx5e_rq_zero_start, align 4
  %13 = call i32 @MLX5E_ZERO(%struct.TYPE_7__* %11, i32 %12)
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %29, %3
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %17 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %15, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %14
  %21 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %7, align 8
  %22 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %21, i32 0, i32 3
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i64 %25
  %27 = load i32, i32* @mlx5e_sq_zero_start, align 4
  %28 = call i32 @MLX5E_ZERO(%struct.TYPE_7__* %26, i32 %27)
  br label %29

29:                                               ; preds = %20
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %8, align 4
  br label %14

32:                                               ; preds = %14
  %33 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %7, align 8
  %34 = load %struct.mlx5e_channel_param*, %struct.mlx5e_channel_param** %6, align 8
  %35 = call i32 @mlx5e_open_tx_cqs(%struct.mlx5e_channel* %33, %struct.mlx5e_channel_param* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %95

39:                                               ; preds = %32
  %40 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %7, align 8
  %41 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.mlx5e_channel_param*, %struct.mlx5e_channel_param** %6, align 8
  %44 = getelementptr inbounds %struct.mlx5e_channel_param, %struct.mlx5e_channel_param* %43, i32 0, i32 1
  %45 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %7, align 8
  %46 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %7, align 8
  %49 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @mlx5e_open_cq(i32 %42, i32* %44, %struct.TYPE_8__* %47, i32* @mlx5e_rx_cq_comp, i32 %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %39
  br label %92

55:                                               ; preds = %39
  %56 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %7, align 8
  %57 = load %struct.mlx5e_channel_param*, %struct.mlx5e_channel_param** %6, align 8
  %58 = call i32 @mlx5e_open_sqs(%struct.mlx5e_channel* %56, %struct.mlx5e_channel_param* %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %87

62:                                               ; preds = %55
  %63 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %7, align 8
  %64 = load %struct.mlx5e_channel_param*, %struct.mlx5e_channel_param** %6, align 8
  %65 = getelementptr inbounds %struct.mlx5e_channel_param, %struct.mlx5e_channel_param* %64, i32 0, i32 0
  %66 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %7, align 8
  %67 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %66, i32 0, i32 0
  %68 = call i32 @mlx5e_open_rq(%struct.mlx5e_channel* %63, i32* %65, %struct.TYPE_7__* %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  br label %84

72:                                               ; preds = %62
  %73 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %7, align 8
  %74 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %77, align 8
  %79 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %7, align 8
  %80 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = call i32 %78(%struct.TYPE_6__* %82)
  store i32 0, i32* %4, align 4
  br label %97

84:                                               ; preds = %71
  %85 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %7, align 8
  %86 = call i32 @mlx5e_close_sqs_wait(%struct.mlx5e_channel* %85)
  br label %87

87:                                               ; preds = %84, %61
  %88 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %7, align 8
  %89 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = call i32 @mlx5e_close_cq(%struct.TYPE_8__* %90)
  br label %92

92:                                               ; preds = %87, %54
  %93 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %7, align 8
  %94 = call i32 @mlx5e_close_tx_cqs(%struct.mlx5e_channel* %93)
  br label %95

95:                                               ; preds = %92, %38
  %96 = load i32, i32* %9, align 4
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %95, %72
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @MLX5E_ZERO(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @mlx5e_open_tx_cqs(%struct.mlx5e_channel*, %struct.mlx5e_channel_param*) #1

declare dso_local i32 @mlx5e_open_cq(i32, i32*, %struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @mlx5e_open_sqs(%struct.mlx5e_channel*, %struct.mlx5e_channel_param*) #1

declare dso_local i32 @mlx5e_open_rq(%struct.mlx5e_channel*, i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @mlx5e_close_sqs_wait(%struct.mlx5e_channel*) #1

declare dso_local i32 @mlx5e_close_cq(%struct.TYPE_8__*) #1

declare dso_local i32 @mlx5e_close_tx_cqs(%struct.mlx5e_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
