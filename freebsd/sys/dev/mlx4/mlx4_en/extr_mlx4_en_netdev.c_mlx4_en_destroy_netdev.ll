; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_netdev.c_mlx4_en_destroy_netdev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_netdev.c_mlx4_en_destroy_netdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx4_en_priv = type { i64, i32, %struct.mlx4_en_priv*, %struct.mlx4_en_priv*, i32, i32*, i32, i32, i32, i32, i64, i64, i32*, i32*, %struct.mlx4_en_dev* }
%struct.mlx4_en_dev = type { i32, i32**, i32, i32 }

@DRV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Destroying netdev on port:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@hz = common dso_local global i32 0, align 4
@vlan_config = common dso_local global i32 0, align 4
@vlan_unconfig = common dso_local global i32 0, align 4
@MLX4_EN_PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_en_destroy_netdev(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.mlx4_en_priv*, align 8
  %4 = alloca %struct.mlx4_en_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.mlx4_en_priv* %6, %struct.mlx4_en_priv** %3, align 8
  %7 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %8 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %7, i32 0, i32 14
  %9 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %8, align 8
  store %struct.mlx4_en_dev* %9, %struct.mlx4_en_dev** %4, align 8
  %10 = load i32, i32* @DRV, align 4
  %11 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %12 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %13 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @en_dbg(i32 %10, %struct.mlx4_en_priv* %11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %17 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %16, i32 0, i32 1
  store i32 1, i32* %17, align 8
  %18 = load i32, i32* @hz, align 4
  %19 = call i32 @pause(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %21 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %20, i32 0, i32 13
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load i32, i32* @vlan_config, align 4
  %26 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %27 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %26, i32 0, i32 13
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @EVENTHANDLER_DEREGISTER(i32 %25, i32* %28)
  br label %30

30:                                               ; preds = %24, %1
  %31 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %32 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %31, i32 0, i32 12
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load i32, i32* @vlan_unconfig, align 4
  %37 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %38 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %37, i32 0, i32 12
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @EVENTHANDLER_DEREGISTER(i32 %36, i32* %39)
  br label %41

41:                                               ; preds = %35, %30
  %42 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %43 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %42, i32 0, i32 0
  %44 = call i32 @mutex_lock(i32* %43)
  %45 = load %struct.net_device*, %struct.net_device** %2, align 8
  %46 = call i32 @mlx4_en_stop_port(%struct.net_device* %45)
  %47 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %48 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %47, i32 0, i32 0
  %49 = call i32 @mutex_unlock(i32* %48)
  %50 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %51 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %50, i32 0, i32 11
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %41
  %55 = load %struct.net_device*, %struct.net_device** %2, align 8
  %56 = call i32 @ether_ifdetach(%struct.net_device* %55)
  br label %57

57:                                               ; preds = %54, %41
  %58 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %59 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %58, i32 0, i32 10
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %57
  %63 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %64 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %67 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %66, i32 0, i32 9
  %68 = load i32, i32* @MLX4_EN_PAGE_SIZE, align 4
  %69 = call i32 @mlx4_free_hwq_res(i32 %65, i32* %67, i32 %68)
  br label %70

70:                                               ; preds = %62, %57
  %71 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %72 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %71, i32 0, i32 8
  %73 = call i32 @cancel_delayed_work(i32* %72)
  %74 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %75 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %74, i32 0, i32 7
  %76 = call i32 @cancel_delayed_work(i32* %75)
  %77 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %78 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @flush_workqueue(i32 %79)
  %81 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %82 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %81, i32 0, i32 6
  %83 = call i32 @callout_drain(i32* %82)
  %84 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %85 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %84, i32 0, i32 0
  %86 = call i32 @mutex_lock(i32* %85)
  %87 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %88 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %87, i32 0, i32 1
  %89 = load i32**, i32*** %88, align 8
  %90 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %91 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds i32*, i32** %89, i64 %92
  store i32* null, i32** %93, align 8
  %94 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %95 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %94, i32 0, i32 0
  %96 = call i32 @mutex_unlock(i32* %95)
  %97 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %98 = call i32 @mlx4_en_free_resources(%struct.mlx4_en_priv* %97)
  %99 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %100 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %99, i32 0, i32 5
  %101 = load i32*, i32** %100, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %107

103:                                              ; preds = %70
  %104 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %105 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %104, i32 0, i32 4
  %106 = call i32 @sysctl_ctx_free(i32* %105)
  br label %107

107:                                              ; preds = %103, %70
  %108 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %109 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %108, i32 0, i32 3
  %110 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %109, align 8
  %111 = call i32 @kfree(%struct.mlx4_en_priv* %110)
  %112 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %113 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %112, i32 0, i32 2
  %114 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %113, align 8
  %115 = call i32 @kfree(%struct.mlx4_en_priv* %114)
  %116 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %117 = call i32 @kfree(%struct.mlx4_en_priv* %116)
  %118 = load %struct.net_device*, %struct.net_device** %2, align 8
  %119 = call i32 @if_free(%struct.net_device* %118)
  ret void
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @en_dbg(i32, %struct.mlx4_en_priv*, i8*, i64) #1

declare dso_local i32 @pause(i8*, i32) #1

declare dso_local i32 @EVENTHANDLER_DEREGISTER(i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mlx4_en_stop_port(%struct.net_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ether_ifdetach(%struct.net_device*) #1

declare dso_local i32 @mlx4_free_hwq_res(i32, i32*, i32) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @mlx4_en_free_resources(%struct.mlx4_en_priv*) #1

declare dso_local i32 @sysctl_ctx_free(i32*) #1

declare dso_local i32 @kfree(%struct.mlx4_en_priv*) #1

declare dso_local i32 @if_free(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
