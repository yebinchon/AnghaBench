; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82598.c_ixgbe_enable_relaxed_ordering_82598.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82598.c_ixgbe_enable_relaxed_ordering_82598.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@.str = private unnamed_addr constant [36 x i8] c"ixgbe_enable_relaxed_ordering_82598\00", align 1
@IXGBE_DCA_MAX_QUEUES_82598 = common dso_local global i64 0, align 8
@IXGBE_DCA_TXCTRL_DESC_WRO_EN = common dso_local global i64 0, align 8
@IXGBE_DCA_RXCTRL_DATA_WRO_EN = common dso_local global i64 0, align 8
@IXGBE_DCA_RXCTRL_HEAD_WRO_EN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_enable_relaxed_ordering_82598(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %5 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %6

6:                                                ; preds = %32, %1
  %7 = load i64, i64* %4, align 8
  %8 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %9 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp slt i64 %7, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %6
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @IXGBE_DCA_MAX_QUEUES_82598, align 8
  %16 = icmp slt i64 %14, %15
  br label %17

17:                                               ; preds = %13, %6
  %18 = phi i1 [ false, %6 ], [ %16, %13 ]
  br i1 %18, label %19, label %35

19:                                               ; preds = %17
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @IXGBE_DCA_TXCTRL(i64 %21)
  %23 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %20, i32 %22)
  store i64 %23, i64* %3, align 8
  %24 = load i64, i64* @IXGBE_DCA_TXCTRL_DESC_WRO_EN, align 8
  %25 = load i64, i64* %3, align 8
  %26 = or i64 %25, %24
  store i64 %26, i64* %3, align 8
  %27 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @IXGBE_DCA_TXCTRL(i64 %28)
  %30 = load i64, i64* %3, align 8
  %31 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %27, i32 %29, i64 %30)
  br label %32

32:                                               ; preds = %19
  %33 = load i64, i64* %4, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %4, align 8
  br label %6

35:                                               ; preds = %17
  store i64 0, i64* %4, align 8
  br label %36

36:                                               ; preds = %64, %35
  %37 = load i64, i64* %4, align 8
  %38 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %39 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp slt i64 %37, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* @IXGBE_DCA_MAX_QUEUES_82598, align 8
  %46 = icmp slt i64 %44, %45
  br label %47

47:                                               ; preds = %43, %36
  %48 = phi i1 [ false, %36 ], [ %46, %43 ]
  br i1 %48, label %49, label %67

49:                                               ; preds = %47
  %50 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %51 = load i64, i64* %4, align 8
  %52 = call i32 @IXGBE_DCA_RXCTRL(i64 %51)
  %53 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %50, i32 %52)
  store i64 %53, i64* %3, align 8
  %54 = load i64, i64* @IXGBE_DCA_RXCTRL_DATA_WRO_EN, align 8
  %55 = load i64, i64* @IXGBE_DCA_RXCTRL_HEAD_WRO_EN, align 8
  %56 = or i64 %54, %55
  %57 = load i64, i64* %3, align 8
  %58 = or i64 %57, %56
  store i64 %58, i64* %3, align 8
  %59 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %60 = load i64, i64* %4, align 8
  %61 = call i32 @IXGBE_DCA_RXCTRL(i64 %60)
  %62 = load i64, i64* %3, align 8
  %63 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %59, i32 %61, i64 %62)
  br label %64

64:                                               ; preds = %49
  %65 = load i64, i64* %4, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %4, align 8
  br label %36

67:                                               ; preds = %47
  ret void
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_DCA_TXCTRL(i64) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i64) #1

declare dso_local i32 @IXGBE_DCA_RXCTRL(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
