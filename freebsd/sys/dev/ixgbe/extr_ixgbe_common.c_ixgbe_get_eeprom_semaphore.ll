; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_get_eeprom_semaphore.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_get_eeprom_semaphore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@IXGBE_ERR_EEPROM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"ixgbe_get_eeprom_semaphore\00", align 1
@IXGBE_SWSM_SMBI = common dso_local global i64 0, align 8
@IXGBE_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [62 x i8] c"Driver can't access the Eeprom - SMBI Semaphore not granted.\0A\00", align 1
@IXGBE_SWSM_SWESMBI = common dso_local global i64 0, align 8
@IXGBE_ERROR_POLLING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"SWESMBI Software EEPROM semaphore not granted.\0A\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"Software semaphore SMBI between device drivers not granted.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*)* @ixgbe_get_eeprom_semaphore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_get_eeprom_semaphore(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %7 = load i64, i64* @IXGBE_ERR_EEPROM, align 8
  store i64 %7, i64* %3, align 8
  store i64 2000, i64* %4, align 8
  %8 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
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
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* %4, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %29
  %34 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %36 = call i32 @ixgbe_release_eeprom_semaphore(%struct.ixgbe_hw* %35)
  %37 = call i32 @usec_delay(i32 50)
  %38 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %39 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %40 = call i32 @IXGBE_SWSM_BY_MAC(%struct.ixgbe_hw* %39)
  %41 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %38, i32 %40)
  store i64 %41, i64* %6, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* @IXGBE_SWSM_SMBI, align 8
  %44 = and i64 %42, %43
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %33
  %47 = load i64, i64* @IXGBE_SUCCESS, align 8
  store i64 %47, i64* %3, align 8
  br label %48

48:                                               ; preds = %46, %33
  br label %49

49:                                               ; preds = %48, %29
  %50 = load i64, i64* %3, align 8
  %51 = load i64, i64* @IXGBE_SUCCESS, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %96

53:                                               ; preds = %49
  store i64 0, i64* %5, align 8
  br label %54

54:                                               ; preds = %82, %53
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* %4, align 8
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %58, label %85

58:                                               ; preds = %54
  %59 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %60 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %61 = call i32 @IXGBE_SWSM_BY_MAC(%struct.ixgbe_hw* %60)
  %62 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %59, i32 %61)
  store i64 %62, i64* %6, align 8
  %63 = load i64, i64* @IXGBE_SWSM_SWESMBI, align 8
  %64 = load i64, i64* %6, align 8
  %65 = or i64 %64, %63
  store i64 %65, i64* %6, align 8
  %66 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %67 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %68 = call i32 @IXGBE_SWSM_BY_MAC(%struct.ixgbe_hw* %67)
  %69 = load i64, i64* %6, align 8
  %70 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %66, i32 %68, i64 %69)
  %71 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %72 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %73 = call i32 @IXGBE_SWSM_BY_MAC(%struct.ixgbe_hw* %72)
  %74 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %71, i32 %73)
  store i64 %74, i64* %6, align 8
  %75 = load i64, i64* %6, align 8
  %76 = load i64, i64* @IXGBE_SWSM_SWESMBI, align 8
  %77 = and i64 %75, %76
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %58
  br label %85

80:                                               ; preds = %58
  %81 = call i32 @usec_delay(i32 50)
  br label %82

82:                                               ; preds = %80
  %83 = load i64, i64* %5, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %5, align 8
  br label %54

85:                                               ; preds = %79, %54
  %86 = load i64, i64* %5, align 8
  %87 = load i64, i64* %4, align 8
  %88 = icmp sge i64 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %85
  %90 = load i32, i32* @IXGBE_ERROR_POLLING, align 4
  %91 = call i32 @ERROR_REPORT1(i32 %90, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %92 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %93 = call i32 @ixgbe_release_eeprom_semaphore(%struct.ixgbe_hw* %92)
  %94 = load i64, i64* @IXGBE_ERR_EEPROM, align 8
  store i64 %94, i64* %3, align 8
  br label %95

95:                                               ; preds = %89, %85
  br label %99

96:                                               ; preds = %49
  %97 = load i32, i32* @IXGBE_ERROR_POLLING, align 4
  %98 = call i32 @ERROR_REPORT1(i32 %97, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0))
  br label %99

99:                                               ; preds = %96, %95
  %100 = load i64, i64* %3, align 8
  ret i64 %100
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_SWSM_BY_MAC(%struct.ixgbe_hw*) #1

declare dso_local i32 @usec_delay(i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @ixgbe_release_eeprom_semaphore(%struct.ixgbe_hw*) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i64) #1

declare dso_local i32 @ERROR_REPORT1(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
