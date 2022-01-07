; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_read_eeprom_buffer_bit_bang.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_read_eeprom_buffer_bit_bang.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IXGBE_EEPROM_READ_OPCODE_SPI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"ixgbe_read_eeprom_buffer_bit_bang\00", align 1
@IXGBE_SUCCESS = common dso_local global i64 0, align 8
@IXGBE_ERR_EEPROM = common dso_local global i64 0, align 8
@IXGBE_EEPROM_A8_OPCODE_SPI = common dso_local global i32 0, align 4
@IXGBE_EEPROM_OPCODE_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*, i32, i32, i32*)* @ixgbe_read_eeprom_buffer_bit_bang to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_read_eeprom_buffer_bit_bang(%struct.ixgbe_hw* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %13 = load i32, i32* @IXGBE_EEPROM_READ_OPCODE_SPI, align 4
  store i32 %13, i32* %11, align 4
  %14 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %16 = call i64 @ixgbe_acquire_eeprom(%struct.ixgbe_hw* %15)
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* @IXGBE_SUCCESS, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %4
  %21 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %22 = call i64 @ixgbe_ready_eeprom(%struct.ixgbe_hw* %21)
  %23 = load i64, i64* @IXGBE_SUCCESS, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %27 = call i32 @ixgbe_release_eeprom(%struct.ixgbe_hw* %26)
  %28 = load i64, i64* @IXGBE_ERR_EEPROM, align 8
  store i64 %28, i64* %9, align 8
  br label %29

29:                                               ; preds = %25, %20
  br label %30

30:                                               ; preds = %29, %4
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* @IXGBE_SUCCESS, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %88

34:                                               ; preds = %30
  store i32 0, i32* %12, align 4
  br label %35

35:                                               ; preds = %82, %34
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %85

39:                                               ; preds = %35
  %40 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %41 = call i32 @ixgbe_standby_eeprom(%struct.ixgbe_hw* %40)
  %42 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %43 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 8
  br i1 %46, label %47, label %56

47:                                               ; preds = %39
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %12, align 4
  %50 = add nsw i32 %48, %49
  %51 = icmp sge i32 %50, 128
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i32, i32* @IXGBE_EEPROM_A8_OPCODE_SPI, align 4
  %54 = load i32, i32* %11, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %52, %47, %39
  %57 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @IXGBE_EEPROM_OPCODE_BITS, align 4
  %60 = call i32 @ixgbe_shift_out_eeprom_bits(%struct.ixgbe_hw* %57, i32 %58, i32 %59)
  %61 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %62, %63
  %65 = mul nsw i32 %64, 2
  %66 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %67 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @ixgbe_shift_out_eeprom_bits(%struct.ixgbe_hw* %61, i32 %65, i32 %69)
  %71 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %72 = call i32 @ixgbe_shift_in_eeprom_bits(%struct.ixgbe_hw* %71, i32 16)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = ashr i32 %73, 8
  %75 = load i32, i32* %10, align 4
  %76 = shl i32 %75, 8
  %77 = or i32 %74, %76
  %78 = load i32*, i32** %8, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %77, i32* %81, align 4
  br label %82

82:                                               ; preds = %56
  %83 = load i32, i32* %12, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %12, align 4
  br label %35

85:                                               ; preds = %35
  %86 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %87 = call i32 @ixgbe_release_eeprom(%struct.ixgbe_hw* %86)
  br label %88

88:                                               ; preds = %85, %30
  %89 = load i64, i64* %9, align 8
  ret i64 %89
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @ixgbe_acquire_eeprom(%struct.ixgbe_hw*) #1

declare dso_local i64 @ixgbe_ready_eeprom(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_release_eeprom(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_standby_eeprom(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_shift_out_eeprom_bits(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @ixgbe_shift_in_eeprom_bits(%struct.ixgbe_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
