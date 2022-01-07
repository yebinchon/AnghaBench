; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_acquire_eeprom.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_acquire_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.ixgbe_hw.0*, i32)*, i32 (%struct.ixgbe_hw.1*, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque

@IXGBE_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"ixgbe_acquire_eeprom\00", align 1
@IXGBE_GSSR_EEP_SM = common dso_local global i32 0, align 4
@IXGBE_ERR_SWFW_SYNC = common dso_local global i64 0, align 8
@IXGBE_EEC_REQ = common dso_local global i64 0, align 8
@IXGBE_EEPROM_GRANT_ATTEMPTS = common dso_local global i64 0, align 8
@IXGBE_EEC_GNT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Could not acquire EEPROM grant\0A\00", align 1
@IXGBE_ERR_EEPROM = common dso_local global i64 0, align 8
@IXGBE_EEC_CS = common dso_local global i64 0, align 8
@IXGBE_EEC_SK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*)* @ixgbe_acquire_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_acquire_eeprom(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %6 = load i64, i64* @IXGBE_SUCCESS, align 8
  store i64 %6, i64* %3, align 8
  %7 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %9 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64 (%struct.ixgbe_hw.0*, i32)*, i64 (%struct.ixgbe_hw.0*, i32)** %11, align 8
  %13 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %14 = bitcast %struct.ixgbe_hw* %13 to %struct.ixgbe_hw.0*
  %15 = load i32, i32* @IXGBE_GSSR_EEP_SM, align 4
  %16 = call i64 %12(%struct.ixgbe_hw.0* %14, i32 %15)
  %17 = load i64, i64* @IXGBE_SUCCESS, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i64, i64* @IXGBE_ERR_SWFW_SYNC, align 8
  store i64 %20, i64* %3, align 8
  br label %21

21:                                               ; preds = %19, %1
  %22 = load i64, i64* %3, align 8
  %23 = load i64, i64* @IXGBE_SUCCESS, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %103

25:                                               ; preds = %21
  %26 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %27 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %28 = call i32 @IXGBE_EEC_BY_MAC(%struct.ixgbe_hw* %27)
  %29 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %26, i32 %28)
  store i64 %29, i64* %4, align 8
  %30 = load i64, i64* @IXGBE_EEC_REQ, align 8
  %31 = load i64, i64* %4, align 8
  %32 = or i64 %31, %30
  store i64 %32, i64* %4, align 8
  %33 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %34 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %35 = call i32 @IXGBE_EEC_BY_MAC(%struct.ixgbe_hw* %34)
  %36 = load i64, i64* %4, align 8
  %37 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %33, i32 %35, i64 %36)
  store i64 0, i64* %5, align 8
  br label %38

38:                                               ; preds = %54, %25
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @IXGBE_EEPROM_GRANT_ATTEMPTS, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %38
  %43 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %44 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %45 = call i32 @IXGBE_EEC_BY_MAC(%struct.ixgbe_hw* %44)
  %46 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %43, i32 %45)
  store i64 %46, i64* %4, align 8
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* @IXGBE_EEC_GNT, align 8
  %49 = and i64 %47, %48
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  br label %57

52:                                               ; preds = %42
  %53 = call i32 @usec_delay(i32 5)
  br label %54

54:                                               ; preds = %52
  %55 = load i64, i64* %5, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %5, align 8
  br label %38

57:                                               ; preds = %51, %38
  %58 = load i64, i64* %4, align 8
  %59 = load i64, i64* @IXGBE_EEC_GNT, align 8
  %60 = and i64 %58, %59
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %83, label %62

62:                                               ; preds = %57
  %63 = load i64, i64* @IXGBE_EEC_REQ, align 8
  %64 = xor i64 %63, -1
  %65 = load i64, i64* %4, align 8
  %66 = and i64 %65, %64
  store i64 %66, i64* %4, align 8
  %67 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %68 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %69 = call i32 @IXGBE_EEC_BY_MAC(%struct.ixgbe_hw* %68)
  %70 = load i64, i64* %4, align 8
  %71 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %67, i32 %69, i64 %70)
  %72 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %73 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %74 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i32 (%struct.ixgbe_hw.1*, i32)*, i32 (%struct.ixgbe_hw.1*, i32)** %76, align 8
  %78 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %79 = bitcast %struct.ixgbe_hw* %78 to %struct.ixgbe_hw.1*
  %80 = load i32, i32* @IXGBE_GSSR_EEP_SM, align 4
  %81 = call i32 %77(%struct.ixgbe_hw.1* %79, i32 %80)
  %82 = load i64, i64* @IXGBE_ERR_EEPROM, align 8
  store i64 %82, i64* %3, align 8
  br label %83

83:                                               ; preds = %62, %57
  %84 = load i64, i64* %3, align 8
  %85 = load i64, i64* @IXGBE_SUCCESS, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %102

87:                                               ; preds = %83
  %88 = load i64, i64* @IXGBE_EEC_CS, align 8
  %89 = load i64, i64* @IXGBE_EEC_SK, align 8
  %90 = or i64 %88, %89
  %91 = xor i64 %90, -1
  %92 = load i64, i64* %4, align 8
  %93 = and i64 %92, %91
  store i64 %93, i64* %4, align 8
  %94 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %95 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %96 = call i32 @IXGBE_EEC_BY_MAC(%struct.ixgbe_hw* %95)
  %97 = load i64, i64* %4, align 8
  %98 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %94, i32 %96, i64 %97)
  %99 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %100 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %99)
  %101 = call i32 @usec_delay(i32 1)
  br label %102

102:                                              ; preds = %87, %83
  br label %103

103:                                              ; preds = %102, %21
  %104 = load i64, i64* %3, align 8
  ret i64 %104
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_EEC_BY_MAC(%struct.ixgbe_hw*) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i64) #1

declare dso_local i32 @usec_delay(i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
