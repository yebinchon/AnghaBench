; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_netdev.c_mlx4_en_change_mtu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_netdev.c_mlx4_en_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.mlx4_en_priv = type { i32, i32, i32, %struct.mlx4_en_dev* }
%struct.mlx4_en_dev = type { i32, i32, i32 }

@DRV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Change MTU called - current:%u new:%u\0A\00", align 1
@MLX4_EN_MIN_MTU = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Bad MTU size:%d, max %u.\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Change MTU called with card down!?\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Failed restarting port:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @mlx4_en_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_en_priv*, align 8
  %7 = alloca %struct.mlx4_en_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.mlx4_en_priv* %10, %struct.mlx4_en_priv** %6, align 8
  %11 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %12 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %11, i32 0, i32 3
  %13 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %12, align 8
  store %struct.mlx4_en_dev* %13, %struct.mlx4_en_dev** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* @DRV, align 4
  %15 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 (i32, %struct.mlx4_en_priv*, i8*, ...) @en_dbg(i32 %14, %struct.mlx4_en_priv* %15, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @MLX4_EN_MIN_MTU, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %27 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sgt i32 %25, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %24, %2
  %31 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %34 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (%struct.mlx4_en_priv*, i8*, i32, ...) @en_err(%struct.mlx4_en_priv* %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %35)
  %37 = load i32, i32* @EPERM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %86

39:                                               ; preds = %24
  %40 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %7, align 8
  %41 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %40, i32 0, i32 0
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.net_device*, %struct.net_device** %4, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.net_device*, %struct.net_device** %4, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %82

52:                                               ; preds = %39
  %53 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %7, align 8
  %54 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* @DRV, align 4
  %59 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %60 = call i32 (i32, %struct.mlx4_en_priv*, i8*, ...) @en_dbg(i32 %58, %struct.mlx4_en_priv* %59, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %81

61:                                               ; preds = %52
  %62 = load %struct.net_device*, %struct.net_device** %4, align 8
  %63 = call i32 @mlx4_en_stop_port(%struct.net_device* %62)
  %64 = load %struct.net_device*, %struct.net_device** %4, align 8
  %65 = call i32 @mlx4_en_start_port(%struct.net_device* %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %61
  %69 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %70 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %71 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (%struct.mlx4_en_priv*, i8*, i32, ...) @en_err(%struct.mlx4_en_priv* %69, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  %74 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %7, align 8
  %75 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %78 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %77, i32 0, i32 1
  %79 = call i32 @queue_work(i32 %76, i32* %78)
  br label %80

80:                                               ; preds = %68, %61
  br label %81

81:                                               ; preds = %80, %57
  br label %82

82:                                               ; preds = %81, %39
  %83 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %7, align 8
  %84 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %83, i32 0, i32 0
  %85 = call i32 @mutex_unlock(i32* %84)
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %82, %30
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @en_dbg(i32, %struct.mlx4_en_priv*, i8*, ...) #1

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*, i32, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mlx4_en_stop_port(%struct.net_device*) #1

declare dso_local i32 @mlx4_en_start_port(%struct.net_device*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
