; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_icm.c_mlx4_free_icm_coherent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_icm.c_mlx4_free_icm_coherent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.mlx4_icm_chunk = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_dev*, %struct.mlx4_icm_chunk*)* @mlx4_free_icm_coherent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_free_icm_coherent(%struct.mlx4_dev* %0, %struct.mlx4_icm_chunk* %1) #0 {
  %3 = alloca %struct.mlx4_dev*, align 8
  %4 = alloca %struct.mlx4_icm_chunk*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %3, align 8
  store %struct.mlx4_icm_chunk* %1, %struct.mlx4_icm_chunk** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %43, %2
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %4, align 8
  %9 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %46

12:                                               ; preds = %6
  %13 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %14 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %4, align 8
  %20 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %19, i32 0, i32 1
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %4, align 8
  %28 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %27, i32 0, i32 1
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i64 %31
  %33 = call i32 @sg_page(%struct.TYPE_7__* %32)
  %34 = call i32 @lowmem_page_address(i32 %33)
  %35 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %4, align 8
  %36 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %35, i32 0, i32 1
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i64 %39
  %41 = call i32 @sg_dma_address(%struct.TYPE_7__* %40)
  %42 = call i32 @dma_free_coherent(i32* %18, i32 %26, i32 %34, i32 %41)
  br label %43

43:                                               ; preds = %12
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %6

46:                                               ; preds = %6
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local i32 @lowmem_page_address(i32) #1

declare dso_local i32 @sg_page(%struct.TYPE_7__*) #1

declare dso_local i32 @sg_dma_address(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
