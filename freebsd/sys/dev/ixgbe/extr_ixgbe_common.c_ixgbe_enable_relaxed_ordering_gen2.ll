; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_enable_relaxed_ordering_gen2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_enable_relaxed_ordering_gen2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@.str = private unnamed_addr constant [35 x i8] c"ixgbe_enable_relaxed_ordering_gen2\00", align 1
@IXGBE_DCA_TXCTRL_DESC_WRO_EN = common dso_local global i64 0, align 8
@IXGBE_DCA_RXCTRL_DATA_WRO_EN = common dso_local global i64 0, align 8
@IXGBE_DCA_RXCTRL_HEAD_WRO_EN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_enable_relaxed_ordering_gen2(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %5 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %6

6:                                                ; preds = %26, %1
  %7 = load i64, i64* %4, align 8
  %8 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %9 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp slt i64 %7, %11
  br i1 %12, label %13, label %29

13:                                               ; preds = %6
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @IXGBE_DCA_TXCTRL_82599(i64 %15)
  %17 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %14, i32 %16)
  store i64 %17, i64* %3, align 8
  %18 = load i64, i64* @IXGBE_DCA_TXCTRL_DESC_WRO_EN, align 8
  %19 = load i64, i64* %3, align 8
  %20 = or i64 %19, %18
  store i64 %20, i64* %3, align 8
  %21 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @IXGBE_DCA_TXCTRL_82599(i64 %22)
  %24 = load i64, i64* %3, align 8
  %25 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %21, i32 %23, i64 %24)
  br label %26

26:                                               ; preds = %13
  %27 = load i64, i64* %4, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %4, align 8
  br label %6

29:                                               ; preds = %6
  store i64 0, i64* %4, align 8
  br label %30

30:                                               ; preds = %52, %29
  %31 = load i64, i64* %4, align 8
  %32 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %33 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %31, %35
  br i1 %36, label %37, label %55

37:                                               ; preds = %30
  %38 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %39 = load i64, i64* %4, align 8
  %40 = call i32 @IXGBE_DCA_RXCTRL(i64 %39)
  %41 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %38, i32 %40)
  store i64 %41, i64* %3, align 8
  %42 = load i64, i64* @IXGBE_DCA_RXCTRL_DATA_WRO_EN, align 8
  %43 = load i64, i64* @IXGBE_DCA_RXCTRL_HEAD_WRO_EN, align 8
  %44 = or i64 %42, %43
  %45 = load i64, i64* %3, align 8
  %46 = or i64 %45, %44
  store i64 %46, i64* %3, align 8
  %47 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %48 = load i64, i64* %4, align 8
  %49 = call i32 @IXGBE_DCA_RXCTRL(i64 %48)
  %50 = load i64, i64* %3, align 8
  %51 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %47, i32 %49, i64 %50)
  br label %52

52:                                               ; preds = %37
  %53 = load i64, i64* %4, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %4, align 8
  br label %30

55:                                               ; preds = %30
  ret void
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_DCA_TXCTRL_82599(i64) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i64) #1

declare dso_local i32 @IXGBE_DCA_RXCTRL(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
