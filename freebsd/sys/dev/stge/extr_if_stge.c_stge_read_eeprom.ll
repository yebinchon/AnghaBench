; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/stge/extr_if_stge.c_stge_read_eeprom.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/stge/extr_if_stge.c_stge_read_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stge_softc = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"EEPROM failed to come ready\0A\00", align 1
@STGE_EepromCtrl = common dso_local global i32 0, align 4
@EC_OP_RR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"EEPROM read timed out\0A\00", align 1
@STGE_EepromData = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stge_softc*, i32, i32*)* @stge_read_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stge_read_eeprom(%struct.stge_softc* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.stge_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.stge_softc* %0, %struct.stge_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %7 = load %struct.stge_softc*, %struct.stge_softc** %4, align 8
  %8 = call i64 @stge_eeprom_wait(%struct.stge_softc* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load %struct.stge_softc*, %struct.stge_softc** %4, align 8
  %12 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @device_printf(i32 %13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %10, %3
  %16 = load %struct.stge_softc*, %struct.stge_softc** %4, align 8
  %17 = load i32, i32* @STGE_EepromCtrl, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @EC_EepromAddress(i32 %18)
  %20 = load i32, i32* @EC_OP_RR, align 4
  %21 = call i32 @EC_EepromOpcode(i32 %20)
  %22 = or i32 %19, %21
  %23 = call i32 @CSR_WRITE_2(%struct.stge_softc* %16, i32 %17, i32 %22)
  %24 = load %struct.stge_softc*, %struct.stge_softc** %4, align 8
  %25 = call i64 @stge_eeprom_wait(%struct.stge_softc* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %15
  %28 = load %struct.stge_softc*, %struct.stge_softc** %4, align 8
  %29 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @device_printf(i32 %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %27, %15
  %33 = load %struct.stge_softc*, %struct.stge_softc** %4, align 8
  %34 = load i32, i32* @STGE_EepromData, align 4
  %35 = call i32 @CSR_READ_2(%struct.stge_softc* %33, i32 %34)
  %36 = load i32*, i32** %6, align 8
  store i32 %35, i32* %36, align 4
  ret void
}

declare dso_local i64 @stge_eeprom_wait(%struct.stge_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @CSR_WRITE_2(%struct.stge_softc*, i32, i32) #1

declare dso_local i32 @EC_EepromAddress(i32) #1

declare dso_local i32 @EC_EepromOpcode(i32) #1

declare dso_local i32 @CSR_READ_2(%struct.stge_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
