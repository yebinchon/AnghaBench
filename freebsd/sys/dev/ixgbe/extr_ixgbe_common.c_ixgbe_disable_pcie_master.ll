; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_disable_pcie_master.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_disable_pcie_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@IXGBE_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"ixgbe_disable_pcie_master\00", align 1
@IXGBE_CTRL = common dso_local global i32 0, align 4
@IXGBE_CTRL_GIO_DIS = common dso_local global i32 0, align 4
@IXGBE_STATUS = common dso_local global i32 0, align 4
@IXGBE_STATUS_GIO = common dso_local global i32 0, align 4
@IXGBE_PCI_MASTER_DISABLE_TIMEOUT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [57 x i8] c"GIO Master Disable bit didn't clear - requesting resets\0A\00", align 1
@IXGBE_FLAGS_DOUBLE_RESET_REQUIRED = common dso_local global i32 0, align 4
@ixgbe_mac_X550 = common dso_local global i64 0, align 8
@IXGBE_PCI_DEVICE_STATUS = common dso_local global i32 0, align 4
@IXGBE_PCI_DEVICE_STATUS_TRANSACTION_PENDING = common dso_local global i32 0, align 4
@IXGBE_ERROR_POLLING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"PCIe transaction pending bit also did not clear.\0A\00", align 1
@IXGBE_ERR_MASTER_REQUESTS_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_disable_pcie_master(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %7 = load i32, i32* @IXGBE_SUCCESS, align 4
  store i32 %7, i32* %3, align 4
  %8 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %10 = load i32, i32* @IXGBE_CTRL, align 4
  %11 = load i32, i32* @IXGBE_CTRL_GIO_DIS, align 4
  %12 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %9, i32 %10, i32 %11)
  %13 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %14 = load i32, i32* @IXGBE_STATUS, align 4
  %15 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %13, i32 %14)
  %16 = load i32, i32* @IXGBE_STATUS_GIO, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %21 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @IXGBE_REMOVED(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19, %1
  br label %91

26:                                               ; preds = %19
  store i64 0, i64* %4, align 8
  br label %27

27:                                               ; preds = %41, %26
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* @IXGBE_PCI_MASTER_DISABLE_TIMEOUT, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = call i32 @usec_delay(i32 100)
  %33 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %34 = load i32, i32* @IXGBE_STATUS, align 4
  %35 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %33, i32 %34)
  %36 = load i32, i32* @IXGBE_STATUS_GIO, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %31
  br label %91

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %4, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %4, align 8
  br label %27

44:                                               ; preds = %27
  %45 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @IXGBE_FLAGS_DOUBLE_RESET_REQUIRED, align 4
  %47 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %48 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %46
  store i32 %51, i32* %49, align 8
  %52 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %53 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @ixgbe_mac_X550, align 8
  %57 = icmp sge i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %44
  br label %91

59:                                               ; preds = %44
  %60 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %61 = call i64 @ixgbe_pcie_timeout_poll(%struct.ixgbe_hw* %60)
  store i64 %61, i64* %5, align 8
  store i64 0, i64* %4, align 8
  br label %62

62:                                               ; preds = %84, %59
  %63 = load i64, i64* %4, align 8
  %64 = load i64, i64* %5, align 8
  %65 = icmp slt i64 %63, %64
  br i1 %65, label %66, label %87

66:                                               ; preds = %62
  %67 = call i32 @usec_delay(i32 100)
  %68 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %69 = load i32, i32* @IXGBE_PCI_DEVICE_STATUS, align 4
  %70 = call i32 @IXGBE_READ_PCIE_WORD(%struct.ixgbe_hw* %68, i32 %69)
  store i32 %70, i32* %6, align 4
  %71 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %72 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @IXGBE_REMOVED(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %66
  br label %91

77:                                               ; preds = %66
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @IXGBE_PCI_DEVICE_STATUS_TRANSACTION_PENDING, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %77
  br label %91

83:                                               ; preds = %77
  br label %84

84:                                               ; preds = %83
  %85 = load i64, i64* %4, align 8
  %86 = add nsw i64 %85, 1
  store i64 %86, i64* %4, align 8
  br label %62

87:                                               ; preds = %62
  %88 = load i32, i32* @IXGBE_ERROR_POLLING, align 4
  %89 = call i32 @ERROR_REPORT1(i32 %88, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %90 = load i32, i32* @IXGBE_ERR_MASTER_REQUESTS_PENDING, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %87, %82, %76, %58, %39, %25
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i64 @IXGBE_REMOVED(i32) #1

declare dso_local i32 @usec_delay(i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i64 @ixgbe_pcie_timeout_poll(%struct.ixgbe_hw*) #1

declare dso_local i32 @IXGBE_READ_PCIE_WORD(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @ERROR_REPORT1(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
