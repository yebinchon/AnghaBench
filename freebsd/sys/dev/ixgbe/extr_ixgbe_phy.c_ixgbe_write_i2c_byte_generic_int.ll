; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_phy.c_ixgbe_write_i2c_byte_generic_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_phy.c_ixgbe_write_i2c_byte_generic_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 (%struct.ixgbe_hw.0*, i64)*, i32 (%struct.ixgbe_hw.1*, i64)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [29 x i8] c"ixgbe_write_i2c_byte_generic\00", align 1
@IXGBE_SUCCESS = common dso_local global i64 0, align 8
@IXGBE_ERR_SWFW_SYNC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"I2C byte write error - Retrying.\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"I2C byte write error.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*, i32, i32, i32, i32)* @ixgbe_write_i2c_byte_generic_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_write_i2c_byte_generic_int(%struct.ixgbe_hw* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.ixgbe_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64 1, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %16 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %17 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %15, align 8
  %20 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %5
  %24 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %25 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64 (%struct.ixgbe_hw.0*, i64)*, i64 (%struct.ixgbe_hw.0*, i64)** %27, align 8
  %29 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %30 = bitcast %struct.ixgbe_hw* %29 to %struct.ixgbe_hw.0*
  %31 = load i64, i64* %15, align 8
  %32 = call i64 %28(%struct.ixgbe_hw.0* %30, i64 %31)
  %33 = load i64, i64* @IXGBE_SUCCESS, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %23
  %36 = load i64, i64* @IXGBE_ERR_SWFW_SYNC, align 8
  store i64 %36, i64* %6, align 8
  br label %134

37:                                               ; preds = %23, %5
  br label %38

38:                                               ; preds = %115, %37
  %39 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %40 = call i32 @ixgbe_i2c_start(%struct.ixgbe_hw* %39)
  %41 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i64 @ixgbe_clock_out_i2c_byte(%struct.ixgbe_hw* %41, i32 %42)
  store i64 %43, i64* %12, align 8
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* @IXGBE_SUCCESS, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %102

48:                                               ; preds = %38
  %49 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %50 = call i64 @ixgbe_get_i2c_ack(%struct.ixgbe_hw* %49)
  store i64 %50, i64* %12, align 8
  %51 = load i64, i64* %12, align 8
  %52 = load i64, i64* @IXGBE_SUCCESS, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %102

55:                                               ; preds = %48
  %56 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i64 @ixgbe_clock_out_i2c_byte(%struct.ixgbe_hw* %56, i32 %57)
  store i64 %58, i64* %12, align 8
  %59 = load i64, i64* %12, align 8
  %60 = load i64, i64* @IXGBE_SUCCESS, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %102

63:                                               ; preds = %55
  %64 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %65 = call i64 @ixgbe_get_i2c_ack(%struct.ixgbe_hw* %64)
  store i64 %65, i64* %12, align 8
  %66 = load i64, i64* %12, align 8
  %67 = load i64, i64* @IXGBE_SUCCESS, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %102

70:                                               ; preds = %63
  %71 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %72 = load i32, i32* %10, align 4
  %73 = call i64 @ixgbe_clock_out_i2c_byte(%struct.ixgbe_hw* %71, i32 %72)
  store i64 %73, i64* %12, align 8
  %74 = load i64, i64* %12, align 8
  %75 = load i64, i64* @IXGBE_SUCCESS, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  br label %102

78:                                               ; preds = %70
  %79 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %80 = call i64 @ixgbe_get_i2c_ack(%struct.ixgbe_hw* %79)
  store i64 %80, i64* %12, align 8
  %81 = load i64, i64* %12, align 8
  %82 = load i64, i64* @IXGBE_SUCCESS, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %102

85:                                               ; preds = %78
  %86 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %87 = call i32 @ixgbe_i2c_stop(%struct.ixgbe_hw* %86)
  %88 = load i32, i32* %11, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %85
  %91 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %92 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  %95 = load i32 (%struct.ixgbe_hw.1*, i64)*, i32 (%struct.ixgbe_hw.1*, i64)** %94, align 8
  %96 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %97 = bitcast %struct.ixgbe_hw* %96 to %struct.ixgbe_hw.1*
  %98 = load i64, i64* %15, align 8
  %99 = call i32 %95(%struct.ixgbe_hw.1* %97, i64 %98)
  br label %100

100:                                              ; preds = %90, %85
  %101 = load i64, i64* @IXGBE_SUCCESS, align 8
  store i64 %101, i64* %6, align 8
  br label %134

102:                                              ; preds = %84, %77, %69, %62, %54, %47
  %103 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %104 = call i32 @ixgbe_i2c_bus_clear(%struct.ixgbe_hw* %103)
  %105 = load i64, i64* %14, align 8
  %106 = add nsw i64 %105, 1
  store i64 %106, i64* %14, align 8
  %107 = load i64, i64* %14, align 8
  %108 = load i64, i64* %13, align 8
  %109 = icmp slt i64 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %102
  %111 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %114

112:                                              ; preds = %102
  %113 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %114

114:                                              ; preds = %112, %110
  br label %115

115:                                              ; preds = %114
  %116 = load i64, i64* %14, align 8
  %117 = load i64, i64* %13, align 8
  %118 = icmp slt i64 %116, %117
  br i1 %118, label %38, label %119

119:                                              ; preds = %115
  %120 = load i32, i32* %11, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %132

122:                                              ; preds = %119
  %123 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %124 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  %127 = load i32 (%struct.ixgbe_hw.1*, i64)*, i32 (%struct.ixgbe_hw.1*, i64)** %126, align 8
  %128 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %129 = bitcast %struct.ixgbe_hw* %128 to %struct.ixgbe_hw.1*
  %130 = load i64, i64* %15, align 8
  %131 = call i32 %127(%struct.ixgbe_hw.1* %129, i64 %130)
  br label %132

132:                                              ; preds = %122, %119
  %133 = load i64, i64* %12, align 8
  store i64 %133, i64* %6, align 8
  br label %134

134:                                              ; preds = %132, %100, %35
  %135 = load i64, i64* %6, align 8
  ret i64 %135
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @ixgbe_i2c_start(%struct.ixgbe_hw*) #1

declare dso_local i64 @ixgbe_clock_out_i2c_byte(%struct.ixgbe_hw*, i32) #1

declare dso_local i64 @ixgbe_get_i2c_ack(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_i2c_stop(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_i2c_bus_clear(%struct.ixgbe_hw*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
