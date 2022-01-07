; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_srq.c_create_xrc_srq_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_srq.c_create_xrc_srq_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_core_srq = type { i32 }
%struct.mlx5_srq_attr = type { i32, i32 }

@create_xrc_srq_in = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@xrc_srq_context_entry = common dso_local global i8* null, align 8
@user_index = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, %struct.mlx5_core_srq*, %struct.mlx5_srq_attr*)* @create_xrc_srq_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_xrc_srq_cmd(%struct.mlx5_core_dev* %0, %struct.mlx5_core_srq* %1, %struct.mlx5_srq_attr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca %struct.mlx5_core_srq*, align 8
  %7 = alloca %struct.mlx5_srq_attr*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %5, align 8
  store %struct.mlx5_core_srq* %1, %struct.mlx5_core_srq** %6, align 8
  store %struct.mlx5_srq_attr* %2, %struct.mlx5_srq_attr** %7, align 8
  %14 = load %struct.mlx5_srq_attr*, %struct.mlx5_srq_attr** %7, align 8
  %15 = call i32 @get_pas_size(%struct.mlx5_srq_attr* %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* @create_xrc_srq_in, align 4
  %17 = call i32 @MLX5_ST_SZ_BYTES(i32 %16)
  %18 = load i32, i32* %11, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = call i8* @mlx5_vzalloc(i32 %20)
  store i8* %21, i8** %8, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %66

27:                                               ; preds = %3
  %28 = load i32, i32* @create_xrc_srq_in, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = load i8*, i8** @xrc_srq_context_entry, align 8
  %31 = call i8* @MLX5_ADDR_OF(i32 %28, i8* %29, i8* %30)
  store i8* %31, i8** %9, align 8
  %32 = load i32, i32* @create_xrc_srq_in, align 4
  %33 = load i8*, i8** %8, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = call i8* @MLX5_ADDR_OF(i32 %32, i8* %33, i8* %34)
  store i8* %35, i8** %10, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = load %struct.mlx5_srq_attr*, %struct.mlx5_srq_attr** %7, align 8
  %38 = call i32 @set_srqc(i8* %36, %struct.mlx5_srq_attr* %37)
  %39 = load i8*, i8** %9, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = load i32, i32* @user_index, align 4
  %42 = load %struct.mlx5_srq_attr*, %struct.mlx5_srq_attr** %7, align 8
  %43 = getelementptr inbounds %struct.mlx5_srq_attr, %struct.mlx5_srq_attr* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @MLX5_SET(i8* %39, i8* %40, i32 %41, i32 %44)
  %46 = load i8*, i8** %10, align 8
  %47 = load %struct.mlx5_srq_attr*, %struct.mlx5_srq_attr** %7, align 8
  %48 = getelementptr inbounds %struct.mlx5_srq_attr, %struct.mlx5_srq_attr* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @memcpy(i8* %46, i32 %49, i32 %50)
  %52 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = load i32, i32* %12, align 4
  %55 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %6, align 8
  %56 = getelementptr inbounds %struct.mlx5_core_srq, %struct.mlx5_core_srq* %55, i32 0, i32 0
  %57 = call i32 @mlx5_core_create_xsrq(%struct.mlx5_core_dev* %52, i8* %53, i32 %54, i32* %56)
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %27
  br label %62

61:                                               ; preds = %27
  br label %62

62:                                               ; preds = %61, %60
  %63 = load i8*, i8** %8, align 8
  %64 = call i32 @kvfree(i8* %63)
  %65 = load i32, i32* %13, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %62, %24
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @get_pas_size(%struct.mlx5_srq_attr*) #1

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i8* @mlx5_vzalloc(i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i32, i8*, i8*) #1

declare dso_local i32 @set_srqc(i8*, %struct.mlx5_srq_attr*) #1

declare dso_local i32 @MLX5_SET(i8*, i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @mlx5_core_create_xsrq(%struct.mlx5_core_dev*, i8*, i32, i32*) #1

declare dso_local i32 @kvfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
