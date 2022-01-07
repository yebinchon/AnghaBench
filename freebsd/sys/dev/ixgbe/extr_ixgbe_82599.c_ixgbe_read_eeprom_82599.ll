; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82599.c_ixgbe_read_eeprom_82599.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82599.c_ixgbe_read_eeprom_82599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.ixgbe_eeprom_info }
%struct.ixgbe_eeprom_info = type { i64 }

@IXGBE_ERR_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"ixgbe_read_eeprom_82599\00", align 1
@ixgbe_eeprom_spi = common dso_local global i64 0, align 8
@IXGBE_EERD_MAX_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*, i64, i64*)* @ixgbe_read_eeprom_82599 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_read_eeprom_82599(%struct.ixgbe_hw* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.ixgbe_eeprom_info*, align 8
  %8 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %10 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %9, i32 0, i32 0
  store %struct.ixgbe_eeprom_info* %10, %struct.ixgbe_eeprom_info** %7, align 8
  %11 = load i32, i32* @IXGBE_ERR_CONFIG, align 4
  store i32 %11, i32* %8, align 4
  %12 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.ixgbe_eeprom_info*, %struct.ixgbe_eeprom_info** %7, align 8
  %14 = getelementptr inbounds %struct.ixgbe_eeprom_info, %struct.ixgbe_eeprom_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ixgbe_eeprom_spi, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @IXGBE_EERD_MAX_ADDR, align 8
  %21 = icmp sle i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load i64*, i64** %6, align 8
  %26 = call i32 @ixgbe_read_eerd_generic(%struct.ixgbe_hw* %23, i64 %24, i64* %25)
  store i32 %26, i32* %8, align 4
  br label %32

27:                                               ; preds = %18, %3
  %28 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i64*, i64** %6, align 8
  %31 = call i32 @ixgbe_read_eeprom_bit_bang_generic(%struct.ixgbe_hw* %28, i64 %29, i64* %30)
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %27, %22
  %33 = load i32, i32* %8, align 4
  ret i32 %33
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @ixgbe_read_eerd_generic(%struct.ixgbe_hw*, i64, i64*) #1

declare dso_local i32 @ixgbe_read_eeprom_bit_bang_generic(%struct.ixgbe_hw*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
