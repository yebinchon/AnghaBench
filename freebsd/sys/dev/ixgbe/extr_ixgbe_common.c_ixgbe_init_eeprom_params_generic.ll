; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_init_eeprom_params_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_init_eeprom_params_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.ixgbe_eeprom_info }
%struct.ixgbe_eeprom_info = type { i64, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [33 x i8] c"ixgbe_init_eeprom_params_generic\00", align 1
@ixgbe_eeprom_uninitialized = common dso_local global i64 0, align 8
@ixgbe_eeprom_none = common dso_local global i64 0, align 8
@IXGBE_EEC_PRES = common dso_local global i32 0, align 4
@ixgbe_eeprom_spi = common dso_local global i64 0, align 8
@IXGBE_EEC_SIZE = common dso_local global i32 0, align 4
@IXGBE_EEC_SIZE_SHIFT = common dso_local global i32 0, align 4
@IXGBE_EEPROM_WORD_SIZE_SHIFT = common dso_local global i32 0, align 4
@IXGBE_EEC_ADDR_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"Eeprom params: type = %d, size = %d, address bits: %d\0A\00", align 1
@IXGBE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_init_eeprom_params_generic(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca %struct.ixgbe_eeprom_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %6 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %7 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %6, i32 0, i32 0
  store %struct.ixgbe_eeprom_info* %7, %struct.ixgbe_eeprom_info** %3, align 8
  %8 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.ixgbe_eeprom_info*, %struct.ixgbe_eeprom_info** %3, align 8
  %10 = getelementptr inbounds %struct.ixgbe_eeprom_info, %struct.ixgbe_eeprom_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ixgbe_eeprom_uninitialized, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %67

14:                                               ; preds = %1
  %15 = load i64, i64* @ixgbe_eeprom_none, align 8
  %16 = load %struct.ixgbe_eeprom_info*, %struct.ixgbe_eeprom_info** %3, align 8
  %17 = getelementptr inbounds %struct.ixgbe_eeprom_info, %struct.ixgbe_eeprom_info* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load %struct.ixgbe_eeprom_info*, %struct.ixgbe_eeprom_info** %3, align 8
  %19 = getelementptr inbounds %struct.ixgbe_eeprom_info, %struct.ixgbe_eeprom_info* %18, i32 0, i32 1
  store i32 10, i32* %19, align 8
  %20 = load %struct.ixgbe_eeprom_info*, %struct.ixgbe_eeprom_info** %3, align 8
  %21 = getelementptr inbounds %struct.ixgbe_eeprom_info, %struct.ixgbe_eeprom_info* %20, i32 0, i32 4
  store i64 0, i64* %21, align 8
  %22 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %23 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %24 = call i32 @IXGBE_EEC_BY_MAC(%struct.ixgbe_hw* %23)
  %25 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %22, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @IXGBE_EEC_PRES, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %14
  %31 = load i64, i64* @ixgbe_eeprom_spi, align 8
  %32 = load %struct.ixgbe_eeprom_info*, %struct.ixgbe_eeprom_info** %3, align 8
  %33 = getelementptr inbounds %struct.ixgbe_eeprom_info, %struct.ixgbe_eeprom_info* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @IXGBE_EEC_SIZE, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* @IXGBE_EEC_SIZE_SHIFT, align 4
  %38 = ashr i32 %36, %37
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @IXGBE_EEPROM_WORD_SIZE_SHIFT, align 4
  %41 = add nsw i32 %39, %40
  %42 = shl i32 1, %41
  %43 = load %struct.ixgbe_eeprom_info*, %struct.ixgbe_eeprom_info** %3, align 8
  %44 = getelementptr inbounds %struct.ixgbe_eeprom_info, %struct.ixgbe_eeprom_info* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %30, %14
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @IXGBE_EEC_ADDR_SIZE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.ixgbe_eeprom_info*, %struct.ixgbe_eeprom_info** %3, align 8
  %52 = getelementptr inbounds %struct.ixgbe_eeprom_info, %struct.ixgbe_eeprom_info* %51, i32 0, i32 3
  store i32 16, i32* %52, align 8
  br label %56

53:                                               ; preds = %45
  %54 = load %struct.ixgbe_eeprom_info*, %struct.ixgbe_eeprom_info** %3, align 8
  %55 = getelementptr inbounds %struct.ixgbe_eeprom_info, %struct.ixgbe_eeprom_info* %54, i32 0, i32 3
  store i32 8, i32* %55, align 8
  br label %56

56:                                               ; preds = %53, %50
  %57 = load %struct.ixgbe_eeprom_info*, %struct.ixgbe_eeprom_info** %3, align 8
  %58 = getelementptr inbounds %struct.ixgbe_eeprom_info, %struct.ixgbe_eeprom_info* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.ixgbe_eeprom_info*, %struct.ixgbe_eeprom_info** %3, align 8
  %61 = getelementptr inbounds %struct.ixgbe_eeprom_info, %struct.ixgbe_eeprom_info* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ixgbe_eeprom_info*, %struct.ixgbe_eeprom_info** %3, align 8
  %64 = getelementptr inbounds %struct.ixgbe_eeprom_info, %struct.ixgbe_eeprom_info* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @DEBUGOUT3(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i64 %59, i32 %62, i32 %65)
  br label %67

67:                                               ; preds = %56, %1
  %68 = load i32, i32* @IXGBE_SUCCESS, align 4
  ret i32 %68
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_EEC_BY_MAC(%struct.ixgbe_hw*) #1

declare dso_local i32 @DEBUGOUT3(i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
