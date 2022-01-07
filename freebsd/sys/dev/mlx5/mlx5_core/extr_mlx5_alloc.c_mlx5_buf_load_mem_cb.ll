; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_alloc.c_mlx5_buf_load_mem_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_alloc.c_mlx5_buf_load_mem_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }
%struct.mlx5_buf = type { i32, i32, i32* }

@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Invalid segment size\00", align 1
@MLX5_LOAD_ST_SUCCESS = common dso_local global i32 0, align 4
@MLX5_LOAD_ST_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_3__*, i32, i32)* @mlx5_buf_load_mem_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_buf_load_mem_cb(i8* %0, %struct.TYPE_3__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx5_buf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.mlx5_buf*
  store %struct.mlx5_buf* %13, %struct.mlx5_buf** %9, align 8
  %14 = load %struct.mlx5_buf*, %struct.mlx5_buf** %9, align 8
  %15 = getelementptr inbounds %struct.mlx5_buf, %struct.mlx5_buf* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @MLX5_DMA_OWNED(i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %4
  %21 = load %struct.mlx5_buf*, %struct.mlx5_buf** %9, align 8
  %22 = getelementptr inbounds %struct.mlx5_buf, %struct.mlx5_buf* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @MLX5_DMA_LOCK(i32 %23)
  br label %25

25:                                               ; preds = %20, %4
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %63

28:                                               ; preds = %25
  store i32 0, i32* %11, align 4
  br label %29

29:                                               ; preds = %56, %28
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %59

33:                                               ; preds = %29
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.mlx5_buf*, %struct.mlx5_buf** %9, align 8
  %41 = getelementptr inbounds %struct.mlx5_buf, %struct.mlx5_buf* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %39, i32* %45, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @PAGE_SIZE, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @KASSERT(i32 %54, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %56

56:                                               ; preds = %33
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %11, align 4
  br label %29

59:                                               ; preds = %29
  %60 = load i32, i32* @MLX5_LOAD_ST_SUCCESS, align 4
  %61 = load %struct.mlx5_buf*, %struct.mlx5_buf** %9, align 8
  %62 = getelementptr inbounds %struct.mlx5_buf, %struct.mlx5_buf* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  br label %67

63:                                               ; preds = %25
  %64 = load i32, i32* @MLX5_LOAD_ST_FAILURE, align 4
  %65 = load %struct.mlx5_buf*, %struct.mlx5_buf** %9, align 8
  %66 = getelementptr inbounds %struct.mlx5_buf, %struct.mlx5_buf* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %63, %59
  %68 = load %struct.mlx5_buf*, %struct.mlx5_buf** %9, align 8
  %69 = getelementptr inbounds %struct.mlx5_buf, %struct.mlx5_buf* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @MLX5_DMA_DONE(i32 %70)
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %67
  %75 = load %struct.mlx5_buf*, %struct.mlx5_buf** %9, align 8
  %76 = getelementptr inbounds %struct.mlx5_buf, %struct.mlx5_buf* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @MLX5_DMA_UNLOCK(i32 %77)
  br label %79

79:                                               ; preds = %74, %67
  ret void
}

declare dso_local i32 @MLX5_DMA_OWNED(i32) #1

declare dso_local i32 @MLX5_DMA_LOCK(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @MLX5_DMA_DONE(i32) #1

declare dso_local i32 @MLX5_DMA_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
