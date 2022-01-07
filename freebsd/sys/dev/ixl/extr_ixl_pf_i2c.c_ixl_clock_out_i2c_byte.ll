; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_i2c.c_ixl_clock_out_i2c_byte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_i2c.c_ixl_clock_out_i2c_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { %struct.i40e_hw }
%struct.i40e_hw = type { i32 }

@I40E_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"ixl_clock_out_i2c_byte\00", align 1
@I40E_GLGEN_I2CPARAMS_DATA_OUT_MASK = common dso_local global i32 0, align 4
@I40E_GLGEN_I2CPARAMS_DATA_OE_N_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixl_pf*, i32)* @ixl_clock_out_i2c_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixl_clock_out_i2c_byte(%struct.ixl_pf* %0, i32 %1) #0 {
  %3 = alloca %struct.ixl_pf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40e_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ixl_pf* %0, %struct.ixl_pf** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %11 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %10, i32 0, i32 0
  store %struct.i40e_hw* %11, %struct.i40e_hw** %5, align 8
  %12 = load i32, i32* @I40E_SUCCESS, align 4
  store i32 %12, i32* %6, align 4
  %13 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 7, i32* %7, align 4
  br label %14

14:                                               ; preds = %30, %2
  %15 = load i32, i32* %7, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %14
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %7, align 4
  %20 = ashr i32 %18, %19
  %21 = and i32 %20, 1
  store i32 %21, i32* %9, align 4
  %22 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @ixl_clock_out_i2c_bit(%struct.ixl_pf* %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @I40E_SUCCESS, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  br label %33

29:                                               ; preds = %17
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %7, align 4
  br label %14

33:                                               ; preds = %28, %14
  %34 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %35 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %36 = call i32 @IXL_I2C_REG(%struct.i40e_hw* %35)
  %37 = call i32 @rd32(%struct.i40e_hw* %34, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* @I40E_GLGEN_I2CPARAMS_DATA_OUT_MASK, align 4
  %39 = load i32, i32* %8, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* @I40E_GLGEN_I2CPARAMS_DATA_OE_N_MASK, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %8, align 4
  %45 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %46 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %47 = call i32 @IXL_I2C_REG(%struct.i40e_hw* %46)
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @wr32(%struct.i40e_hw* %45, i32 %47, i32 %48)
  %50 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %51 = call i32 @ixl_flush(%struct.i40e_hw* %50)
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @ixl_clock_out_i2c_bit(%struct.ixl_pf*, i32) #1

declare dso_local i32 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @IXL_I2C_REG(%struct.i40e_hw*) #1

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @ixl_flush(%struct.i40e_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
