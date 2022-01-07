; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_i2c.c_ixl_i2c_bus_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_i2c.c_ixl_i2c_bus_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { %struct.i40e_hw }
%struct.i40e_hw = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"ixl_i2c_bus_clear\00", align 1
@IXL_I2C_T_HIGH = common dso_local global i32 0, align 4
@IXL_I2C_T_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixl_pf*)* @ixl_i2c_bus_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixl_i2c_bus_clear(%struct.ixl_pf* %0) #0 {
  %2 = alloca %struct.ixl_pf*, align 8
  %3 = alloca %struct.i40e_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ixl_pf* %0, %struct.ixl_pf** %2, align 8
  %6 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %7 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %6, i32 0, i32 0
  store %struct.i40e_hw* %7, %struct.i40e_hw** %3, align 8
  %8 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %9 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %10 = call i32 @IXL_I2C_REG(%struct.i40e_hw* %9)
  %11 = call i32 @rd32(%struct.i40e_hw* %8, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %14 = call i32 @ixl_i2c_start(%struct.ixl_pf* %13)
  %15 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %16 = call i32 @ixl_set_i2c_data(%struct.ixl_pf* %15, i32* %4, i32 1)
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %29, %1
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 9
  br i1 %19, label %20, label %32

20:                                               ; preds = %17
  %21 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %22 = call i32 @ixl_raise_i2c_clk(%struct.ixl_pf* %21, i32* %4)
  %23 = load i32, i32* @IXL_I2C_T_HIGH, align 4
  %24 = call i32 @i40e_usec_delay(i32 %23)
  %25 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %26 = call i32 @ixl_lower_i2c_clk(%struct.ixl_pf* %25, i32* %4)
  %27 = load i32, i32* @IXL_I2C_T_LOW, align 4
  %28 = call i32 @i40e_usec_delay(i32 %27)
  br label %29

29:                                               ; preds = %20
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %17

32:                                               ; preds = %17
  %33 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %34 = call i32 @ixl_i2c_start(%struct.ixl_pf* %33)
  %35 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %36 = call i32 @ixl_i2c_stop(%struct.ixl_pf* %35)
  ret void
}

declare dso_local i32 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @IXL_I2C_REG(%struct.i40e_hw*) #1

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @ixl_i2c_start(%struct.ixl_pf*) #1

declare dso_local i32 @ixl_set_i2c_data(%struct.ixl_pf*, i32*, i32) #1

declare dso_local i32 @ixl_raise_i2c_clk(%struct.ixl_pf*, i32*) #1

declare dso_local i32 @i40e_usec_delay(i32) #1

declare dso_local i32 @ixl_lower_i2c_clk(%struct.ixl_pf*, i32*) #1

declare dso_local i32 @ixl_i2c_stop(%struct.ixl_pf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
