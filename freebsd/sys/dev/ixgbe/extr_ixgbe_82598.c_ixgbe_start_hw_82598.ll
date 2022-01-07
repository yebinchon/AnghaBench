; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82598.c_ixgbe_start_hw_82598.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82598.c_ixgbe_start_hw_82598.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@IXGBE_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"ixgbe_start_hw_82598\00", align 1
@IXGBE_DCA_MAX_QUEUES_82598 = common dso_local global i64 0, align 8
@IXGBE_DCA_TXCTRL_DESC_WRO_EN = common dso_local global i64 0, align 8
@IXGBE_DCA_RXCTRL_DATA_WRO_EN = common dso_local global i64 0, align 8
@IXGBE_DCA_RXCTRL_HEAD_WRO_EN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_start_hw_82598(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  %7 = load i64, i64* @IXGBE_SUCCESS, align 8
  store i64 %7, i64* %6, align 8
  %8 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %10 = call i64 @ixgbe_start_hw_generic(%struct.ixgbe_hw* %9)
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i64, i64* %6, align 8
  store i64 %14, i64* %2, align 8
  br label %83

15:                                               ; preds = %1
  store i64 0, i64* %5, align 8
  br label %16

16:                                               ; preds = %43, %15
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %19 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %17, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @IXGBE_DCA_MAX_QUEUES_82598, align 8
  %26 = icmp slt i64 %24, %25
  br label %27

27:                                               ; preds = %23, %16
  %28 = phi i1 [ false, %16 ], [ %26, %23 ]
  br i1 %28, label %29, label %46

29:                                               ; preds = %27
  %30 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @IXGBE_DCA_TXCTRL(i64 %31)
  %33 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %30, i32 %32)
  store i64 %33, i64* %4, align 8
  %34 = load i64, i64* @IXGBE_DCA_TXCTRL_DESC_WRO_EN, align 8
  %35 = xor i64 %34, -1
  %36 = load i64, i64* %4, align 8
  %37 = and i64 %36, %35
  store i64 %37, i64* %4, align 8
  %38 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @IXGBE_DCA_TXCTRL(i64 %39)
  %41 = load i64, i64* %4, align 8
  %42 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %38, i32 %40, i64 %41)
  br label %43

43:                                               ; preds = %29
  %44 = load i64, i64* %5, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %5, align 8
  br label %16

46:                                               ; preds = %27
  store i64 0, i64* %5, align 8
  br label %47

47:                                               ; preds = %76, %46
  %48 = load i64, i64* %5, align 8
  %49 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %50 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp slt i64 %48, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* @IXGBE_DCA_MAX_QUEUES_82598, align 8
  %57 = icmp slt i64 %55, %56
  br label %58

58:                                               ; preds = %54, %47
  %59 = phi i1 [ false, %47 ], [ %57, %54 ]
  br i1 %59, label %60, label %79

60:                                               ; preds = %58
  %61 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %62 = load i64, i64* %5, align 8
  %63 = call i32 @IXGBE_DCA_RXCTRL(i64 %62)
  %64 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %61, i32 %63)
  store i64 %64, i64* %4, align 8
  %65 = load i64, i64* @IXGBE_DCA_RXCTRL_DATA_WRO_EN, align 8
  %66 = load i64, i64* @IXGBE_DCA_RXCTRL_HEAD_WRO_EN, align 8
  %67 = or i64 %65, %66
  %68 = xor i64 %67, -1
  %69 = load i64, i64* %4, align 8
  %70 = and i64 %69, %68
  store i64 %70, i64* %4, align 8
  %71 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %72 = load i64, i64* %5, align 8
  %73 = call i32 @IXGBE_DCA_RXCTRL(i64 %72)
  %74 = load i64, i64* %4, align 8
  %75 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %71, i32 %73, i64 %74)
  br label %76

76:                                               ; preds = %60
  %77 = load i64, i64* %5, align 8
  %78 = add nsw i64 %77, 1
  store i64 %78, i64* %5, align 8
  br label %47

79:                                               ; preds = %58
  %80 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %81 = call i32 @ixgbe_set_pcie_completion_timeout(%struct.ixgbe_hw* %80)
  %82 = load i64, i64* %6, align 8
  store i64 %82, i64* %2, align 8
  br label %83

83:                                               ; preds = %79, %13
  %84 = load i64, i64* %2, align 8
  ret i64 %84
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @ixgbe_start_hw_generic(%struct.ixgbe_hw*) #1

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_DCA_TXCTRL(i64) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i64) #1

declare dso_local i32 @IXGBE_DCA_RXCTRL(i64) #1

declare dso_local i32 @ixgbe_set_pcie_completion_timeout(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
