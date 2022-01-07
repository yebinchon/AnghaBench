; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_set_dev_port_mtu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_set_dev_port_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, %struct.mlx5e_priv* }
%struct.mlx5e_priv = type { %struct.TYPE_2__, %struct.mlx5_core_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.mlx5_core_dev = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"mlx5_set_port_mtu failed setting %d, err=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Failed updating vport context with MTU size, err=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"Query port MTU, after setting new MTU value, failed\0A\00", align 1
@E2BIG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"Port MTU %d is smaller than ifp mtu %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"Port MTU %d is bigger than ifp mtu %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32)* @mlx5e_set_dev_port_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_set_dev_port_mtu(%struct.ifnet* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5e_priv*, align 8
  %7 = alloca %struct.mlx5_core_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %11 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %10, i32 0, i32 1
  %12 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %11, align 8
  store %struct.mlx5e_priv* %12, %struct.mlx5e_priv** %6, align 8
  %13 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %14 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %13, i32 0, i32 1
  %15 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %14, align 8
  store %struct.mlx5_core_dev* %15, %struct.mlx5_core_dev** %7, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @MLX5E_SW2HW_MTU(i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @mlx5_set_port_mtu(%struct.mlx5_core_dev* %18, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 (%struct.ifnet*, i8*, ...) @mlx5_en_err(%struct.ifnet* %24, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %3, align 4
  br label %92

29:                                               ; preds = %2
  %30 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @mlx5_set_vport_mtu(%struct.mlx5_core_dev* %30, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 (%struct.ifnet*, i8*, ...) @mlx5_en_err(%struct.ifnet* %36, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %35, %29
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %42 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %44 = call i32 @mlx5_query_vport_mtu(%struct.mlx5_core_dev* %43, i32* %8)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %39
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %47, %39
  %51 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %52 = call i32 @mlx5_query_port_oper_mtu(%struct.mlx5_core_dev* %51, i32* %8)
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %50, %47
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %58 = call i32 (%struct.ifnet*, i8*, ...) @mlx5_en_err(%struct.ifnet* %57, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %3, align 4
  br label %92

60:                                               ; preds = %53
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @MLX5E_HW2SW_MTU(i32 %61)
  %63 = load i32, i32* %5, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load i32, i32* @E2BIG, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %9, align 4
  %68 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %5, align 4
  %71 = call i32 (%struct.ifnet*, i8*, ...) @mlx5_en_err(%struct.ifnet* %68, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %69, i32 %70)
  br label %85

72:                                               ; preds = %60
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @MLX5E_HW2SW_MTU(i32 %73)
  %75 = load i32, i32* %5, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %72
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %9, align 4
  %80 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %5, align 4
  %83 = call i32 (%struct.ifnet*, i8*, ...) @mlx5_en_err(%struct.ifnet* %80, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %77, %72
  br label %85

85:                                               ; preds = %84, %65
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %8, align 4
  %88 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %89 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 8
  %91 = load i32, i32* %9, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %86, %56, %23
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @MLX5E_SW2HW_MTU(i32) #1

declare dso_local i32 @mlx5_set_port_mtu(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_en_err(%struct.ifnet*, i8*, ...) #1

declare dso_local i32 @mlx5_set_vport_mtu(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_query_vport_mtu(%struct.mlx5_core_dev*, i32*) #1

declare dso_local i32 @mlx5_query_port_oper_mtu(%struct.mlx5_core_dev*, i32*) #1

declare dso_local i32 @MLX5E_HW2SW_MTU(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
