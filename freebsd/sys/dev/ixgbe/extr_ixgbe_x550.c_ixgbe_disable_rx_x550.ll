; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_disable_rx_x550.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_disable_rx_x550.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.ixgbe_hic_disable_rxen = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"ixgbe_enable_rx_dma_x550\00", align 1
@IXGBE_RXCTRL = common dso_local global i32 0, align 4
@IXGBE_RXCTRL_RXEN = common dso_local global i32 0, align 4
@IXGBE_PFDTXGSWC = common dso_local global i32 0, align 4
@IXGBE_PFDTXGSWC_VT_LBEN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@FW_DISABLE_RXEN_CMD = common dso_local global i32 0, align 4
@FW_DISABLE_RXEN_LEN = common dso_local global i32 0, align 4
@FW_DEFAULT_CHECKSUM = common dso_local global i32 0, align 4
@IXGBE_HI_COMMAND_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_disable_rx_x550(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.ixgbe_hic_disable_rxen, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %7 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %9 = load i32, i32* @IXGBE_RXCTRL, align 4
  %10 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @IXGBE_RXCTRL_RXEN, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %82

15:                                               ; preds = %1
  %16 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %17 = load i32, i32* @IXGBE_PFDTXGSWC, align 4
  %18 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %16, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @IXGBE_PFDTXGSWC_VT_LBEN, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %15
  %24 = load i32, i32* @IXGBE_PFDTXGSWC_VT_LBEN, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %29 = load i32, i32* @IXGBE_PFDTXGSWC, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %28, i32 %29, i32 %30)
  %32 = load i32, i32* @TRUE, align 4
  %33 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %34 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  br label %41

36:                                               ; preds = %15
  %37 = load i32, i32* @FALSE, align 4
  %38 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %39 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  br label %41

41:                                               ; preds = %36, %23
  %42 = load i32, i32* @FW_DISABLE_RXEN_CMD, align 4
  %43 = getelementptr inbounds %struct.ixgbe_hic_disable_rxen, %struct.ixgbe_hic_disable_rxen* %6, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @FW_DISABLE_RXEN_LEN, align 4
  %46 = getelementptr inbounds %struct.ixgbe_hic_disable_rxen, %struct.ixgbe_hic_disable_rxen* %6, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @FW_DEFAULT_CHECKSUM, align 4
  %49 = getelementptr inbounds %struct.ixgbe_hic_disable_rxen, %struct.ixgbe_hic_disable_rxen* %6, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %52 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.ixgbe_hic_disable_rxen, %struct.ixgbe_hic_disable_rxen* %6, i32 0, i32 0
  store i64 %54, i64* %55, align 8
  %56 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %57 = bitcast %struct.ixgbe_hic_disable_rxen* %6 to i32*
  %58 = load i32, i32* @IXGBE_HI_COMMAND_TIMEOUT, align 4
  %59 = load i32, i32* @TRUE, align 4
  %60 = call i64 @ixgbe_host_interface_command(%struct.ixgbe_hw* %56, i32* %57, i32 24, i32 %58, i32 %59)
  store i64 %60, i64* %5, align 8
  %61 = load i64, i64* %5, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %81

63:                                               ; preds = %41
  %64 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %65 = load i32, i32* @IXGBE_RXCTRL, align 4
  %66 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %64, i32 %65)
  store i32 %66, i32* %3, align 4
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* @IXGBE_RXCTRL_RXEN, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %63
  %72 = load i32, i32* @IXGBE_RXCTRL_RXEN, align 4
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %3, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %3, align 4
  %76 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %77 = load i32, i32* @IXGBE_RXCTRL, align 4
  %78 = load i32, i32* %3, align 4
  %79 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %76, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %71, %63
  br label %81

81:                                               ; preds = %80, %41
  br label %82

82:                                               ; preds = %81, %1
  ret void
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i64 @ixgbe_host_interface_command(%struct.ixgbe_hw*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
