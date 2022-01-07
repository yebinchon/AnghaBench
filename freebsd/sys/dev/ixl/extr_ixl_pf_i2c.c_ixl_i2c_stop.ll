; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_i2c.c_ixl_i2c_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_i2c.c_ixl_i2c_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { %struct.i40e_hw }
%struct.i40e_hw = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"ixl_i2c_stop\00", align 1
@IXL_I2C_T_SU_STO = common dso_local global i32 0, align 4
@IXL_I2C_T_BUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixl_pf*)* @ixl_i2c_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixl_i2c_stop(%struct.ixl_pf* %0) #0 {
  %2 = alloca %struct.ixl_pf*, align 8
  %3 = alloca %struct.i40e_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.ixl_pf* %0, %struct.ixl_pf** %2, align 8
  %5 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %6 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %5, i32 0, i32 0
  store %struct.i40e_hw* %6, %struct.i40e_hw** %3, align 8
  %7 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %8 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %9 = call i32 @IXL_I2C_REG(%struct.i40e_hw* %8)
  %10 = call i32 @rd32(%struct.i40e_hw* %7, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %13 = call i32 @ixl_set_i2c_data(%struct.ixl_pf* %12, i32* %4, i32 0)
  %14 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %15 = call i32 @ixl_raise_i2c_clk(%struct.ixl_pf* %14, i32* %4)
  %16 = load i32, i32* @IXL_I2C_T_SU_STO, align 4
  %17 = call i32 @i40e_usec_delay(i32 %16)
  %18 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %19 = call i32 @ixl_set_i2c_data(%struct.ixl_pf* %18, i32* %4, i32 1)
  %20 = load i32, i32* @IXL_I2C_T_BUF, align 4
  %21 = call i32 @i40e_usec_delay(i32 %20)
  ret void
}

declare dso_local i32 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @IXL_I2C_REG(%struct.i40e_hw*) #1

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @ixl_set_i2c_data(%struct.ixl_pf*, i32*, i32) #1

declare dso_local i32 @ixl_raise_i2c_clk(%struct.ixl_pf*, i32*) #1

declare dso_local i32 @i40e_usec_delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
