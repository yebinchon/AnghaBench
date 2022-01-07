; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_icm.c_mlx4_table_get_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_icm.c_mlx4_table_get_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_icm_table = type { i32 }

@MLX4_TABLE_CHUNK_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_table_get_range(%struct.mlx4_dev* %0, %struct.mlx4_icm_table* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_dev*, align 8
  %7 = alloca %struct.mlx4_icm_table*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %6, align 8
  store %struct.mlx4_icm_table* %1, %struct.mlx4_icm_table** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i32, i32* @MLX4_TABLE_CHUNK_SIZE, align 4
  %14 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %7, align 8
  %15 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sdiv i32 %13, %16
  store i32 %17, i32* %10, align 4
  %18 = load i64, i64* %8, align 8
  store i64 %18, i64* %12, align 8
  br label %19

19:                                               ; preds = %33, %4
  %20 = load i64, i64* %12, align 8
  %21 = load i64, i64* %9, align 8
  %22 = icmp sle i64 %20, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %19
  %24 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %25 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %7, align 8
  %26 = load i64, i64* %12, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i32 @mlx4_table_get(%struct.mlx4_dev* %24, %struct.mlx4_icm_table* %25, i64 %26, i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %39

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* %12, align 8
  %37 = add nsw i64 %36, %35
  store i64 %37, i64* %12, align 8
  br label %19

38:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %55

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %44, %39
  %41 = load i64, i64* %12, align 8
  %42 = load i64, i64* %8, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %40
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* %12, align 8
  %48 = sub nsw i64 %47, %46
  store i64 %48, i64* %12, align 8
  %49 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %50 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %7, align 8
  %51 = load i64, i64* %12, align 8
  %52 = call i32 @mlx4_table_put(%struct.mlx4_dev* %49, %struct.mlx4_icm_table* %50, i64 %51)
  br label %40

53:                                               ; preds = %40
  %54 = load i32, i32* %11, align 4
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %53, %38
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @mlx4_table_get(%struct.mlx4_dev*, %struct.mlx4_icm_table*, i64, i32) #1

declare dso_local i32 @mlx4_table_put(%struct.mlx4_dev*, %struct.mlx4_icm_table*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
