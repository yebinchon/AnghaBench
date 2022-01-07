; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fxp/extr_if_fxp.c_fxp_eeprom_shiftin.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fxp/extr_if_fxp.c_fxp_eeprom_shiftin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fxp_softc = type { i32 }

@FXP_EEPROM_EECS = common dso_local global i32 0, align 4
@FXP_EEPROM_EEDI = common dso_local global i32 0, align 4
@FXP_CSR_EEPROMCONTROL = common dso_local global i32 0, align 4
@FXP_EEPROM_EESK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fxp_softc*, i32, i32)* @fxp_eeprom_shiftin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fxp_eeprom_shiftin(%struct.fxp_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.fxp_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fxp_softc* %0, %struct.fxp_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = sub nsw i32 %9, 1
  %11 = shl i32 1, %10
  store i32 %11, i32* %8, align 4
  br label %12

12:                                               ; preds = %44, %3
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %47

15:                                               ; preds = %12
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %8, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i32, i32* @FXP_EEPROM_EECS, align 4
  %22 = load i32, i32* @FXP_EEPROM_EEDI, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %7, align 4
  br label %26

24:                                               ; preds = %15
  %25 = load i32, i32* @FXP_EEPROM_EECS, align 4
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %24, %20
  %27 = load %struct.fxp_softc*, %struct.fxp_softc** %4, align 8
  %28 = load i32, i32* @FXP_CSR_EEPROMCONTROL, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @CSR_WRITE_2(%struct.fxp_softc* %27, i32 %28, i32 %29)
  %31 = call i32 @DELAY(i32 1)
  %32 = load %struct.fxp_softc*, %struct.fxp_softc** %4, align 8
  %33 = load i32, i32* @FXP_CSR_EEPROMCONTROL, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @FXP_EEPROM_EESK, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @CSR_WRITE_2(%struct.fxp_softc* %32, i32 %33, i32 %36)
  %38 = call i32 @DELAY(i32 1)
  %39 = load %struct.fxp_softc*, %struct.fxp_softc** %4, align 8
  %40 = load i32, i32* @FXP_CSR_EEPROMCONTROL, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @CSR_WRITE_2(%struct.fxp_softc* %39, i32 %40, i32 %41)
  %43 = call i32 @DELAY(i32 1)
  br label %44

44:                                               ; preds = %26
  %45 = load i32, i32* %8, align 4
  %46 = ashr i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %12

47:                                               ; preds = %12
  ret void
}

declare dso_local i32 @CSR_WRITE_2(%struct.fxp_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
