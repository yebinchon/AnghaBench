; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_read_i2c_byte_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_read_i2c_byte_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.e1000_hw.0*, i32)*, i32 (%struct.e1000_hw.1*, i32)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@E1000_SUCCESS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"e1000_read_i2c_byte_generic\00", align 1
@E1000_SWFW_PHY0_SM = common dso_local global i32 0, align 4
@E1000_ERR_SWFW_SYNC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"I2C byte read error - Retrying.\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"I2C byte read error.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_read_i2c_byte_generic(%struct.e1000_hw* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %14 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %14, i64* %9, align 8
  store i64 10, i64* %10, align 8
  store i64 1, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %15 = load i32, i32* @TRUE, align 4
  store i32 %15, i32* %13, align 4
  %16 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @E1000_SWFW_PHY0_SM, align 4
  store i32 %17, i32* %12, align 4
  br label %18

18:                                               ; preds = %124, %4
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %20 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64 (%struct.e1000_hw.0*, i32)*, i64 (%struct.e1000_hw.0*, i32)** %22, align 8
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %25 = bitcast %struct.e1000_hw* %24 to %struct.e1000_hw.0*
  %26 = load i32, i32* %12, align 4
  %27 = call i64 %23(%struct.e1000_hw.0* %25, i32 %26)
  %28 = load i64, i64* @E1000_SUCCESS, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %18
  %31 = load i64, i64* @E1000_ERR_SWFW_SYNC, align 8
  store i64 %31, i64* %9, align 8
  br label %138

32:                                               ; preds = %18
  %33 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %34 = call i32 @e1000_i2c_start(%struct.e1000_hw* %33)
  %35 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i64 @e1000_clock_out_i2c_byte(%struct.e1000_hw* %35, i32 %36)
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* @E1000_SUCCESS, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %101

42:                                               ; preds = %32
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %44 = call i64 @e1000_get_i2c_ack(%struct.e1000_hw* %43)
  store i64 %44, i64* %9, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* @E1000_SUCCESS, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %101

49:                                               ; preds = %42
  %50 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i64 @e1000_clock_out_i2c_byte(%struct.e1000_hw* %50, i32 %51)
  store i64 %52, i64* %9, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* @E1000_SUCCESS, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %101

57:                                               ; preds = %49
  %58 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %59 = call i64 @e1000_get_i2c_ack(%struct.e1000_hw* %58)
  store i64 %59, i64* %9, align 8
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* @E1000_SUCCESS, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %101

64:                                               ; preds = %57
  %65 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %66 = call i32 @e1000_i2c_start(%struct.e1000_hw* %65)
  %67 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %68 = load i32, i32* %7, align 4
  %69 = or i32 %68, 1
  %70 = call i64 @e1000_clock_out_i2c_byte(%struct.e1000_hw* %67, i32 %69)
  store i64 %70, i64* %9, align 8
  %71 = load i64, i64* %9, align 8
  %72 = load i64, i64* @E1000_SUCCESS, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  br label %101

75:                                               ; preds = %64
  %76 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %77 = call i64 @e1000_get_i2c_ack(%struct.e1000_hw* %76)
  store i64 %77, i64* %9, align 8
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* @E1000_SUCCESS, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %101

82:                                               ; preds = %75
  %83 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %84 = load i32*, i32** %8, align 8
  %85 = call i64 @e1000_clock_in_i2c_byte(%struct.e1000_hw* %83, i32* %84)
  store i64 %85, i64* %9, align 8
  %86 = load i64, i64* %9, align 8
  %87 = load i64, i64* @E1000_SUCCESS, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %101

90:                                               ; preds = %82
  %91 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %92 = load i32, i32* %13, align 4
  %93 = call i64 @e1000_clock_out_i2c_bit(%struct.e1000_hw* %91, i32 %92)
  store i64 %93, i64* %9, align 8
  %94 = load i64, i64* %9, align 8
  %95 = load i64, i64* @E1000_SUCCESS, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  br label %101

98:                                               ; preds = %90
  %99 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %100 = call i32 @e1000_i2c_stop(%struct.e1000_hw* %99)
  br label %128

101:                                              ; preds = %97, %89, %81, %74, %63, %56, %48, %41
  %102 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %103 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  %106 = load i32 (%struct.e1000_hw.1*, i32)*, i32 (%struct.e1000_hw.1*, i32)** %105, align 8
  %107 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %108 = bitcast %struct.e1000_hw* %107 to %struct.e1000_hw.1*
  %109 = load i32, i32* %12, align 4
  %110 = call i32 %106(%struct.e1000_hw.1* %108, i32 %109)
  %111 = call i32 @msec_delay(i32 100)
  %112 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %113 = call i32 @e1000_i2c_bus_clear(%struct.e1000_hw* %112)
  %114 = load i64, i64* %11, align 8
  %115 = add nsw i64 %114, 1
  store i64 %115, i64* %11, align 8
  %116 = load i64, i64* %11, align 8
  %117 = load i64, i64* %10, align 8
  %118 = icmp slt i64 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %101
  %120 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %123

121:                                              ; preds = %101
  %122 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %123

123:                                              ; preds = %121, %119
  br label %124

124:                                              ; preds = %123
  %125 = load i64, i64* %11, align 8
  %126 = load i64, i64* %10, align 8
  %127 = icmp slt i64 %125, %126
  br i1 %127, label %18, label %128

128:                                              ; preds = %124, %98
  %129 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %130 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 1
  %133 = load i32 (%struct.e1000_hw.1*, i32)*, i32 (%struct.e1000_hw.1*, i32)** %132, align 8
  %134 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %135 = bitcast %struct.e1000_hw* %134 to %struct.e1000_hw.1*
  %136 = load i32, i32* %12, align 4
  %137 = call i32 %133(%struct.e1000_hw.1* %135, i32 %136)
  br label %138

138:                                              ; preds = %128, %30
  %139 = load i64, i64* %9, align 8
  ret i64 %139
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @e1000_i2c_start(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_clock_out_i2c_byte(%struct.e1000_hw*, i32) #1

declare dso_local i64 @e1000_get_i2c_ack(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_clock_in_i2c_byte(%struct.e1000_hw*, i32*) #1

declare dso_local i64 @e1000_clock_out_i2c_bit(%struct.e1000_hw*, i32) #1

declare dso_local i32 @e1000_i2c_stop(%struct.e1000_hw*) #1

declare dso_local i32 @msec_delay(i32) #1

declare dso_local i32 @e1000_i2c_bus_clear(%struct.e1000_hw*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
