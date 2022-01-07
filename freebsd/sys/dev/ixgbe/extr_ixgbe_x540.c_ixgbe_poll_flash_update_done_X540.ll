; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x540.c_ixgbe_poll_flash_update_done_X540.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x540.c_ixgbe_poll_flash_update_done_X540.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@IXGBE_ERR_EEPROM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"ixgbe_poll_flash_update_done_X540\00", align 1
@IXGBE_FLUDONE_ATTEMPTS = common dso_local global i64 0, align 8
@IXGBE_EEC_FLUDONE = common dso_local global i64 0, align 8
@IXGBE_SUCCESS = common dso_local global i32 0, align 4
@IXGBE_ERROR_POLLING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Flash update status polling timed out\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*)* @ixgbe_poll_flash_update_done_X540 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_poll_flash_update_done_X540(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %6 = load i32, i32* @IXGBE_ERR_EEPROM, align 4
  store i32 %6, i32* %5, align 4
  %7 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %3, align 8
  br label %8

8:                                                ; preds = %25, %1
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @IXGBE_FLUDONE_ATTEMPTS, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %28

12:                                               ; preds = %8
  %13 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %15 = call i32 @IXGBE_EEC_BY_MAC(%struct.ixgbe_hw* %14)
  %16 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %13, i32 %15)
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @IXGBE_EEC_FLUDONE, align 8
  %19 = and i64 %17, %18
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %12
  %22 = load i32, i32* @IXGBE_SUCCESS, align 4
  store i32 %22, i32* %5, align 4
  br label %28

23:                                               ; preds = %12
  %24 = call i32 @msec_delay(i32 5)
  br label %25

25:                                               ; preds = %23
  %26 = load i64, i64* %3, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* %3, align 8
  br label %8

28:                                               ; preds = %21, %8
  %29 = load i64, i64* %3, align 8
  %30 = load i64, i64* @IXGBE_FLUDONE_ATTEMPTS, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* @IXGBE_ERROR_POLLING, align 4
  %34 = call i32 @ERROR_REPORT1(i32 %33, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %28
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_EEC_BY_MAC(%struct.ixgbe_hw*) #1

declare dso_local i32 @msec_delay(i32) #1

declare dso_local i32 @ERROR_REPORT1(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
