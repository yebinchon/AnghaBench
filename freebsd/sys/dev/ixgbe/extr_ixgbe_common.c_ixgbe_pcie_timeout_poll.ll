; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_pcie_timeout_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_pcie_timeout_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@IXGBE_PCI_DEVICE_CONTROL2 = common dso_local global i32 0, align 4
@IXGBE_PCIDEVCTRL2_TIMEO_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*)* @ixgbe_pcie_timeout_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_pcie_timeout_poll(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %5 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %6 = load i32, i32* @IXGBE_PCI_DEVICE_CONTROL2, align 4
  %7 = call i32 @IXGBE_READ_PCIE_WORD(%struct.ixgbe_hw* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @IXGBE_PCIDEVCTRL2_TIMEO_MASK, align 4
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, %8
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  switch i32 %11, label %18 [
    i32 128, label %12
    i32 131, label %13
    i32 132, label %14
    i32 130, label %15
    i32 134, label %16
    i32 129, label %17
    i32 133, label %17
    i32 136, label %17
    i32 135, label %17
  ]

12:                                               ; preds = %1
  store i32 1300, i32* %4, align 4
  br label %19

13:                                               ; preds = %1
  store i32 5200, i32* %4, align 4
  br label %19

14:                                               ; preds = %1
  store i32 20000, i32* %4, align 4
  br label %19

15:                                               ; preds = %1
  store i32 80000, i32* %4, align 4
  br label %19

16:                                               ; preds = %1
  store i32 34000, i32* %4, align 4
  br label %19

17:                                               ; preds = %1, %1, %1, %1
  br label %18

18:                                               ; preds = %1, %17
  store i32 800, i32* %4, align 4
  br label %19

19:                                               ; preds = %18, %16, %15, %14, %13, %12
  %20 = load i32, i32* %4, align 4
  %21 = mul nsw i32 %20, 11
  %22 = sdiv i32 %21, 10
  ret i32 %22
}

declare dso_local i32 @IXGBE_READ_PCIE_WORD(%struct.ixgbe_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
