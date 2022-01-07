; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_nvm.c_e1000_ready_nvm_eeprom.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_nvm.c_e1000_ready_nvm_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_nvm_info }
%struct.e1000_nvm_info = type { i64, i32 }

@E1000_EECD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"e1000_ready_nvm_eeprom\00", align 1
@e1000_nvm_eeprom_microwire = common dso_local global i64 0, align 8
@E1000_EECD_DI = common dso_local global i32 0, align 4
@E1000_EECD_SK = common dso_local global i32 0, align 4
@E1000_EECD_CS = common dso_local global i32 0, align 4
@e1000_nvm_eeprom_spi = common dso_local global i64 0, align 8
@NVM_MAX_RETRY_SPI = common dso_local global i64 0, align 8
@NVM_RDSR_OPCODE_SPI = common dso_local global i32 0, align 4
@NVM_STATUS_RDY_SPI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"SPI NVM Status error\0A\00", align 1
@E1000_ERR_NVM = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_ready_nvm_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_ready_nvm_eeprom(%struct.e1000_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_nvm_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 0
  store %struct.e1000_nvm_info* %9, %struct.e1000_nvm_info** %4, align 8
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %11 = load i32, i32* @E1000_EECD, align 4
  %12 = call i32 @E1000_READ_REG(%struct.e1000_hw* %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %4, align 8
  %15 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @e1000_nvm_eeprom_microwire, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %37

19:                                               ; preds = %1
  %20 = load i32, i32* @E1000_EECD_DI, align 4
  %21 = load i32, i32* @E1000_EECD_SK, align 4
  %22 = or i32 %20, %21
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %27 = load i32, i32* @E1000_EECD, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %26, i32 %27, i32 %28)
  %30 = load i32, i32* @E1000_EECD_CS, align 4
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %34 = load i32, i32* @E1000_EECD, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %33, i32 %34, i32 %35)
  br label %92

37:                                               ; preds = %1
  %38 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %4, align 8
  %39 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @e1000_nvm_eeprom_spi, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %91

43:                                               ; preds = %37
  %44 = load i64, i64* @NVM_MAX_RETRY_SPI, align 8
  store i64 %44, i64* %7, align 8
  %45 = load i32, i32* @E1000_EECD_CS, align 4
  %46 = load i32, i32* @E1000_EECD_SK, align 4
  %47 = or i32 %45, %46
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %5, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %5, align 4
  %51 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %52 = load i32, i32* @E1000_EECD, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %51, i32 %52, i32 %53)
  %55 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %56 = call i32 @E1000_WRITE_FLUSH(%struct.e1000_hw* %55)
  %57 = call i32 @usec_delay(i32 1)
  br label %58

58:                                               ; preds = %77, %43
  %59 = load i64, i64* %7, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %83

61:                                               ; preds = %58
  %62 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %63 = load i32, i32* @NVM_RDSR_OPCODE_SPI, align 4
  %64 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %65 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @e1000_shift_out_eec_bits(%struct.e1000_hw* %62, i32 %63, i32 %67)
  %69 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %70 = call i64 @e1000_shift_in_eec_bits(%struct.e1000_hw* %69, i32 8)
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @NVM_STATUS_RDY_SPI, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %61
  br label %83

77:                                               ; preds = %61
  %78 = call i32 @usec_delay(i32 5)
  %79 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %80 = call i32 @e1000_standby_nvm(%struct.e1000_hw* %79)
  %81 = load i64, i64* %7, align 8
  %82 = add nsw i64 %81, -1
  store i64 %82, i64* %7, align 8
  br label %58

83:                                               ; preds = %76, %58
  %84 = load i64, i64* %7, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %83
  %87 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %88 = load i32, i32* @E1000_ERR_NVM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  br label %94

90:                                               ; preds = %83
  br label %91

91:                                               ; preds = %90, %37
  br label %92

92:                                               ; preds = %91, %19
  %93 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %92, %86
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @E1000_WRITE_FLUSH(%struct.e1000_hw*) #1

declare dso_local i32 @usec_delay(i32) #1

declare dso_local i32 @e1000_shift_out_eec_bits(%struct.e1000_hw*, i32, i32) #1

declare dso_local i64 @e1000_shift_in_eec_bits(%struct.e1000_hw*, i32) #1

declare dso_local i32 @e1000_standby_nvm(%struct.e1000_hw*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
