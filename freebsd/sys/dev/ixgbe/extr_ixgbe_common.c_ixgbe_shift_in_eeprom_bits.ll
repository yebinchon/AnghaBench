; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_shift_in_eeprom_bits.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_shift_in_eeprom_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"ixgbe_shift_in_eeprom_bits\00", align 1
@IXGBE_EEC_DO = common dso_local global i64 0, align 8
@IXGBE_EEC_DI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*, i64)* @ixgbe_shift_in_eeprom_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_shift_in_eeprom_bits(%struct.ixgbe_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %7, align 8
  %8 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %10 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %11 = call i32 @IXGBE_EEC_BY_MAC(%struct.ixgbe_hw* %10)
  %12 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %9, i32 %11)
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* @IXGBE_EEC_DO, align 8
  %14 = load i64, i64* @IXGBE_EEC_DI, align 8
  %15 = or i64 %13, %14
  %16 = xor i64 %15, -1
  %17 = load i64, i64* %5, align 8
  %18 = and i64 %17, %16
  store i64 %18, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %19

19:                                               ; preds = %46, %2
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* %4, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %49

23:                                               ; preds = %19
  %24 = load i64, i64* %7, align 8
  %25 = shl i64 %24, 1
  store i64 %25, i64* %7, align 8
  %26 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %27 = call i32 @ixgbe_raise_eeprom_clk(%struct.ixgbe_hw* %26, i64* %5)
  %28 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %29 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %30 = call i32 @IXGBE_EEC_BY_MAC(%struct.ixgbe_hw* %29)
  %31 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %28, i32 %30)
  store i64 %31, i64* %5, align 8
  %32 = load i64, i64* @IXGBE_EEC_DI, align 8
  %33 = xor i64 %32, -1
  %34 = load i64, i64* %5, align 8
  %35 = and i64 %34, %33
  store i64 %35, i64* %5, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* @IXGBE_EEC_DO, align 8
  %38 = and i64 %36, %37
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %23
  %41 = load i64, i64* %7, align 8
  %42 = or i64 %41, 1
  store i64 %42, i64* %7, align 8
  br label %43

43:                                               ; preds = %40, %23
  %44 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %45 = call i32 @ixgbe_lower_eeprom_clk(%struct.ixgbe_hw* %44, i64* %5)
  br label %46

46:                                               ; preds = %43
  %47 = load i64, i64* %6, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %6, align 8
  br label %19

49:                                               ; preds = %19
  %50 = load i64, i64* %7, align 8
  ret i64 %50
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_EEC_BY_MAC(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_raise_eeprom_clk(%struct.ixgbe_hw*, i64*) #1

declare dso_local i32 @ixgbe_lower_eeprom_clk(%struct.ixgbe_hw*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
