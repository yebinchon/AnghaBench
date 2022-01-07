; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_set_soft_rate_select_speed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_set_soft_rate_select_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i64 (%struct.ixgbe_hw.1*, i32, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque

@IXGBE_SFF_SOFT_RS_SELECT_10G = common dso_local global i32 0, align 4
@IXGBE_SFF_SOFT_RS_SELECT_1G = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Invalid fixed module speed\0A\00", align 1
@IXGBE_SFF_SFF_8472_OSCB = common dso_local global i32 0, align 4
@IXGBE_I2C_EEPROM_DEV_ADDR2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to read Rx Rate Select RS0\0A\00", align 1
@IXGBE_SFF_SOFT_RS_SELECT_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Failed to write Rx Rate Select RS0\0A\00", align 1
@IXGBE_SFF_SFF_8472_ESCB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Failed to read Rx Rate Select RS1\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Failed to write Rx Rate Select RS1\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_set_soft_rate_select_speed(%struct.ixgbe_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %13 [
    i32 129, label %9
    i32 128, label %11
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* @IXGBE_SFF_SOFT_RS_SELECT_10G, align 4
  store i32 %10, i32* %6, align 4
  br label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @IXGBE_SFF_SOFT_RS_SELECT_1G, align 4
  store i32 %12, i32* %6, align 4
  br label %15

13:                                               ; preds = %2
  %14 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %91

15:                                               ; preds = %11, %9
  %16 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %17 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i64 (%struct.ixgbe_hw.1*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.1*, i32, i32, i32*)** %19, align 8
  %21 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %22 = bitcast %struct.ixgbe_hw* %21 to %struct.ixgbe_hw.1*
  %23 = load i32, i32* @IXGBE_SFF_SFF_8472_OSCB, align 4
  %24 = load i32, i32* @IXGBE_I2C_EEPROM_DEV_ADDR2, align 4
  %25 = call i64 %20(%struct.ixgbe_hw.1* %22, i32 %23, i32 %24, i32* %7)
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %15
  %29 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %90

30:                                               ; preds = %15
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @IXGBE_SFF_SOFT_RS_SELECT_MASK, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %7, align 4
  %37 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %38 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32)** %40, align 8
  %42 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %43 = bitcast %struct.ixgbe_hw* %42 to %struct.ixgbe_hw.0*
  %44 = load i32, i32* @IXGBE_SFF_SFF_8472_OSCB, align 4
  %45 = load i32, i32* @IXGBE_I2C_EEPROM_DEV_ADDR2, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i64 %41(%struct.ixgbe_hw.0* %43, i32 %44, i32 %45, i32 %46)
  store i64 %47, i64* %5, align 8
  %48 = load i64, i64* %5, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %30
  %51 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %90

52:                                               ; preds = %30
  %53 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %54 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i64 (%struct.ixgbe_hw.1*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.1*, i32, i32, i32*)** %56, align 8
  %58 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %59 = bitcast %struct.ixgbe_hw* %58 to %struct.ixgbe_hw.1*
  %60 = load i32, i32* @IXGBE_SFF_SFF_8472_ESCB, align 4
  %61 = load i32, i32* @IXGBE_I2C_EEPROM_DEV_ADDR2, align 4
  %62 = call i64 %57(%struct.ixgbe_hw.1* %59, i32 %60, i32 %61, i32* %7)
  store i64 %62, i64* %5, align 8
  %63 = load i64, i64* %5, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %52
  %66 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %90

67:                                               ; preds = %52
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @IXGBE_SFF_SOFT_RS_SELECT_MASK, align 4
  %70 = xor i32 %69, -1
  %71 = and i32 %68, %70
  %72 = load i32, i32* %6, align 4
  %73 = or i32 %71, %72
  store i32 %73, i32* %7, align 4
  %74 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %75 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32)** %77, align 8
  %79 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %80 = bitcast %struct.ixgbe_hw* %79 to %struct.ixgbe_hw.0*
  %81 = load i32, i32* @IXGBE_SFF_SFF_8472_ESCB, align 4
  %82 = load i32, i32* @IXGBE_I2C_EEPROM_DEV_ADDR2, align 4
  %83 = load i32, i32* %7, align 4
  %84 = call i64 %78(%struct.ixgbe_hw.0* %80, i32 %81, i32 %82, i32 %83)
  store i64 %84, i64* %5, align 8
  %85 = load i64, i64* %5, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %67
  %88 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %90

89:                                               ; preds = %67
  br label %90

90:                                               ; preds = %89, %87, %65, %50, %28
  br label %91

91:                                               ; preds = %90, %13
  ret void
}

declare dso_local i32 @DEBUGOUT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
