; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_bypass_set_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_bypass_set_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@IXGBE_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@BYPASS_WE = common dso_local global i32 0, align 4
@BYPASS_PAGE_M = common dso_local global i32 0, align 4
@BYPASS_PAGE_CTL0 = common dso_local global i32 0, align 4
@IXGBE_BYPASS_FW_WRITE_FAILURE = common dso_local global i32 0, align 4
@IXGBE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_bypass_set_generic(%struct.ixgbe_hw* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ixgbe_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %11, align 4
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %16 = load i32, i32* %11, align 4
  %17 = call i64 @ixgbe_bypass_rw_generic(%struct.ixgbe_hw* %15, i32 %16, i32* %10)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @IXGBE_ERR_INVALID_ARGUMENT, align 4
  store i32 %20, i32* %5, align 4
  br label %69

21:                                               ; preds = %4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %8, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = load i32, i32* @BYPASS_WE, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %9, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %11, align 4
  %30 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i64 @ixgbe_bypass_rw_generic(%struct.ixgbe_hw* %30, i32 %31, i32* %10)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %21
  %35 = load i32, i32* @IXGBE_ERR_INVALID_ARGUMENT, align 4
  store i32 %35, i32* %5, align 4
  br label %69

36:                                               ; preds = %21
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @BYPASS_PAGE_M, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* @BYPASS_PAGE_CTL0, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %65

42:                                               ; preds = %36
  %43 = load i32, i32* @BYPASS_PAGE_CTL0, align 4
  store i32 %43, i32* %12, align 4
  br label %44

44:                                               ; preds = %58, %42
  %45 = load i32, i32* %13, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %13, align 4
  %47 = icmp sgt i32 %45, 5
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* @IXGBE_BYPASS_FW_WRITE_FAILURE, align 4
  store i32 %49, i32* %5, align 4
  br label %69

50:                                               ; preds = %44
  %51 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %52 = load i32, i32* %12, align 4
  %53 = call i64 @ixgbe_bypass_rw_generic(%struct.ixgbe_hw* %51, i32 %52, i32* %10)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* @IXGBE_ERR_INVALID_ARGUMENT, align 4
  store i32 %56, i32* %5, align 4
  br label %69

57:                                               ; preds = %50
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @ixgbe_bypass_valid_rd_generic(i32 %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  br i1 %63, label %44, label %64

64:                                               ; preds = %58
  br label %67

65:                                               ; preds = %36
  %66 = call i32 @msec_delay(i32 100)
  br label %67

67:                                               ; preds = %65, %64
  %68 = load i32, i32* @IXGBE_SUCCESS, align 4
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %67, %55, %48, %34, %19
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i64 @ixgbe_bypass_rw_generic(%struct.ixgbe_hw*, i32, i32*) #1

declare dso_local i32 @ixgbe_bypass_valid_rd_generic(i32, i32) #1

declare dso_local i32 @msec_delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
