; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_read_eerd_buffer_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_read_eerd_buffer_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*)* }
%struct.ixgbe_hw.0 = type opaque

@IXGBE_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"ixgbe_read_eerd_buffer_generic\00", align 1
@IXGBE_ERR_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@IXGBE_ERROR_ARGUMENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Invalid EEPROM words\00", align 1
@IXGBE_ERR_EEPROM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"Invalid EEPROM offset\00", align 1
@IXGBE_EEPROM_RW_ADDR_SHIFT = common dso_local global i64 0, align 8
@IXGBE_EEPROM_RW_REG_START = common dso_local global i64 0, align 8
@IXGBE_EERD = common dso_local global i32 0, align 4
@IXGBE_NVM_POLL_READ = common dso_local global i32 0, align 4
@IXGBE_EEPROM_RW_REG_DATA = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"Eeprom read timed out\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_read_eerd_buffer_generic(%struct.ixgbe_hw* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %12 = load i64, i64* @IXGBE_SUCCESS, align 8
  store i64 %12, i64* %10, align 8
  %13 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %15 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.0*)** %17, align 8
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %20 = bitcast %struct.ixgbe_hw* %19 to %struct.ixgbe_hw.0*
  %21 = call i32 %18(%struct.ixgbe_hw.0* %20)
  %22 = load i64, i64* %7, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %4
  %25 = load i64, i64* @IXGBE_ERR_INVALID_ARGUMENT, align 8
  store i64 %25, i64* %10, align 8
  %26 = load i32, i32* @IXGBE_ERROR_ARGUMENT, align 4
  %27 = call i32 @ERROR_REPORT1(i32 %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %78

28:                                               ; preds = %4
  %29 = load i64, i64* %6, align 8
  %30 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %31 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sge i64 %29, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load i64, i64* @IXGBE_ERR_EEPROM, align 8
  store i64 %36, i64* %10, align 8
  %37 = load i32, i32* @IXGBE_ERROR_ARGUMENT, align 4
  %38 = call i32 @ERROR_REPORT1(i32 %37, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %78

39:                                               ; preds = %28
  store i64 0, i64* %11, align 8
  br label %40

40:                                               ; preds = %74, %39
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* %7, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %77

44:                                               ; preds = %40
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* %11, align 8
  %47 = add nsw i64 %45, %46
  %48 = load i64, i64* @IXGBE_EEPROM_RW_ADDR_SHIFT, align 8
  %49 = shl i64 %47, %48
  %50 = load i64, i64* @IXGBE_EEPROM_RW_REG_START, align 8
  %51 = or i64 %49, %50
  store i64 %51, i64* %9, align 8
  %52 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %53 = load i32, i32* @IXGBE_EERD, align 4
  %54 = load i64, i64* %9, align 8
  %55 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %52, i32 %53, i64 %54)
  %56 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %57 = load i32, i32* @IXGBE_NVM_POLL_READ, align 4
  %58 = call i64 @ixgbe_poll_eerd_eewr_done(%struct.ixgbe_hw* %56, i32 %57)
  store i64 %58, i64* %10, align 8
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* @IXGBE_SUCCESS, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %44
  %63 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %64 = load i32, i32* @IXGBE_EERD, align 4
  %65 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %63, i32 %64)
  %66 = load i64, i64* @IXGBE_EEPROM_RW_REG_DATA, align 8
  %67 = ashr i64 %65, %66
  %68 = load i64*, i64** %8, align 8
  %69 = load i64, i64* %11, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  store i64 %67, i64* %70, align 8
  br label %73

71:                                               ; preds = %44
  %72 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %78

73:                                               ; preds = %62
  br label %74

74:                                               ; preds = %73
  %75 = load i64, i64* %11, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %11, align 8
  br label %40

77:                                               ; preds = %40
  br label %78

78:                                               ; preds = %77, %71, %35, %24
  %79 = load i64, i64* %10, align 8
  ret i64 %79
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @ERROR_REPORT1(i32, i8*) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i64) #1

declare dso_local i64 @ixgbe_poll_eerd_eewr_done(%struct.ixgbe_hw*, i32) #1

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
