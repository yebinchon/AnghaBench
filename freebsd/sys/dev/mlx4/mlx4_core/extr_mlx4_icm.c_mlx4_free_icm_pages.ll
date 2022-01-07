; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_icm.c_mlx4_free_icm_pages.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_icm.c_mlx4_free_icm_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.mlx4_icm_chunk = type { i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@PCI_DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_dev*, %struct.mlx4_icm_chunk*)* @mlx4_free_icm_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_free_icm_pages(%struct.mlx4_dev* %0, %struct.mlx4_icm_chunk* %1) #0 {
  %3 = alloca %struct.mlx4_dev*, align 8
  %4 = alloca %struct.mlx4_icm_chunk*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %3, align 8
  store %struct.mlx4_icm_chunk* %1, %struct.mlx4_icm_chunk** %4, align 8
  %6 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %4, align 8
  %7 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %2
  %11 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %12 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %4, align 8
  %17 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %16, i32 0, i32 2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %4, align 8
  %20 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %23 = call i32 @pci_unmap_sg(i32 %15, %struct.TYPE_5__* %18, i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %10, %2
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %49, %24
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %4, align 8
  %28 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %52

31:                                               ; preds = %25
  %32 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %4, align 8
  %33 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %32, i32 0, i32 2
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i64 %36
  %38 = call i32 @sg_page(%struct.TYPE_5__* %37)
  %39 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %4, align 8
  %40 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %39, i32 0, i32 2
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @get_order(i32 %46)
  %48 = call i32 @__free_pages(i32 %38, i32 %47)
  br label %49

49:                                               ; preds = %31
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %25

52:                                               ; preds = %25
  ret void
}

declare dso_local i32 @pci_unmap_sg(i32, %struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @__free_pages(i32, i32) #1

declare dso_local i32 @sg_page(%struct.TYPE_5__*) #1

declare dso_local i32 @get_order(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
