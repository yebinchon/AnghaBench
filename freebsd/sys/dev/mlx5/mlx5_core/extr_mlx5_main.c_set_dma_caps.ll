; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_main.c_set_dma_caps.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_main.c_set_dma_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.mlx5_core_dev = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"couldn't set 64-bit PCI DMA mask\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Can't set PCI DMA mask, aborting\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"couldn't set 64-bit consistent PCI DMA mask\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Can't set consistent PCI DMA mask, aborting\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @set_dma_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_dma_caps(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %7 = call %struct.mlx5_core_dev* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.mlx5_core_dev* %7, %struct.mlx5_core_dev** %4, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %9 = call i32 @DMA_BIT_MASK(i32 64)
  %10 = call i32 @pci_set_dma_mask(%struct.pci_dev* %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %1
  %14 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %15 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %14, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %17 = call i32 @DMA_BIT_MASK(i32 32)
  %18 = call i32 @pci_set_dma_mask(%struct.pci_dev* %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %13
  %22 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %23 = call i32 @mlx5_core_err(%struct.mlx5_core_dev* %22, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %50

25:                                               ; preds = %13
  br label %26

26:                                               ; preds = %25, %1
  %27 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %28 = call i32 @DMA_BIT_MASK(i32 64)
  %29 = call i32 @pci_set_consistent_dma_mask(%struct.pci_dev* %27, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %26
  %33 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %34 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %33, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %35 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %36 = call i32 @DMA_BIT_MASK(i32 32)
  %37 = call i32 @pci_set_consistent_dma_mask(%struct.pci_dev* %35, i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %42 = call i32 @mlx5_core_err(%struct.mlx5_core_dev* %41, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %2, align 4
  br label %50

44:                                               ; preds = %32
  br label %45

45:                                               ; preds = %44, %26
  %46 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %47 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 0
  %48 = call i32 @dma_set_max_seg_size(i32* %47, i32 -2147483648)
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %45, %40, %21
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.mlx5_core_dev* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*) #1

declare dso_local i32 @mlx5_core_err(%struct.mlx5_core_dev*, i8*) #1

declare dso_local i32 @pci_set_consistent_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @dma_set_max_seg_size(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
