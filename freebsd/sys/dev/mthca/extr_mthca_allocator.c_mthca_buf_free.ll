; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_allocator.c_mthca_buf_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_allocator.c_mthca_buf_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%union.mthca_buf = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.mthca_mr = type { i32 }

@mapping = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mthca_buf_free(%struct.mthca_dev* %0, i32 %1, %union.mthca_buf* %2, i32 %3, %struct.mthca_mr* %4) #0 {
  %6 = alloca %struct.mthca_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.mthca_buf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mthca_mr*, align 8
  %11 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store %union.mthca_buf* %2, %union.mthca_buf** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.mthca_mr* %4, %struct.mthca_mr** %10, align 8
  %12 = load %struct.mthca_mr*, %struct.mthca_mr** %10, align 8
  %13 = icmp ne %struct.mthca_mr* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %5
  %15 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %16 = load %struct.mthca_mr*, %struct.mthca_mr** %10, align 8
  %17 = call i32 @mthca_free_mr(%struct.mthca_dev* %15, %struct.mthca_mr* %16)
  br label %18

18:                                               ; preds = %14, %5
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %18
  %22 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %23 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %7, align 4
  %27 = load %union.mthca_buf*, %union.mthca_buf** %8, align 8
  %28 = bitcast %union.mthca_buf* %27 to %struct.TYPE_5__*
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %union.mthca_buf*, %union.mthca_buf** %8, align 8
  %32 = bitcast %union.mthca_buf* %31 to %struct.TYPE_5__*
  %33 = load i32, i32* @mapping, align 4
  %34 = call i32 @dma_unmap_addr(%struct.TYPE_5__* %32, i32 %33)
  %35 = call i32 @dma_free_coherent(i32* %25, i32 %26, i32 %30, i32 %34)
  br label %77

36:                                               ; preds = %18
  store i32 0, i32* %11, align 4
  br label %37

37:                                               ; preds = %69, %36
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @PAGE_SIZE, align 4
  %41 = add nsw i32 %39, %40
  %42 = sub nsw i32 %41, 1
  %43 = load i32, i32* @PAGE_SIZE, align 4
  %44 = sdiv i32 %42, %43
  %45 = icmp slt i32 %38, %44
  br i1 %45, label %46, label %72

46:                                               ; preds = %37
  %47 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %48 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* @PAGE_SIZE, align 4
  %52 = load %union.mthca_buf*, %union.mthca_buf** %8, align 8
  %53 = bitcast %union.mthca_buf* %52 to %struct.TYPE_5__**
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %union.mthca_buf*, %union.mthca_buf** %8, align 8
  %61 = bitcast %union.mthca_buf* %60 to %struct.TYPE_5__**
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i64 %64
  %66 = load i32, i32* @mapping, align 4
  %67 = call i32 @dma_unmap_addr(%struct.TYPE_5__* %65, i32 %66)
  %68 = call i32 @dma_free_coherent(i32* %50, i32 %51, i32 %59, i32 %67)
  br label %69

69:                                               ; preds = %46
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %11, align 4
  br label %37

72:                                               ; preds = %37
  %73 = load %union.mthca_buf*, %union.mthca_buf** %8, align 8
  %74 = bitcast %union.mthca_buf* %73 to %struct.TYPE_5__**
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = call i32 @kfree(%struct.TYPE_5__* %75)
  br label %77

77:                                               ; preds = %72, %21
  ret void
}

declare dso_local i32 @mthca_free_mr(%struct.mthca_dev*, %struct.mthca_mr*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
