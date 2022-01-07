; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82543.c_e1000_shift_out_mdi_bits_82543.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82543.c_e1000_shift_out_mdi_bits_82543.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@E1000_CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_MDIO_DIR = common dso_local global i32 0, align 4
@E1000_CTRL_MDC_DIR = common dso_local global i32 0, align 4
@E1000_CTRL_MDIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_hw*, i32, i32)* @e1000_shift_out_mdi_bits_82543 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_shift_out_mdi_bits_82543(%struct.e1000_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 1, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = sub nsw i32 %9, 1
  %11 = load i32, i32* %8, align 4
  %12 = shl i32 %11, %10
  store i32 %12, i32* %8, align 4
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %14 = load i32, i32* @E1000_CTRL, align 4
  %15 = call i32 @E1000_READ_REG(%struct.e1000_hw* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @E1000_CTRL_MDIO_DIR, align 4
  %17 = load i32, i32* @E1000_CTRL_MDC_DIR, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* %7, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %38, %3
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %52

24:                                               ; preds = %21
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %8, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32, i32* @E1000_CTRL_MDIO, align 4
  %31 = load i32, i32* %7, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %7, align 4
  br label %38

33:                                               ; preds = %24
  %34 = load i32, i32* @E1000_CTRL_MDIO, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %33, %29
  %39 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %40 = load i32, i32* @E1000_CTRL, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %39, i32 %40, i32 %41)
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %44 = call i32 @E1000_WRITE_FLUSH(%struct.e1000_hw* %43)
  %45 = call i32 @usec_delay(i32 10)
  %46 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %47 = call i32 @e1000_raise_mdi_clk_82543(%struct.e1000_hw* %46, i32* %7)
  %48 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %49 = call i32 @e1000_lower_mdi_clk_82543(%struct.e1000_hw* %48, i32* %7)
  %50 = load i32, i32* %8, align 4
  %51 = ashr i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %21

52:                                               ; preds = %21
  ret void
}

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @E1000_WRITE_FLUSH(%struct.e1000_hw*) #1

declare dso_local i32 @usec_delay(i32) #1

declare dso_local i32 @e1000_raise_mdi_clk_82543(%struct.e1000_hw*, i32*) #1

declare dso_local i32 @e1000_lower_mdi_clk_82543(%struct.e1000_hw*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
