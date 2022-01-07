; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_netdev.c_mlx4_en_clear_promisc_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_netdev.c_mlx4_en_clear_promisc_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i32, i32, i32 }
%struct.mlx4_en_dev = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@MLX4_EN_FLAG_PROMISC = common dso_local global i32 0, align 4
@MLX4_FS_ALL_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed disabling promiscuous mode\0A\00", align 1
@MLX4_EN_FLAG_MC_PROMISC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Failed disabling unicast promiscuous mode\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Failed disabling multicast promiscuous mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_en_priv*, %struct.mlx4_en_dev*)* @mlx4_en_clear_promisc_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_en_clear_promisc_mode(%struct.mlx4_en_priv* %0, %struct.mlx4_en_dev* %1) #0 {
  %3 = alloca %struct.mlx4_en_priv*, align 8
  %4 = alloca %struct.mlx4_en_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %3, align 8
  store %struct.mlx4_en_dev* %1, %struct.mlx4_en_dev** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @MLX4_EN_FLAG_PROMISC, align 4
  %7 = xor i32 %6, -1
  %8 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %9 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, %7
  store i32 %11, i32* %9, align 4
  %12 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %13 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %103 [
    i32 128, label %18
    i32 129, label %39
    i32 130, label %86
  ]

18:                                               ; preds = %2
  %19 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %20 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %23 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MLX4_FS_ALL_DEFAULT, align 4
  %26 = call i32 @mlx4_flow_steer_promisc_remove(%struct.TYPE_7__* %21, i32 %24, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %18
  %30 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %31 = call i32 @en_err(%struct.mlx4_en_priv* %30, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %29, %18
  %33 = load i32, i32* @MLX4_EN_FLAG_MC_PROMISC, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %36 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %103

39:                                               ; preds = %2
  %40 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %41 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %44 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %47 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @mlx4_unicast_promisc_remove(%struct.TYPE_7__* %42, i32 %45, i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %39
  %53 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %54 = call i32 @en_err(%struct.mlx4_en_priv* %53, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %39
  %56 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %57 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @MLX4_EN_FLAG_MC_PROMISC, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %85

62:                                               ; preds = %55
  %63 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %64 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %63, i32 0, i32 0
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %67 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %70 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @mlx4_multicast_promisc_remove(%struct.TYPE_7__* %65, i32 %68, i32 %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %62
  %76 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %77 = call i32 @en_err(%struct.mlx4_en_priv* %76, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %78

78:                                               ; preds = %75, %62
  %79 = load i32, i32* @MLX4_EN_FLAG_MC_PROMISC, align 4
  %80 = xor i32 %79, -1
  %81 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %82 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, %80
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %78, %55
  br label %103

86:                                               ; preds = %2
  %87 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %88 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %87, i32 0, i32 0
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %91 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %94 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @mlx4_SET_PORT_qpn_calc(%struct.TYPE_7__* %89, i32 %92, i32 %95, i32 0)
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %5, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %86
  %100 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %101 = call i32 @en_err(%struct.mlx4_en_priv* %100, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %102

102:                                              ; preds = %99, %86
  br label %103

103:                                              ; preds = %2, %102, %85, %32
  ret void
}

declare dso_local i32 @mlx4_flow_steer_promisc_remove(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*) #1

declare dso_local i32 @mlx4_unicast_promisc_remove(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @mlx4_multicast_promisc_remove(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @mlx4_SET_PORT_qpn_calc(%struct.TYPE_7__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
