; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_write_i2c_byte_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_write_i2c_byte_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.e1000_hw.0*, i32)*, i32 (%struct.e1000_hw.1*, i32)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@E1000_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"e1000_write_i2c_byte_generic\00", align 1
@E1000_SWFW_PHY0_SM = common dso_local global i32 0, align 4
@E1000_ERR_SWFW_SYNC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"I2C byte write error - Retrying.\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"I2C byte write error.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_write_i2c_byte_generic(%struct.e1000_hw* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %13, i64* %9, align 8
  store i64 1, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %14 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @E1000_SWFW_PHY0_SM, align 4
  store i32 %15, i32* %12, align 4
  %16 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %17 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64 (%struct.e1000_hw.0*, i32)*, i64 (%struct.e1000_hw.0*, i32)** %19, align 8
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %22 = bitcast %struct.e1000_hw* %21 to %struct.e1000_hw.0*
  %23 = load i32, i32* %12, align 4
  %24 = call i64 %20(%struct.e1000_hw.0* %22, i32 %23)
  %25 = load i64, i64* @E1000_SUCCESS, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i64, i64* @E1000_ERR_SWFW_SYNC, align 8
  store i64 %28, i64* %9, align 8
  br label %107

29:                                               ; preds = %4
  br label %30

30:                                               ; preds = %93, %29
  %31 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %32 = call i32 @e1000_i2c_start(%struct.e1000_hw* %31)
  %33 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i64 @e1000_clock_out_i2c_byte(%struct.e1000_hw* %33, i32 %34)
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* @E1000_SUCCESS, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %80

40:                                               ; preds = %30
  %41 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %42 = call i64 @e1000_get_i2c_ack(%struct.e1000_hw* %41)
  store i64 %42, i64* %9, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* @E1000_SUCCESS, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %80

47:                                               ; preds = %40
  %48 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i64 @e1000_clock_out_i2c_byte(%struct.e1000_hw* %48, i32 %49)
  store i64 %50, i64* %9, align 8
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* @E1000_SUCCESS, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %80

55:                                               ; preds = %47
  %56 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %57 = call i64 @e1000_get_i2c_ack(%struct.e1000_hw* %56)
  store i64 %57, i64* %9, align 8
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* @E1000_SUCCESS, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %80

62:                                               ; preds = %55
  %63 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i64 @e1000_clock_out_i2c_byte(%struct.e1000_hw* %63, i32 %64)
  store i64 %65, i64* %9, align 8
  %66 = load i64, i64* %9, align 8
  %67 = load i64, i64* @E1000_SUCCESS, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %80

70:                                               ; preds = %62
  %71 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %72 = call i64 @e1000_get_i2c_ack(%struct.e1000_hw* %71)
  store i64 %72, i64* %9, align 8
  %73 = load i64, i64* %9, align 8
  %74 = load i64, i64* @E1000_SUCCESS, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %80

77:                                               ; preds = %70
  %78 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %79 = call i32 @e1000_i2c_stop(%struct.e1000_hw* %78)
  br label %97

80:                                               ; preds = %76, %69, %61, %54, %46, %39
  %81 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %82 = call i32 @e1000_i2c_bus_clear(%struct.e1000_hw* %81)
  %83 = load i64, i64* %11, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %11, align 8
  %85 = load i64, i64* %11, align 8
  %86 = load i64, i64* %10, align 8
  %87 = icmp slt i64 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %80
  %89 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %92

90:                                               ; preds = %80
  %91 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %88
  br label %93

93:                                               ; preds = %92
  %94 = load i64, i64* %11, align 8
  %95 = load i64, i64* %10, align 8
  %96 = icmp slt i64 %94, %95
  br i1 %96, label %30, label %97

97:                                               ; preds = %93, %77
  %98 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %99 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  %102 = load i32 (%struct.e1000_hw.1*, i32)*, i32 (%struct.e1000_hw.1*, i32)** %101, align 8
  %103 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %104 = bitcast %struct.e1000_hw* %103 to %struct.e1000_hw.1*
  %105 = load i32, i32* %12, align 4
  %106 = call i32 %102(%struct.e1000_hw.1* %104, i32 %105)
  br label %107

107:                                              ; preds = %97, %27
  %108 = load i64, i64* %9, align 8
  ret i64 %108
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @e1000_i2c_start(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_clock_out_i2c_byte(%struct.e1000_hw*, i32) #1

declare dso_local i64 @e1000_get_i2c_ack(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_i2c_stop(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_i2c_bus_clear(%struct.e1000_hw*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
