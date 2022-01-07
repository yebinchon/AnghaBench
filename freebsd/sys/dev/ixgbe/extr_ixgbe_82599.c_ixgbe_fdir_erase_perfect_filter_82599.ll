; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82599.c_ixgbe_fdir_erase_perfect_filter_82599.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82599.c_ixgbe_fdir_erase_perfect_filter_82599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }
%union.ixgbe_atr_input = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IXGBE_FDIRHASH_SIG_SW_INDEX_SHIFT = common dso_local global i32 0, align 4
@IXGBE_FDIRHASH = common dso_local global i32 0, align 4
@IXGBE_FDIRCMD = common dso_local global i32 0, align 4
@IXGBE_FDIRCMD_CMD_QUERY_REM_FILT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Flow Director command did not complete!\0A\00", align 1
@IXGBE_FDIRCMD_FILTER_VALID = common dso_local global i32 0, align 4
@IXGBE_FDIRCMD_CMD_REMOVE_FLOW = common dso_local global i32 0, align 4
@IXGBE_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_fdir_erase_perfect_filter_82599(%struct.ixgbe_hw* %0, %union.ixgbe_atr_input* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca %union.ixgbe_atr_input*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store %union.ixgbe_atr_input* %1, %union.ixgbe_atr_input** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %6, align 8
  %12 = bitcast %union.ixgbe_atr_input* %11 to %struct.TYPE_2__*
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @IXGBE_FDIRHASH_SIG_SW_INDEX_SHIFT, align 4
  %17 = shl i32 %15, %16
  %18 = load i32, i32* %8, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %8, align 4
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %21 = load i32, i32* @IXGBE_FDIRHASH, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %20, i32 %21, i32 %22)
  %24 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %25 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %24)
  %26 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %27 = load i32, i32* @IXGBE_FDIRCMD, align 4
  %28 = load i32, i32* @IXGBE_FDIRCMD_CMD_QUERY_REM_FILT, align 4
  %29 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %26, i32 %27, i32 %28)
  %30 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %31 = call i64 @ixgbe_fdir_check_cmd_complete(%struct.ixgbe_hw* %30, i32* %9)
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %10, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %3
  %35 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %36 = load i64, i64* %10, align 8
  store i64 %36, i64* %4, align 8
  br label %55

37:                                               ; preds = %3
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @IXGBE_FDIRCMD_FILTER_VALID, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %37
  %43 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %44 = load i32, i32* @IXGBE_FDIRHASH, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %43, i32 %44, i32 %45)
  %47 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %48 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %47)
  %49 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %50 = load i32, i32* @IXGBE_FDIRCMD, align 4
  %51 = load i32, i32* @IXGBE_FDIRCMD_CMD_REMOVE_FLOW, align 4
  %52 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %42, %37
  %54 = load i64, i64* @IXGBE_SUCCESS, align 8
  store i64 %54, i64* %4, align 8
  br label %55

55:                                               ; preds = %53, %34
  %56 = load i64, i64* %4, align 8
  ret i64 %56
}

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

declare dso_local i64 @ixgbe_fdir_check_cmd_complete(%struct.ixgbe_hw*, i32*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
