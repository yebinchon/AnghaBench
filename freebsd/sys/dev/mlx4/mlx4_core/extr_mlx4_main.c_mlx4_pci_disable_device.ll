; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_main.c_mlx4_pci_disable_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_main.c_mlx4_pci_disable_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@MLX4_PCI_STATUS_ENABLED = common dso_local global i64 0, align 8
@MLX4_PCI_STATUS_DISABLED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_dev*)* @mlx4_pci_disable_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_pci_disable_device(%struct.mlx4_dev* %0) #0 {
  %2 = alloca %struct.mlx4_dev*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %2, align 8
  %4 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %5 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 2
  %8 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  store %struct.pci_dev* %8, %struct.pci_dev** %3, align 8
  %9 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %10 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %15 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MLX4_PCI_STATUS_ENABLED, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %1
  %22 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %23 = call i32 @pci_disable_device(%struct.pci_dev* %22)
  %24 = load i64, i64* @MLX4_PCI_STATUS_DISABLED, align 8
  %25 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %26 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i64 %24, i64* %28, align 8
  br label %29

29:                                               ; preds = %21, %1
  %30 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %31 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = call i32 @mutex_unlock(i32* %33)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
