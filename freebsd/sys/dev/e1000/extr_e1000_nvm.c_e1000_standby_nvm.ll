; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_nvm.c_e1000_standby_nvm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_nvm.c_e1000_standby_nvm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_nvm_info }
%struct.e1000_nvm_info = type { i64, i32 }

@E1000_EECD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"e1000_standby_nvm\00", align 1
@e1000_nvm_eeprom_microwire = common dso_local global i64 0, align 8
@E1000_EECD_CS = common dso_local global i32 0, align 4
@E1000_EECD_SK = common dso_local global i32 0, align 4
@e1000_nvm_eeprom_spi = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_hw*)* @e1000_standby_nvm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_standby_nvm(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_nvm_info*, align 8
  %4 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %5 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %6 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %5, i32 0, i32 0
  store %struct.e1000_nvm_info* %6, %struct.e1000_nvm_info** %3, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %8 = load i32, i32* @E1000_EECD, align 4
  %9 = call i32 @E1000_READ_REG(%struct.e1000_hw* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %12 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @e1000_nvm_eeprom_microwire, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %50

16:                                               ; preds = %1
  %17 = load i32, i32* @E1000_EECD_CS, align 4
  %18 = load i32, i32* @E1000_EECD_SK, align 4
  %19 = or i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %4, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %4, align 4
  %23 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %24 = load i32, i32* @E1000_EECD, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %23, i32 %24, i32 %25)
  %27 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %28 = call i32 @E1000_WRITE_FLUSH(%struct.e1000_hw* %27)
  %29 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %30 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @usec_delay(i32 %31)
  %33 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %34 = call i32 @e1000_raise_eec_clk(%struct.e1000_hw* %33, i32* %4)
  %35 = load i32, i32* @E1000_EECD_CS, align 4
  %36 = load i32, i32* %4, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %4, align 4
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %39 = load i32, i32* @E1000_EECD, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %38, i32 %39, i32 %40)
  %42 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %43 = call i32 @E1000_WRITE_FLUSH(%struct.e1000_hw* %42)
  %44 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %45 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @usec_delay(i32 %46)
  %48 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %49 = call i32 @e1000_lower_eec_clk(%struct.e1000_hw* %48, i32* %4)
  br label %85

50:                                               ; preds = %1
  %51 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %52 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @e1000_nvm_eeprom_spi, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %84

56:                                               ; preds = %50
  %57 = load i32, i32* @E1000_EECD_CS, align 4
  %58 = load i32, i32* %4, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %4, align 4
  %60 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %61 = load i32, i32* @E1000_EECD, align 4
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %60, i32 %61, i32 %62)
  %64 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %65 = call i32 @E1000_WRITE_FLUSH(%struct.e1000_hw* %64)
  %66 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %67 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @usec_delay(i32 %68)
  %70 = load i32, i32* @E1000_EECD_CS, align 4
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %4, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %4, align 4
  %74 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %75 = load i32, i32* @E1000_EECD, align 4
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %74, i32 %75, i32 %76)
  %78 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %79 = call i32 @E1000_WRITE_FLUSH(%struct.e1000_hw* %78)
  %80 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %81 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @usec_delay(i32 %82)
  br label %84

84:                                               ; preds = %56, %50
  br label %85

85:                                               ; preds = %84, %16
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
