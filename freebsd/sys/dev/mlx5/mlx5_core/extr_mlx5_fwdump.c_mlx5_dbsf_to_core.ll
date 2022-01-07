; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fwdump.c_mlx5_dbsf_to_core.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fwdump.c_mlx5_dbsf_to_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.mlx5_tool_addr = type { i32, i32, i32, i32 }
%struct.mlx5_core_dev = type { i32 }
%struct.pci_dev = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@mlx5_core_driver = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_tool_addr*, %struct.mlx5_core_dev**)* @mlx5_dbsf_to_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_dbsf_to_core(%struct.mlx5_tool_addr* %0, %struct.mlx5_core_dev** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_tool_addr*, align 8
  %5 = alloca %struct.mlx5_core_dev**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  store %struct.mlx5_tool_addr* %0, %struct.mlx5_tool_addr** %4, align 8
  store %struct.mlx5_core_dev** %1, %struct.mlx5_core_dev*** %5, align 8
  %8 = load %struct.mlx5_tool_addr*, %struct.mlx5_tool_addr** %4, align 8
  %9 = getelementptr inbounds %struct.mlx5_tool_addr, %struct.mlx5_tool_addr* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.mlx5_tool_addr*, %struct.mlx5_tool_addr** %4, align 8
  %12 = getelementptr inbounds %struct.mlx5_tool_addr, %struct.mlx5_tool_addr* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.mlx5_tool_addr*, %struct.mlx5_tool_addr** %4, align 8
  %15 = getelementptr inbounds %struct.mlx5_tool_addr, %struct.mlx5_tool_addr* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.mlx5_tool_addr*, %struct.mlx5_tool_addr** %4, align 8
  %18 = getelementptr inbounds %struct.mlx5_tool_addr, %struct.mlx5_tool_addr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32* @pci_find_dbsf(i32 %10, i32 %13, i32 %16, i32 %19)
  store i32* %20, i32** %6, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOENT, align 4
  store i32 %24, i32* %3, align 4
  br label %44

25:                                               ; preds = %2
  %26 = load i32*, i32** %6, align 8
  %27 = call i64 @device_get_devclass(i32* %26)
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mlx5_core_driver, i32 0, i32 0), align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %3, align 4
  br label %44

32:                                               ; preds = %25
  %33 = load i32*, i32** %6, align 8
  %34 = call %struct.pci_dev* @device_get_softc(i32* %33)
  store %struct.pci_dev* %34, %struct.pci_dev** %7, align 8
  %35 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %36 = call %struct.mlx5_core_dev* @pci_get_drvdata(%struct.pci_dev* %35)
  %37 = load %struct.mlx5_core_dev**, %struct.mlx5_core_dev*** %5, align 8
  store %struct.mlx5_core_dev* %36, %struct.mlx5_core_dev** %37, align 8
  %38 = load %struct.mlx5_core_dev**, %struct.mlx5_core_dev*** %5, align 8
  %39 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %38, align 8
  %40 = icmp eq %struct.mlx5_core_dev* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i32, i32* @ENOENT, align 4
  store i32 %42, i32* %3, align 4
  br label %44

43:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %41, %30, %23
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32* @pci_find_dbsf(i32, i32, i32, i32) #1

declare dso_local i64 @device_get_devclass(i32*) #1

declare dso_local %struct.pci_dev* @device_get_softc(i32*) #1

declare dso_local %struct.mlx5_core_dev* @pci_get_drvdata(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
