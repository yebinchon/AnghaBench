; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_ready_eeprom.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_ready_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@IXGBE_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"ixgbe_ready_eeprom\00", align 1
@IXGBE_EEPROM_MAX_RETRY_SPI = common dso_local global i64 0, align 8
@IXGBE_EEPROM_RDSR_OPCODE_SPI = common dso_local global i32 0, align 4
@IXGBE_EEPROM_OPCODE_BITS = common dso_local global i32 0, align 4
@IXGBE_EEPROM_STATUS_RDY_SPI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"SPI EEPROM Status error\0A\00", align 1
@IXGBE_ERR_EEPROM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*)* @ixgbe_ready_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_ready_eeprom(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %6 = load i32, i32* @IXGBE_SUCCESS, align 4
  store i32 %6, i32* %3, align 4
  %7 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %8

8:                                                ; preds = %29, %1
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @IXGBE_EEPROM_MAX_RETRY_SPI, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %32

12:                                               ; preds = %8
  %13 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %14 = load i32, i32* @IXGBE_EEPROM_RDSR_OPCODE_SPI, align 4
  %15 = load i32, i32* @IXGBE_EEPROM_OPCODE_BITS, align 4
  %16 = call i32 @ixgbe_shift_out_eeprom_bits(%struct.ixgbe_hw* %13, i32 %14, i32 %15)
  %17 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %18 = call i64 @ixgbe_shift_in_eeprom_bits(%struct.ixgbe_hw* %17, i32 8)
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @IXGBE_EEPROM_STATUS_RDY_SPI, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %12
  br label %32

25:                                               ; preds = %12
  %26 = call i32 @usec_delay(i32 5)
  %27 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %28 = call i32 @ixgbe_standby_eeprom(%struct.ixgbe_hw* %27)
  br label %29

29:                                               ; preds = %25
  %30 = load i64, i64* %4, align 8
  %31 = add nsw i64 %30, 5
  store i64 %31, i64* %4, align 8
  br label %8

32:                                               ; preds = %24, %8
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @IXGBE_EEPROM_MAX_RETRY_SPI, align 8
  %35 = icmp sge i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @IXGBE_ERR_EEPROM, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %36, %32
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @ixgbe_shift_out_eeprom_bits(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i64 @ixgbe_shift_in_eeprom_bits(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @usec_delay(i32) #1

declare dso_local i32 @ixgbe_standby_eeprom(%struct.ixgbe_hw*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
