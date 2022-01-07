; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_cq.c_mlx4_ib_alloc_cq_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_cq.c_mlx4_ib_alloc_cq_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.mlx4_ib_cq_buf = type { i32, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_ib_dev*, %struct.mlx4_ib_cq_buf*, i32)* @mlx4_ib_alloc_cq_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_ib_alloc_cq_buf(%struct.mlx4_ib_dev* %0, %struct.mlx4_ib_cq_buf* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_ib_dev*, align 8
  %6 = alloca %struct.mlx4_ib_cq_buf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %5, align 8
  store %struct.mlx4_ib_cq_buf* %1, %struct.mlx4_ib_cq_buf** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %10 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %9, i32 0, i32 0
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %14 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %13, i32 0, i32 0
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %12, %18
  %20 = load i32, i32* @PAGE_SIZE, align 4
  %21 = mul nsw i32 %20, 2
  %22 = load %struct.mlx4_ib_cq_buf*, %struct.mlx4_ib_cq_buf** %6, align 8
  %23 = getelementptr inbounds %struct.mlx4_ib_cq_buf, %struct.mlx4_ib_cq_buf* %22, i32 0, i32 1
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i32 @mlx4_buf_alloc(%struct.TYPE_11__* %11, i32 %19, i32 %21, %struct.TYPE_12__* %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  br label %88

29:                                               ; preds = %3
  %30 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %31 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %30, i32 0, i32 0
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mlx4_ib_cq_buf*, %struct.mlx4_ib_cq_buf** %6, align 8
  %37 = getelementptr inbounds %struct.mlx4_ib_cq_buf, %struct.mlx4_ib_cq_buf* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %39 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %38, i32 0, i32 0
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  %41 = load %struct.mlx4_ib_cq_buf*, %struct.mlx4_ib_cq_buf** %6, align 8
  %42 = getelementptr inbounds %struct.mlx4_ib_cq_buf, %struct.mlx4_ib_cq_buf* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.mlx4_ib_cq_buf*, %struct.mlx4_ib_cq_buf** %6, align 8
  %46 = getelementptr inbounds %struct.mlx4_ib_cq_buf, %struct.mlx4_ib_cq_buf* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.mlx4_ib_cq_buf*, %struct.mlx4_ib_cq_buf** %6, align 8
  %50 = getelementptr inbounds %struct.mlx4_ib_cq_buf, %struct.mlx4_ib_cq_buf* %49, i32 0, i32 2
  %51 = call i32 @mlx4_mtt_init(%struct.TYPE_11__* %40, i32 %44, i32 %48, i32* %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %29
  br label %76

55:                                               ; preds = %29
  %56 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %57 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %56, i32 0, i32 0
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = load %struct.mlx4_ib_cq_buf*, %struct.mlx4_ib_cq_buf** %6, align 8
  %60 = getelementptr inbounds %struct.mlx4_ib_cq_buf, %struct.mlx4_ib_cq_buf* %59, i32 0, i32 2
  %61 = load %struct.mlx4_ib_cq_buf*, %struct.mlx4_ib_cq_buf** %6, align 8
  %62 = getelementptr inbounds %struct.mlx4_ib_cq_buf, %struct.mlx4_ib_cq_buf* %61, i32 0, i32 1
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call i32 @mlx4_buf_write_mtt(%struct.TYPE_11__* %58, i32* %60, %struct.TYPE_12__* %62, i32 %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %55
  br label %69

68:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %90

69:                                               ; preds = %67
  %70 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %71 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %70, i32 0, i32 0
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  %73 = load %struct.mlx4_ib_cq_buf*, %struct.mlx4_ib_cq_buf** %6, align 8
  %74 = getelementptr inbounds %struct.mlx4_ib_cq_buf, %struct.mlx4_ib_cq_buf* %73, i32 0, i32 2
  %75 = call i32 @mlx4_mtt_cleanup(%struct.TYPE_11__* %72, i32* %74)
  br label %76

76:                                               ; preds = %69, %54
  %77 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %78 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %77, i32 0, i32 0
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.mlx4_ib_cq_buf*, %struct.mlx4_ib_cq_buf** %6, align 8
  %82 = getelementptr inbounds %struct.mlx4_ib_cq_buf, %struct.mlx4_ib_cq_buf* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 %80, %83
  %85 = load %struct.mlx4_ib_cq_buf*, %struct.mlx4_ib_cq_buf** %6, align 8
  %86 = getelementptr inbounds %struct.mlx4_ib_cq_buf, %struct.mlx4_ib_cq_buf* %85, i32 0, i32 1
  %87 = call i32 @mlx4_buf_free(%struct.TYPE_11__* %79, i32 %84, %struct.TYPE_12__* %86)
  br label %88

88:                                               ; preds = %76, %28
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %88, %68
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @mlx4_buf_alloc(%struct.TYPE_11__*, i32, i32, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @mlx4_mtt_init(%struct.TYPE_11__*, i32, i32, i32*) #1

declare dso_local i32 @mlx4_buf_write_mtt(%struct.TYPE_11__*, i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @mlx4_mtt_cleanup(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @mlx4_buf_free(%struct.TYPE_11__*, i32, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
