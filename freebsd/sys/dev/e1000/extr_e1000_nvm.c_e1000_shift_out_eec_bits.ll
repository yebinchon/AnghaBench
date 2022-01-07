; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_nvm.c_e1000_shift_out_eec_bits.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_nvm.c_e1000_shift_out_eec_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_nvm_info }
%struct.e1000_nvm_info = type { i64, i32 }

@E1000_EECD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"e1000_shift_out_eec_bits\00", align 1
@e1000_nvm_eeprom_microwire = common dso_local global i64 0, align 8
@E1000_EECD_DO = common dso_local global i32 0, align 4
@e1000_nvm_eeprom_spi = common dso_local global i64 0, align 8
@E1000_EECD_DI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_hw*, i32, i32)* @e1000_shift_out_eec_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_shift_out_eec_bits(%struct.e1000_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.e1000_nvm_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %11 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %10, i32 0, i32 0
  store %struct.e1000_nvm_info* %11, %struct.e1000_nvm_info** %7, align 8
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %13 = load i32, i32* @E1000_EECD, align 4
  %14 = call i32 @E1000_READ_REG(%struct.e1000_hw* %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %6, align 4
  %17 = sub nsw i32 %16, 1
  %18 = shl i32 1, %17
  store i32 %18, i32* %9, align 4
  %19 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %7, align 8
  %20 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @e1000_nvm_eeprom_microwire, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load i32, i32* @E1000_EECD_DO, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %8, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %8, align 4
  br label %40

29:                                               ; preds = %3
  %30 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %7, align 8
  %31 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @e1000_nvm_eeprom_spi, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i32, i32* @E1000_EECD_DO, align 4
  %37 = load i32, i32* %8, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %35, %29
  br label %40

40:                                               ; preds = %39, %24
  br label %41

41:                                               ; preds = %71, %40
  %42 = load i32, i32* @E1000_EECD_DI, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %8, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %9, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %41
  %51 = load i32, i32* @E1000_EECD_DI, align 4
  %52 = load i32, i32* %8, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %50, %41
  %55 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %56 = load i32, i32* @E1000_EECD, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %55, i32 %56, i32 %57)
  %59 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %60 = call i32 @E1000_WRITE_FLUSH(%struct.e1000_hw* %59)
  %61 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %7, align 8
  %62 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @usec_delay(i32 %63)
  %65 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %66 = call i32 @e1000_raise_eec_clk(%struct.e1000_hw* %65, i32* %8)
  %67 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %68 = call i32 @e1000_lower_eec_clk(%struct.e1000_hw* %67, i32* %8)
  %69 = load i32, i32* %9, align 4
  %70 = ashr i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %54
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %41, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* @E1000_EECD_DI, align 4
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %8, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %8, align 4
  %79 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %80 = load i32, i32* @E1000_EECD, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %79, i32 %80, i32 %81)
  ret void
}

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @E1000_WRITE_FLUSH(%struct.e1000_hw*) #1

declare dso_local i32 @usec_delay(i32) #1

declare dso_local i32 @e1000_raise_eec_clk(%struct.e1000_hw*, i32*) #1

declare dso_local i32 @e1000_lower_eec_clk(%struct.e1000_hw*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
