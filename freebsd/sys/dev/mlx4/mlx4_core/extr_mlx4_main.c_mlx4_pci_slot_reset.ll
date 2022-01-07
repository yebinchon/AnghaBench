; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_main.c_mlx4_pci_slot_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_main.c_mlx4_pci_slot_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.mlx4_dev_persistent = type { %struct.mlx4_dev* }
%struct.mlx4_dev = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"mlx4_pci_slot_reset was called\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Can not re-enable device, err=%d\0A\00", align 1
@PCI_ERS_RESULT_DISCONNECT = common dso_local global i32 0, align 4
@PCI_ERS_RESULT_RECOVERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @mlx4_pci_slot_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_pci_slot_reset(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.mlx4_dev_persistent*, align 8
  %5 = alloca %struct.mlx4_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %8 = call %struct.mlx4_dev_persistent* @pci_get_drvdata(%struct.pci_dev* %7)
  store %struct.mlx4_dev_persistent* %8, %struct.mlx4_dev_persistent** %4, align 8
  %9 = load %struct.mlx4_dev_persistent*, %struct.mlx4_dev_persistent** %4, align 8
  %10 = getelementptr inbounds %struct.mlx4_dev_persistent, %struct.mlx4_dev_persistent* %9, i32 0, i32 0
  %11 = load %struct.mlx4_dev*, %struct.mlx4_dev** %10, align 8
  store %struct.mlx4_dev* %11, %struct.mlx4_dev** %5, align 8
  %12 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %13 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %12, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %15 = call i32 @mlx4_pci_enable_device(%struct.mlx4_dev* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %19, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @PCI_ERS_RESULT_DISCONNECT, align 4
  store i32 %22, i32* %2, align 4
  br label %27

23:                                               ; preds = %1
  %24 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %25 = call i32 @pci_set_master(%struct.pci_dev* %24)
  %26 = load i32, i32* @PCI_ERS_RESULT_RECOVERED, align 4
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %23, %18
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local %struct.mlx4_dev_persistent* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_dev*, i8*, ...) #1

declare dso_local i32 @mlx4_pci_enable_device(%struct.mlx4_dev*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
