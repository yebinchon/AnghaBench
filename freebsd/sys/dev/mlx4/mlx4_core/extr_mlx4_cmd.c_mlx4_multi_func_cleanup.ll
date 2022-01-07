; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_cmd.c_mlx4_multi_func_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_cmd.c_mlx4_multi_func_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_priv = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_6__** }

@MLX4_MAX_PORTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_multi_func_cleanup(%struct.mlx4_dev* %0) #0 {
  %2 = alloca %struct.mlx4_dev*, align 8
  %3 = alloca %struct.mlx4_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %2, align 8
  %6 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %7 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %6)
  store %struct.mlx4_priv* %7, %struct.mlx4_priv** %3, align 8
  %8 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %9 = call i64 @mlx4_is_master(%struct.mlx4_dev* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %79

11:                                               ; preds = %1
  %12 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %13 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @flush_workqueue(i32 %16)
  %18 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %19 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @destroy_workqueue(i32 %22)
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %55, %11
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %27 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %58

30:                                               ; preds = %24
  store i32 1, i32* %5, align 4
  br label %31

31:                                               ; preds = %51, %30
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @MLX4_MAX_PORTS, align 4
  %34 = icmp sle i32 %32, %33
  br i1 %34, label %35, label %54

35:                                               ; preds = %31
  %36 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %37 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %45, i64 %47
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = call i32 @kfree(%struct.TYPE_6__* %49)
  br label %51

51:                                               ; preds = %35
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %31

54:                                               ; preds = %31
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %4, align 4
  br label %24

58:                                               ; preds = %24
  %59 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %60 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = call i32 @kfree(%struct.TYPE_6__* %63)
  %65 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %66 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = call i32 @kfree(%struct.TYPE_6__* %69)
  %71 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %72 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = call i32 @kfree(%struct.TYPE_6__* %75)
  %77 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %78 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %77, i32 0, i32 0
  store i32 0, i32* %78, align 4
  br label %79

79:                                               ; preds = %58, %1
  %80 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %81 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @iounmap(i32* %83)
  %85 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %86 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  store i32* null, i32** %87, align 8
  ret void
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i64 @mlx4_is_master(%struct.mlx4_dev*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @kfree(%struct.TYPE_6__*) #1

declare dso_local i32 @iounmap(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
