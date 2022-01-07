; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_eeprom_getbyte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_eeprom_getbyte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_softc = type { i32 }

@EEPROM_START = common dso_local global i32 0, align 4
@EEPROM_CTL_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"failed to send write command, status: %x\0A\00", align 1
@TI_MISC_LOCAL_CTL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to send address, status: %x\0A\00", align 1
@EEPROM_STOP = common dso_local global i32 0, align 4
@EEPROM_CTL_READ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"failed to send read command, status: %x\0A\00", align 1
@TI_MLC_EE_TXEN = common dso_local global i32 0, align 4
@TI_MLC_EE_CLK = common dso_local global i32 0, align 4
@TI_MLC_EE_DIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_softc*, i32, i32*)* @ti_eeprom_getbyte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_eeprom_getbyte(%struct.ti_softc* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ti_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ti_softc* %0, %struct.ti_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* @EEPROM_START, align 4
  %11 = load %struct.ti_softc*, %struct.ti_softc** %5, align 8
  %12 = load i32, i32* @EEPROM_CTL_WRITE, align 4
  %13 = call i64 @ti_eeprom_putbyte(%struct.ti_softc* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %3
  %16 = load %struct.ti_softc*, %struct.ti_softc** %5, align 8
  %17 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ti_softc*, %struct.ti_softc** %5, align 8
  %20 = load i32, i32* @TI_MISC_LOCAL_CTL, align 4
  %21 = call i32 @CSR_READ_4(%struct.ti_softc* %19, i32 %20)
  %22 = call i32 @device_printf(i32 %18, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %21)
  store i32 1, i32* %4, align 4
  br label %104

23:                                               ; preds = %3
  %24 = load %struct.ti_softc*, %struct.ti_softc** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = ashr i32 %25, 8
  %27 = and i32 %26, 255
  %28 = call i64 @ti_eeprom_putbyte(%struct.ti_softc* %24, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %23
  %31 = load %struct.ti_softc*, %struct.ti_softc** %5, align 8
  %32 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ti_softc*, %struct.ti_softc** %5, align 8
  %35 = load i32, i32* @TI_MISC_LOCAL_CTL, align 4
  %36 = call i32 @CSR_READ_4(%struct.ti_softc* %34, i32 %35)
  %37 = call i32 @device_printf(i32 %33, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  store i32 1, i32* %4, align 4
  br label %104

38:                                               ; preds = %23
  %39 = load %struct.ti_softc*, %struct.ti_softc** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = and i32 %40, 255
  %42 = call i64 @ti_eeprom_putbyte(%struct.ti_softc* %39, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = load %struct.ti_softc*, %struct.ti_softc** %5, align 8
  %46 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ti_softc*, %struct.ti_softc** %5, align 8
  %49 = load i32, i32* @TI_MISC_LOCAL_CTL, align 4
  %50 = call i32 @CSR_READ_4(%struct.ti_softc* %48, i32 %49)
  %51 = call i32 @device_printf(i32 %47, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  store i32 1, i32* %4, align 4
  br label %104

52:                                               ; preds = %38
  %53 = load i32, i32* @EEPROM_STOP, align 4
  %54 = load i32, i32* @EEPROM_START, align 4
  %55 = load %struct.ti_softc*, %struct.ti_softc** %5, align 8
  %56 = load i32, i32* @EEPROM_CTL_READ, align 4
  %57 = call i64 @ti_eeprom_putbyte(%struct.ti_softc* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %52
  %60 = load %struct.ti_softc*, %struct.ti_softc** %5, align 8
  %61 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ti_softc*, %struct.ti_softc** %5, align 8
  %64 = load i32, i32* @TI_MISC_LOCAL_CTL, align 4
  %65 = call i32 @CSR_READ_4(%struct.ti_softc* %63, i32 %64)
  %66 = call i32 @device_printf(i32 %62, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  store i32 1, i32* %4, align 4
  br label %104

67:                                               ; preds = %52
  %68 = load %struct.ti_softc*, %struct.ti_softc** %5, align 8
  %69 = load i32, i32* @TI_MISC_LOCAL_CTL, align 4
  %70 = load i32, i32* @TI_MLC_EE_TXEN, align 4
  %71 = call i32 @TI_CLRBIT(%struct.ti_softc* %68, i32 %69, i32 %70)
  store i32 128, i32* %8, align 4
  br label %72

72:                                               ; preds = %97, %67
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %100

75:                                               ; preds = %72
  %76 = load %struct.ti_softc*, %struct.ti_softc** %5, align 8
  %77 = load i32, i32* @TI_MISC_LOCAL_CTL, align 4
  %78 = load i32, i32* @TI_MLC_EE_CLK, align 4
  %79 = call i32 @TI_SETBIT(%struct.ti_softc* %76, i32 %77, i32 %78)
  %80 = call i32 @DELAY(i32 1)
  %81 = load %struct.ti_softc*, %struct.ti_softc** %5, align 8
  %82 = load i32, i32* @TI_MISC_LOCAL_CTL, align 4
  %83 = call i32 @CSR_READ_4(%struct.ti_softc* %81, i32 %82)
  %84 = load i32, i32* @TI_MLC_EE_DIN, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %75
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %9, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %87, %75
  %92 = load %struct.ti_softc*, %struct.ti_softc** %5, align 8
  %93 = load i32, i32* @TI_MISC_LOCAL_CTL, align 4
  %94 = load i32, i32* @TI_MLC_EE_CLK, align 4
  %95 = call i32 @TI_CLRBIT(%struct.ti_softc* %92, i32 %93, i32 %94)
  %96 = call i32 @DELAY(i32 1)
  br label %97

97:                                               ; preds = %91
  %98 = load i32, i32* %8, align 4
  %99 = ashr i32 %98, 1
  store i32 %99, i32* %8, align 4
  br label %72

100:                                              ; preds = %72
  %101 = load i32, i32* @EEPROM_STOP, align 4
  %102 = load i32, i32* %9, align 4
  %103 = load i32*, i32** %7, align 8
  store i32 %102, i32* %103, align 4
  store i32 0, i32* %4, align 4
  br label %104

104:                                              ; preds = %100, %59, %44, %30, %15
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i64 @ti_eeprom_putbyte(%struct.ti_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.ti_softc*, i32) #1

declare dso_local i32 @TI_CLRBIT(%struct.ti_softc*, i32, i32) #1

declare dso_local i32 @TI_SETBIT(%struct.ti_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
