; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_main.c_mlx4_shutdown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_main.c_mlx4_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.mlx4_dev_persistent = type { i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"mlx4_shutdown was called\0A\00", align 1
@MLX4_INTERFACE_STATE_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @mlx4_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_shutdown(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.mlx4_dev_persistent*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.mlx4_dev_persistent* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.mlx4_dev_persistent* %5, %struct.mlx4_dev_persistent** %3, align 8
  %6 = load %struct.mlx4_dev_persistent*, %struct.mlx4_dev_persistent** %3, align 8
  %7 = getelementptr inbounds %struct.mlx4_dev_persistent, %struct.mlx4_dev_persistent* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @mlx4_info(i32 %8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.mlx4_dev_persistent*, %struct.mlx4_dev_persistent** %3, align 8
  %11 = getelementptr inbounds %struct.mlx4_dev_persistent, %struct.mlx4_dev_persistent* %10, i32 0, i32 1
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.mlx4_dev_persistent*, %struct.mlx4_dev_persistent** %3, align 8
  %14 = getelementptr inbounds %struct.mlx4_dev_persistent, %struct.mlx4_dev_persistent* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @MLX4_INTERFACE_STATE_UP, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %21 = call i32 @mlx4_unload_one(%struct.pci_dev* %20)
  br label %22

22:                                               ; preds = %19, %1
  %23 = load %struct.mlx4_dev_persistent*, %struct.mlx4_dev_persistent** %3, align 8
  %24 = getelementptr inbounds %struct.mlx4_dev_persistent, %struct.mlx4_dev_persistent* %23, i32 0, i32 1
  %25 = call i32 @mutex_unlock(i32* %24)
  ret void
}

declare dso_local %struct.mlx4_dev_persistent* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @mlx4_info(i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mlx4_unload_one(%struct.pci_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
