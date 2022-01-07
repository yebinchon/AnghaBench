; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_alloc.c_mlx4_buf_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_alloc.c_mlx4_buf_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.mlx4_buf = type { i32, %struct.TYPE_8__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_5__ = type { i64, i32 }

@BITS_PER_LONG = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_buf_free(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_buf* %2) #0 {
  %4 = alloca %struct.mlx4_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_buf*, align 8
  %7 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.mlx4_buf* %2, %struct.mlx4_buf** %6, align 8
  %8 = load %struct.mlx4_buf*, %struct.mlx4_buf** %6, align 8
  %9 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %29

12:                                               ; preds = %3
  %13 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %14 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.mlx4_buf*, %struct.mlx4_buf** %6, align 8
  %21 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.mlx4_buf*, %struct.mlx4_buf** %6, align 8
  %25 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @dma_free_coherent(i32* %18, i32 %19, i64 %23, i32 %27)
  br label %89

29:                                               ; preds = %3
  %30 = load i32, i32* @BITS_PER_LONG, align 4
  %31 = icmp eq i32 %30, 64
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load %struct.mlx4_buf*, %struct.mlx4_buf** %6, align 8
  %34 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @vunmap(i64 %36)
  br label %38

38:                                               ; preds = %32, %29
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %81, %38
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.mlx4_buf*, %struct.mlx4_buf** %6, align 8
  %42 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %84

45:                                               ; preds = %39
  %46 = load %struct.mlx4_buf*, %struct.mlx4_buf** %6, align 8
  %47 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %46, i32 0, i32 1
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %80

55:                                               ; preds = %45
  %56 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %57 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %56, i32 0, i32 0
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* @PAGE_SIZE, align 4
  %63 = load %struct.mlx4_buf*, %struct.mlx4_buf** %6, align 8
  %64 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %63, i32 0, i32 1
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.mlx4_buf*, %struct.mlx4_buf** %6, align 8
  %72 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %71, i32 0, i32 1
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @dma_free_coherent(i32* %61, i32 %62, i64 %70, i32 %78)
  br label %80

80:                                               ; preds = %55, %45
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %39

84:                                               ; preds = %39
  %85 = load %struct.mlx4_buf*, %struct.mlx4_buf** %6, align 8
  %86 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %85, i32 0, i32 1
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = call i32 @kfree(%struct.TYPE_8__* %87)
  br label %89

89:                                               ; preds = %84, %12
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i64, i32) #1

declare dso_local i32 @vunmap(i64) #1

declare dso_local i32 @kfree(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
