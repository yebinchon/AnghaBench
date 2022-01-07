; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fxp/extr_if_fxp.c_fxp_eeprom_getword.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fxp/extr_if_fxp.c_fxp_eeprom_getword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fxp_softc = type { i32 }

@FXP_CSR_EEPROMCONTROL = common dso_local global i32 0, align 4
@FXP_EEPROM_EECS = common dso_local global i32 0, align 4
@FXP_EEPROM_OPC_READ = common dso_local global i32 0, align 4
@FXP_EEPROM_EEDI = common dso_local global i32 0, align 4
@FXP_EEPROM_EESK = common dso_local global i32 0, align 4
@FXP_EEPROM_EEDO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fxp_softc*, i32, i32)* @fxp_eeprom_getword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fxp_eeprom_getword(%struct.fxp_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.fxp_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fxp_softc* %0, %struct.fxp_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.fxp_softc*, %struct.fxp_softc** %4, align 8
  %11 = load i32, i32* @FXP_CSR_EEPROMCONTROL, align 4
  %12 = load i32, i32* @FXP_EEPROM_EECS, align 4
  %13 = call i32 @CSR_WRITE_2(%struct.fxp_softc* %10, i32 %11, i32 %12)
  %14 = load %struct.fxp_softc*, %struct.fxp_softc** %4, align 8
  %15 = load i32, i32* @FXP_EEPROM_OPC_READ, align 4
  %16 = call i32 @fxp_eeprom_shiftin(%struct.fxp_softc* %14, i32 %15, i32 3)
  store i32 0, i32* %8, align 4
  %17 = load %struct.fxp_softc*, %struct.fxp_softc** %4, align 8
  %18 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %19, 1
  %21 = shl i32 1, %20
  store i32 %21, i32* %9, align 4
  br label %22

22:                                               ; preds = %71, %3
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %74

25:                                               ; preds = %22
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %9, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* @FXP_EEPROM_EECS, align 4
  %32 = load i32, i32* @FXP_EEPROM_EEDI, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %7, align 4
  br label %36

34:                                               ; preds = %25
  %35 = load i32, i32* @FXP_EEPROM_EECS, align 4
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %34, %30
  %37 = load %struct.fxp_softc*, %struct.fxp_softc** %4, align 8
  %38 = load i32, i32* @FXP_CSR_EEPROMCONTROL, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @CSR_WRITE_2(%struct.fxp_softc* %37, i32 %38, i32 %39)
  %41 = call i32 @DELAY(i32 1)
  %42 = load %struct.fxp_softc*, %struct.fxp_softc** %4, align 8
  %43 = load i32, i32* @FXP_CSR_EEPROMCONTROL, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @FXP_EEPROM_EESK, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @CSR_WRITE_2(%struct.fxp_softc* %42, i32 %43, i32 %46)
  %48 = call i32 @DELAY(i32 1)
  %49 = load %struct.fxp_softc*, %struct.fxp_softc** %4, align 8
  %50 = load i32, i32* @FXP_CSR_EEPROMCONTROL, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @CSR_WRITE_2(%struct.fxp_softc* %49, i32 %50, i32 %51)
  %53 = call i32 @DELAY(i32 1)
  %54 = load %struct.fxp_softc*, %struct.fxp_softc** %4, align 8
  %55 = load i32, i32* @FXP_CSR_EEPROMCONTROL, align 4
  %56 = call i32 @CSR_READ_2(%struct.fxp_softc* %54, i32 %55)
  %57 = load i32, i32* @FXP_EEPROM_EEDO, align 4
  %58 = and i32 %56, %57
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %36
  %64 = load i32, i32* %7, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.fxp_softc*, %struct.fxp_softc** %4, align 8
  %69 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  br label %74

70:                                               ; preds = %63, %36
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %9, align 4
  %73 = ashr i32 %72, 1
  store i32 %73, i32* %9, align 4
  br label %22

74:                                               ; preds = %66, %22
  store i32 0, i32* %8, align 4
  %75 = load i32, i32* @FXP_EEPROM_EECS, align 4
  store i32 %75, i32* %7, align 4
  store i32 32768, i32* %9, align 4
  br label %76

76:                                               ; preds = %103, %74
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %106

79:                                               ; preds = %76
  %80 = load %struct.fxp_softc*, %struct.fxp_softc** %4, align 8
  %81 = load i32, i32* @FXP_CSR_EEPROMCONTROL, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @FXP_EEPROM_EESK, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @CSR_WRITE_2(%struct.fxp_softc* %80, i32 %81, i32 %84)
  %86 = call i32 @DELAY(i32 1)
  %87 = load %struct.fxp_softc*, %struct.fxp_softc** %4, align 8
  %88 = load i32, i32* @FXP_CSR_EEPROMCONTROL, align 4
  %89 = call i32 @CSR_READ_2(%struct.fxp_softc* %87, i32 %88)
  %90 = load i32, i32* @FXP_EEPROM_EEDO, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %79
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %8, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %8, align 4
  br label %97

97:                                               ; preds = %93, %79
  %98 = load %struct.fxp_softc*, %struct.fxp_softc** %4, align 8
  %99 = load i32, i32* @FXP_CSR_EEPROMCONTROL, align 4
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @CSR_WRITE_2(%struct.fxp_softc* %98, i32 %99, i32 %100)
  %102 = call i32 @DELAY(i32 1)
  br label %103

103:                                              ; preds = %97
  %104 = load i32, i32* %9, align 4
  %105 = ashr i32 %104, 1
  store i32 %105, i32* %9, align 4
  br label %76

106:                                              ; preds = %76
  %107 = load %struct.fxp_softc*, %struct.fxp_softc** %4, align 8
  %108 = load i32, i32* @FXP_CSR_EEPROMCONTROL, align 4
  %109 = call i32 @CSR_WRITE_2(%struct.fxp_softc* %107, i32 %108, i32 0)
  %110 = call i32 @DELAY(i32 1)
  %111 = load i32, i32* %8, align 4
  ret i32 %111
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
