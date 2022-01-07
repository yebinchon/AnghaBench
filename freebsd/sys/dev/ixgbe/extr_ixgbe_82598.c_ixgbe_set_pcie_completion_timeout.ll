; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82598.c_ixgbe_set_pcie_completion_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82598.c_ixgbe_set_pcie_completion_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@IXGBE_GCR = common dso_local global i32 0, align 4
@IXGBE_GCR_CMPL_TMOUT_MASK = common dso_local global i32 0, align 4
@IXGBE_GCR_CAP_VER2 = common dso_local global i32 0, align 4
@IXGBE_GCR_CMPL_TMOUT_10ms = common dso_local global i32 0, align 4
@IXGBE_PCI_DEVICE_CONTROL2 = common dso_local global i32 0, align 4
@IXGBE_PCI_DEVICE_CONTROL2_16ms = common dso_local global i32 0, align 4
@IXGBE_GCR_CMPL_TMOUT_RESEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_set_pcie_completion_timeout(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %5 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %6 = load i32, i32* @IXGBE_GCR, align 4
  %7 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @IXGBE_GCR_CMPL_TMOUT_MASK, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %33

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @IXGBE_GCR_CAP_VER2, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @IXGBE_GCR_CMPL_TMOUT_10ms, align 4
  %20 = load i32, i32* %3, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %3, align 4
  br label %33

22:                                               ; preds = %13
  %23 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %24 = load i32, i32* @IXGBE_PCI_DEVICE_CONTROL2, align 4
  %25 = call i32 @IXGBE_READ_PCIE_WORD(%struct.ixgbe_hw* %23, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* @IXGBE_PCI_DEVICE_CONTROL2_16ms, align 4
  %27 = load i32, i32* %4, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %4, align 4
  %29 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %30 = load i32, i32* @IXGBE_PCI_DEVICE_CONTROL2, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @IXGBE_WRITE_PCIE_WORD(%struct.ixgbe_hw* %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %22, %18, %12
  %34 = load i32, i32* @IXGBE_GCR_CMPL_TMOUT_RESEND, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %3, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %3, align 4
  %38 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %39 = load i32, i32* @IXGBE_GCR, align 4
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %38, i32 %39, i32 %40)
  ret void
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_READ_PCIE_WORD(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_PCIE_WORD(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
