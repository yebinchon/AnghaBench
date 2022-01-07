; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x540.c_ixgbe_calc_eeprom_checksum_X540.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x540.c_ixgbe_calc_eeprom_checksum_X540.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@IXGBE_PCIE_ANALOG_PTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"ixgbe_calc_eeprom_checksum_X540\00", align 1
@IXGBE_EEPROM_CHECKSUM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"EEPROM read failed\0A\00", align 1
@IXGBE_ERR_EEPROM = common dso_local global i32 0, align 4
@IXGBE_FW_PTR = common dso_local global i64 0, align 8
@IXGBE_PHY_PTR = common dso_local global i64 0, align 8
@IXGBE_OPTION_ROM_PTR = common dso_local global i64 0, align 8
@IXGBE_EEPROM_SUM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_calc_eeprom_checksum_X540(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %11 = load i64, i64* @IXGBE_PCIE_ANALOG_PTR, align 8
  store i64 %11, i64* %10, align 8
  %12 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %13

13:                                               ; preds = %29, %1
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @IXGBE_EEPROM_CHECKSUM, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %13
  %18 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %19 = load i64, i64* %4, align 8
  %20 = call i64 @ixgbe_read_eerd_generic(%struct.ixgbe_hw* %18, i64 %19, i64* %9)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @IXGBE_ERR_EEPROM, align 4
  store i32 %24, i32* %2, align 4
  br label %127

25:                                               ; preds = %17
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* %6, align 8
  %28 = add nsw i64 %27, %26
  store i64 %28, i64* %6, align 8
  br label %29

29:                                               ; preds = %25
  %30 = load i64, i64* %4, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %4, align 8
  br label %13

32:                                               ; preds = %13
  %33 = load i64, i64* %10, align 8
  store i64 %33, i64* %4, align 8
  br label %34

34:                                               ; preds = %118, %32
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* @IXGBE_FW_PTR, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %121

38:                                               ; preds = %34
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* @IXGBE_PHY_PTR, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* @IXGBE_OPTION_ROM_PTR, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42, %38
  br label %118

47:                                               ; preds = %42
  %48 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %49 = load i64, i64* %4, align 8
  %50 = call i64 @ixgbe_read_eerd_generic(%struct.ixgbe_hw* %48, i64 %49, i64* %8)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* @IXGBE_ERR_EEPROM, align 4
  store i32 %54, i32* %2, align 4
  br label %127

55:                                               ; preds = %47
  %56 = load i64, i64* %8, align 8
  %57 = icmp eq i64 %56, 65535
  br i1 %57, label %68, label %58

58:                                               ; preds = %55
  %59 = load i64, i64* %8, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %58
  %62 = load i64, i64* %8, align 8
  %63 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %64 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp sge i64 %62, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %61, %58, %55
  br label %118

69:                                               ; preds = %61
  %70 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %71 = load i64, i64* %8, align 8
  %72 = call i64 @ixgbe_read_eerd_generic(%struct.ixgbe_hw* %70, i64 %71, i64* %7)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i32, i32* @IXGBE_ERR_EEPROM, align 4
  store i32 %76, i32* %2, align 4
  br label %127

77:                                               ; preds = %69
  %78 = load i64, i64* %7, align 8
  %79 = icmp eq i64 %78, 65535
  br i1 %79, label %92, label %80

80:                                               ; preds = %77
  %81 = load i64, i64* %7, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %92, label %83

83:                                               ; preds = %80
  %84 = load i64, i64* %8, align 8
  %85 = load i64, i64* %7, align 8
  %86 = add nsw i64 %84, %85
  %87 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %88 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp sge i64 %86, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %83, %80, %77
  br label %118

93:                                               ; preds = %83
  %94 = load i64, i64* %8, align 8
  %95 = add nsw i64 %94, 1
  store i64 %95, i64* %5, align 8
  br label %96

96:                                               ; preds = %114, %93
  %97 = load i64, i64* %5, align 8
  %98 = load i64, i64* %8, align 8
  %99 = load i64, i64* %7, align 8
  %100 = add nsw i64 %98, %99
  %101 = icmp sle i64 %97, %100
  br i1 %101, label %102, label %117

102:                                              ; preds = %96
  %103 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %104 = load i64, i64* %5, align 8
  %105 = call i64 @ixgbe_read_eerd_generic(%struct.ixgbe_hw* %103, i64 %104, i64* %9)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %109 = load i32, i32* @IXGBE_ERR_EEPROM, align 4
  store i32 %109, i32* %2, align 4
  br label %127

110:                                              ; preds = %102
  %111 = load i64, i64* %9, align 8
  %112 = load i64, i64* %6, align 8
  %113 = add nsw i64 %112, %111
  store i64 %113, i64* %6, align 8
  br label %114

114:                                              ; preds = %110
  %115 = load i64, i64* %5, align 8
  %116 = add nsw i64 %115, 1
  store i64 %116, i64* %5, align 8
  br label %96

117:                                              ; preds = %96
  br label %118

118:                                              ; preds = %117, %92, %68, %46
  %119 = load i64, i64* %4, align 8
  %120 = add nsw i64 %119, 1
  store i64 %120, i64* %4, align 8
  br label %34

121:                                              ; preds = %34
  %122 = load i64, i64* @IXGBE_EEPROM_SUM, align 8
  %123 = load i64, i64* %6, align 8
  %124 = sub nsw i64 %122, %123
  store i64 %124, i64* %6, align 8
  %125 = load i64, i64* %6, align 8
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %121, %107, %74, %52, %22
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @ixgbe_read_eerd_generic(%struct.ixgbe_hw*, i64, i64*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
