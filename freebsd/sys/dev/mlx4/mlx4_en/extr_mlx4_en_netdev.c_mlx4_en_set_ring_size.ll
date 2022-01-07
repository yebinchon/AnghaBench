; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_netdev.c_mlx4_en_set_ring_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_netdev.c_mlx4_en_set_ring_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx4_en_priv = type { %struct.TYPE_6__*, i64, %struct.TYPE_5__**, %struct.TYPE_4__**, %struct.mlx4_en_dev* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.mlx4_en_dev = type { i32 }

@u32 = common dso_local global i32 0, align 4
@MLX4_EN_MIN_RX_SIZE = common dso_local global i32 0, align 4
@MLX4_EN_MAX_RX_SIZE = common dso_local global i32 0, align 4
@MLX4_EN_MIN_TX_SIZE = common dso_local global i32 0, align 4
@MLX4_EN_MAX_TX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed reallocating port resources\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Failed starting port\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @mlx4_en_set_ring_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_set_ring_size(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_en_priv*, align 8
  %9 = alloca %struct.mlx4_en_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.mlx4_en_priv* %13, %struct.mlx4_en_priv** %8, align 8
  %14 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %15 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %14, i32 0, i32 4
  %16 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %15, align 8
  store %struct.mlx4_en_dev* %16, %struct.mlx4_en_dev** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @roundup_pow_of_two(i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @u32, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @MLX4_EN_MIN_RX_SIZE, align 4
  %22 = call i32 @max_t(i32 %19, i32 %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* @u32, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @MLX4_EN_MAX_RX_SIZE, align 4
  %26 = call i32 @min_t(i32 %23, i32 %24, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @roundup_pow_of_two(i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* @u32, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @MLX4_EN_MIN_TX_SIZE, align 4
  %32 = call i32 @max_t(i32 %29, i32 %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* @u32, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @MLX4_EN_MAX_TX_SIZE, align 4
  %36 = call i32 @min_t(i32 %33, i32 %34, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %39 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %3
  %43 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %44 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %43, i32 0, i32 3
  %45 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %45, i64 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  br label %58

50:                                               ; preds = %3
  %51 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %52 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %51, i32 0, i32 3
  %53 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %53, i64 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  br label %58

58:                                               ; preds = %50, %42
  %59 = phi i32 [ %49, %42 ], [ %57, %50 ]
  %60 = icmp eq i32 %37, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %58
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %64 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %63, i32 0, i32 2
  %65 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %65, i64 0
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %62, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %61
  store i32 0, i32* %4, align 4
  br label %121

72:                                               ; preds = %61, %58
  %73 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %9, align 8
  %74 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %73, i32 0, i32 0
  %75 = call i32 @mutex_lock(i32* %74)
  %76 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %77 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %72
  store i32 1, i32* %10, align 4
  %81 = load %struct.net_device*, %struct.net_device** %5, align 8
  %82 = call i32 @mlx4_en_stop_port(%struct.net_device* %81)
  br label %83

83:                                               ; preds = %80, %72
  %84 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %85 = call i32 @mlx4_en_free_resources(%struct.mlx4_en_priv* %84)
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %88 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %87, i32 0, i32 0
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  store i32 %86, i32* %90, align 4
  %91 = load i32, i32* %6, align 4
  %92 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %93 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %92, i32 0, i32 0
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  store i32 %91, i32* %95, align 4
  %96 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %97 = call i32 @mlx4_en_alloc_resources(%struct.mlx4_en_priv* %96)
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %11, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %83
  %101 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %102 = call i32 @en_err(%struct.mlx4_en_priv* %101, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %116

103:                                              ; preds = %83
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %103
  %107 = load %struct.net_device*, %struct.net_device** %5, align 8
  %108 = call i32 @mlx4_en_start_port(%struct.net_device* %107)
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %11, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %113 = call i32 @en_err(%struct.mlx4_en_priv* %112, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %114

114:                                              ; preds = %111, %106
  br label %115

115:                                              ; preds = %114, %103
  br label %116

116:                                              ; preds = %115, %100
  %117 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %9, align 8
  %118 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %117, i32 0, i32 0
  %119 = call i32 @mutex_unlock(i32* %118)
  %120 = load i32, i32* %11, align 4
  store i32 %120, i32* %4, align 4
  br label %121

121:                                              ; preds = %116, %71
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i32 @max_t(i32, i32, i32) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mlx4_en_stop_port(%struct.net_device*) #1

declare dso_local i32 @mlx4_en_free_resources(%struct.mlx4_en_priv*) #1

declare dso_local i32 @mlx4_en_alloc_resources(%struct.mlx4_en_priv*) #1

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*) #1

declare dso_local i32 @mlx4_en_start_port(%struct.net_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
