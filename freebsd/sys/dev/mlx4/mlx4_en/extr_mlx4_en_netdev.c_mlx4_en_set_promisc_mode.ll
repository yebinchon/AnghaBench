; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_netdev.c_mlx4_en_set_promisc_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_netdev.c_mlx4_en_set_promisc_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i32, i32, i32 }
%struct.mlx4_en_dev = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@MLX4_EN_FLAG_PROMISC = common dso_local global i32 0, align 4
@MLX4_FS_ALL_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed enabling promiscuous mode\0A\00", align 1
@MLX4_EN_FLAG_MC_PROMISC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Failed enabling unicast promiscuous mode\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Failed enabling multicast promiscuous mode\0A\00", align 1
@MLX4_MCAST_DISABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Failed disabling multicast filter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_en_priv*, %struct.mlx4_en_dev*)* @mlx4_en_set_promisc_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_en_set_promisc_mode(%struct.mlx4_en_priv* %0, %struct.mlx4_en_dev* %1) #0 {
  %3 = alloca %struct.mlx4_en_priv*, align 8
  %4 = alloca %struct.mlx4_en_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %3, align 8
  store %struct.mlx4_en_dev* %1, %struct.mlx4_en_dev** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %7 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @MLX4_EN_FLAG_PROMISC, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %125, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @MLX4_EN_FLAG_PROMISC, align 4
  %14 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %15 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %19 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %110 [
    i32 128, label %24
    i32 129, label %47
    i32 130, label %93
  ]

24:                                               ; preds = %12
  %25 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %26 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %25, i32 0, i32 0
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %29 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %32 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @MLX4_FS_ALL_DEFAULT, align 4
  %35 = call i32 @mlx4_flow_steer_promisc_add(%struct.TYPE_8__* %27, i32 %30, i32 %33, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %24
  %39 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %40 = call i32 @en_err(%struct.mlx4_en_priv* %39, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %24
  %42 = load i32, i32* @MLX4_EN_FLAG_MC_PROMISC, align 4
  %43 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %44 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  br label %110

47:                                               ; preds = %12
  %48 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %49 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %48, i32 0, i32 0
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %52 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %55 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @mlx4_unicast_promisc_add(%struct.TYPE_8__* %50, i32 %53, i32 %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %47
  %61 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %62 = call i32 @en_err(%struct.mlx4_en_priv* %61, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %47
  %64 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %65 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @MLX4_EN_FLAG_MC_PROMISC, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %92, label %70

70:                                               ; preds = %63
  %71 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %72 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %71, i32 0, i32 0
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %75 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %78 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @mlx4_multicast_promisc_add(%struct.TYPE_8__* %73, i32 %76, i32 %79)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %70
  %84 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %85 = call i32 @en_err(%struct.mlx4_en_priv* %84, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %86

86:                                               ; preds = %83, %70
  %87 = load i32, i32* @MLX4_EN_FLAG_MC_PROMISC, align 4
  %88 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %89 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %86, %63
  br label %110

93:                                               ; preds = %12
  %94 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %95 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %94, i32 0, i32 0
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %98 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %101 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @mlx4_SET_PORT_qpn_calc(%struct.TYPE_8__* %96, i32 %99, i32 %102, i32 1)
  store i32 %103, i32* %5, align 4
  %104 = load i32, i32* %5, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %93
  %107 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %108 = call i32 @en_err(%struct.mlx4_en_priv* %107, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %109

109:                                              ; preds = %106, %93
  br label %110

110:                                              ; preds = %12, %109, %92, %41
  %111 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %112 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %111, i32 0, i32 0
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %115 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @MLX4_MCAST_DISABLE, align 4
  %118 = call i32 @mlx4_SET_MCAST_FLTR(%struct.TYPE_8__* %113, i32 %116, i32 0, i32 0, i32 %117)
  store i32 %118, i32* %5, align 4
  %119 = load i32, i32* %5, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %110
  %122 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %123 = call i32 @en_err(%struct.mlx4_en_priv* %122, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %124

124:                                              ; preds = %121, %110
  br label %125

125:                                              ; preds = %124, %2
  ret void
}

declare dso_local i32 @mlx4_flow_steer_promisc_add(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*) #1

declare dso_local i32 @mlx4_unicast_promisc_add(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @mlx4_multicast_promisc_add(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @mlx4_SET_PORT_qpn_calc(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @mlx4_SET_MCAST_FLTR(%struct.TYPE_8__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
