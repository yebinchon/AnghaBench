; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fxp/extr_if_fxp.c_fxp_eeprom_putword.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fxp/extr_if_fxp.c_fxp_eeprom_putword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fxp_softc = type { i32 }

@FXP_CSR_EEPROMCONTROL = common dso_local global i32 0, align 4
@FXP_EEPROM_EECS = common dso_local global i32 0, align 4
@FXP_EEPROM_OPC_WRITE = common dso_local global i32 0, align 4
@FXP_EEPROM_EEDO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fxp_softc*, i32, i32)* @fxp_eeprom_putword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fxp_eeprom_putword(%struct.fxp_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.fxp_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fxp_softc* %0, %struct.fxp_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.fxp_softc*, %struct.fxp_softc** %4, align 8
  %9 = load i32, i32* @FXP_CSR_EEPROMCONTROL, align 4
  %10 = load i32, i32* @FXP_EEPROM_EECS, align 4
  %11 = call i32 @CSR_WRITE_2(%struct.fxp_softc* %8, i32 %9, i32 %10)
  %12 = load %struct.fxp_softc*, %struct.fxp_softc** %4, align 8
  %13 = call i32 @fxp_eeprom_shiftin(%struct.fxp_softc* %12, i32 4, i32 3)
  %14 = load %struct.fxp_softc*, %struct.fxp_softc** %4, align 8
  %15 = load %struct.fxp_softc*, %struct.fxp_softc** %4, align 8
  %16 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sub nsw i32 %17, 2
  %19 = shl i32 3, %18
  %20 = load %struct.fxp_softc*, %struct.fxp_softc** %4, align 8
  %21 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @fxp_eeprom_shiftin(%struct.fxp_softc* %14, i32 %19, i32 %22)
  %24 = load %struct.fxp_softc*, %struct.fxp_softc** %4, align 8
  %25 = load i32, i32* @FXP_CSR_EEPROMCONTROL, align 4
  %26 = call i32 @CSR_WRITE_2(%struct.fxp_softc* %24, i32 %25, i32 0)
  %27 = call i32 @DELAY(i32 1)
  %28 = load %struct.fxp_softc*, %struct.fxp_softc** %4, align 8
  %29 = load i32, i32* @FXP_CSR_EEPROMCONTROL, align 4
  %30 = load i32, i32* @FXP_EEPROM_EECS, align 4
  %31 = call i32 @CSR_WRITE_2(%struct.fxp_softc* %28, i32 %29, i32 %30)
  %32 = load %struct.fxp_softc*, %struct.fxp_softc** %4, align 8
  %33 = load i32, i32* @FXP_EEPROM_OPC_WRITE, align 4
  %34 = call i32 @fxp_eeprom_shiftin(%struct.fxp_softc* %32, i32 %33, i32 3)
  %35 = load %struct.fxp_softc*, %struct.fxp_softc** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.fxp_softc*, %struct.fxp_softc** %4, align 8
  %38 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @fxp_eeprom_shiftin(%struct.fxp_softc* %35, i32 %36, i32 %39)
  %41 = load %struct.fxp_softc*, %struct.fxp_softc** %4, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @fxp_eeprom_shiftin(%struct.fxp_softc* %41, i32 %42, i32 16)
  %44 = load %struct.fxp_softc*, %struct.fxp_softc** %4, align 8
  %45 = load i32, i32* @FXP_CSR_EEPROMCONTROL, align 4
  %46 = call i32 @CSR_WRITE_2(%struct.fxp_softc* %44, i32 %45, i32 0)
  %47 = call i32 @DELAY(i32 1)
  %48 = load %struct.fxp_softc*, %struct.fxp_softc** %4, align 8
  %49 = load i32, i32* @FXP_CSR_EEPROMCONTROL, align 4
  %50 = load i32, i32* @FXP_EEPROM_EECS, align 4
  %51 = call i32 @CSR_WRITE_2(%struct.fxp_softc* %48, i32 %49, i32 %50)
  %52 = call i32 @DELAY(i32 1)
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %66, %3
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %54, 1000
  br i1 %55, label %56, label %69

56:                                               ; preds = %53
  %57 = load %struct.fxp_softc*, %struct.fxp_softc** %4, align 8
  %58 = load i32, i32* @FXP_CSR_EEPROMCONTROL, align 4
  %59 = call i32 @CSR_READ_2(%struct.fxp_softc* %57, i32 %58)
  %60 = load i32, i32* @FXP_EEPROM_EEDO, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %69

64:                                               ; preds = %56
  %65 = call i32 @DELAY(i32 50)
  br label %66

66:                                               ; preds = %64
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %53

69:                                               ; preds = %63, %53
  %70 = load %struct.fxp_softc*, %struct.fxp_softc** %4, align 8
  %71 = load i32, i32* @FXP_CSR_EEPROMCONTROL, align 4
  %72 = call i32 @CSR_WRITE_2(%struct.fxp_softc* %70, i32 %71, i32 0)
  %73 = call i32 @DELAY(i32 1)
  %74 = load %struct.fxp_softc*, %struct.fxp_softc** %4, align 8
  %75 = load i32, i32* @FXP_CSR_EEPROMCONTROL, align 4
  %76 = load i32, i32* @FXP_EEPROM_EECS, align 4
  %77 = call i32 @CSR_WRITE_2(%struct.fxp_softc* %74, i32 %75, i32 %76)
  %78 = load %struct.fxp_softc*, %struct.fxp_softc** %4, align 8
  %79 = call i32 @fxp_eeprom_shiftin(%struct.fxp_softc* %78, i32 4, i32 3)
  %80 = load %struct.fxp_softc*, %struct.fxp_softc** %4, align 8
  %81 = load %struct.fxp_softc*, %struct.fxp_softc** %4, align 8
  %82 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @fxp_eeprom_shiftin(%struct.fxp_softc* %80, i32 0, i32 %83)
  %85 = load %struct.fxp_softc*, %struct.fxp_softc** %4, align 8
  %86 = load i32, i32* @FXP_CSR_EEPROMCONTROL, align 4
  %87 = call i32 @CSR_WRITE_2(%struct.fxp_softc* %85, i32 %86, i32 0)
  %88 = call i32 @DELAY(i32 1)
  ret void
}

declare dso_local i32 @CSR_WRITE_2(%struct.fxp_softc*, i32, i32) #1

declare dso_local i32 @fxp_eeprom_shiftin(%struct.fxp_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @CSR_READ_2(%struct.fxp_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
