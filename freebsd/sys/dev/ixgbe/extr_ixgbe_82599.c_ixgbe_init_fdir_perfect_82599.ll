; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82599.c_ixgbe_init_fdir_perfect_82599.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82599.c_ixgbe_init_fdir_perfect_82599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"ixgbe_init_fdir_perfect_82599\00", align 1
@IXGBE_FDIRCTRL_PERFECT_MATCH = common dso_local global i32 0, align 4
@IXGBE_FDIRCTRL_REPORT_STATUS = common dso_local global i32 0, align 4
@IXGBE_FDIR_DROP_QUEUE = common dso_local global i32 0, align 4
@IXGBE_FDIRCTRL_DROP_Q_SHIFT = common dso_local global i32 0, align 4
@IXGBE_FDIRCTRL_FLEX_SHIFT = common dso_local global i32 0, align 4
@IXGBE_FDIRCTRL_MAX_LENGTH_SHIFT = common dso_local global i32 0, align 4
@IXGBE_FDIRCTRL_FULL_THRESH_SHIFT = common dso_local global i32 0, align 4
@IXGBE_FDIRCTRL_FILTERMODE_CLOUD = common dso_local global i32 0, align 4
@IXGBE_FDIRCTRL_FILTERMODE_SHIFT = common dso_local global i32 0, align 4
@IXGBE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_init_fdir_perfect_82599(%struct.ixgbe_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @UNREFERENCED_1PARAMETER(i32 %7)
  %9 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @IXGBE_FDIRCTRL_PERFECT_MATCH, align 4
  %11 = load i32, i32* @IXGBE_FDIRCTRL_REPORT_STATUS, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @IXGBE_FDIR_DROP_QUEUE, align 4
  %14 = load i32, i32* @IXGBE_FDIRCTRL_DROP_Q_SHIFT, align 4
  %15 = shl i32 %13, %14
  %16 = or i32 %12, %15
  %17 = load i32, i32* @IXGBE_FDIRCTRL_FLEX_SHIFT, align 4
  %18 = shl i32 6, %17
  %19 = or i32 %16, %18
  %20 = load i32, i32* @IXGBE_FDIRCTRL_MAX_LENGTH_SHIFT, align 4
  %21 = shl i32 10, %20
  %22 = or i32 %19, %21
  %23 = load i32, i32* @IXGBE_FDIRCTRL_FULL_THRESH_SHIFT, align 4
  %24 = shl i32 4, %23
  %25 = or i32 %22, %24
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %3
  %31 = load i32, i32* @IXGBE_FDIRCTRL_FILTERMODE_CLOUD, align 4
  %32 = load i32, i32* @IXGBE_FDIRCTRL_FILTERMODE_SHIFT, align 4
  %33 = shl i32 %31, %32
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %30, %3
  %37 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @ixgbe_fdir_enable_82599(%struct.ixgbe_hw* %37, i32 %38)
  %40 = load i32, i32* @IXGBE_SUCCESS, align 4
  ret i32 %40
}

declare dso_local i32 @UNREFERENCED_1PARAMETER(i32) #1

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @ixgbe_fdir_enable_82599(%struct.ixgbe_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
