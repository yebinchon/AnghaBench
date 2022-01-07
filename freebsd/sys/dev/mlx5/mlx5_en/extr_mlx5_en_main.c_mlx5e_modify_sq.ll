; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_modify_sq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_modify_sq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_sq = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@modify_sq_in = common dso_local global i8* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@ctx = common dso_local global i32 0, align 4
@sqn = common dso_local global i32 0, align 4
@sq_state = common dso_local global i32 0, align 4
@state = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_modify_sq(%struct.mlx5e_sq* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5e_sq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mlx5e_sq* %0, %struct.mlx5e_sq** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** @modify_sq_in, align 8
  %13 = call i32 @MLX5_ST_SZ_BYTES(i8* %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = call i8* @mlx5_vzalloc(i32 %14)
  store i8* %15, i8** %8, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %54

21:                                               ; preds = %3
  %22 = load i8*, i8** @modify_sq_in, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load i32, i32* @ctx, align 4
  %25 = call i8* @MLX5_ADDR_OF(i8* %22, i8* %23, i32 %24)
  store i8* %25, i8** %9, align 8
  %26 = load i8*, i8** @modify_sq_in, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load i32, i32* @sqn, align 4
  %29 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %5, align 8
  %30 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @MLX5_SET(i8* %26, i8* %27, i32 %28, i32 %31)
  %33 = load i8*, i8** @modify_sq_in, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i32, i32* @sq_state, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @MLX5_SET(i8* %33, i8* %34, i32 %35, i32 %36)
  %38 = load i8*, i8** %9, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = load i32, i32* @state, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @MLX5_SET(i8* %38, i8* %39, i32 %40, i32 %41)
  %43 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %5, align 8
  %44 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i8*, i8** %8, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @mlx5_core_modify_sq(i32 %47, i8* %48, i32 %49)
  store i32 %50, i32* %11, align 4
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 @kvfree(i8* %51)
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %21, %18
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i8*) #1

declare dso_local i8* @mlx5_vzalloc(i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i8*, i8*, i32) #1

declare dso_local i32 @MLX5_SET(i8*, i8*, i32, i32) #1

declare dso_local i32 @mlx5_core_modify_sq(i32, i8*, i32) #1

declare dso_local i32 @kvfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
