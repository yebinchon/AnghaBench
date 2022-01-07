; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fwdump.c_mlx5_eeprom_copyout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fwdump.c_mlx5_eeprom_copyout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_eeprom_get = type { i32*, i64, i64 }
%struct.mlx5_eeprom = type { i32, i64, i64, i32, i64, i32 }

@MLX5_I2C_ADDR_LOW = common dso_local global i32 0, align 4
@MLX5_EEPROM_LOW_PAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Failed reading EEPROM initial information\0A\00", align 1
@MLX5_EEPROM_PAGE_LENGTH = common dso_local global i64 0, align 8
@M_MLX5_EEPROM = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed reading EEPROM error = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, %struct.mlx5_eeprom_get*)* @mlx5_eeprom_copyout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_eeprom_copyout(%struct.mlx5_core_dev* %0, %struct.mlx5_eeprom_get* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca %struct.mlx5_eeprom_get*, align 8
  %6 = alloca %struct.mlx5_eeprom, align 8
  %7 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store %struct.mlx5_eeprom_get* %1, %struct.mlx5_eeprom_get** %5, align 8
  %8 = load i32, i32* @MLX5_I2C_ADDR_LOW, align 4
  %9 = getelementptr inbounds %struct.mlx5_eeprom, %struct.mlx5_eeprom* %6, i32 0, i32 5
  store i32 %8, i32* %9, align 8
  %10 = getelementptr inbounds %struct.mlx5_eeprom, %struct.mlx5_eeprom* %6, i32 0, i32 4
  store i64 0, i64* %10, align 8
  %11 = load i32, i32* @MLX5_EEPROM_LOW_PAGE, align 4
  %12 = getelementptr inbounds %struct.mlx5_eeprom, %struct.mlx5_eeprom* %6, i32 0, i32 3
  store i32 %11, i32* %12, align 8
  %13 = getelementptr inbounds %struct.mlx5_eeprom, %struct.mlx5_eeprom* %6, i32 0, i32 2
  store i64 0, i64* %13, align 8
  %14 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %15 = call i32 @mlx5_get_eeprom_info(%struct.mlx5_core_dev* %14, %struct.mlx5_eeprom* %6)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %20 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %19, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %3, align 4
  br label %69

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.mlx5_eeprom, %struct.mlx5_eeprom* %6, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.mlx5_eeprom_get*, %struct.mlx5_eeprom_get** %5, align 8
  %26 = getelementptr inbounds %struct.mlx5_eeprom_get, %struct.mlx5_eeprom_get* %25, i32 0, i32 2
  store i64 %24, i64* %26, align 8
  %27 = getelementptr inbounds %struct.mlx5_eeprom, %struct.mlx5_eeprom* %6, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.mlx5_eeprom_get*, %struct.mlx5_eeprom_get** %5, align 8
  %30 = getelementptr inbounds %struct.mlx5_eeprom_get, %struct.mlx5_eeprom_get* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  %31 = load %struct.mlx5_eeprom_get*, %struct.mlx5_eeprom_get** %5, align 8
  %32 = getelementptr inbounds %struct.mlx5_eeprom_get, %struct.mlx5_eeprom_get* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %69

36:                                               ; preds = %22
  %37 = getelementptr inbounds %struct.mlx5_eeprom, %struct.mlx5_eeprom* %6, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MLX5_EEPROM_PAGE_LENGTH, align 8
  %40 = add nsw i64 %38, %39
  %41 = load i32, i32* @M_MLX5_EEPROM, align 4
  %42 = load i32, i32* @M_WAITOK, align 4
  %43 = load i32, i32* @M_ZERO, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @malloc(i64 %40, i32 %41, i32 %44)
  %46 = getelementptr inbounds %struct.mlx5_eeprom, %struct.mlx5_eeprom* %6, i32 0, i32 0
  store i32 %45, i32* %46, align 8
  %47 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %48 = call i32 @mlx5_get_eeprom(%struct.mlx5_core_dev* %47, %struct.mlx5_eeprom* %6)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %36
  %52 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %52, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %51, %36
  %56 = getelementptr inbounds %struct.mlx5_eeprom, %struct.mlx5_eeprom* %6, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.mlx5_eeprom_get*, %struct.mlx5_eeprom_get** %5, align 8
  %59 = getelementptr inbounds %struct.mlx5_eeprom_get, %struct.mlx5_eeprom_get* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds %struct.mlx5_eeprom, %struct.mlx5_eeprom* %6, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @copyout(i32 %57, i32* %60, i64 %62)
  store i32 %63, i32* %7, align 4
  %64 = getelementptr inbounds %struct.mlx5_eeprom, %struct.mlx5_eeprom* %6, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @M_MLX5_EEPROM, align 4
  %67 = call i32 @free(i32 %65, i32 %66)
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %55, %35, %18
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @mlx5_get_eeprom_info(%struct.mlx5_core_dev*, %struct.mlx5_eeprom*) #1

declare dso_local i32 @mlx5_core_err(%struct.mlx5_core_dev*, i8*, ...) #1

declare dso_local i32 @malloc(i64, i32, i32) #1

declare dso_local i32 @mlx5_get_eeprom(%struct.mlx5_core_dev*, %struct.mlx5_eeprom*) #1

declare dso_local i32 @copyout(i32, i32*, i64) #1

declare dso_local i32 @free(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
