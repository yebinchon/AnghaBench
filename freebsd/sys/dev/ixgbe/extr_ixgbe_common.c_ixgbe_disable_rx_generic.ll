; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_disable_rx_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_disable_rx_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@IXGBE_RXCTRL = common dso_local global i32 0, align 4
@IXGBE_RXCTRL_RXEN = common dso_local global i32 0, align 4
@ixgbe_mac_82598EB = common dso_local global i64 0, align 8
@IXGBE_PFDTXGSWC = common dso_local global i32 0, align 4
@IXGBE_PFDTXGSWC_VT_LBEN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_disable_rx_generic(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %5 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %6 = load i32, i32* @IXGBE_RXCTRL, align 4
  %7 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @IXGBE_RXCTRL_RXEN, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %55

12:                                               ; preds = %1
  %13 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %14 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ixgbe_mac_82598EB, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %46

19:                                               ; preds = %12
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %21 = load i32, i32* @IXGBE_PFDTXGSWC, align 4
  %22 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %20, i32 %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @IXGBE_PFDTXGSWC_VT_LBEN, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %19
  %28 = load i32, i32* @IXGBE_PFDTXGSWC_VT_LBEN, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %3, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %3, align 4
  %32 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %33 = load i32, i32* @IXGBE_PFDTXGSWC, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %32, i32 %33, i32 %34)
  %36 = load i32, i32* @TRUE, align 4
  %37 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %38 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i32 %36, i32* %39, align 8
  br label %45

40:                                               ; preds = %19
  %41 = load i32, i32* @FALSE, align 4
  %42 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %43 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 8
  br label %45

45:                                               ; preds = %40, %27
  br label %46

46:                                               ; preds = %45, %12
  %47 = load i32, i32* @IXGBE_RXCTRL_RXEN, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %4, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %4, align 4
  %51 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %52 = load i32, i32* @IXGBE_RXCTRL, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %46, %1
  ret void
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
