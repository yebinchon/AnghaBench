; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_stop_adapter_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_stop_adapter_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@.str = private unnamed_addr constant [27 x i8] c"ixgbe_stop_adapter_generic\00", align 1
@TRUE = common dso_local global i32 0, align 4
@IXGBE_EIMC = common dso_local global i32 0, align 4
@IXGBE_IRQ_CLEAR_MASK = common dso_local global i32 0, align 4
@IXGBE_EICR = common dso_local global i32 0, align 4
@IXGBE_TXDCTL_SWFLSH = common dso_local global i32 0, align 4
@IXGBE_RXDCTL_ENABLE = common dso_local global i32 0, align 4
@IXGBE_RXDCTL_SWFLSH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_stop_adapter_generic(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %5 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @TRUE, align 4
  %7 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %8 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %7, i32 0, i32 1
  store i32 %6, i32* %8, align 8
  %9 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %10 = call i32 @ixgbe_disable_rx(%struct.ixgbe_hw* %9)
  %11 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %12 = load i32, i32* @IXGBE_EIMC, align 4
  %13 = load i32, i32* @IXGBE_IRQ_CLEAR_MASK, align 4
  %14 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %11, i32 %12, i32 %13)
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %16 = load i32, i32* @IXGBE_EICR, align 4
  %17 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %15, i32 %16)
  store i64 0, i64* %4, align 8
  br label %18

18:                                               ; preds = %31, %1
  %19 = load i64, i64* %4, align 8
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %21 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %19, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %18
  %26 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @IXGBE_TXDCTL(i64 %27)
  %29 = load i32, i32* @IXGBE_TXDCTL_SWFLSH, align 4
  %30 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %26, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %25
  %32 = load i64, i64* %4, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %4, align 8
  br label %18

34:                                               ; preds = %18
  store i64 0, i64* %4, align 8
  br label %35

35:                                               ; preds = %59, %34
  %36 = load i64, i64* %4, align 8
  %37 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %38 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %36, %40
  br i1 %41, label %42, label %62

42:                                               ; preds = %35
  %43 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %44 = load i64, i64* %4, align 8
  %45 = call i32 @IXGBE_RXDCTL(i64 %44)
  %46 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %43, i32 %45)
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* @IXGBE_RXDCTL_ENABLE, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %3, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* @IXGBE_RXDCTL_SWFLSH, align 4
  %52 = load i32, i32* %3, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %3, align 4
  %54 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %55 = load i64, i64* %4, align 8
  %56 = call i32 @IXGBE_RXDCTL(i64 %55)
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %54, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %42
  %60 = load i64, i64* %4, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %4, align 8
  br label %35

62:                                               ; preds = %35
  %63 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %64 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %63)
  %65 = call i32 @msec_delay(i32 2)
  %66 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %67 = call i32 @ixgbe_disable_pcie_master(%struct.ixgbe_hw* %66)
  ret i32 %67
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @ixgbe_disable_rx(%struct.ixgbe_hw*) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_TXDCTL(i64) #1

declare dso_local i32 @IXGBE_RXDCTL(i64) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

declare dso_local i32 @msec_delay(i32) #1

declare dso_local i32 @ixgbe_disable_pcie_master(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
