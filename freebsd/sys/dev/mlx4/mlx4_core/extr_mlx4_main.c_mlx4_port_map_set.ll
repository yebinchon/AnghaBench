; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_main.c_mlx4_port_map_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_main.c_mlx4_port_map_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mlx4_port_map = type { i32, i32 }
%struct.mlx4_priv = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@MLX4_DEV_CAP_FLAG2_PORT_REMAP = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@MLX4_MAX_PORTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"port map changed: [%d][%d]\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to change port mape: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_port_map_set(%struct.mlx4_dev* %0, %struct.mlx4_port_map* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx4_dev*, align 8
  %5 = alloca %struct.mlx4_port_map*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_priv*, align 8
  %9 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %4, align 8
  store %struct.mlx4_port_map* %1, %struct.mlx4_port_map** %5, align 8
  %10 = load %struct.mlx4_port_map*, %struct.mlx4_port_map** %5, align 8
  %11 = getelementptr inbounds %struct.mlx4_port_map, %struct.mlx4_port_map* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.mlx4_port_map*, %struct.mlx4_port_map** %5, align 8
  %14 = getelementptr inbounds %struct.mlx4_port_map, %struct.mlx4_port_map* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %17 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %16)
  store %struct.mlx4_priv* %17, %struct.mlx4_priv** %8, align 8
  %18 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %19 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MLX4_DEV_CAP_FLAG2_PORT_REMAP, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @ENOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %116

28:                                               ; preds = %2
  %29 = load %struct.mlx4_priv*, %struct.mlx4_priv** %8, align 8
  %30 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %29, i32 0, i32 0
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load %struct.mlx4_priv*, %struct.mlx4_priv** %8, align 8
  %36 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %34, %28
  %40 = load i32, i32* %7, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load %struct.mlx4_priv*, %struct.mlx4_priv** %8, align 8
  %44 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %42, %39
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 1
  br i1 %49, label %67, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @MLX4_MAX_PORTS, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %67, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %55, 1
  br i1 %56, label %67, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @MLX4_MAX_PORTS, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %67, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %6, align 4
  %63 = icmp eq i32 %62, 2
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load i32, i32* %7, align 4
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %70

67:                                               ; preds = %64, %57, %54, %50, %47
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %9, align 4
  br label %111

70:                                               ; preds = %64, %61
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.mlx4_priv*, %struct.mlx4_priv** %8, align 8
  %73 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %71, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %70
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.mlx4_priv*, %struct.mlx4_priv** %8, align 8
  %80 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %78, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  store i32 0, i32* %9, align 4
  br label %110

85:                                               ; preds = %77, %70
  %86 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @mlx4_virt2phy_port_map(%struct.mlx4_dev* %86, i32 %87, i32 %88)
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %105, label %92

92:                                               ; preds = %85
  %93 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @mlx4_dbg(%struct.mlx4_dev* %93, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %94, i32 %95)
  %97 = load i32, i32* %6, align 4
  %98 = load %struct.mlx4_priv*, %struct.mlx4_priv** %8, align 8
  %99 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  store i32 %97, i32* %100, align 4
  %101 = load i32, i32* %7, align 4
  %102 = load %struct.mlx4_priv*, %struct.mlx4_priv** %8, align 8
  %103 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  store i32 %101, i32* %104, align 4
  br label %109

105:                                              ; preds = %85
  %106 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @mlx4_err(%struct.mlx4_dev* %106, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %107)
  br label %109

109:                                              ; preds = %105, %92
  br label %110

110:                                              ; preds = %109, %84
  br label %111

111:                                              ; preds = %110, %67
  %112 = load %struct.mlx4_priv*, %struct.mlx4_priv** %8, align 8
  %113 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %112, i32 0, i32 0
  %114 = call i32 @mutex_unlock(i32* %113)
  %115 = load i32, i32* %9, align 4
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %111, %25
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mlx4_virt2phy_port_map(%struct.mlx4_dev*, i32, i32) #1

declare dso_local i32 @mlx4_dbg(%struct.mlx4_dev*, i8*, i32, i32) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_dev*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
