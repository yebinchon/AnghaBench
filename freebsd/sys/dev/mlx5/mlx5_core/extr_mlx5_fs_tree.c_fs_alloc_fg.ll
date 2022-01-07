; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c_fs_alloc_fg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c_fs_alloc_fg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_group = type { i8*, i8*, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i8* }

@create_flow_group_in = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FS_TYPE_FLOW_GROUP = common dso_local global i32 0, align 4
@start_flow_index = common dso_local global i32 0, align 4
@end_flow_index = common dso_local global i32 0, align 4
@match_criteria = common dso_local global i8* null, align 8
@match_criteria_enable = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5_flow_group* (i32*)* @fs_alloc_fg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5_flow_group* @fs_alloc_fg(i32* %0) #0 {
  %2 = alloca %struct.mlx5_flow_group*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.mlx5_flow_group*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32, i32* @create_flow_group_in, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = ptrtoint i8* %9 to i32
  %11 = call i8* @MLX5_ADDR_OF(i32 %7, i32* %8, i32 %10)
  store i8* %11, i8** %5, align 8
  %12 = load i32, i32* @create_flow_group_in, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = ptrtoint i8* %14 to i32
  %16 = call i8* @MLX5_GET(i32 %12, i32* %13, i32 %15)
  store i8* %16, i8** %6, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.mlx5_flow_group* @kzalloc(i32 48, i32 %17)
  store %struct.mlx5_flow_group* %18, %struct.mlx5_flow_group** %4, align 8
  %19 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %4, align 8
  %20 = icmp ne %struct.mlx5_flow_group* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.mlx5_flow_group* @ERR_PTR(i32 %23)
  store %struct.mlx5_flow_group* %24, %struct.mlx5_flow_group** %2, align 8
  br label %63

25:                                               ; preds = %1
  %26 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %4, align 8
  %27 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %26, i32 0, i32 4
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  %29 = load i8*, i8** %6, align 8
  %30 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %4, align 8
  %31 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  store i8* %29, i8** %32, align 8
  %33 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %4, align 8
  %34 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @memcpy(i32* %35, i8* %36, i32 4)
  %38 = load i32, i32* @FS_TYPE_FLOW_GROUP, align 4
  %39 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %4, align 8
  %40 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 8
  %42 = load i32, i32* @create_flow_group_in, align 4
  %43 = load i32*, i32** %3, align 8
  %44 = load i32, i32* @start_flow_index, align 4
  %45 = call i8* @MLX5_GET(i32 %42, i32* %43, i32 %44)
  %46 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %4, align 8
  %47 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  %48 = load i32, i32* @create_flow_group_in, align 4
  %49 = load i32*, i32** %3, align 8
  %50 = load i32, i32* @end_flow_index, align 4
  %51 = call i8* @MLX5_GET(i32 %48, i32* %49, i32 %50)
  %52 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %4, align 8
  %53 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = ptrtoint i8* %51 to i64
  %56 = ptrtoint i8* %54 to i64
  %57 = sub i64 %55, %56
  %58 = add nsw i64 %57, 1
  %59 = inttoptr i64 %58 to i8*
  %60 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %4, align 8
  %61 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  %62 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %4, align 8
  store %struct.mlx5_flow_group* %62, %struct.mlx5_flow_group** %2, align 8
  br label %63

63:                                               ; preds = %25, %21
  %64 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %2, align 8
  ret %struct.mlx5_flow_group* %64
}

declare dso_local i8* @MLX5_ADDR_OF(i32, i32*, i32) #1

declare dso_local i8* @MLX5_GET(i32, i32*, i32) #1

declare dso_local %struct.mlx5_flow_group* @kzalloc(i32, i32) #1

declare dso_local %struct.mlx5_flow_group* @ERR_PTR(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
