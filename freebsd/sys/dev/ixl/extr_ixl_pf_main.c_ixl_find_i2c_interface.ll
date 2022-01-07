; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_find_i2c_interface.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_find_i2c_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { %struct.i40e_hw }
%struct.i40e_hw = type { i32 }

@I40E_GLGEN_MDIO_I2C_SEL_MDIO_I2C_SEL_MASK = common dso_local global i32 0, align 4
@I40E_GLGEN_MDIO_I2C_SEL_PHY_PORT_NUM_MASK = common dso_local global i32 0, align 4
@I40E_GLGEN_MDIO_I2C_SEL_PHY_PORT_NUM_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixl_find_i2c_interface(%struct.ixl_pf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixl_pf*, align 8
  %4 = alloca %struct.i40e_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ixl_pf* %0, %struct.ixl_pf** %3, align 8
  %9 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %10 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %9, i32 0, i32 0
  store %struct.i40e_hw* %10, %struct.i40e_hw** %4, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %40, %1
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %12, 4
  br i1 %13, label %14, label %43

14:                                               ; preds = %11
  %15 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @I40E_GLGEN_MDIO_I2C_SEL(i32 %16)
  %18 = call i32 @rd32(%struct.i40e_hw* %15, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @I40E_GLGEN_MDIO_I2C_SEL_MDIO_I2C_SEL_MASK, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @I40E_GLGEN_MDIO_I2C_SEL_PHY_PORT_NUM_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @I40E_GLGEN_MDIO_I2C_SEL_PHY_PORT_NUM_SHIFT, align 4
  %26 = ashr i32 %24, %25
  %27 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %28 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @BIT(i32 %29)
  %31 = and i32 %26, %30
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %14
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %2, align 4
  br label %44

39:                                               ; preds = %34, %14
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %11

43:                                               ; preds = %11
  store i32 -1, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %37
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @I40E_GLGEN_MDIO_I2C_SEL(i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
