; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_nvm.c_e1000_stop_nvm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_nvm.c_e1000_stop_nvm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [15 x i8] c"e1000_stop_nvm\00", align 1
@E1000_EECD = common dso_local global i32 0, align 4
@e1000_nvm_eeprom_spi = common dso_local global i64 0, align 8
@E1000_EECD_CS = common dso_local global i32 0, align 4
@e1000_nvm_eeprom_microwire = common dso_local global i64 0, align 8
@E1000_EECD_DI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @e1000_stop_nvm(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %4 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %6 = load i32, i32* @E1000_EECD, align 4
  %7 = call i32 @E1000_READ_REG(%struct.e1000_hw* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @e1000_nvm_eeprom_spi, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load i32, i32* @E1000_EECD_CS, align 4
  %16 = load i32, i32* %3, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %3, align 4
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %19 = call i32 @e1000_lower_eec_clk(%struct.e1000_hw* %18, i32* %3)
  br label %43

20:                                               ; preds = %1
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %22 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @e1000_nvm_eeprom_microwire, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %20
  %28 = load i32, i32* @E1000_EECD_CS, align 4
  %29 = load i32, i32* @E1000_EECD_DI, align 4
  %30 = or i32 %28, %29
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %3, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %3, align 4
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %35 = load i32, i32* @E1000_EECD, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %34, i32 %35, i32 %36)
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %39 = call i32 @e1000_raise_eec_clk(%struct.e1000_hw* %38, i32* %3)
  %40 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %41 = call i32 @e1000_lower_eec_clk(%struct.e1000_hw* %40, i32* %3)
  br label %42

42:                                               ; preds = %27, %20
  br label %43

43:                                               ; preds = %42, %14
  ret void
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @e1000_lower_eec_clk(%struct.e1000_hw*, i32*) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @e1000_raise_eec_clk(%struct.e1000_hw*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
