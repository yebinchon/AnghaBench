; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_diagnostics.c_mlx5_get_eeprom.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_diagnostics.c_mlx5_get_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_eeprom = type { i32, i32, i32, i64, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed reading EEPROM, error = 0x%02x\0A\00", align 1
@MLX5_EEPROM_HIGH_PAGE_OFFSET = common dso_local global i32 0, align 4
@MLX5_EEPROM_HIGH_PAGE = common dso_local global i32 0, align 4
@MLX5_EEPROM_PAGE_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_get_eeprom(%struct.mlx5_core_dev* %0, %struct.mlx5_eeprom* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca %struct.mlx5_eeprom*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store %struct.mlx5_eeprom* %1, %struct.mlx5_eeprom** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.mlx5_eeprom*, %struct.mlx5_eeprom** %5, align 8
  %9 = getelementptr inbounds %struct.mlx5_eeprom, %struct.mlx5_eeprom* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %3, align 4
  br label %139

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %62, %14
  %16 = load %struct.mlx5_eeprom*, %struct.mlx5_eeprom** %5, align 8
  %17 = getelementptr inbounds %struct.mlx5_eeprom, %struct.mlx5_eeprom* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.mlx5_eeprom*, %struct.mlx5_eeprom** %5, align 8
  %20 = getelementptr inbounds %struct.mlx5_eeprom, %struct.mlx5_eeprom* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %68

23:                                               ; preds = %15
  %24 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %25 = load %struct.mlx5_eeprom*, %struct.mlx5_eeprom** %5, align 8
  %26 = getelementptr inbounds %struct.mlx5_eeprom, %struct.mlx5_eeprom* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.mlx5_eeprom*, %struct.mlx5_eeprom** %5, align 8
  %29 = getelementptr inbounds %struct.mlx5_eeprom, %struct.mlx5_eeprom* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mlx5_eeprom*, %struct.mlx5_eeprom** %5, align 8
  %32 = getelementptr inbounds %struct.mlx5_eeprom, %struct.mlx5_eeprom* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.mlx5_eeprom*, %struct.mlx5_eeprom** %5, align 8
  %35 = getelementptr inbounds %struct.mlx5_eeprom, %struct.mlx5_eeprom* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.mlx5_eeprom*, %struct.mlx5_eeprom** %5, align 8
  %38 = getelementptr inbounds %struct.mlx5_eeprom, %struct.mlx5_eeprom* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %36, %39
  %41 = load %struct.mlx5_eeprom*, %struct.mlx5_eeprom** %5, align 8
  %42 = getelementptr inbounds %struct.mlx5_eeprom, %struct.mlx5_eeprom* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.mlx5_eeprom*, %struct.mlx5_eeprom** %5, align 8
  %45 = getelementptr inbounds %struct.mlx5_eeprom, %struct.mlx5_eeprom* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.mlx5_eeprom*, %struct.mlx5_eeprom** %5, align 8
  %48 = getelementptr inbounds %struct.mlx5_eeprom, %struct.mlx5_eeprom* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sdiv i32 %49, 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %46, %51
  %53 = call i32 @mlx5_query_eeprom(%struct.mlx5_core_dev* %24, i32 %27, i32 %30, i32 %33, i32 %40, i32 %43, i64 %52, i32* %6)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %23
  %57 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @mlx5_core_err(%struct.mlx5_core_dev* %57, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %7, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %139

62:                                               ; preds = %23
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.mlx5_eeprom*, %struct.mlx5_eeprom** %5, align 8
  %65 = getelementptr inbounds %struct.mlx5_eeprom, %struct.mlx5_eeprom* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %15

68:                                               ; preds = %15
  %69 = load %struct.mlx5_eeprom*, %struct.mlx5_eeprom** %5, align 8
  %70 = getelementptr inbounds %struct.mlx5_eeprom, %struct.mlx5_eeprom* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %138

73:                                               ; preds = %68
  %74 = load i32, i32* @MLX5_EEPROM_HIGH_PAGE_OFFSET, align 4
  %75 = load %struct.mlx5_eeprom*, %struct.mlx5_eeprom** %5, align 8
  %76 = getelementptr inbounds %struct.mlx5_eeprom, %struct.mlx5_eeprom* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* @MLX5_EEPROM_HIGH_PAGE, align 4
  %78 = load %struct.mlx5_eeprom*, %struct.mlx5_eeprom** %5, align 8
  %79 = getelementptr inbounds %struct.mlx5_eeprom, %struct.mlx5_eeprom* %78, i32 0, i32 5
  store i32 %77, i32* %79, align 4
  store i32 0, i32* %6, align 4
  br label %80

80:                                               ; preds = %131, %73
  %81 = load %struct.mlx5_eeprom*, %struct.mlx5_eeprom** %5, align 8
  %82 = getelementptr inbounds %struct.mlx5_eeprom, %struct.mlx5_eeprom* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @MLX5_EEPROM_PAGE_LENGTH, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %137

86:                                               ; preds = %80
  %87 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %88 = load %struct.mlx5_eeprom*, %struct.mlx5_eeprom** %5, align 8
  %89 = getelementptr inbounds %struct.mlx5_eeprom, %struct.mlx5_eeprom* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.mlx5_eeprom*, %struct.mlx5_eeprom** %5, align 8
  %92 = getelementptr inbounds %struct.mlx5_eeprom, %struct.mlx5_eeprom* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.mlx5_eeprom*, %struct.mlx5_eeprom** %5, align 8
  %95 = getelementptr inbounds %struct.mlx5_eeprom, %struct.mlx5_eeprom* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @MLX5_EEPROM_PAGE_LENGTH, align 4
  %98 = load %struct.mlx5_eeprom*, %struct.mlx5_eeprom** %5, align 8
  %99 = getelementptr inbounds %struct.mlx5_eeprom, %struct.mlx5_eeprom* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = sub nsw i32 %97, %100
  %102 = load %struct.mlx5_eeprom*, %struct.mlx5_eeprom** %5, align 8
  %103 = getelementptr inbounds %struct.mlx5_eeprom, %struct.mlx5_eeprom* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.mlx5_eeprom*, %struct.mlx5_eeprom** %5, align 8
  %106 = getelementptr inbounds %struct.mlx5_eeprom, %struct.mlx5_eeprom* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.mlx5_eeprom*, %struct.mlx5_eeprom** %5, align 8
  %109 = getelementptr inbounds %struct.mlx5_eeprom, %struct.mlx5_eeprom* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sdiv i32 %110, 4
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %107, %112
  %114 = load %struct.mlx5_eeprom*, %struct.mlx5_eeprom** %5, align 8
  %115 = getelementptr inbounds %struct.mlx5_eeprom, %struct.mlx5_eeprom* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @MLX5_EEPROM_HIGH_PAGE_OFFSET, align 4
  %118 = sub nsw i32 %116, %117
  %119 = sdiv i32 %118, 4
  %120 = sext i32 %119 to i64
  %121 = add nsw i64 %113, %120
  %122 = call i32 @mlx5_query_eeprom(%struct.mlx5_core_dev* %87, i32 %90, i32 %93, i32 %96, i32 %101, i32 %104, i64 %121, i32* %6)
  store i32 %122, i32* %7, align 4
  %123 = load i32, i32* %7, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %86
  %126 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %127 = load i32, i32* %7, align 4
  %128 = call i32 @mlx5_core_err(%struct.mlx5_core_dev* %126, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %127)
  %129 = load i32, i32* %7, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %3, align 4
  br label %139

131:                                              ; preds = %86
  %132 = load i32, i32* %6, align 4
  %133 = load %struct.mlx5_eeprom*, %struct.mlx5_eeprom** %5, align 8
  %134 = getelementptr inbounds %struct.mlx5_eeprom, %struct.mlx5_eeprom* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, %132
  store i32 %136, i32* %134, align 4
  br label %80

137:                                              ; preds = %80
  br label %138

138:                                              ; preds = %137, %68
  store i32 0, i32* %3, align 4
  br label %139

139:                                              ; preds = %138, %125, %56, %12
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i32 @mlx5_query_eeprom(%struct.mlx5_core_dev*, i32, i32, i32, i32, i32, i64, i32*) #1

declare dso_local i32 @mlx5_core_err(%struct.mlx5_core_dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
