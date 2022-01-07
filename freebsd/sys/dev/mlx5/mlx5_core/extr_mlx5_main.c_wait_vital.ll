; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_main.c_wait_vital.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_main.c_wait_vital.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64 }
%struct.mlx5_core_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mlx5_core_health }
%struct.mlx5_core_health = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"failed reading config word\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"device ID correctly read after %d iterations\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"could not read device ID\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Counter value 0x%x after %d iterations\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @wait_vital to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wait_vital(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca %struct.mlx5_core_health*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %10 = call %struct.mlx5_core_dev* @pci_get_drvdata(%struct.pci_dev* %9)
  store %struct.mlx5_core_dev* %10, %struct.mlx5_core_dev** %3, align 8
  %11 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %12 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.mlx5_core_health* %13, %struct.mlx5_core_health** %4, align 8
  store i32 100, i32* %5, align 4
  %14 = call i32 @msleep(i32 1000)
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %37, %1
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 100
  br i1 %17, label %18, label %40

18:                                               ; preds = %15
  %19 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %20 = call i64 @pci_read_config_word(%struct.pci_dev* %19, i32 2, i64* %7)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %24 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %40

25:                                               ; preds = %18
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 (%struct.mlx5_core_dev*, i8*, i32, ...) @mlx5_core_info(%struct.mlx5_core_dev* %32, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %40

35:                                               ; preds = %25
  %36 = call i32 @msleep(i32 50)
  br label %37

37:                                               ; preds = %35
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %8, align 4
  br label %15

40:                                               ; preds = %31, %22, %15
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %41, 100
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %45 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %44, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %40
  store i32 0, i32* %8, align 4
  br label %47

47:                                               ; preds = %67, %46
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 100
  br i1 %49, label %50, label %70

50:                                               ; preds = %47
  %51 = load %struct.mlx5_core_health*, %struct.mlx5_core_health** %4, align 8
  %52 = getelementptr inbounds %struct.mlx5_core_health, %struct.mlx5_core_health* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ioread32be(i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %50
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, -1
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i32 (%struct.mlx5_core_dev*, i8*, i32, ...) @mlx5_core_info(%struct.mlx5_core_dev* %61, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %62, i32 %63)
  br label %70

65:                                               ; preds = %57, %50
  %66 = call i32 @msleep(i32 50)
  br label %67

67:                                               ; preds = %65
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %47

70:                                               ; preds = %60, %47
  %71 = load i32, i32* %8, align 4
  %72 = icmp eq i32 %71, 100
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %75 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %74, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %76

76:                                               ; preds = %73, %70
  ret void
}

declare dso_local %struct.mlx5_core_dev* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @pci_read_config_word(%struct.pci_dev*, i32, i64*) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*) #1

declare dso_local i32 @mlx5_core_info(%struct.mlx5_core_dev*, i8*, i32, ...) #1

declare dso_local i32 @ioread32be(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
