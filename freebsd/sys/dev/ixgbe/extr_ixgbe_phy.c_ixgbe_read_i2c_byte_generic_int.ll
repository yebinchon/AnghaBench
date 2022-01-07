; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_phy.c_ixgbe_read_i2c_byte_generic_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_phy.c_ixgbe_read_i2c_byte_generic_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.ixgbe_hw.0*, i32)*, i64 (%struct.ixgbe_hw.1*, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"ixgbe_read_i2c_byte_generic\00", align 1
@ixgbe_mac_X550 = common dso_local global i64 0, align 8
@IXGBE_SFP_DETECT_RETRIES = common dso_local global i32 0, align 4
@IXGBE_ERR_SWFW_SYNC = common dso_local global i32 0, align 4
@IXGBE_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"I2C byte read error - Retrying.\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"I2C byte read error.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*, i32, i32, i32*, i32)* @ixgbe_read_i2c_byte_generic_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_read_i2c_byte_generic_int(%struct.ixgbe_hw* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ixgbe_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 10, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %17 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %18 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %15, align 4
  store i32 1, i32* %16, align 4
  %21 = load i32*, i32** %10, align 8
  store i32 0, i32* %21, align 4
  %22 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %24 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ixgbe_mac_X550, align 8
  %28 = icmp sge i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %5
  store i32 3, i32* %13, align 4
  br label %30

30:                                               ; preds = %29, %5
  %31 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i64 @ixgbe_is_sfp_probe(%struct.ixgbe_hw* %31, i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @IXGBE_SFP_DETECT_RETRIES, align 4
  store i32 %37, i32* %13, align 4
  br label %38

38:                                               ; preds = %36, %30
  br label %39

39:                                               ; preds = %165, %38
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %39
  %43 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %44 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i64 (%struct.ixgbe_hw.1*, i32)*, i64 (%struct.ixgbe_hw.1*, i32)** %46, align 8
  %48 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %49 = bitcast %struct.ixgbe_hw* %48 to %struct.ixgbe_hw.1*
  %50 = load i32, i32* %15, align 4
  %51 = call i64 %47(%struct.ixgbe_hw.1* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %42
  %54 = load i32, i32* @IXGBE_ERR_SWFW_SYNC, align 4
  store i32 %54, i32* %6, align 4
  br label %171

55:                                               ; preds = %42, %39
  %56 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %57 = call i32 @ixgbe_i2c_start(%struct.ixgbe_hw* %56)
  %58 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @ixgbe_clock_out_i2c_byte(%struct.ixgbe_hw* %58, i32 %59)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @IXGBE_SUCCESS, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  br label %138

65:                                               ; preds = %55
  %66 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %67 = call i32 @ixgbe_get_i2c_ack(%struct.ixgbe_hw* %66)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* @IXGBE_SUCCESS, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %138

72:                                               ; preds = %65
  %73 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @ixgbe_clock_out_i2c_byte(%struct.ixgbe_hw* %73, i32 %74)
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* @IXGBE_SUCCESS, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  br label %138

80:                                               ; preds = %72
  %81 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %82 = call i32 @ixgbe_get_i2c_ack(%struct.ixgbe_hw* %81)
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* @IXGBE_SUCCESS, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  br label %138

87:                                               ; preds = %80
  %88 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %89 = call i32 @ixgbe_i2c_start(%struct.ixgbe_hw* %88)
  %90 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %91 = load i32, i32* %9, align 4
  %92 = or i32 %91, 1
  %93 = call i32 @ixgbe_clock_out_i2c_byte(%struct.ixgbe_hw* %90, i32 %92)
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* @IXGBE_SUCCESS, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %87
  br label %138

98:                                               ; preds = %87
  %99 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %100 = call i32 @ixgbe_get_i2c_ack(%struct.ixgbe_hw* %99)
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* @IXGBE_SUCCESS, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  br label %138

105:                                              ; preds = %98
  %106 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %107 = load i32*, i32** %10, align 8
  %108 = call i32 @ixgbe_clock_in_i2c_byte(%struct.ixgbe_hw* %106, i32* %107)
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* @IXGBE_SUCCESS, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %105
  br label %138

113:                                              ; preds = %105
  %114 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %115 = load i32, i32* %16, align 4
  %116 = call i32 @ixgbe_clock_out_i2c_bit(%struct.ixgbe_hw* %114, i32 %115)
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* @IXGBE_SUCCESS, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %113
  br label %138

121:                                              ; preds = %113
  %122 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %123 = call i32 @ixgbe_i2c_stop(%struct.ixgbe_hw* %122)
  %124 = load i32, i32* %11, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %136

126:                                              ; preds = %121
  %127 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %128 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load i32 (%struct.ixgbe_hw.0*, i32)*, i32 (%struct.ixgbe_hw.0*, i32)** %130, align 8
  %132 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %133 = bitcast %struct.ixgbe_hw* %132 to %struct.ixgbe_hw.0*
  %134 = load i32, i32* %15, align 4
  %135 = call i32 %131(%struct.ixgbe_hw.0* %133, i32 %134)
  br label %136

136:                                              ; preds = %126, %121
  %137 = load i32, i32* @IXGBE_SUCCESS, align 4
  store i32 %137, i32* %6, align 4
  br label %171

138:                                              ; preds = %120, %112, %104, %97, %86, %79, %71, %64
  %139 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %140 = call i32 @ixgbe_i2c_bus_clear(%struct.ixgbe_hw* %139)
  %141 = load i32, i32* %11, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %154

143:                                              ; preds = %138
  %144 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %145 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  %148 = load i32 (%struct.ixgbe_hw.0*, i32)*, i32 (%struct.ixgbe_hw.0*, i32)** %147, align 8
  %149 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %150 = bitcast %struct.ixgbe_hw* %149 to %struct.ixgbe_hw.0*
  %151 = load i32, i32* %15, align 4
  %152 = call i32 %148(%struct.ixgbe_hw.0* %150, i32 %151)
  %153 = call i32 @msec_delay(i32 100)
  br label %154

154:                                              ; preds = %143, %138
  %155 = load i32, i32* %14, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %14, align 4
  %157 = load i32, i32* %14, align 4
  %158 = load i32, i32* %13, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %162

160:                                              ; preds = %154
  %161 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %164

162:                                              ; preds = %154
  %163 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %164

164:                                              ; preds = %162, %160
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %14, align 4
  %167 = load i32, i32* %13, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %39, label %169

169:                                              ; preds = %165
  %170 = load i32, i32* %12, align 4
  store i32 %170, i32* %6, align 4
  br label %171

171:                                              ; preds = %169, %136, %53
  %172 = load i32, i32* %6, align 4
  ret i32 %172
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @ixgbe_is_sfp_probe(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @ixgbe_i2c_start(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_clock_out_i2c_byte(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @ixgbe_get_i2c_ack(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_clock_in_i2c_byte(%struct.ixgbe_hw*, i32*) #1

declare dso_local i32 @ixgbe_clock_out_i2c_bit(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @ixgbe_i2c_stop(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_i2c_bus_clear(%struct.ixgbe_hw*) #1

declare dso_local i32 @msec_delay(i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
