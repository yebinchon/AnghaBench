; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_poll_eerd_eewr_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_poll_eerd_eewr_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@IXGBE_ERR_EEPROM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"ixgbe_poll_eerd_eewr_done\00", align 1
@IXGBE_EERD_EEWR_ATTEMPTS = common dso_local global i64 0, align 8
@IXGBE_NVM_POLL_READ = common dso_local global i64 0, align 8
@IXGBE_EERD = common dso_local global i32 0, align 4
@IXGBE_EEWR = common dso_local global i32 0, align 4
@IXGBE_EEPROM_RW_REG_DONE = common dso_local global i64 0, align 8
@IXGBE_SUCCESS = common dso_local global i32 0, align 4
@IXGBE_ERROR_POLLING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"EEPROM read/write done polling timed out\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_poll_eerd_eewr_done(%struct.ixgbe_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i32, i32* @IXGBE_ERR_EEPROM, align 4
  store i32 %8, i32* %7, align 4
  %9 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %5, align 8
  br label %10

10:                                               ; preds = %35, %2
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @IXGBE_EERD_EEWR_ATTEMPTS, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %38

14:                                               ; preds = %10
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @IXGBE_NVM_POLL_READ, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %20 = load i32, i32* @IXGBE_EERD, align 4
  %21 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %19, i32 %20)
  store i64 %21, i64* %6, align 8
  br label %26

22:                                               ; preds = %14
  %23 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %24 = load i32, i32* @IXGBE_EEWR, align 4
  %25 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %23, i32 %24)
  store i64 %25, i64* %6, align 8
  br label %26

26:                                               ; preds = %22, %18
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @IXGBE_EEPROM_RW_REG_DONE, align 8
  %29 = and i64 %27, %28
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @IXGBE_SUCCESS, align 4
  store i32 %32, i32* %7, align 4
  br label %38

33:                                               ; preds = %26
  %34 = call i32 @usec_delay(i32 5)
  br label %35

35:                                               ; preds = %33
  %36 = load i64, i64* %5, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %5, align 8
  br label %10

38:                                               ; preds = %31, %10
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @IXGBE_EERD_EEWR_ATTEMPTS, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @IXGBE_ERROR_POLLING, align 4
  %44 = call i32 @ERROR_REPORT1(i32 %43, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %38
  %46 = load i32, i32* %7, align 4
  ret i32 %46
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @usec_delay(i32) #1

declare dso_local i32 @ERROR_REPORT1(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
