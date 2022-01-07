; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_main.c_alloc_comp_eqs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_main.c_alloc_comp_eqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.mlx5_eq_table }
%struct.TYPE_3__ = type { i32* }
%struct.mlx5_eq_table = type { i32, i32, i32 }
%struct.mlx5_eq = type { i32, i32, i32 }

@MLX5_COMP_EQ_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MLX5_EQ_VEC_COMP_BASE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"allocated completion EQN %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*)* @alloc_comp_eqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_comp_eqs(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca %struct.mlx5_eq_table*, align 8
  %5 = alloca %struct.mlx5_eq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  %10 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %11 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  store %struct.mlx5_eq_table* %12, %struct.mlx5_eq_table** %4, align 8
  %13 = load %struct.mlx5_eq_table*, %struct.mlx5_eq_table** %4, align 8
  %14 = getelementptr inbounds %struct.mlx5_eq_table, %struct.mlx5_eq_table* %13, i32 0, i32 2
  %15 = call i32 @INIT_LIST_HEAD(i32* %14)
  %16 = load %struct.mlx5_eq_table*, %struct.mlx5_eq_table** %4, align 8
  %17 = getelementptr inbounds %struct.mlx5_eq_table, %struct.mlx5_eq_table* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @MLX5_COMP_EQ_SIZE, align 4
  store i32 %19, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %66, %1
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %69

24:                                               ; preds = %20
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.mlx5_eq* @kzalloc(i32 12, i32 %25)
  store %struct.mlx5_eq* %26, %struct.mlx5_eq** %5, align 8
  %27 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %28 = load %struct.mlx5_eq*, %struct.mlx5_eq** %5, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* @MLX5_EQ_VEC_COMP_BASE, align 8
  %32 = add nsw i64 %30, %31
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %35 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = call i32 @mlx5_create_map_eq(%struct.mlx5_core_dev* %27, %struct.mlx5_eq* %28, i64 %32, i32 %33, i32 0, i32* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %24
  %44 = load %struct.mlx5_eq*, %struct.mlx5_eq** %5, align 8
  %45 = call i32 @kfree(%struct.mlx5_eq* %44)
  br label %70

46:                                               ; preds = %24
  %47 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %48 = load %struct.mlx5_eq*, %struct.mlx5_eq** %5, align 8
  %49 = getelementptr inbounds %struct.mlx5_eq, %struct.mlx5_eq* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @mlx5_core_dbg(%struct.mlx5_core_dev* %47, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.mlx5_eq*, %struct.mlx5_eq** %5, align 8
  %54 = getelementptr inbounds %struct.mlx5_eq, %struct.mlx5_eq* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.mlx5_eq_table*, %struct.mlx5_eq_table** %4, align 8
  %56 = getelementptr inbounds %struct.mlx5_eq_table, %struct.mlx5_eq_table* %55, i32 0, i32 1
  %57 = call i32 @spin_lock(i32* %56)
  %58 = load %struct.mlx5_eq*, %struct.mlx5_eq** %5, align 8
  %59 = getelementptr inbounds %struct.mlx5_eq, %struct.mlx5_eq* %58, i32 0, i32 1
  %60 = load %struct.mlx5_eq_table*, %struct.mlx5_eq_table** %4, align 8
  %61 = getelementptr inbounds %struct.mlx5_eq_table, %struct.mlx5_eq_table* %60, i32 0, i32 2
  %62 = call i32 @list_add_tail(i32* %59, i32* %61)
  %63 = load %struct.mlx5_eq_table*, %struct.mlx5_eq_table** %4, align 8
  %64 = getelementptr inbounds %struct.mlx5_eq_table, %struct.mlx5_eq_table* %63, i32 0, i32 1
  %65 = call i32 @spin_unlock(i32* %64)
  br label %66

66:                                               ; preds = %46
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %9, align 4
  br label %20

69:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %74

70:                                               ; preds = %43
  %71 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %72 = call i32 @free_comp_eqs(%struct.mlx5_core_dev* %71)
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %70, %69
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.mlx5_eq* @kzalloc(i32, i32) #1

declare dso_local i32 @mlx5_create_map_eq(%struct.mlx5_core_dev*, %struct.mlx5_eq*, i64, i32, i32, i32*) #1

declare dso_local i32 @kfree(%struct.mlx5_eq*) #1

declare dso_local i32 @mlx5_core_dbg(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @free_comp_eqs(%struct.mlx5_core_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
