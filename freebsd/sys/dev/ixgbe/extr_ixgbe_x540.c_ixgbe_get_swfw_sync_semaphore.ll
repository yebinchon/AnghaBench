; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x540.c_ixgbe_get_swfw_sync_semaphore.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x540.c_ixgbe_get_swfw_sync_semaphore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@IXGBE_ERR_EEPROM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"ixgbe_get_swfw_sync_semaphore\00", align 1
@IXGBE_SWSM_SMBI = common dso_local global i64 0, align 8
@IXGBE_SUCCESS = common dso_local global i64 0, align 8
@IXGBE_SWFW_REGSMP = common dso_local global i64 0, align 8
@IXGBE_ERROR_POLLING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"REGSMP Software NVM semaphore not granted.\0A\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"Software semaphore SMBI between device drivers not granted.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*)* @ixgbe_get_swfw_sync_semaphore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_get_swfw_sync_semaphore(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %7 = load i64, i64* @IXGBE_ERR_EEPROM, align 8
  store i64 %7, i64* %3, align 8
  store i64 2000, i64* %4, align 8
  %8 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %5, align 8
  br label %9

9:                                                ; preds = %26, %1
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* %4, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %29

13:                                               ; preds = %9
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %16 = call i32 @IXGBE_SWSM_BY_MAC(%struct.ixgbe_hw* %15)
  %17 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %14, i32 %16)
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @IXGBE_SWSM_SMBI, align 8
  %20 = and i64 %18, %19
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %13
  %23 = load i64, i64* @IXGBE_SUCCESS, align 8
  store i64 %23, i64* %3, align 8
  br label %29

24:                                               ; preds = %13
  %25 = call i32 @usec_delay(i32 50)
  br label %26

26:                                               ; preds = %24
  %27 = load i64, i64* %5, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %5, align 8
  br label %9

29:                                               ; preds = %22, %9
  %30 = load i64, i64* %3, align 8
  %31 = load i64, i64* @IXGBE_SUCCESS, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %64

33:                                               ; preds = %29
  store i64 0, i64* %5, align 8
  br label %34

34:                                               ; preds = %50, %33
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* %4, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %34
  %39 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %40 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %41 = call i32 @IXGBE_SWFW_SYNC_BY_MAC(%struct.ixgbe_hw* %40)
  %42 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %39, i32 %41)
  store i64 %42, i64* %6, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* @IXGBE_SWFW_REGSMP, align 8
  %45 = and i64 %43, %44
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %38
  br label %53

48:                                               ; preds = %38
  %49 = call i32 @usec_delay(i32 50)
  br label %50

50:                                               ; preds = %48
  %51 = load i64, i64* %5, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %5, align 8
  br label %34

53:                                               ; preds = %47, %34
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* %4, align 8
  %56 = icmp sge i64 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load i32, i32* @IXGBE_ERROR_POLLING, align 4
  %59 = call i32 @ERROR_REPORT1(i32 %58, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %60 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %61 = call i32 @ixgbe_release_swfw_sync_semaphore(%struct.ixgbe_hw* %60)
  %62 = load i64, i64* @IXGBE_ERR_EEPROM, align 8
  store i64 %62, i64* %3, align 8
  br label %63

63:                                               ; preds = %57, %53
  br label %67

64:                                               ; preds = %29
  %65 = load i32, i32* @IXGBE_ERROR_POLLING, align 4
  %66 = call i32 @ERROR_REPORT1(i32 %65, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %63
  %68 = load i64, i64* %3, align 8
  ret i64 %68
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_SWSM_BY_MAC(%struct.ixgbe_hw*) #1

declare dso_local i32 @usec_delay(i32) #1

declare dso_local i32 @IXGBE_SWFW_SYNC_BY_MAC(%struct.ixgbe_hw*) #1

declare dso_local i32 @ERROR_REPORT1(i32, i8*) #1

declare dso_local i32 @ixgbe_release_swfw_sync_semaphore(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
