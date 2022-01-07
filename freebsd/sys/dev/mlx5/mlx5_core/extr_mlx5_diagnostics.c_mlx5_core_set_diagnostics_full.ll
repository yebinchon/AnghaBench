; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_diagnostics.c_mlx5_core_set_diagnostics_full.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_diagnostics.c_mlx5_core_set_diagnostics_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.mlx5_core_dev = type { i32 }
%struct.TYPE_8__ = type { i32 }

@debug = common dso_local global i32 0, align 4
@num_of_diagnostic_counters = common dso_local global i32 0, align 4
@set_diagnostic_params_in = common dso_local global %struct.TYPE_9__* null, align 8
@diagnostic_counter = common dso_local global %struct.TYPE_9__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@diagnostic_params_ctx = common dso_local global i32 0, align 4
@diagnostic_params_context = common dso_local global i32 0, align 4
@enable = common dso_local global i32 0, align 4
@single = common dso_local global i32 0, align 4
@on_demand = common dso_local global i32 0, align 4
@mlx5_core_pci_diagnostics_table = common dso_local global i32 0, align 4
@MLX5_CORE_PCI_DIAGNOSTICS_NUM = common dso_local global i32 0, align 4
@mlx5_core_general_diagnostics_table = common dso_local global i32 0, align 4
@MLX5_CORE_GENERAL_DIAGNOSTICS_NUM = common dso_local global i32 0, align 4
@num_of_counters = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_core_set_diagnostics_full(%struct.mlx5_core_dev* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %17 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %18 = load i32, i32* @debug, align 4
  %19 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %17, i32 %18)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %143

22:                                               ; preds = %3
  %23 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %24 = load i32, i32* @num_of_diagnostic_counters, align 4
  %25 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %23, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %143

29:                                               ; preds = %22
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** @set_diagnostic_params_in, align 8
  %31 = call i32 @MLX5_ST_SZ_BYTES(%struct.TYPE_9__* %30)
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** @diagnostic_counter, align 8
  %33 = call i32 @MLX5_ST_SZ_BYTES(%struct.TYPE_9__* %32)
  %34 = load i32, i32* %10, align 4
  %35 = mul nsw i32 %33, %34
  %36 = add nsw i32 %31, %35
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i8* @mlx5_vzalloc(i32 %37)
  store i8* %38, i8** %9, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %29
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %143

44:                                               ; preds = %29
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** @set_diagnostic_params_in, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = load i32, i32* @diagnostic_params_ctx, align 4
  %48 = call i8* @MLX5_ADDR_OF(%struct.TYPE_9__* %45, i8* %46, i32 %47)
  store i8* %48, i8** %8, align 8
  %49 = load i32, i32* @diagnostic_params_context, align 4
  %50 = load i8*, i8** %8, align 8
  %51 = load i32, i32* @enable, align 4
  %52 = load i64, i64* %6, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %44
  %55 = load i64, i64* %7, align 8
  %56 = icmp ne i64 %55, 0
  br label %57

57:                                               ; preds = %54, %44
  %58 = phi i1 [ true, %44 ], [ %56, %54 ]
  %59 = zext i1 %58 to i32
  %60 = call i32 (i32, i8*, i32, ...) @MLX5_SET(i32 %49, i8* %50, i32 %51, i32 %59)
  %61 = load i32, i32* @diagnostic_params_context, align 4
  %62 = load i8*, i8** %8, align 8
  %63 = load i32, i32* @single, align 4
  %64 = call i32 (i32, i8*, i32, ...) @MLX5_SET(i32 %61, i8* %62, i32 %63, i32 1)
  %65 = load i32, i32* @diagnostic_params_context, align 4
  %66 = load i8*, i8** %8, align 8
  %67 = load i32, i32* @on_demand, align 4
  %68 = call i32 (i32, i8*, i32, ...) @MLX5_SET(i32 %65, i8* %66, i32 %67, i32 1)
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %69

69:                                               ; preds = %120, %57
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %123

