; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_eeprom_getword.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_eeprom_getword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_softc = type { i32 }

@DC_SIO = common dso_local global i32 0, align 4
@DC_SIO_EESEL = common dso_local global i32 0, align 4
@DC_SIO_ROMCTL_READ = common dso_local global i32 0, align 4
@DC_SIO_EE_CLK = common dso_local global i32 0, align 4
@DC_SIO_EE_CS = common dso_local global i32 0, align 4
@DC_SIO_EE_DATAOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc_softc*, i32, i32*)* @dc_eeprom_getword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dc_eeprom_getword(%struct.dc_softc* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.dc_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dc_softc* %0, %struct.dc_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %10 = call i32 @dc_eeprom_idle(%struct.dc_softc* %9)
  %11 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %12 = load i32, i32* @DC_SIO, align 4
  %13 = load i32, i32* @DC_SIO_EESEL, align 4
  %14 = call i32 @CSR_WRITE_4(%struct.dc_softc* %11, i32 %12, i32 %13)
  %15 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %16 = call i32 @dc_delay(%struct.dc_softc* %15)
  %17 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %18 = load i32, i32* @DC_SIO, align 4
  %19 = load i32, i32* @DC_SIO_ROMCTL_READ, align 4
  %20 = call i32 @DC_SETBIT(%struct.dc_softc* %17, i32 %18, i32 %19)
  %21 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %22 = call i32 @dc_delay(%struct.dc_softc* %21)
  %23 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %24 = load i32, i32* @DC_SIO, align 4
  %25 = load i32, i32* @DC_SIO_EE_CLK, align 4
  %26 = call i32 @DC_CLRBIT(%struct.dc_softc* %23, i32 %24, i32 %25)
  %27 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %28 = call i32 @dc_delay(%struct.dc_softc* %27)
  %29 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %30 = load i32, i32* @DC_SIO, align 4
  %31 = load i32, i32* @DC_SIO_EE_CS, align 4
  %32 = call i32 @DC_SETBIT(%struct.dc_softc* %29, i32 %30, i32 %31)
  %33 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %34 = call i32 @dc_delay(%struct.dc_softc* %33)
  %35 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @dc_eeprom_putbyte(%struct.dc_softc* %35, i32 %36)
  store i32 32768, i32* %7, align 4
  br label %38

38:                                               ; preds = %63, %3
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %66

41:                                               ; preds = %38
  %42 = load i32, i32* @DC_SIO_EE_CLK, align 4
  %43 = call i32 @SIO_SET(i32 %42)
  %44 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %45 = call i32 @dc_delay(%struct.dc_softc* %44)
  %46 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %47 = load i32, i32* @DC_SIO, align 4
  %48 = call i32 @CSR_READ_4(%struct.dc_softc* %46, i32 %47)
  %49 = load i32, i32* @DC_SIO_EE_DATAOUT, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %41
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %52, %41
  %57 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %58 = call i32 @dc_delay(%struct.dc_softc* %57)
  %59 = load i32, i32* @DC_SIO_EE_CLK, align 4
  %60 = call i32 @SIO_CLR(i32 %59)
  %61 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %62 = call i32 @dc_delay(%struct.dc_softc* %61)
  br label %63

63:                                               ; preds = %56
  %64 = load i32, i32* %7, align 4
  %65 = ashr i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %38

66:                                               ; preds = %38
  %67 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %68 = call i32 @dc_eeprom_idle(%struct.dc_softc* %67)
  %69 = load i32, i32* %8, align 4
  %70 = load i32*, i32** %6, align 8
  store i32 %69, i32* %70, align 4
  ret void
}

declare dso_local i32 @dc_eeprom_idle(%struct.dc_softc*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.dc_softc*, i32, i32) #1

declare dso_local i32 @dc_delay(%struct.dc_softc*) #1

declare dso_local i32 @DC_SETBIT(%struct.dc_softc*, i32, i32) #1

declare dso_local i32 @DC_CLRBIT(%struct.dc_softc*, i32, i32) #1

declare dso_local i32 @dc_eeprom_putbyte(%struct.dc_softc*, i32) #1

declare dso_local i32 @SIO_SET(i32) #1

declare dso_local i32 @CSR_READ_4(%struct.dc_softc*, i32) #1

declare dso_local i32 @SIO_CLR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
