; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_i2c.c_ixl_write_i2c_byte_bb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_i2c.c_ixl_write_i2c_byte_bb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { %struct.i40e_hw }
%struct.i40e_hw = type { i32 }

@I40E_SUCCESS = common dso_local global i64 0, align 8
@I40E_GLGEN_I2CPARAMS_I2CBB_EN_MASK = common dso_local global i64 0, align 8
@IXL_DBG_I2C = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"I2C byte write error - Retrying\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"I2C byte write error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixl_write_i2c_byte_bb(%struct.ixl_pf* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ixl_pf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.i40e_hw*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.ixl_pf* %0, %struct.ixl_pf** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %15 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %14, i32 0, i32 0
  store %struct.i40e_hw* %15, %struct.i40e_hw** %9, align 8
  %16 = load i64, i64* @I40E_SUCCESS, align 8
  store i64 %16, i64* %10, align 8
  store i64 1, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %17 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %18 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %19 = call i32 @IXL_I2C_REG(%struct.i40e_hw* %18)
  %20 = call i64 @rd32(%struct.i40e_hw* %17, i32 %19)
  store i64 %20, i64* %13, align 8
  %21 = load i64, i64* @I40E_GLGEN_I2CPARAMS_I2CBB_EN_MASK, align 8
  %22 = load i64, i64* %13, align 8
  %23 = or i64 %22, %21
  store i64 %23, i64* %13, align 8
  %24 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %25 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %26 = call i32 @IXL_I2C_REG(%struct.i40e_hw* %25)
  %27 = load i64, i64* %13, align 8
  %28 = call i32 @wr32(%struct.i40e_hw* %24, i32 %26, i64 %27)
  %29 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %30 = call i32 @ixl_flush(%struct.i40e_hw* %29)
  br label %31

31:                                               ; preds = %99, %4
  %32 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %33 = call i32 @ixl_i2c_start(%struct.ixl_pf* %32)
  %34 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i64 @ixl_clock_out_i2c_byte(%struct.ixl_pf* %34, i32 %35)
  store i64 %36, i64* %10, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* @I40E_SUCCESS, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %81

41:                                               ; preds = %31
  %42 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %43 = call i64 @ixl_get_i2c_ack(%struct.ixl_pf* %42)
  store i64 %43, i64* %10, align 8
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* @I40E_SUCCESS, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %81

48:                                               ; preds = %41
  %49 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i64 @ixl_clock_out_i2c_byte(%struct.ixl_pf* %49, i32 %50)
  store i64 %51, i64* %10, align 8
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* @I40E_SUCCESS, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %81

56:                                               ; preds = %48
  %57 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %58 = call i64 @ixl_get_i2c_ack(%struct.ixl_pf* %57)
  store i64 %58, i64* %10, align 8
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* @I40E_SUCCESS, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %81

63:                                               ; preds = %56
  %64 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i64 @ixl_clock_out_i2c_byte(%struct.ixl_pf* %64, i32 %65)
  store i64 %66, i64* %10, align 8
  %67 = load i64, i64* %10, align 8
  %68 = load i64, i64* @I40E_SUCCESS, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  br label %81

71:                                               ; preds = %63
  %72 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %73 = call i64 @ixl_get_i2c_ack(%struct.ixl_pf* %72)
  store i64 %73, i64* %10, align 8
  %74 = load i64, i64* %10, align 8
  %75 = load i64, i64* @I40E_SUCCESS, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %81

78:                                               ; preds = %71
  %79 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %80 = call i32 @ixl_i2c_stop(%struct.ixl_pf* %79)
  br label %104

81:                                               ; preds = %77, %70, %62, %55, %47, %40
  %82 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %83 = call i32 @ixl_i2c_bus_clear(%struct.ixl_pf* %82)
  %84 = call i32 @i40e_msec_delay(i32 100)
  %85 = load i64, i64* %12, align 8
  %86 = add nsw i64 %85, 1
  store i64 %86, i64* %12, align 8
  %87 = load i64, i64* %12, align 8
  %88 = load i64, i64* %11, align 8
  %89 = icmp slt i64 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %81
  %91 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %92 = load i32, i32* @IXL_DBG_I2C, align 4
  %93 = call i32 @ixl_dbg(%struct.ixl_pf* %91, i32 %92, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %98

94:                                               ; preds = %81
  %95 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %96 = load i32, i32* @IXL_DBG_I2C, align 4
  %97 = call i32 @ixl_dbg(%struct.ixl_pf* %95, i32 %96, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %98

98:                                               ; preds = %94, %90
  br label %99

99:                                               ; preds = %98
  %100 = load i64, i64* %12, align 8
  %101 = load i64, i64* %11, align 8
  %102 = icmp slt i64 %100, %101
  br i1 %102, label %31, label %103

103:                                              ; preds = %99
  br label %104

104:                                              ; preds = %103, %78
  %105 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %106 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %107 = call i32 @IXL_I2C_REG(%struct.i40e_hw* %106)
  %108 = call i64 @rd32(%struct.i40e_hw* %105, i32 %107)
  store i64 %108, i64* %13, align 8
  %109 = load i64, i64* @I40E_GLGEN_I2CPARAMS_I2CBB_EN_MASK, align 8
  %110 = xor i64 %109, -1
  %111 = load i64, i64* %13, align 8
  %112 = and i64 %111, %110
  store i64 %112, i64* %13, align 8
  %113 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %114 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %115 = call i32 @IXL_I2C_REG(%struct.i40e_hw* %114)
  %116 = load i64, i64* %13, align 8
  %117 = call i32 @wr32(%struct.i40e_hw* %113, i32 %115, i64 %116)
  %118 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %119 = call i32 @ixl_flush(%struct.i40e_hw* %118)
  %120 = load i64, i64* %10, align 8
  ret i64 %120
}

declare dso_local i64 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @IXL_I2C_REG(%struct.i40e_hw*) #1

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i64) #1

declare dso_local i32 @ixl_flush(%struct.i40e_hw*) #1

declare dso_local i32 @ixl_i2c_start(%struct.ixl_pf*) #1

declare dso_local i64 @ixl_clock_out_i2c_byte(%struct.ixl_pf*, i32) #1

declare dso_local i64 @ixl_get_i2c_ack(%struct.ixl_pf*) #1

declare dso_local i32 @ixl_i2c_stop(%struct.ixl_pf*) #1

declare dso_local i32 @ixl_i2c_bus_clear(%struct.ixl_pf*) #1

declare dso_local i32 @i40e_msec_delay(i32) #1

declare dso_local i32 @ixl_dbg(%struct.ixl_pf*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
