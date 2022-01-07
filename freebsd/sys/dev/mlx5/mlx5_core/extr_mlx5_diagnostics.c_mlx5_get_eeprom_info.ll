; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_diagnostics.c_mlx5_get_eeprom_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_diagnostics.c_mlx5_get_eeprom_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_eeprom = type { i32, i8*, i8*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"Failed query module error=%d\0A\00", align 1
@MLX5_EEPROM_INFO_BYTES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Failed query EEPROM module error=0x%x\0A\00", align 1
@MLX5_EEPROM_IDENTIFIER_BYTE_MASK = common dso_local global i32 0, align 4
@MLX5_ETH_MODULE_SFF_8436 = common dso_local global i8* null, align 8
@MLX5_ETH_MODULE_SFF_8436_LEN = common dso_local global i8* null, align 8
@MLX5_EEPROM_REVISION_ID_BYTE_MASK = common dso_local global i32 0, align 4
@MLX5_ETH_MODULE_SFF_8636 = common dso_local global i8* null, align 8
@MLX5_ETH_MODULE_SFF_8636_LEN = common dso_local global i8* null, align 8
@MLX5_EEPROM_PAGE_3_VALID_BIT_MASK = common dso_local global i32 0, align 4
@MLX5_ETH_MODULE_SFF_8472 = common dso_local global i8* null, align 8
@MLX5_ETH_MODULE_SFF_8472_LEN = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"Not recognized cable type = 0x%x(%s)\0A\00", align 1
@sff_8024_id = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_get_eeprom_info(%struct.mlx5_core_dev* %0, %struct.mlx5_eeprom* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca %struct.mlx5_eeprom*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store %struct.mlx5_eeprom* %1, %struct.mlx5_eeprom** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %10 = load %struct.mlx5_eeprom*, %struct.mlx5_eeprom** %5, align 8
  %11 = getelementptr inbounds %struct.mlx5_eeprom, %struct.mlx5_eeprom* %10, i32 0, i32 3
  %12 = call i32 @mlx5_query_module_num(%struct.mlx5_core_dev* %9, i32* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 (%struct.mlx5_core_dev*, i8*, i32, ...) @mlx5_core_err(%struct.mlx5_core_dev* %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %8, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %112

21:                                               ; preds = %2
  %22 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %23 = load %struct.mlx5_eeprom*, %struct.mlx5_eeprom** %5, align 8
  %24 = getelementptr inbounds %struct.mlx5_eeprom, %struct.mlx5_eeprom* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.mlx5_eeprom*, %struct.mlx5_eeprom** %5, align 8
  %27 = getelementptr inbounds %struct.mlx5_eeprom, %struct.mlx5_eeprom* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.mlx5_eeprom*, %struct.mlx5_eeprom** %5, align 8
  %30 = getelementptr inbounds %struct.mlx5_eeprom, %struct.mlx5_eeprom* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @MLX5_EEPROM_INFO_BYTES, align 4
  %33 = load %struct.mlx5_eeprom*, %struct.mlx5_eeprom** %5, align 8
  %34 = getelementptr inbounds %struct.mlx5_eeprom, %struct.mlx5_eeprom* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @mlx5_query_eeprom(%struct.mlx5_core_dev* %22, i32 %25, i32 %28, i32 %31, i32 %32, i32 %35, i32* %6, i32* %7)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %21
  %40 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 (%struct.mlx5_core_dev*, i8*, i32, ...) @mlx5_core_err(%struct.mlx5_core_dev* %40, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %8, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %112

45:                                               ; preds = %21
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @MLX5_EEPROM_IDENTIFIER_BYTE_MASK, align 4
  %48 = and i32 %46, %47
  switch i32 %48, label %97 [
    i32 131, label %49
    i32 129, label %56
    i32 130, label %56
    i32 128, label %90
  ]

49:                                               ; preds = %45
  %50 = load i8*, i8** @MLX5_ETH_MODULE_SFF_8436, align 8
  %51 = load %struct.mlx5_eeprom*, %struct.mlx5_eeprom** %5, align 8
  %52 = getelementptr inbounds %struct.mlx5_eeprom, %struct.mlx5_eeprom* %51, i32 0, i32 2
  store i8* %50, i8** %52, align 8
  %53 = load i8*, i8** @MLX5_ETH_MODULE_SFF_8436_LEN, align 8
  %54 = load %struct.mlx5_eeprom*, %struct.mlx5_eeprom** %5, align 8
  %55 = getelementptr inbounds %struct.mlx5_eeprom, %struct.mlx5_eeprom* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  br label %111

56:                                               ; preds = %45, %45
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @MLX5_EEPROM_IDENTIFIER_BYTE_MASK, align 4
  %59 = and i32 %57, %58
  %60 = icmp eq i32 %59, 130
  br i1 %60, label %67, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @MLX5_EEPROM_REVISION_ID_BYTE_MASK, align 4
  %64 = and i32 %62, %63
  %65 = ashr i32 %64, 8
  %66 = icmp sge i32 %65, 3
  br i1 %66, label %67, label %74

67:                                               ; preds = %61, %56
  %68 = load i8*, i8** @MLX5_ETH_MODULE_SFF_8636, align 8
  %69 = load %struct.mlx5_eeprom*, %struct.mlx5_eeprom** %5, align 8
  %70 = getelementptr inbounds %struct.mlx5_eeprom, %struct.mlx5_eeprom* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  %71 = load i8*, i8** @MLX5_ETH_MODULE_SFF_8636_LEN, align 8
  %72 = load %struct.mlx5_eeprom*, %struct.mlx5_eeprom** %5, align 8
  %73 = getelementptr inbounds %struct.mlx5_eeprom, %struct.mlx5_eeprom* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  br label %81

74:                                               ; preds = %61
  %75 = load i8*, i8** @MLX5_ETH_MODULE_SFF_8436, align 8
  %76 = load %struct.mlx5_eeprom*, %struct.mlx5_eeprom** %5, align 8
  %77 = getelementptr inbounds %struct.mlx5_eeprom, %struct.mlx5_eeprom* %76, i32 0, i32 2
  store i8* %75, i8** %77, align 8
  %78 = load i8*, i8** @MLX5_ETH_MODULE_SFF_8436_LEN, align 8
  %79 = load %struct.mlx5_eeprom*, %struct.mlx5_eeprom** %5, align 8
  %80 = getelementptr inbounds %struct.mlx5_eeprom, %struct.mlx5_eeprom* %79, i32 0, i32 1
  store i8* %78, i8** %80, align 8
  br label %81

81:                                               ; preds = %74, %67
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @MLX5_EEPROM_PAGE_3_VALID_BIT_MASK, align 4
  %84 = and i32 %82, %83
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load %struct.mlx5_eeprom*, %struct.mlx5_eeprom** %5, align 8
  %88 = getelementptr inbounds %struct.mlx5_eeprom, %struct.mlx5_eeprom* %87, i32 0, i32 0
  store i32 1, i32* %88, align 8
  br label %89

89:                                               ; preds = %86, %81
  br label %111

90:                                               ; preds = %45
  %91 = load i8*, i8** @MLX5_ETH_MODULE_SFF_8472, align 8
  %92 = load %struct.mlx5_eeprom*, %struct.mlx5_eeprom** %5, align 8
  %93 = getelementptr inbounds %struct.mlx5_eeprom, %struct.mlx5_eeprom* %92, i32 0, i32 2
  store i8* %91, i8** %93, align 8
  %94 = load i8*, i8** @MLX5_ETH_MODULE_SFF_8472_LEN, align 8
  %95 = load %struct.mlx5_eeprom*, %struct.mlx5_eeprom** %5, align 8
  %96 = getelementptr inbounds %struct.mlx5_eeprom, %struct.mlx5_eeprom* %95, i32 0, i32 1
  store i8* %94, i8** %96, align 8
  br label %111

97:                                               ; preds = %45
  %98 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @MLX5_EEPROM_IDENTIFIER_BYTE_MASK, align 4
  %101 = and i32 %99, %100
  %102 = load i32*, i32** @sff_8024_id, align 8
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @MLX5_EEPROM_IDENTIFIER_BYTE_MASK, align 4
  %105 = and i32 %103, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %102, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (%struct.mlx5_core_dev*, i8*, i32, ...) @mlx5_core_err(%struct.mlx5_core_dev* %98, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %101, i32 %108)
  %110 = load i32, i32* @EINVAL, align 4
  store i32 %110, i32* %3, align 4
  br label %112

111:                                              ; preds = %90, %89, %49
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %111, %97, %39, %15
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @mlx5_query_module_num(%struct.mlx5_core_dev*, i32*) #1

declare dso_local i32 @mlx5_core_err(%struct.mlx5_core_dev*, i8*, i32, ...) #1

declare dso_local i32 @mlx5_query_eeprom(%struct.mlx5_core_dev*, i32, i32, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
