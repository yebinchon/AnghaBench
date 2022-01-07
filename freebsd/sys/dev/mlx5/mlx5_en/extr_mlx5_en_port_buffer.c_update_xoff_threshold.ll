; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_port_buffer.c_update_xoff_threshold.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_port_buffer.c_update_xoff_threshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32 }
%struct.mlx5e_port_buffer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }

@MLX5E_MAX_BUFFER = common dso_local global i32 0, align 4
@MLX5E_MAX_PORT_MTU = common dso_local global i64 0, align 8
@MLX5E_BUFFER_CELL_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"non-lossy buffer %d size %d less than xoff threshold %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, %struct.mlx5e_port_buffer*, i64)* @update_xoff_threshold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_xoff_threshold(%struct.mlx5e_priv* %0, %struct.mlx5e_port_buffer* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5e_priv*, align 8
  %6 = alloca %struct.mlx5e_port_buffer*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %5, align 8
  store %struct.mlx5e_port_buffer* %1, %struct.mlx5e_port_buffer** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %113, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @MLX5E_MAX_BUFFER, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %116

13:                                               ; preds = %9
  %14 = load %struct.mlx5e_port_buffer*, %struct.mlx5e_port_buffer** %6, align 8
  %15 = getelementptr inbounds %struct.mlx5e_port_buffer, %struct.mlx5e_port_buffer* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %13
  %24 = load %struct.mlx5e_port_buffer*, %struct.mlx5e_port_buffer** %6, align 8
  %25 = getelementptr inbounds %struct.mlx5e_port_buffer, %struct.mlx5e_port_buffer* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load %struct.mlx5e_port_buffer*, %struct.mlx5e_port_buffer** %6, align 8
  %32 = getelementptr inbounds %struct.mlx5e_port_buffer, %struct.mlx5e_port_buffer* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  store i64 0, i64* %37, align 8
  br label %113

38:                                               ; preds = %13
  %39 = load %struct.mlx5e_port_buffer*, %struct.mlx5e_port_buffer** %6, align 8
  %40 = getelementptr inbounds %struct.mlx5e_port_buffer, %struct.mlx5e_port_buffer* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* @MLX5E_MAX_PORT_MTU, align 8
  %49 = add nsw i64 %47, %48
  %50 = load i32, i32* @MLX5E_BUFFER_CELL_SHIFT, align 4
  %51 = shl i32 1, %50
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %49, %52
  %54 = icmp slt i64 %46, %53
  br i1 %54, label %55, label %78

55:                                               ; preds = %38
  %56 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %57 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.mlx5e_port_buffer*, %struct.mlx5e_port_buffer** %6, align 8
  %61 = getelementptr inbounds %struct.mlx5e_port_buffer, %struct.mlx5e_port_buffer* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %7, align 8
  %69 = load i64, i64* @MLX5E_MAX_PORT_MTU, align 8
  %70 = add nsw i64 %68, %69
  %71 = load i32, i32* @MLX5E_BUFFER_CELL_SHIFT, align 4
  %72 = shl i32 1, %71
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %70, %73
  %75 = call i32 @mlx5_en_info(i32 %58, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %59, i64 %67, i64 %74)
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %117

78:                                               ; preds = %38
  %79 = load %struct.mlx5e_port_buffer*, %struct.mlx5e_port_buffer** %6, align 8
  %80 = getelementptr inbounds %struct.mlx5e_port_buffer, %struct.mlx5e_port_buffer* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %7, align 8
  %88 = sub nsw i64 %86, %87
  %89 = load %struct.mlx5e_port_buffer*, %struct.mlx5e_port_buffer** %6, align 8
  %90 = getelementptr inbounds %struct.mlx5e_port_buffer, %struct.mlx5e_port_buffer* %89, i32 0, i32 0
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  store i64 %88, i64* %95, align 8
  %96 = load %struct.mlx5e_port_buffer*, %struct.mlx5e_port_buffer** %6, align 8
  %97 = getelementptr inbounds %struct.mlx5e_port_buffer, %struct.mlx5e_port_buffer* %96, i32 0, i32 0
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @MLX5E_MAX_PORT_MTU, align 8
  %105 = sub nsw i64 %103, %104
  %106 = load %struct.mlx5e_port_buffer*, %struct.mlx5e_port_buffer** %6, align 8
  %107 = getelementptr inbounds %struct.mlx5e_port_buffer, %struct.mlx5e_port_buffer* %106, i32 0, i32 0
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 2
  store i64 %105, i64* %112, align 8
  br label %113

113:                                              ; preds = %78, %23
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %8, align 4
  br label %9

116:                                              ; preds = %9
  store i32 0, i32* %4, align 4
  br label %117

117:                                              ; preds = %116, %55
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i32 @mlx5_en_info(i32, i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
