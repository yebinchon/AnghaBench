; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_i2c.c_ixl_read_i2c_byte_bb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_i2c.c_ixl_read_i2c_byte_bb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { %struct.i40e_hw }
%struct.i40e_hw = type { i32 }

@I40E_GLGEN_I2CPARAMS_I2CBB_EN_MASK = common dso_local global i64 0, align 8
@I40E_SUCCESS = common dso_local global i32 0, align 4
@IXL_DBG_I2C = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"dev_addr clock out error\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"dev_addr i2c ack error\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"byte_offset clock out error\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"byte_offset i2c ack error\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"I2C byte read error - Retrying\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"I2C byte read error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixl_read_i2c_byte_bb(%struct.ixl_pf* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.ixl_pf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.i40e_hw*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.ixl_pf* %0, %struct.ixl_pf** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %15 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %16 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %15, i32 0, i32 0
  store %struct.i40e_hw* %16, %struct.i40e_hw** %9, align 8
  store i64 10, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i32 1, i32* %12, align 4
  %17 = load i32*, i32** %8, align 8
  store i32 0, i32* %17, align 4
  %18 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %19 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %20 = call i32 @IXL_I2C_REG(%struct.i40e_hw* %19)
  %21 = call i64 @rd32(%struct.i40e_hw* %18, i32 %20)
  store i64 %21, i64* %14, align 8
  %22 = load i64, i64* @I40E_GLGEN_I2CPARAMS_I2CBB_EN_MASK, align 8
  %23 = load i64, i64* %14, align 8
  %24 = or i64 %23, %22
  store i64 %24, i64* %14, align 8
  %25 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %26 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %27 = call i32 @IXL_I2C_REG(%struct.i40e_hw* %26)
  %28 = load i64, i64* %14, align 8
  %29 = call i32 @wr32(%struct.i40e_hw* %25, i32 %27, i64 %28)
  %30 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %31 = call i32 @ixl_flush(%struct.i40e_hw* %30)
  br label %32

32:                                               ; preds = %132, %4
  %33 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %34 = call i32 @ixl_i2c_start(%struct.ixl_pf* %33)
  %35 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @ixl_clock_out_i2c_byte(%struct.ixl_pf* %35, i32 %36)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* @I40E_SUCCESS, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %32
  %42 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %43 = load i32, i32* @IXL_DBG_I2C, align 4
  %44 = call i32 @ixl_dbg(%struct.ixl_pf* %42, i32 %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %114

45:                                               ; preds = %32
  %46 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %47 = call i32 @ixl_get_i2c_ack(%struct.ixl_pf* %46)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* @I40E_SUCCESS, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %53 = load i32, i32* @IXL_DBG_I2C, align 4
  %54 = call i32 @ixl_dbg(%struct.ixl_pf* %52, i32 %53, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %114

55:                                               ; preds = %45
  %56 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @ixl_clock_out_i2c_byte(%struct.ixl_pf* %56, i32 %57)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* @I40E_SUCCESS, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %64 = load i32, i32* @IXL_DBG_I2C, align 4
  %65 = call i32 @ixl_dbg(%struct.ixl_pf* %63, i32 %64, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %114

66:                                               ; preds = %55
  %67 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %68 = call i32 @ixl_get_i2c_ack(%struct.ixl_pf* %67)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* @I40E_SUCCESS, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %74 = load i32, i32* @IXL_DBG_I2C, align 4
  %75 = call i32 @ixl_dbg(%struct.ixl_pf* %73, i32 %74, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %114

76:                                               ; preds = %66
  %77 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %78 = call i32 @ixl_i2c_start(%struct.ixl_pf* %77)
  %79 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %80 = load i32, i32* %7, align 4
  %81 = or i32 %80, 1
  %82 = call i32 @ixl_clock_out_i2c_byte(%struct.ixl_pf* %79, i32 %81)
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* @I40E_SUCCESS, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %76
  br label %114

87:                                               ; preds = %76
  %88 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %89 = call i32 @ixl_get_i2c_ack(%struct.ixl_pf* %88)
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* @I40E_SUCCESS, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %114

94:                                               ; preds = %87
  %95 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %96 = load i32*, i32** %8, align 8
  %97 = call i32 @ixl_clock_in_i2c_byte(%struct.ixl_pf* %95, i32* %96)
  store i32 %97, i32* %13, align 4
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* @I40E_SUCCESS, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %94
  br label %114

102:                                              ; preds = %94
  %103 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %104 = load i32, i32* %12, align 4
  %105 = call i32 @ixl_clock_out_i2c_bit(%struct.ixl_pf* %103, i32 %104)
  store i32 %105, i32* %13, align 4
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* @I40E_SUCCESS, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %102
  br label %114

110:                                              ; preds = %102
  %111 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %112 = call i32 @ixl_i2c_stop(%struct.ixl_pf* %111)
  %113 = load i32, i32* @I40E_SUCCESS, align 4
  store i32 %113, i32* %13, align 4
  br label %137

114:                                              ; preds = %109, %101, %93, %86, %72, %62, %51, %41
  %115 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %116 = call i32 @ixl_i2c_bus_clear(%struct.ixl_pf* %115)
  %117 = call i32 @i40e_msec_delay(i32 100)
  %118 = load i64, i64* %11, align 8
  %119 = add nsw i64 %118, 1
  store i64 %119, i64* %11, align 8
  %120 = load i64, i64* %11, align 8
  %121 = load i64, i64* %10, align 8
  %122 = icmp slt i64 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %114
  %124 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %125 = load i32, i32* @IXL_DBG_I2C, align 4
  %126 = call i32 @ixl_dbg(%struct.ixl_pf* %124, i32 %125, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %131

127:                                              ; preds = %114
  %128 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %129 = load i32, i32* @IXL_DBG_I2C, align 4
  %130 = call i32 @ixl_dbg(%struct.ixl_pf* %128, i32 %129, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %131

131:                                              ; preds = %127, %123
  br label %132

132:                                              ; preds = %131
  %133 = load i64, i64* %11, align 8
  %134 = load i64, i64* %10, align 8
  %135 = icmp slt i64 %133, %134
  br i1 %135, label %32, label %136

136:                                              ; preds = %132
  br label %137

137:                                              ; preds = %136, %110
  %138 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %139 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %140 = call i32 @IXL_I2C_REG(%struct.i40e_hw* %139)
  %141 = call i64 @rd32(%struct.i40e_hw* %138, i32 %140)
  store i64 %141, i64* %14, align 8
  %142 = load i64, i64* @I40E_GLGEN_I2CPARAMS_I2CBB_EN_MASK, align 8
  %143 = xor i64 %142, -1
  %144 = load i64, i64* %14, align 8
  %145 = and i64 %144, %143
  store i64 %145, i64* %14, align 8
  %146 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %147 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %148 = call i32 @IXL_I2C_REG(%struct.i40e_hw* %147)
  %149 = load i64, i64* %14, align 8
  %150 = call i32 @wr32(%struct.i40e_hw* %146, i32 %148, i64 %149)
  %151 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %152 = call i32 @ixl_flush(%struct.i40e_hw* %151)
  %153 = load i32, i32* %13, align 4
  ret i32 %153
}

declare dso_local i64 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @IXL_I2C_REG(%struct.i40e_hw*) #1

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i64) #1

declare dso_local i32 @ixl_flush(%struct.i40e_hw*) #1

declare dso_local i32 @ixl_i2c_start(%struct.ixl_pf*) #1

declare dso_local i32 @ixl_clock_out_i2c_byte(%struct.ixl_pf*, i32) #1

declare dso_local i32 @ixl_dbg(%struct.ixl_pf*, i32, i8*) #1

declare dso_local i32 @ixl_get_i2c_ack(%struct.ixl_pf*) #1

declare dso_local i32 @ixl_clock_in_i2c_byte(%struct.ixl_pf*, i32*) #1

declare dso_local i32 @ixl_clock_out_i2c_bit(%struct.ixl_pf*, i32) #1

declare dso_local i32 @ixl_i2c_stop(%struct.ixl_pf*) #1

declare dso_local i32 @ixl_i2c_bus_clear(%struct.ixl_pf*) #1

declare dso_local i32 @i40e_msec_delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
