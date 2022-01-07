; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_shift_out_eeprom_bits.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_shift_out_eeprom_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"ixgbe_shift_out_eeprom_bits\00", align 1
@IXGBE_EEC_DI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_hw*, i32, i32)* @ixgbe_shift_out_eeprom_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_shift_out_eeprom_bits(%struct.ixgbe_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %12 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %13 = call i32 @IXGBE_EEC_BY_MAC(%struct.ixgbe_hw* %12)
  %14 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %11, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = sub nsw i32 %15, 1
  %17 = shl i32 1, %16
  store i32 %17, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %51, %3
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %54

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %8, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* @IXGBE_EEC_DI, align 4
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %7, align 4
  br label %36

31:                                               ; preds = %22
  %32 = load i32, i32* @IXGBE_EEC_DI, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %31, %27
  %37 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %38 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %39 = call i32 @IXGBE_EEC_BY_MAC(%struct.ixgbe_hw* %38)
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %37, i32 %39, i32 %40)
  %42 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %43 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %42)
  %44 = call i32 @usec_delay(i32 1)
  %45 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %46 = call i32 @ixgbe_raise_eeprom_clk(%struct.ixgbe_hw* %45, i32* %7)
  %47 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %48 = call i32 @ixgbe_lower_eeprom_clk(%struct.ixgbe_hw* %47, i32* %7)
  %49 = load i32, i32* %8, align 4
  %50 = ashr i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %36
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %18

54:                                               ; preds = %18
  %55 = load i32, i32* @IXGBE_EEC_DI, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %7, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %7, align 4
  %59 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %60 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %61 = call i32 @IXGBE_EEC_BY_MAC(%struct.ixgbe_hw* %60)
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %59, i32 %61, i32 %62)
  %64 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %65 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %64)
  ret void
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_EEC_BY_MAC(%struct.ixgbe_hw*) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

declare dso_local i32 @usec_delay(i32) #1

declare dso_local i32 @ixgbe_raise_eeprom_clk(%struct.ixgbe_hw*, i32*) #1

declare dso_local i32 @ixgbe_lower_eeprom_clk(%struct.ixgbe_hw*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
