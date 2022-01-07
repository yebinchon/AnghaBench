; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_reset_cs4227.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_reset_cs4227.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@IXGBE_PE_OUTPUT = common dso_local global i32 0, align 4
@IXGBE_SUCCESS = common dso_local global i64 0, align 8
@IXGBE_PE_BIT1 = common dso_local global i32 0, align 4
@IXGBE_PE_CONFIG = common dso_local global i32 0, align 4
@IXGBE_CS4227_RESET_HOLD = common dso_local global i32 0, align 4
@IXGBE_CS4227_RESET_DELAY = common dso_local global i32 0, align 4
@IXGBE_CS4227_RETRIES = common dso_local global i64 0, align 8
@IXGBE_CS4227_EFUSE_STATUS = common dso_local global i32 0, align 4
@IXGBE_CS4227_EEPROM_LOAD_OK = common dso_local global i32 0, align 4
@IXGBE_CS4227_CHECK_DELAY = common dso_local global i32 0, align 4
@IXGBE_ERROR_INVALID_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"CS4227 reset did not complete.\00", align 1
@IXGBE_ERR_PHY = common dso_local global i64 0, align 8
@IXGBE_CS4227_EEPROM_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"CS4227 EEPROM did not load successfully.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*)* @ixgbe_reset_cs4227 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_reset_cs4227(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  %8 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %9 = load i32, i32* @IXGBE_PE_OUTPUT, align 4
  %10 = call i64 @ixgbe_read_pe(%struct.ixgbe_hw* %8, i32 %9, i32* %7)
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @IXGBE_SUCCESS, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i64, i64* %4, align 8
  store i64 %15, i64* %2, align 8
  br label %150

16:                                               ; preds = %1
  %17 = load i32, i32* @IXGBE_PE_BIT1, align 4
  %18 = load i32, i32* %7, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %7, align 4
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %21 = load i32, i32* @IXGBE_PE_OUTPUT, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @ixgbe_write_pe(%struct.ixgbe_hw* %20, i32 %21, i32 %22)
  store i64 %23, i64* %4, align 8
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @IXGBE_SUCCESS, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %16
  %28 = load i64, i64* %4, align 8
  store i64 %28, i64* %2, align 8
  br label %150

29:                                               ; preds = %16
  %30 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %31 = load i32, i32* @IXGBE_PE_CONFIG, align 4
  %32 = call i64 @ixgbe_read_pe(%struct.ixgbe_hw* %30, i32 %31, i32* %7)
  store i64 %32, i64* %4, align 8
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @IXGBE_SUCCESS, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i64, i64* %4, align 8
  store i64 %37, i64* %2, align 8
  br label %150

38:                                               ; preds = %29
  %39 = load i32, i32* @IXGBE_PE_BIT1, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %7, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %7, align 4
  %43 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %44 = load i32, i32* @IXGBE_PE_CONFIG, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i64 @ixgbe_write_pe(%struct.ixgbe_hw* %43, i32 %44, i32 %45)
  store i64 %46, i64* %4, align 8
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* @IXGBE_SUCCESS, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %38
  %51 = load i64, i64* %4, align 8
  store i64 %51, i64* %2, align 8
  br label %150

52:                                               ; preds = %38
  %53 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %54 = load i32, i32* @IXGBE_PE_OUTPUT, align 4
  %55 = call i64 @ixgbe_read_pe(%struct.ixgbe_hw* %53, i32 %54, i32* %7)
  store i64 %55, i64* %4, align 8
  %56 = load i64, i64* %4, align 8
  %57 = load i64, i64* @IXGBE_SUCCESS, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i64, i64* %4, align 8
  store i64 %60, i64* %2, align 8
  br label %150

61:                                               ; preds = %52
  %62 = load i32, i32* @IXGBE_PE_BIT1, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %7, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %7, align 4
  %66 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %67 = load i32, i32* @IXGBE_PE_OUTPUT, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i64 @ixgbe_write_pe(%struct.ixgbe_hw* %66, i32 %67, i32 %68)
  store i64 %69, i64* %4, align 8
  %70 = load i64, i64* %4, align 8
  %71 = load i64, i64* @IXGBE_SUCCESS, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %61
  %74 = load i64, i64* %4, align 8
  store i64 %74, i64* %2, align 8
  br label %150

75:                                               ; preds = %61
  %76 = load i32, i32* @IXGBE_CS4227_RESET_HOLD, align 4
  %77 = call i32 @usec_delay(i32 %76)
  %78 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %79 = load i32, i32* @IXGBE_PE_OUTPUT, align 4
  %80 = call i64 @ixgbe_read_pe(%struct.ixgbe_hw* %78, i32 %79, i32* %7)
  store i64 %80, i64* %4, align 8
  %81 = load i64, i64* %4, align 8
  %82 = load i64, i64* @IXGBE_SUCCESS, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %75
  %85 = load i64, i64* %4, align 8
  store i64 %85, i64* %2, align 8
  br label %150

