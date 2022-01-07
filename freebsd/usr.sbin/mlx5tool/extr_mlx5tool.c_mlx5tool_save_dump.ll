; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mlx5tool/extr_mlx5tool.c_mlx5tool_save_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mlx5tool/extr_mlx5tool.c_mlx5tool_save_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_tool_addr = type { i32 }
%struct.mlx5_fwdump_get = type { i64, i64, %struct.mlx5_fwdump_reg*, %struct.mlx5_tool_addr }
%struct.mlx5_fwdump_reg = type { i32, i32 }

@stdout = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"open %s\00", align 1
@MLX5_FWDUMP_GET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"MLX5_FWDUMP_GET dumpsize\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"alloc rege\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [17 x i8] c"no dump recorded\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"MLX5_FWDUMP_GET dump fetch\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"0x%08x\090x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.mlx5_tool_addr*, i8*)* @mlx5tool_save_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5tool_save_dump(i32 %0, %struct.mlx5_tool_addr* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_tool_addr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mlx5_fwdump_get, align 8
  %9 = alloca %struct.mlx5_fwdump_reg*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.mlx5_tool_addr* %1, %struct.mlx5_tool_addr** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32*, i32** @stdout, align 8
  store i32* %17, i32** %10, align 8
  br label %21

18:                                               ; preds = %3
  %19 = load i8*, i8** %7, align 8
  %20 = call i32* @fopen(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %20, i32** %10, align 8
  br label %21

21:                                               ; preds = %18, %16
  %22 = load i32*, i32** %10, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  store i32 1, i32* %4, align 4
  br label %98

27:                                               ; preds = %21
  store i32 1, i32* %13, align 4
  %28 = call i32 @memset(%struct.mlx5_fwdump_get* %8, i32 0, i32 32)
  %29 = getelementptr inbounds %struct.mlx5_fwdump_get, %struct.mlx5_fwdump_get* %8, i32 0, i32 3
  %30 = load %struct.mlx5_tool_addr*, %struct.mlx5_tool_addr** %6, align 8
  %31 = bitcast %struct.mlx5_tool_addr* %29 to i8*
  %32 = bitcast %struct.mlx5_tool_addr* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 4 %32, i64 4, i1 false)
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @MLX5_FWDUMP_GET, align 4
  %35 = call i32 @ioctl(i32 %33, i32 %34, %struct.mlx5_fwdump_get* %8)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %89

40:                                               ; preds = %27
  %41 = getelementptr inbounds %struct.mlx5_fwdump_get, %struct.mlx5_fwdump_get* %8, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call %struct.mlx5_fwdump_reg* @calloc(i64 %42, i32 8)
  store %struct.mlx5_fwdump_reg* %43, %struct.mlx5_fwdump_reg** %9, align 8
  %44 = load %struct.mlx5_fwdump_reg*, %struct.mlx5_fwdump_reg** %9, align 8
  %45 = icmp eq %struct.mlx5_fwdump_reg* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %89

48:                                               ; preds = %40
  %49 = load %struct.mlx5_fwdump_reg*, %struct.mlx5_fwdump_reg** %9, align 8
  %50 = getelementptr inbounds %struct.mlx5_fwdump_get, %struct.mlx5_fwdump_get* %8, i32 0, i32 2
  store %struct.mlx5_fwdump_reg* %49, %struct.mlx5_fwdump_reg** %50, align 8
  %51 = getelementptr inbounds %struct.mlx5_fwdump_get, %struct.mlx5_fwdump_get* %8, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.mlx5_fwdump_get, %struct.mlx5_fwdump_get* %8, i32 0, i32 1
  store i64 %52, i64* %53, align 8
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @MLX5_FWDUMP_GET, align 4
  %56 = call i32 @ioctl(i32 %54, i32 %55, %struct.mlx5_fwdump_get* %8)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %48
  %60 = load i64, i64* @errno, align 8
  %61 = load i64, i64* @ENOENT, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = call i32 @warnx(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %67

65:                                               ; preds = %59
  %66 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %63
  br label %89

68:                                               ; preds = %48
  store i64 0, i64* %11, align 8
  br label %69

69:                                               ; preds = %83, %68
  %70 = load i64, i64* %11, align 8
  %71 = getelementptr inbounds %struct.mlx5_fwdump_get, %struct.mlx5_fwdump_get* %8, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ult i64 %70, %72
  br i1 %73, label %74, label %88

74:                                               ; preds = %69
  %75 = load i32*, i32** %10, align 8
  %76 = load %struct.mlx5_fwdump_reg*, %struct.mlx5_fwdump_reg** %9, align 8
  %77 = getelementptr inbounds %struct.mlx5_fwdump_reg, %struct.mlx5_fwdump_reg* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.mlx5_fwdump_reg*, %struct.mlx5_fwdump_reg** %9, align 8
  %80 = getelementptr inbounds %struct.mlx5_fwdump_reg, %struct.mlx5_fwdump_reg* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @fprintf(i32* %75, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %78, i32 %81)
  br label %83

83:                                               ; preds = %74
  %84 = load i64, i64* %11, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %11, align 8
  %86 = load %struct.mlx5_fwdump_reg*, %struct.mlx5_fwdump_reg** %9, align 8
  %87 = getelementptr inbounds %struct.mlx5_fwdump_reg, %struct.mlx5_fwdump_reg* %86, i32 1
  store %struct.mlx5_fwdump_reg* %87, %struct.mlx5_fwdump_reg** %9, align 8
  br label %69

88:                                               ; preds = %69
  store i32 0, i32* %13, align 4
  br label %89

89:                                               ; preds = %88, %67, %46, %38
  %90 = load i32*, i32** %10, align 8
  %91 = load i32*, i32** @stdout, align 8
  %92 = icmp ne i32* %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load i32*, i32** %10, align 8
  %95 = call i32 @fclose(i32* %94)
  br label %96

96:                                               ; preds = %93, %89
  %97 = load i32, i32* %13, align 4
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %96, %24
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i32 @memset(%struct.mlx5_fwdump_get*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ioctl(i32, i32, %struct.mlx5_fwdump_get*) #1

declare dso_local %struct.mlx5_fwdump_reg* @calloc(i64, i32) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, i32, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
