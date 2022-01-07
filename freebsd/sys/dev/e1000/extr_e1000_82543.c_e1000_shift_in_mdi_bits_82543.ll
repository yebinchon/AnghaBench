; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82543.c_e1000_shift_in_mdi_bits_82543.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82543.c_e1000_shift_in_mdi_bits_82543.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@E1000_CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_MDIO_DIR = common dso_local global i32 0, align 4
@E1000_CTRL_MDIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_shift_in_mdi_bits_82543 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_shift_in_mdi_bits_82543(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %7 = load i32, i32* @E1000_CTRL, align 4
  %8 = call i32 @E1000_READ_REG(%struct.e1000_hw* %6, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @E1000_CTRL_MDIO_DIR, align 4
  %10 = xor i32 %9, -1
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @E1000_CTRL_MDIO, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %3, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %3, align 4
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %18 = load i32, i32* @E1000_CTRL, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %17, i32 %18, i32 %19)
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %22 = call i32 @E1000_WRITE_FLUSH(%struct.e1000_hw* %21)
  %23 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %24 = call i32 @e1000_raise_mdi_clk_82543(%struct.e1000_hw* %23, i32* %3)
  %25 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %26 = call i32 @e1000_lower_mdi_clk_82543(%struct.e1000_hw* %25, i32* %3)
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %48, %1
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %28, 16
  br i1 %29, label %30, label %51

30:                                               ; preds = %27
  %31 = load i32, i32* %4, align 4
  %32 = shl i32 %31, 1
  store i32 %32, i32* %4, align 4
  %33 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %34 = call i32 @e1000_raise_mdi_clk_82543(%struct.e1000_hw* %33, i32* %3)
  %35 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %36 = load i32, i32* @E1000_CTRL, align 4
  %37 = call i32 @E1000_READ_REG(%struct.e1000_hw* %35, i32 %36)
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @E1000_CTRL_MDIO, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %30
  %43 = load i32, i32* %4, align 4
  %44 = or i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %42, %30
  %46 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %47 = call i32 @e1000_lower_mdi_clk_82543(%struct.e1000_hw* %46, i32* %3)
  br label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %27

51:                                               ; preds = %27
  %52 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %53 = call i32 @e1000_raise_mdi_clk_82543(%struct.e1000_hw* %52, i32* %3)
  %54 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %55 = call i32 @e1000_lower_mdi_clk_82543(%struct.e1000_hw* %54, i32* %3)
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @E1000_WRITE_FLUSH(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_raise_mdi_clk_82543(%struct.e1000_hw*, i32*) #1

declare dso_local i32 @e1000_lower_mdi_clk_82543(%struct.e1000_hw*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
