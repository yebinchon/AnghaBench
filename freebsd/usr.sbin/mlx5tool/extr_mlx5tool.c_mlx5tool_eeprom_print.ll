; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mlx5tool/extr_mlx5tool.c_mlx5tool_eeprom_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mlx5tool/extr_mlx5tool.c_mlx5tool_eeprom_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_eeprom_get = type { i64, i64, i64 }

@.str = private unnamed_addr constant [17 x i8] c"\0AOffset\09\09Values\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"------\09\09------\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"\0A0x%04zX\09\09\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%02X \00", align 1
@MLX5_EEPROM_HIGH_PAGE_OFFSET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"\0A\0AUpper Page 0x03\0A\00", align 1
@MLX5_EEPROM_PAGE_LENGTH = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"\0A0x%04X\09\09\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_eeprom_get*)* @mlx5tool_eeprom_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5tool_eeprom_print(%struct.mlx5_eeprom_get* %0) #0 {
  %2 = alloca %struct.mlx5_eeprom_get*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.mlx5_eeprom_get* %0, %struct.mlx5_eeprom_get** %2, align 8
  store i64 0, i64* %6, align 8
  store i32 16, i32* %4, align 4
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %9

9:                                                ; preds = %36, %1
  %10 = load i64, i64* %6, align 8
  %11 = load %struct.mlx5_eeprom_get*, %struct.mlx5_eeprom_get** %2, align 8
  %12 = getelementptr inbounds %struct.mlx5_eeprom_get, %struct.mlx5_eeprom_get* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ult i64 %10, %13
  br i1 %14, label %15, label %37

15:                                               ; preds = %9
  %16 = load i64, i64* %6, align 8
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i64 %16)
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %33, %15
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %18
  %23 = load %struct.mlx5_eeprom_get*, %struct.mlx5_eeprom_get** %2, align 8
  %24 = getelementptr inbounds %struct.mlx5_eeprom_get, %struct.mlx5_eeprom_get* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i32*
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %29)
  %31 = load i64, i64* %6, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %6, align 8
  br label %33

33:                                               ; preds = %22
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %18

36:                                               ; preds = %18
  br label %9

37:                                               ; preds = %9
  %38 = load %struct.mlx5_eeprom_get*, %struct.mlx5_eeprom_get** %2, align 8
  %39 = getelementptr inbounds %struct.mlx5_eeprom_get, %struct.mlx5_eeprom_get* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %77

42:                                               ; preds = %37
  %43 = load i32, i32* @MLX5_EEPROM_HIGH_PAGE_OFFSET, align 4
  store i32 %43, i32* %5, align 4
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @MLX5_EEPROM_HIGH_PAGE_OFFSET, align 4
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %75, %42
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @MLX5_EEPROM_PAGE_LENGTH, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %76

52:                                               ; preds = %48
  %53 = load i32, i32* %5, align 4
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %53)
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %72, %52
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %75

59:                                               ; preds = %55
  %60 = load %struct.mlx5_eeprom_get*, %struct.mlx5_eeprom_get** %2, align 8
  %61 = getelementptr inbounds %struct.mlx5_eeprom_get, %struct.mlx5_eeprom_get* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to i32*
  %64 = load i64, i64* %6, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  %68 = load i64, i64* %6, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %6, align 8
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %59
  %73 = load i32, i32* %3, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %3, align 4
  br label %55

75:                                               ; preds = %55
  br label %48

76:                                               ; preds = %48
  br label %77

77:                                               ; preds = %76, %37
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
