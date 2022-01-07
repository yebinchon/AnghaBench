; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_alloc.c_mlx4_db_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_alloc.c_mlx4_db_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.mlx4_db = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32*, i32 }
%struct.mlx4_priv = type { i32 }

@MLX4_DB_PER_PAGE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_db_free(%struct.mlx4_dev* %0, %struct.mlx4_db* %1) #0 {
  %3 = alloca %struct.mlx4_dev*, align 8
  %4 = alloca %struct.mlx4_db*, align 8
  %5 = alloca %struct.mlx4_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %3, align 8
  store %struct.mlx4_db* %1, %struct.mlx4_db** %4, align 8
  %8 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %9 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %8)
  store %struct.mlx4_priv* %9, %struct.mlx4_priv** %5, align 8
  %10 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %11 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.mlx4_db*, %struct.mlx4_db** %4, align 8
  %14 = getelementptr inbounds %struct.mlx4_db, %struct.mlx4_db* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load %struct.mlx4_db*, %struct.mlx4_db** %4, align 8
  %17 = getelementptr inbounds %struct.mlx4_db, %struct.mlx4_db* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load %struct.mlx4_db*, %struct.mlx4_db** %4, align 8
  %20 = getelementptr inbounds %struct.mlx4_db, %struct.mlx4_db* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %46

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  %25 = xor i32 %24, 1
  %26 = load %struct.mlx4_db*, %struct.mlx4_db** %4, align 8
  %27 = getelementptr inbounds %struct.mlx4_db, %struct.mlx4_db* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @test_bit(i32 %25, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %23
  %35 = load i32, i32* %7, align 4
  %36 = xor i32 %35, 1
  %37 = load %struct.mlx4_db*, %struct.mlx4_db** %4, align 8
  %38 = getelementptr inbounds %struct.mlx4_db, %struct.mlx4_db* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @clear_bit(i32 %36, i32 %42)
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %34, %23, %2
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = ashr i32 %48, %47
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.mlx4_db*, %struct.mlx4_db** %4, align 8
  %52 = getelementptr inbounds %struct.mlx4_db, %struct.mlx4_db* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 4
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @set_bit(i32 %50, i32 %60)
  %62 = load %struct.mlx4_db*, %struct.mlx4_db** %4, align 8
  %63 = getelementptr inbounds %struct.mlx4_db, %struct.mlx4_db* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @MLX4_DB_PER_PAGE, align 4
  %69 = sdiv i32 %68, 2
  %70 = call i64 @bitmap_full(i32 %67, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %104

72:                                               ; preds = %46
  %73 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %74 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %73, i32 0, i32 0
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* @PAGE_SIZE, align 4
  %80 = load %struct.mlx4_db*, %struct.mlx4_db** %4, align 8
  %81 = getelementptr inbounds %struct.mlx4_db, %struct.mlx4_db* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.mlx4_db*, %struct.mlx4_db** %4, align 8
  %87 = getelementptr inbounds %struct.mlx4_db, %struct.mlx4_db* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @dma_free_coherent(i32* %78, i32 %79, i32 %85, i32 %91)
  %93 = load %struct.mlx4_db*, %struct.mlx4_db** %4, align 8
  %94 = getelementptr inbounds %struct.mlx4_db, %struct.mlx4_db* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = call i32 @list_del(i32* %97)
  %99 = load %struct.mlx4_db*, %struct.mlx4_db** %4, align 8
  %100 = getelementptr inbounds %struct.mlx4_db, %struct.mlx4_db* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = call i32 @kfree(%struct.TYPE_8__* %102)
  br label %104

104:                                              ; preds = %72, %46
  %105 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %106 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %105, i32 0, i32 0
  %107 = call i32 @mutex_unlock(i32* %106)
  ret void
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i64 @bitmap_full(i32, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.TYPE_8__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
