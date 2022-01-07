; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_eeprom_putbyte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_eeprom_putbyte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_softc = type { i32 }

@TI_MISC_LOCAL_CTL = common dso_local global i32 0, align 4
@TI_MLC_EE_TXEN = common dso_local global i32 0, align 4
@TI_MLC_EE_DOUT = common dso_local global i32 0, align 4
@TI_MLC_EE_CLK = common dso_local global i32 0, align 4
@TI_MLC_EE_DIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_softc*, i32)* @ti_eeprom_putbyte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_eeprom_putbyte(%struct.ti_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.ti_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ti_softc* %0, %struct.ti_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %8 = load i32, i32* @TI_MISC_LOCAL_CTL, align 4
  %9 = load i32, i32* @TI_MLC_EE_TXEN, align 4
  %10 = call i32 @TI_SETBIT(%struct.ti_softc* %7, i32 %8, i32 %9)
  store i32 128, i32* %5, align 4
  br label %11

11:                                               ; preds = %40, %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %43

14:                                               ; preds = %11
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %21 = load i32, i32* @TI_MISC_LOCAL_CTL, align 4
  %22 = load i32, i32* @TI_MLC_EE_DOUT, align 4
  %23 = call i32 @TI_SETBIT(%struct.ti_softc* %20, i32 %21, i32 %22)
  br label %29

24:                                               ; preds = %14
  %25 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %26 = load i32, i32* @TI_MISC_LOCAL_CTL, align 4
  %27 = load i32, i32* @TI_MLC_EE_DOUT, align 4
  %28 = call i32 @TI_CLRBIT(%struct.ti_softc* %25, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %24, %19
  %30 = call i32 @DELAY(i32 1)
  %31 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %32 = load i32, i32* @TI_MISC_LOCAL_CTL, align 4
  %33 = load i32, i32* @TI_MLC_EE_CLK, align 4
  %34 = call i32 @TI_SETBIT(%struct.ti_softc* %31, i32 %32, i32 %33)
  %35 = call i32 @DELAY(i32 1)
  %36 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %37 = load i32, i32* @TI_MISC_LOCAL_CTL, align 4
  %38 = load i32, i32* @TI_MLC_EE_CLK, align 4
  %39 = call i32 @TI_CLRBIT(%struct.ti_softc* %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %29
  %41 = load i32, i32* %5, align 4
  %42 = ashr i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %11

43:                                               ; preds = %11
  %44 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %45 = load i32, i32* @TI_MISC_LOCAL_CTL, align 4
  %46 = load i32, i32* @TI_MLC_EE_TXEN, align 4
  %47 = call i32 @TI_CLRBIT(%struct.ti_softc* %44, i32 %45, i32 %46)
  %48 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %49 = load i32, i32* @TI_MISC_LOCAL_CTL, align 4
  %50 = load i32, i32* @TI_MLC_EE_CLK, align 4
  %51 = call i32 @TI_SETBIT(%struct.ti_softc* %48, i32 %49, i32 %50)
  %52 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %53 = load i32, i32* @TI_MISC_LOCAL_CTL, align 4
  %54 = call i32 @CSR_READ_4(%struct.ti_softc* %52, i32 %53)
  %55 = load i32, i32* @TI_MLC_EE_DIN, align 4
  %56 = and i32 %54, %55
  store i32 %56, i32* %6, align 4
  %57 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %58 = load i32, i32* @TI_MISC_LOCAL_CTL, align 4
  %59 = load i32, i32* @TI_MLC_EE_CLK, align 4
  %60 = call i32 @TI_CLRBIT(%struct.ti_softc* %57, i32 %58, i32 %59)
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i32 @TI_SETBIT(%struct.ti_softc*, i32, i32) #1

declare dso_local i32 @TI_CLRBIT(%struct.ti_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @CSR_READ_4(%struct.ti_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
