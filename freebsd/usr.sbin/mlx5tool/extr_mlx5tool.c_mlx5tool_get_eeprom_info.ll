; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mlx5tool/extr_mlx5tool.c_mlx5tool_get_eeprom_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mlx5tool/extr_mlx5tool.c_mlx5tool_get_eeprom_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_tool_addr = type { i32 }
%struct.mlx5_eeprom_get = type { i32*, i64, %struct.mlx5_tool_addr }

@MLX5_EEPROM_GET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"MLX5_EEPROM_GET\00", align 1
@MLX5_EEPROM_PAGE_LENGTH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"alloc eeprom_info.eeprom_info_buf \00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.mlx5_tool_addr*)* @mlx5tool_get_eeprom_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5tool_get_eeprom_info(i32 %0, %struct.mlx5_tool_addr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_tool_addr*, align 8
  %6 = alloca %struct.mlx5_eeprom_get, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.mlx5_tool_addr* %1, %struct.mlx5_tool_addr** %5, align 8
  %8 = call i32 @memset(%struct.mlx5_eeprom_get* %6, i32 0, i32 24)
  %9 = getelementptr inbounds %struct.mlx5_eeprom_get, %struct.mlx5_eeprom_get* %6, i32 0, i32 2
  %10 = load %struct.mlx5_tool_addr*, %struct.mlx5_tool_addr** %5, align 8
  %11 = bitcast %struct.mlx5_tool_addr* %9 to i8*
  %12 = bitcast %struct.mlx5_tool_addr* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 4 %12, i64 4, i1 false)
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @MLX5_EEPROM_GET, align 4
  %15 = call i32 @ioctl(i32 %13, i32 %14, %struct.mlx5_eeprom_get* %6)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = call i32 @warn(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %3, align 4
  br label %51

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.mlx5_eeprom_get, %struct.mlx5_eeprom_get* %6, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MLX5_EEPROM_PAGE_LENGTH, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32* @malloc(i64 %25)
  %27 = getelementptr inbounds %struct.mlx5_eeprom_get, %struct.mlx5_eeprom_get* %6, i32 0, i32 0
  store i32* %26, i32** %27, align 8
  %28 = getelementptr inbounds %struct.mlx5_eeprom_get, %struct.mlx5_eeprom_get* %6, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %21
  %32 = call i32 @warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @ENOMEM, align 4
  store i32 %33, i32* %3, align 4
  br label %51

34:                                               ; preds = %21
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @MLX5_EEPROM_GET, align 4
  %37 = call i32 @ioctl(i32 %35, i32 %36, %struct.mlx5_eeprom_get* %6)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = call i32 @warn(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %42 = getelementptr inbounds %struct.mlx5_eeprom_get, %struct.mlx5_eeprom_get* %6, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @free(i32* %43)
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %3, align 4
  br label %51

46:                                               ; preds = %34
  %47 = call i32 @mlx5tool_eeprom_print(%struct.mlx5_eeprom_get* %6)
  %48 = getelementptr inbounds %struct.mlx5_eeprom_get, %struct.mlx5_eeprom_get* %6, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @free(i32* %49)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %46, %40, %31, %18
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @memset(%struct.mlx5_eeprom_get*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ioctl(i32, i32, %struct.mlx5_eeprom_get*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @mlx5tool_eeprom_print(%struct.mlx5_eeprom_get*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
