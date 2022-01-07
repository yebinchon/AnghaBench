; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_calc_eeprom_checksum_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_calc_eeprom_checksum_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.ixgbe_hw.0*, i64, i64*)* }
%struct.ixgbe_hw.0 = type opaque

@.str = private unnamed_addr constant [35 x i8] c"ixgbe_calc_eeprom_checksum_generic\00", align 1
@IXGBE_EEPROM_CHECKSUM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"EEPROM read failed\0A\00", align 1
@IXGBE_ERR_EEPROM = common dso_local global i32 0, align 4
@IXGBE_PCIE_ANALOG_PTR = common dso_local global i64 0, align 8
@IXGBE_FW_PTR = common dso_local global i64 0, align 8
@IXGBE_EEPROM_SUM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_calc_eeprom_checksum_generic(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %10 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %11

11:                                               ; preds = %33, %1
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @IXGBE_EEPROM_CHECKSUM, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %11
  %16 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %17 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64 (%struct.ixgbe_hw.0*, i64, i64*)*, i64 (%struct.ixgbe_hw.0*, i64, i64*)** %19, align 8
  %21 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %22 = bitcast %struct.ixgbe_hw* %21 to %struct.ixgbe_hw.0*
  %23 = load i64, i64* %4, align 8
  %24 = call i64 %20(%struct.ixgbe_hw.0* %22, i64 %23, i64* %9)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %15
  %27 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @IXGBE_ERR_EEPROM, align 4
  store i32 %28, i32* %2, align 4
  br label %124

29:                                               ; preds = %15
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* %6, align 8
  %32 = add nsw i64 %31, %30
  store i64 %32, i64* %6, align 8
  br label %33

33:                                               ; preds = %29
  %34 = load i64, i64* %4, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %4, align 8
  br label %11

36:                                               ; preds = %11
  %37 = load i64, i64* @IXGBE_PCIE_ANALOG_PTR, align 8
  store i64 %37, i64* %4, align 8
  br label %38

38:                                               ; preds = %115, %36
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* @IXGBE_FW_PTR, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %118

42:                                               ; preds = %38
  %43 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %44 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64 (%struct.ixgbe_hw.0*, i64, i64*)*, i64 (%struct.ixgbe_hw.0*, i64, i64*)** %46, align 8
  %48 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %49 = bitcast %struct.ixgbe_hw* %48 to %struct.ixgbe_hw.0*
  %50 = load i64, i64* %4, align 8
  %51 = call i64 %47(%struct.ixgbe_hw.0* %49, i64 %50, i64* %8)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %42
  %54 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @IXGBE_ERR_EEPROM, align 4
  store i32 %55, i32* %2, align 4
  br label %124

56:                                               ; preds = %42
  %57 = load i64, i64* %8, align 8
  %58 = icmp eq i64 %57, 65535
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load i64, i64* %8, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59, %56
  br label %115

63:                                               ; preds = %59
  %64 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %65 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i64 (%struct.ixgbe_hw.0*, i64, i64*)*, i64 (%struct.ixgbe_hw.0*, i64, i64*)** %67, align 8
  %69 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %70 = bitcast %struct.ixgbe_hw* %69 to %struct.ixgbe_hw.0*
  %71 = load i64, i64* %8, align 8
  %72 = call i64 %68(%struct.ixgbe_hw.0* %70, i64 %71, i64* %7)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %63
  %75 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i32, i32* @IXGBE_ERR_EEPROM, align 4
  store i32 %76, i32* %2, align 4
  br label %124

77:                                               ; preds = %63
  %78 = load i64, i64* %7, align 8
  %79 = icmp eq i64 %78, 65535
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = load i64, i64* %7, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %80, %77
  br label %115

84:                                               ; preds = %80
  %85 = load i64, i64* %8, align 8
  %86 = add nsw i64 %85, 1
  store i64 %86, i64* %5, align 8
  br label %87

87:                                               ; preds = %111, %84
  %88 = load i64, i64* %5, align 8
  %89 = load i64, i64* %8, align 8
  %90 = load i64, i64* %7, align 8
  %91 = add nsw i64 %89, %90
  %92 = icmp sle i64 %88, %91
  br i1 %92, label %93, label %114

93:                                               ; preds = %87
  %94 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %95 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i64 (%struct.ixgbe_hw.0*, i64, i64*)*, i64 (%struct.ixgbe_hw.0*, i64, i64*)** %97, align 8
  %99 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %100 = bitcast %struct.ixgbe_hw* %99 to %struct.ixgbe_hw.0*
  %101 = load i64, i64* %5, align 8
  %102 = call i64 %98(%struct.ixgbe_hw.0* %100, i64 %101, i64* %9)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %93
  %105 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %106 = load i32, i32* @IXGBE_ERR_EEPROM, align 4
  store i32 %106, i32* %2, align 4
  br label %124

107:                                              ; preds = %93
  %108 = load i64, i64* %9, align 8
  %109 = load i64, i64* %6, align 8
  %110 = add nsw i64 %109, %108
  store i64 %110, i64* %6, align 8
  br label %111

111:                                              ; preds = %107
  %112 = load i64, i64* %5, align 8
  %113 = add nsw i64 %112, 1
  store i64 %113, i64* %5, align 8
  br label %87

114:                                              ; preds = %87
  br label %115

115:                                              ; preds = %114, %83, %62
  %116 = load i64, i64* %4, align 8
  %117 = add nsw i64 %116, 1
  store i64 %117, i64* %4, align 8
  br label %38

118:                                              ; preds = %38
  %119 = load i64, i64* @IXGBE_EEPROM_SUM, align 8
  %120 = load i64, i64* %6, align 8
  %121 = sub nsw i64 %119, %120
  store i64 %121, i64* %6, align 8
  %122 = load i64, i64* %6, align 8
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %2, align 4
  br label %124

124:                                              ; preds = %118, %104, %74, %53, %26
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
