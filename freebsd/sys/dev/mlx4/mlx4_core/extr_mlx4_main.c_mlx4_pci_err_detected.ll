; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_main.c_mlx4_pci_err_detected.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_main.c_mlx4_pci_err_detected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.mlx4_dev_persistent = type { i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"mlx4_pci_err_detected was called\0A\00", align 1
@MLX4_INTERFACE_STATE_UP = common dso_local global i32 0, align 4
@pci_channel_io_perm_failure = common dso_local global i64 0, align 8
@PCI_ERS_RESULT_DISCONNECT = common dso_local global i32 0, align 4
@PCI_ERS_RESULT_NEED_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i64)* @mlx4_pci_err_detected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_pci_err_detected(%struct.pci_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mlx4_dev_persistent*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %8 = call %struct.mlx4_dev_persistent* @pci_get_drvdata(%struct.pci_dev* %7)
  store %struct.mlx4_dev_persistent* %8, %struct.mlx4_dev_persistent** %6, align 8
  %9 = load %struct.mlx4_dev_persistent*, %struct.mlx4_dev_persistent** %6, align 8
  %10 = getelementptr inbounds %struct.mlx4_dev_persistent, %struct.mlx4_dev_persistent* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @mlx4_err(i32 %11, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.mlx4_dev_persistent*, %struct.mlx4_dev_persistent** %6, align 8
  %14 = call i32 @mlx4_enter_error_state(%struct.mlx4_dev_persistent* %13)
  %15 = load %struct.mlx4_dev_persistent*, %struct.mlx4_dev_persistent** %6, align 8
  %16 = getelementptr inbounds %struct.mlx4_dev_persistent, %struct.mlx4_dev_persistent* %15, i32 0, i32 2
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.mlx4_dev_persistent*, %struct.mlx4_dev_persistent** %6, align 8
  %19 = getelementptr inbounds %struct.mlx4_dev_persistent, %struct.mlx4_dev_persistent* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @MLX4_INTERFACE_STATE_UP, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = call i32 @mlx4_unload_one(%struct.pci_dev* %25)
  br label %27

27:                                               ; preds = %24, %2
  %28 = load %struct.mlx4_dev_persistent*, %struct.mlx4_dev_persistent** %6, align 8
  %29 = getelementptr inbounds %struct.mlx4_dev_persistent, %struct.mlx4_dev_persistent* %28, i32 0, i32 2
  %30 = call i32 @mutex_unlock(i32* %29)
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @pci_channel_io_perm_failure, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @PCI_ERS_RESULT_DISCONNECT, align 4
  store i32 %35, i32* %3, align 4
  br label %42

36:                                               ; preds = %27
  %37 = load %struct.mlx4_dev_persistent*, %struct.mlx4_dev_persistent** %6, align 8
  %38 = getelementptr inbounds %struct.mlx4_dev_persistent, %struct.mlx4_dev_persistent* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @mlx4_pci_disable_device(i32 %39)
  %41 = load i32, i32* @PCI_ERS_RESULT_NEED_RESET, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %36, %34
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.mlx4_dev_persistent* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @mlx4_err(i32, i8*) #1

declare dso_local i32 @mlx4_enter_error_state(%struct.mlx4_dev_persistent*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mlx4_unload_one(%struct.pci_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mlx4_pci_disable_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
