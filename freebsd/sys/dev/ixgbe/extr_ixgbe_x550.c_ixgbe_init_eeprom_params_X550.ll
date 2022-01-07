; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_init_eeprom_params_X550.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_init_eeprom_params_X550.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.ixgbe_eeprom_info }
%struct.ixgbe_eeprom_info = type { i64, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"ixgbe_init_eeprom_params_X550\00", align 1
@ixgbe_eeprom_uninitialized = common dso_local global i64 0, align 8
@ixgbe_flash = common dso_local global i64 0, align 8
@IXGBE_EEC = common dso_local global i32 0, align 4
@IXGBE_EEC_SIZE = common dso_local global i32 0, align 4
@IXGBE_EEC_SIZE_SHIFT = common dso_local global i32 0, align 4
@IXGBE_EEPROM_WORD_SIZE_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Eeprom params: type = %d, size = %d\0A\00", align 1
@IXGBE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_init_eeprom_params_X550(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca %struct.ixgbe_eeprom_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %6 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %7 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %6, i32 0, i32 0
  store %struct.ixgbe_eeprom_info* %7, %struct.ixgbe_eeprom_info** %3, align 8
  %8 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.ixgbe_eeprom_info*, %struct.ixgbe_eeprom_info** %3, align 8
  %10 = getelementptr inbounds %struct.ixgbe_eeprom_info, %struct.ixgbe_eeprom_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ixgbe_eeprom_uninitialized, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %41

14:                                               ; preds = %1
  %15 = load %struct.ixgbe_eeprom_info*, %struct.ixgbe_eeprom_info** %3, align 8
  %16 = getelementptr inbounds %struct.ixgbe_eeprom_info, %struct.ixgbe_eeprom_info* %15, i32 0, i32 1
  store i32 10, i32* %16, align 8
  %17 = load i64, i64* @ixgbe_flash, align 8
  %18 = load %struct.ixgbe_eeprom_info*, %struct.ixgbe_eeprom_info** %3, align 8
  %19 = getelementptr inbounds %struct.ixgbe_eeprom_info, %struct.ixgbe_eeprom_info* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %21 = load i32, i32* @IXGBE_EEC, align 4
  %22 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %20, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @IXGBE_EEC_SIZE, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @IXGBE_EEC_SIZE_SHIFT, align 4
  %27 = ashr i32 %25, %26
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @IXGBE_EEPROM_WORD_SIZE_SHIFT, align 4
  %30 = add nsw i32 %28, %29
  %31 = shl i32 1, %30
  %32 = load %struct.ixgbe_eeprom_info*, %struct.ixgbe_eeprom_info** %3, align 8
  %33 = getelementptr inbounds %struct.ixgbe_eeprom_info, %struct.ixgbe_eeprom_info* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load %struct.ixgbe_eeprom_info*, %struct.ixgbe_eeprom_info** %3, align 8
  %35 = getelementptr inbounds %struct.ixgbe_eeprom_info, %struct.ixgbe_eeprom_info* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.ixgbe_eeprom_info*, %struct.ixgbe_eeprom_info** %3, align 8
  %38 = getelementptr inbounds %struct.ixgbe_eeprom_info, %struct.ixgbe_eeprom_info* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @DEBUGOUT2(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %36, i32 %39)
  br label %41

41:                                               ; preds = %14, %1
  %42 = load i32, i32* @IXGBE_SUCCESS, align 4
  ret i32 %42
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @DEBUGOUT2(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