86:                                               ; preds = %75
  %87 = load i32, i32* @IXGBE_PE_BIT1, align 4
  %88 = load i32, i32* %7, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %7, align 4
  %90 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %91 = load i32, i32* @IXGBE_PE_OUTPUT, align 4
  %92 = load i32, i32* %7, align 4
  %93 = call i64 @ixgbe_write_pe(%struct.ixgbe_hw* %90, i32 %91, i32 %92)
  store i64 %93, i64* %4, align 8
  %94 = load i64, i64* %4, align 8
  %95 = load i64, i64* @IXGBE_SUCCESS, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %86
  %98 = load i64, i64* %4, align 8
  store i64 %98, i64* %2, align 8
  br label %150

99:                                               ; preds = %86
  %100 = load i32, i32* @IXGBE_CS4227_RESET_DELAY, align 4
  %101 = call i32 @msec_delay(i32 %100)
  store i64 0, i64* %5, align 8
  br label %102

102:                                              ; preds = %121, %99
  %103 = load i64, i64* %5, align 8
  %104 = load i64, i64* @IXGBE_CS4227_RETRIES, align 8
  %105 = icmp slt i64 %103, %104
  br i1 %105, label %106, label %124

106:                                              ; preds = %102
  %107 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %108 = load i32, i32* @IXGBE_CS4227_EFUSE_STATUS, align 4
  %109 = call i64 @ixgbe_read_cs4227(%struct.ixgbe_hw* %107, i32 %108, i32* %6)
  store i64 %109, i64* %4, align 8
  %110 = load i64, i64* %4, align 8
  %111 = load i64, i64* @IXGBE_SUCCESS, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %106
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* @IXGBE_CS4227_EEPROM_LOAD_OK, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  br label %124

118:                                              ; preds = %113, %106
  %119 = load i32, i32* @IXGBE_CS4227_CHECK_DELAY, align 4
  %120 = call i32 @msec_delay(i32 %119)
  br label %121

121:                                              ; preds = %118
  %122 = load i64, i64* %5, align 8
  %123 = add nsw i64 %122, 1
  store i64 %123, i64* %5, align 8
  br label %102

124:                                              ; preds = %117, %102
  %125 = load i64, i64* %5, align 8
  %126 = load i64, i64* @IXGBE_CS4227_RETRIES, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %124
  %129 = load i32, i32* @IXGBE_ERROR_INVALID_STATE, align 4
  %130 = call i32 @ERROR_REPORT1(i32 %129, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %131 = load i64, i64* @IXGBE_ERR_PHY, align 8
  store i64 %131, i64* %2, align 8
  br label %150

132:                                              ; preds = %124
  %133 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %134 = load i32, i32* @IXGBE_CS4227_EEPROM_STATUS, align 4
  %135 = call i64 @ixgbe_read_cs4227(%struct.ixgbe_hw* %133, i32 %134, i32* %6)
  store i64 %135, i64* %4, align 8
  %136 = load i64, i64* %4, align 8
  %137 = load i64, i64* @IXGBE_SUCCESS, align 8
  %138 = icmp ne i64 %136, %137
  br i1 %138, label %144, label %139

139:                                              ; preds = %132
  %140 = load i32, i32* %6, align 4
  %141 = load i32, i32* @IXGBE_CS4227_EEPROM_LOAD_OK, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %148, label %144

144:                                              ; preds = %139, %132
  %145 = load i32, i32* @IXGBE_ERROR_INVALID_STATE, align 4
  %146 = call i32 @ERROR_REPORT1(i32 %145, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %147 = load i64, i64* @IXGBE_ERR_PHY, align 8
  store i64 %147, i64* %2, align 8
  br label %150

148:                                              ; preds = %139
  %149 = load i64, i64* @IXGBE_SUCCESS, align 8
  store i64 %149, i64* %2, align 8
  br label %150

150:                                              ; preds = %148, %144, %128, %97, %84, %73, %59, %50, %36, %27, %14
  %151 = load i64, i64* %2, align 8
  ret i64 %151
}

declare dso_local i64 @ixgbe_read_pe(%struct.ixgbe_hw*, i32, i32*) #1

declare dso_local i64 @ixgbe_write_pe(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @usec_delay(i32) #1

declare dso_local i32 @msec_delay(i32) #1

declare dso_local i64 @ixgbe_read_cs4227(%struct.ixgbe_hw*, i32, i32*) #1

declare dso_local i32 @ERROR_REPORT1(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