73:                                               ; preds = %69
  %74 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** @diagnostic_counter, align 8
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call %struct.TYPE_8__* @MLX5_CAP_DEBUG(%struct.mlx5_core_dev* %74, i32 %80)
  store %struct.TYPE_8__* %81, %struct.TYPE_8__** %15, align 8
  store i32 -1, i32* %16, align 4
  %82 = load i32, i32* %16, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %73
  %85 = load i64, i64* %6, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load i32, i32* @mlx5_core_pci_diagnostics_table, align 4
  %89 = load i32, i32* @MLX5_CORE_PCI_DIAGNOSTICS_NUM, align 4
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %91 = call i32 @mlx5_core_get_index_of_diag_counter(i32 %88, i32 %89, %struct.TYPE_8__* %90)
  store i32 %91, i32* %16, align 4
  br label %92

92:                                               ; preds = %87, %84, %73
  %93 = load i32, i32* %16, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %92
  %96 = load i64, i64* %7, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load i32, i32* @mlx5_core_general_diagnostics_table, align 4
  %100 = load i32, i32* @MLX5_CORE_GENERAL_DIAGNOSTICS_NUM, align 4
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %102 = call i32 @mlx5_core_get_index_of_diag_counter(i32 %99, i32 %100, %struct.TYPE_8__* %101)
  store i32 %102, i32* %16, align 4
  br label %103

103:                                              ; preds = %98, %95, %92
  %104 = load i32, i32* %16, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  br label %120

107:                                              ; preds = %103
  %108 = load i32, i32* @diagnostic_params_context, align 4
  %109 = load i8*, i8** %8, align 8
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %111 = load i32, i32* %14, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %117 = call i32 (i32, i8*, i32, ...) @MLX5_SET(i32 %108, i8* %109, i32 %115, %struct.TYPE_8__* %116)
  %118 = load i32, i32* %14, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %14, align 4
  br label %120

120:                                              ; preds = %107, %106
  %121 = load i32, i32* %13, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %13, align 4
  br label %69

123:                                              ; preds = %69
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** @set_diagnostic_params_in, align 8
  %125 = call i32 @MLX5_ST_SZ_BYTES(%struct.TYPE_9__* %124)
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** @diagnostic_counter, align 8
  %127 = call i32 @MLX5_ST_SZ_BYTES(%struct.TYPE_9__* %126)
  %128 = load i32, i32* %14, align 4
  %129 = mul nsw i32 %127, %128
  %130 = add nsw i32 %125, %129
  store i32 %130, i32* %11, align 4
  %131 = load i32, i32* @diagnostic_params_context, align 4
  %132 = load i8*, i8** %8, align 8
  %133 = load i32, i32* @num_of_counters, align 4
  %134 = load i32, i32* %14, align 4
  %135 = call i32 (i32, i8*, i32, ...) @MLX5_SET(i32 %131, i8* %132, i32 %133, i32 %134)
  %136 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %137 = load i8*, i8** %9, align 8
  %138 = load i32, i32* %11, align 4
  %139 = call i32 @mlx5_set_diagnostic_params(%struct.mlx5_core_dev* %136, i8* %137, i32 %138)
  store i32 %139, i32* %12, align 4
  %140 = load i8*, i8** %9, align 8
  %141 = call i32 @kvfree(i8* %140)
  %142 = load i32, i32* %12, align 4
  store i32 %142, i32* %4, align 4
  br label %143

143:                                              ; preds = %123, %41, %28, %21
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @MLX5_ST_SZ_BYTES(%struct.TYPE_9__*) #1

declare dso_local i8* @mlx5_vzalloc(i32) #1

declare dso_local i8* @MLX5_ADDR_OF(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @MLX5_SET(i32, i8*, i32, ...) #1

declare dso_local %struct.TYPE_8__* @MLX5_CAP_DEBUG(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_core_get_index_of_diag_counter(i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @mlx5_set_diagnostic_params(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local i32 @kvfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
