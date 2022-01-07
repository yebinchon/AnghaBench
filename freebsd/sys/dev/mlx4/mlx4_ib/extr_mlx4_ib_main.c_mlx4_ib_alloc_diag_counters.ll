; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_main.c_mlx4_ib_alloc_diag_counters.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_main.c_mlx4_ib_alloc_diag_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { %struct.TYPE_5__, %struct.TYPE_6__*, %struct.mlx4_ib_diag_counters* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mlx4_ib_diag_counters = type { i32, i32, i32 }

@MLX4_DEV_CAP_FLAG2_DIAG_PER_PORT = common dso_local global i32 0, align 4
@MLX4_DIAG_COUNTERS_TYPES = common dso_local global i32 0, align 4
@mlx4_ib_get_hw_stats = common dso_local global i32 0, align 4
@mlx4_ib_alloc_hw_stats = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_ib_dev*)* @mlx4_ib_alloc_diag_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_ib_alloc_diag_counters(%struct.mlx4_ib_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx4_ib_dev*, align 8
  %4 = alloca %struct.mlx4_ib_diag_counters*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %3, align 8
  %8 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %9 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %8, i32 0, i32 2
  %10 = load %struct.mlx4_ib_diag_counters*, %struct.mlx4_ib_diag_counters** %9, align 8
  store %struct.mlx4_ib_diag_counters* %10, %struct.mlx4_ib_diag_counters** %4, align 8
  %11 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %12 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %11, i32 0, i32 1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MLX4_DEV_CAP_FLAG2_DIAG_PER_PORT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %7, align 4
  %23 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %24 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %23, i32 0, i32 1
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = call i64 @mlx4_is_slave(%struct.TYPE_6__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %113

29:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %79, %29
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @MLX4_DIAG_COUNTERS_TYPES, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %82

34:                                               ; preds = %30
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  br label %79

41:                                               ; preds = %37, %34
  %42 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %43 = load %struct.mlx4_ib_diag_counters*, %struct.mlx4_ib_diag_counters** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.mlx4_ib_diag_counters, %struct.mlx4_ib_diag_counters* %43, i64 %45
  %47 = getelementptr inbounds %struct.mlx4_ib_diag_counters, %struct.mlx4_ib_diag_counters* %46, i32 0, i32 1
  %48 = load %struct.mlx4_ib_diag_counters*, %struct.mlx4_ib_diag_counters** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.mlx4_ib_diag_counters, %struct.mlx4_ib_diag_counters* %48, i64 %50
  %52 = getelementptr inbounds %struct.mlx4_ib_diag_counters, %struct.mlx4_ib_diag_counters* %51, i32 0, i32 0
  %53 = load %struct.mlx4_ib_diag_counters*, %struct.mlx4_ib_diag_counters** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.mlx4_ib_diag_counters, %struct.mlx4_ib_diag_counters* %53, i64 %55
  %57 = getelementptr inbounds %struct.mlx4_ib_diag_counters, %struct.mlx4_ib_diag_counters* %56, i32 0, i32 2
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @__mlx4_ib_alloc_diag_counters(%struct.mlx4_ib_dev* %42, i32* %47, i32* %52, i32* %57, i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %41
  br label %91

63:                                               ; preds = %41
  %64 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %65 = load %struct.mlx4_ib_diag_counters*, %struct.mlx4_ib_diag_counters** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.mlx4_ib_diag_counters, %struct.mlx4_ib_diag_counters* %65, i64 %67
  %69 = getelementptr inbounds %struct.mlx4_ib_diag_counters, %struct.mlx4_ib_diag_counters* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.mlx4_ib_diag_counters*, %struct.mlx4_ib_diag_counters** %4, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.mlx4_ib_diag_counters, %struct.mlx4_ib_diag_counters* %71, i64 %73
  %75 = getelementptr inbounds %struct.mlx4_ib_diag_counters, %struct.mlx4_ib_diag_counters* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @mlx4_ib_fill_diag_counters(%struct.mlx4_ib_dev* %64, i32 %70, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %63, %40
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %5, align 4
  br label %30

82:                                               ; preds = %30
  %83 = load i32, i32* @mlx4_ib_get_hw_stats, align 4
  %84 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %85 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  store i32 %83, i32* %86, align 4
  %87 = load i32, i32* @mlx4_ib_alloc_hw_stats, align 4
  %88 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %89 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 8
  store i32 0, i32* %2, align 4
  br label %113

91:                                               ; preds = %62
  %92 = load i32, i32* %5, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %111

94:                                               ; preds = %91
  %95 = load %struct.mlx4_ib_diag_counters*, %struct.mlx4_ib_diag_counters** %4, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sub nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.mlx4_ib_diag_counters, %struct.mlx4_ib_diag_counters* %95, i64 %98
  %100 = getelementptr inbounds %struct.mlx4_ib_diag_counters, %struct.mlx4_ib_diag_counters* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @kfree(i32 %101)
  %103 = load %struct.mlx4_ib_diag_counters*, %struct.mlx4_ib_diag_counters** %4, align 8
  %104 = load i32, i32* %5, align 4
  %105 = sub nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.mlx4_ib_diag_counters, %struct.mlx4_ib_diag_counters* %103, i64 %106
  %108 = getelementptr inbounds %struct.mlx4_ib_diag_counters, %struct.mlx4_ib_diag_counters* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @kfree(i32 %109)
  br label %111

111:                                              ; preds = %94, %91
  %112 = load i32, i32* %6, align 4
  store i32 %112, i32* %2, align 4
  br label %113

113:                                              ; preds = %111, %82, %28
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i64 @mlx4_is_slave(%struct.TYPE_6__*) #1

declare dso_local i32 @__mlx4_ib_alloc_diag_counters(%struct.mlx4_ib_dev*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @mlx4_ib_fill_diag_counters(%struct.mlx4_ib_dev*, i32, i32, i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
