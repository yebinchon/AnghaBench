; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c_fs_match_exact_val.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c_fs_match_exact_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_fs_mask = type { i32, i8* }

@MLX5_CREATE_FLOW_GROUP_IN_MATCH_CRITERIA_ENABLE_OUTER_HEADERS = common dso_local global i32 0, align 4
@fte_match_param = common dso_local global i32 0, align 4
@outer_headers = common dso_local global i32 0, align 4
@fte_match_set_lyr_2_4 = common dso_local global i32 0, align 4
@MLX5_CREATE_FLOW_GROUP_IN_MATCH_CRITERIA_ENABLE_MISC_PARAMETERS = common dso_local global i32 0, align 4
@misc_parameters = common dso_local global i32 0, align 4
@fte_match_set_misc = common dso_local global i32 0, align 4
@MLX5_CREATE_FLOW_GROUP_IN_MATCH_CRITERIA_ENABLE_INNER_HEADERS = common dso_local global i32 0, align 4
@inner_headers = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fs_match_exact_val(%struct.mlx5_core_fs_mask* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_core_fs_mask*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.mlx5_core_fs_mask* %0, %struct.mlx5_core_fs_mask** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %17 = load %struct.mlx5_core_fs_mask*, %struct.mlx5_core_fs_mask** %5, align 8
  %18 = getelementptr inbounds %struct.mlx5_core_fs_mask, %struct.mlx5_core_fs_mask* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @MLX5_CREATE_FLOW_GROUP_IN_MATCH_CRITERIA_ENABLE_OUTER_HEADERS, align 4
  %21 = shl i32 1, %20
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %48

24:                                               ; preds = %3
  %25 = load i32, i32* @fte_match_param, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* @outer_headers, align 4
  %28 = call i8* @MLX5_ADDR_OF(i32 %25, i8* %26, i32 %27)
  store i8* %28, i8** %8, align 8
  %29 = load i32, i32* @fte_match_param, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* @outer_headers, align 4
  %32 = call i8* @MLX5_ADDR_OF(i32 %29, i8* %30, i32 %31)
  store i8* %32, i8** %9, align 8
  %33 = load i32, i32* @fte_match_param, align 4
  %34 = load %struct.mlx5_core_fs_mask*, %struct.mlx5_core_fs_mask** %5, align 8
  %35 = getelementptr inbounds %struct.mlx5_core_fs_mask, %struct.mlx5_core_fs_mask* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = load i32, i32* @outer_headers, align 4
  %38 = call i8* @MLX5_ADDR_OF(i32 %33, i8* %36, i32 %37)
  store i8* %38, i8** %10, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %43 = call i32 @MLX5_ST_SZ_BYTES(i32 %42)
  %44 = call i32 @_fs_match_exact_val(i8* %39, i8* %40, i8* %41, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %113

47:                                               ; preds = %24
  br label %48

48:                                               ; preds = %47, %3
  %49 = load %struct.mlx5_core_fs_mask*, %struct.mlx5_core_fs_mask** %5, align 8
  %50 = getelementptr inbounds %struct.mlx5_core_fs_mask, %struct.mlx5_core_fs_mask* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @MLX5_CREATE_FLOW_GROUP_IN_MATCH_CRITERIA_ENABLE_MISC_PARAMETERS, align 4
  %53 = shl i32 1, %52
  %54 = and i32 %51, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %80

56:                                               ; preds = %48
  %57 = load i32, i32* @fte_match_param, align 4
  %58 = load i8*, i8** %6, align 8
  %59 = load i32, i32* @misc_parameters, align 4
  %60 = call i8* @MLX5_ADDR_OF(i32 %57, i8* %58, i32 %59)
  store i8* %60, i8** %11, align 8
  %61 = load i32, i32* @fte_match_param, align 4
  %62 = load i8*, i8** %7, align 8
  %63 = load i32, i32* @misc_parameters, align 4
  %64 = call i8* @MLX5_ADDR_OF(i32 %61, i8* %62, i32 %63)
  store i8* %64, i8** %12, align 8
  %65 = load i32, i32* @fte_match_param, align 4
  %66 = load %struct.mlx5_core_fs_mask*, %struct.mlx5_core_fs_mask** %5, align 8
  %67 = getelementptr inbounds %struct.mlx5_core_fs_mask, %struct.mlx5_core_fs_mask* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = load i32, i32* @misc_parameters, align 4
  %70 = call i8* @MLX5_ADDR_OF(i32 %65, i8* %68, i32 %69)
  store i8* %70, i8** %13, align 8
  %71 = load i8*, i8** %13, align 8
  %72 = load i8*, i8** %11, align 8
  %73 = load i8*, i8** %12, align 8
  %74 = load i32, i32* @fte_match_set_misc, align 4
  %75 = call i32 @MLX5_ST_SZ_BYTES(i32 %74)
  %76 = call i32 @_fs_match_exact_val(i8* %71, i8* %72, i8* %73, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %113

79:                                               ; preds = %56
  br label %80

80:                                               ; preds = %79, %48
  %81 = load %struct.mlx5_core_fs_mask*, %struct.mlx5_core_fs_mask** %5, align 8
  %82 = getelementptr inbounds %struct.mlx5_core_fs_mask, %struct.mlx5_core_fs_mask* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @MLX5_CREATE_FLOW_GROUP_IN_MATCH_CRITERIA_ENABLE_INNER_HEADERS, align 4
  %85 = shl i32 1, %84
  %86 = and i32 %83, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %112

88:                                               ; preds = %80
  %89 = load i32, i32* @fte_match_param, align 4
  %90 = load i8*, i8** %6, align 8
  %91 = load i32, i32* @inner_headers, align 4
  %92 = call i8* @MLX5_ADDR_OF(i32 %89, i8* %90, i32 %91)
  store i8* %92, i8** %14, align 8
  %93 = load i32, i32* @fte_match_param, align 4
  %94 = load i8*, i8** %7, align 8
  %95 = load i32, i32* @inner_headers, align 4
  %96 = call i8* @MLX5_ADDR_OF(i32 %93, i8* %94, i32 %95)
  store i8* %96, i8** %15, align 8
  %97 = load i32, i32* @fte_match_param, align 4
  %98 = load %struct.mlx5_core_fs_mask*, %struct.mlx5_core_fs_mask** %5, align 8
  %99 = getelementptr inbounds %struct.mlx5_core_fs_mask, %struct.mlx5_core_fs_mask* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = load i32, i32* @inner_headers, align 4
  %102 = call i8* @MLX5_ADDR_OF(i32 %97, i8* %100, i32 %101)
  store i8* %102, i8** %16, align 8
  %103 = load i8*, i8** %16, align 8
  %104 = load i8*, i8** %14, align 8
  %105 = load i8*, i8** %15, align 8
  %106 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %107 = call i32 @MLX5_ST_SZ_BYTES(i32 %106)
  %108 = call i32 @_fs_match_exact_val(i8* %103, i8* %104, i8* %105, i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %88
  store i32 0, i32* %4, align 4
  br label %113

111:                                              ; preds = %88
  br label %112

112:                                              ; preds = %111, %80
  store i32 1, i32* %4, align 4
  br label %113

113:                                              ; preds = %112, %110, %78, %46
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i8* @MLX5_ADDR_OF(i32, i8*, i32) #1

declare dso_local i32 @_fs_match_exact_val(i8*, i8*, i8*, i32) #1

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
