; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_cmd.c_mlx4_vf_set_enable_smi_admin.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_cmd.c_mlx4_vf_set_enable_smi_admin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.mlx4_priv = type { %struct.TYPE_11__, %struct.TYPE_12__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_12__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.mlx4_active_ports = type { i32 }

@MLX4_MAX_PORTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"SMI access disallowed for single ported VFs\0A\00", align 1
@EPROTONOSUPPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_vf_set_enable_smi_admin(%struct.mlx4_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_priv*, align 8
  %11 = alloca %struct.mlx4_active_ports, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %15 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %14)
  store %struct.mlx4_priv* %15, %struct.mlx4_priv** %10, align 8
  %16 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %17 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %16, i32 0, i32 1
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @mlx4_get_active_ports(%struct.TYPE_12__* %17, i32 %18)
  %20 = getelementptr inbounds %struct.mlx4_active_ports, %struct.mlx4_active_ports* %11, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.mlx4_active_ports, %struct.mlx4_active_ports* %11, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %24 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @find_first_bit(i32 %22, i32 %27)
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = sub nsw i32 %30, 1
  %32 = getelementptr inbounds %struct.mlx4_active_ports, %struct.mlx4_active_ports* %11, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %35 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @bitmap_weight(i32 %33, i32 %38)
  %40 = add nsw i32 %31, %39
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %43 = call i32 @mlx4_master_func_num(%struct.mlx4_dev* %42)
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %101

46:                                               ; preds = %4
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %47, 1
  br i1 %48, label %68, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %52 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp sge i32 %50, %53
  br i1 %54, label %68, label %55

55:                                               ; preds = %49
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %56, 1
  br i1 %57, label %68, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @MLX4_MAX_PORTS, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %68, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %9, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %9, align 4
  %67 = icmp sgt i32 %66, 1
  br i1 %67, label %68, label %71

68:                                               ; preds = %65, %62, %58, %55, %49, %46
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %5, align 4
  br label %101

71:                                               ; preds = %65
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %13, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %86

75:                                               ; preds = %71
  %76 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %77 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp sgt i32 %79, 1
  br i1 %80, label %81, label %86

81:                                               ; preds = %75
  %82 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %83 = call i32 @mlx4_info(%struct.mlx4_dev* %82, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %84 = load i32, i32* @EPROTONOSUPPORT, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %5, align 4
  br label %101

86:                                               ; preds = %75, %71
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %89 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32 %87, i32* %100, align 4
  store i32 0, i32* %5, align 4
  br label %101

101:                                              ; preds = %86, %81, %68, %45
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_get_active_ports(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @find_first_bit(i32, i32) #1

declare dso_local i32 @bitmap_weight(i32, i32) #1

declare dso_local i32 @mlx4_master_func_num(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_info(%struct.mlx4_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
