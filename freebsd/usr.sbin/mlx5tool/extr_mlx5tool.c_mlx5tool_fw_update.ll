; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mlx5tool/extr_mlx5tool.c_mlx5tool_fw_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mlx5tool/extr_mlx5tool.c_mlx5tool_fw_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_tool_addr = type { i32 }
%struct.stat = type { i32 }
%struct.mlx5_fw_update = type { i64, i32, i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Unable to open %s\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Unable to stat %s\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"Unable to mmap %s\00", align 1
@MLX5_FW_UPDATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"MLX5_FW_UPDATE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.mlx5_tool_addr*, i8*)* @mlx5tool_fw_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5tool_fw_update(i32 %0, %struct.mlx5_tool_addr* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_tool_addr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.stat, align 4
  %8 = alloca %struct.mlx5_fw_update, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.mlx5_tool_addr* %1, %struct.mlx5_tool_addr** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %11, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = load i32, i32* @O_RDONLY, align 4
  %14 = call i32 @open(i8* %12, i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %18)
  store i32 1, i32* %11, align 4
  br label %64

20:                                               ; preds = %3
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @fstat(i32 %21, %struct.stat* %7)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  store i32 1, i32* %11, align 4
  br label %64

28:                                               ; preds = %20
  %29 = call i32 @memset(%struct.mlx5_fw_update* %8, i32 0, i32 16)
  %30 = getelementptr inbounds %struct.mlx5_fw_update, %struct.mlx5_fw_update* %8, i32 0, i32 2
  %31 = load %struct.mlx5_tool_addr*, %struct.mlx5_tool_addr** %5, align 8
  %32 = call i32 @memcpy(i32* %30, %struct.mlx5_tool_addr* %31, i32 4)
  %33 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @PROT_READ, align 4
  %36 = load i32, i32* @MAP_PRIVATE, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i64 @mmap(i32* null, i32 %34, i32 %35, i32 %36, i32 %37, i32 0)
  %39 = getelementptr inbounds %struct.mlx5_fw_update, %struct.mlx5_fw_update* %8, i32 0, i32 0
  store i64 %38, i64* %39, align 8
  %40 = getelementptr inbounds %struct.mlx5_fw_update, %struct.mlx5_fw_update* %8, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @MAP_FAILED, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %28
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %45)
  store i32 1, i32* %11, align 4
  br label %64

47:                                               ; preds = %28
  %48 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.mlx5_fw_update, %struct.mlx5_fw_update* %8, i32 0, i32 1
  store i32 %49, i32* %50, align 8
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @MLX5_FW_UPDATE, align 4
  %53 = call i32 @ioctl(i32 %51, i32 %52, %struct.mlx5_fw_update* %8)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %47
  %59 = getelementptr inbounds %struct.mlx5_fw_update, %struct.mlx5_fw_update* %8, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @munmap(i64 %60, i32 %62)
  br label %64

64:                                               ; preds = %58, %44, %25, %17
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @close(i32 %65)
  %67 = load i32, i32* %11, align 4
  ret i32 %67
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @memset(%struct.mlx5_fw_update*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.mlx5_tool_addr*, i32) #1

declare dso_local i64 @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.mlx5_fw_update*) #1

declare dso_local i32 @munmap(i64, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
