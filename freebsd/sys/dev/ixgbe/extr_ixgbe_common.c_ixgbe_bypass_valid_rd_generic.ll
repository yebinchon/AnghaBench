; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_bypass_valid_rd_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_bypass_valid_rd_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BYPASS_PAGE_M = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@BYPASS_AUX_ON_M = common dso_local global i32 0, align 4
@BYPASS_MAIN_ON_M = common dso_local global i32 0, align 4
@BYPASS_MAIN_OFF_M = common dso_local global i32 0, align 4
@BYPASS_AUX_OFF_M = common dso_local global i32 0, align 4
@BYPASS_WDTIMEOUT_M = common dso_local global i32 0, align 4
@BYPASS_WDT_VALUE_M = common dso_local global i32 0, align 4
@BYPASS_STATUS_OFF_M = common dso_local global i32 0, align 4
@BYPASS_CTL1_VALID_M = common dso_local global i32 0, align 4
@BYPASS_CTL1_TIME_M = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_bypass_valid_rd_generic(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @BYPASS_PAGE_M, align 4
  %9 = and i32 %7, %8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @BYPASS_PAGE_M, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %9, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %3, align 4
  br label %66

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @BYPASS_PAGE_M, align 4
  %19 = and i32 %17, %18
  switch i32 %19, label %64 [
    i32 130, label %20
    i32 129, label %49
    i32 128, label %63
  ]

20:                                               ; preds = %16
  %21 = load i32, i32* @BYPASS_AUX_ON_M, align 4
  %22 = load i32, i32* @BYPASS_MAIN_ON_M, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @BYPASS_MAIN_OFF_M, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @BYPASS_AUX_OFF_M, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @BYPASS_WDTIMEOUT_M, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @BYPASS_WDT_VALUE_M, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %34, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %20
  %40 = load i32, i32* @FALSE, align 4
  store i32 %40, i32* %3, align 4
  br label %66

41:                                               ; preds = %20
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @BYPASS_STATUS_OFF_M, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @FALSE, align 4
  store i32 %47, i32* %3, align 4
  br label %66

48:                                               ; preds = %41
  br label %64

49:                                               ; preds = %16
  %50 = load i32, i32* @BYPASS_CTL1_VALID_M, align 4
  %51 = load i32, i32* @BYPASS_CTL1_TIME_M, align 4
  %52 = or i32 %50, %51
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %6, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* %6, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %55, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %49
  %61 = load i32, i32* @FALSE, align 4
  store i32 %61, i32* %3, align 4
  br label %66

62:                                               ; preds = %49
  br label %64

63:                                               ; preds = %16
  br label %64

64:                                               ; preds = %16, %63, %62, %48
  %65 = load i32, i32* @TRUE, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %64, %60, %46, %39, %14
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
