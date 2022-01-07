; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pcie_get_max_completion_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pcie_get_max_completion_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinfo = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@PCIEM_FLAGS_VERSION = common dso_local global i32 0, align 4
@PCIER_DEVICE_CAP2 = common dso_local global i64 0, align 8
@PCIEM_CAP2_COMP_TIMO_RANGES = common dso_local global i32 0, align 4
@PCIER_DEVICE_CTL2 = common dso_local global i64 0, align 8
@PCIEM_CTL2_COMP_TIMO_VAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcie_get_max_completion_timeout(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_devinfo*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.pci_devinfo* @device_get_ivars(i32 %6)
  store %struct.pci_devinfo* %7, %struct.pci_devinfo** %4, align 8
  %8 = load %struct.pci_devinfo*, %struct.pci_devinfo** %4, align 8
  %9 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %54

16:                                               ; preds = %1
  %17 = load %struct.pci_devinfo*, %struct.pci_devinfo** %4, align 8
  %18 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PCIEM_FLAGS_VERSION, align 4
  %23 = and i32 %21, %22
  %24 = icmp slt i32 %23, 2
  br i1 %24, label %35, label %25

25:                                               ; preds = %16
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* @PCIER_DEVICE_CAP2, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @pci_read_config(i32 %26, i64 %30, i32 4)
  %32 = load i32, i32* @PCIEM_CAP2_COMP_TIMO_RANGES, align 4
  %33 = and i32 %31, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %25, %16
  store i32 50000, i32* %2, align 4
  br label %54

36:                                               ; preds = %25
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* @PCIER_DEVICE_CTL2, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @pci_read_config(i32 %37, i64 %41, i32 2)
  %43 = load i32, i32* @PCIEM_CTL2_COMP_TIMO_VAL, align 4
  %44 = and i32 %42, %43
  switch i32 %44, label %53 [
    i32 135, label %45
    i32 134, label %46
    i32 130, label %47
    i32 132, label %48
    i32 128, label %49
    i32 131, label %50
    i32 133, label %51
    i32 129, label %52
  ]

45:                                               ; preds = %36
  store i32 100, i32* %2, align 4
  br label %54

46:                                               ; preds = %36
  store i32 10000, i32* %2, align 4
  br label %54

47:                                               ; preds = %36
  store i32 55000, i32* %2, align 4
  br label %54

48:                                               ; preds = %36
  store i32 210000, i32* %2, align 4
  br label %54

49:                                               ; preds = %36
  store i32 900000, i32* %2, align 4
  br label %54

50:                                               ; preds = %36
  store i32 3500000, i32* %2, align 4
  br label %54

51:                                               ; preds = %36
  store i32 13000000, i32* %2, align 4
  br label %54

52:                                               ; preds = %36
  store i32 64000000, i32* %2, align 4
  br label %54

53:                                               ; preds = %36
  store i32 50000, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %52, %51, %50, %49, %48, %47, %46, %45, %35, %15
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.pci_devinfo* @device_get_ivars(i32) #1

declare dso_local i32 @pci_read_config(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
