; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_eeprom_idle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_eeprom_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_softc = type { i32 }

@DC_SIO = common dso_local global i32 0, align 4
@DC_SIO_EESEL = common dso_local global i32 0, align 4
@DC_SIO_ROMCTL_READ = common dso_local global i32 0, align 4
@DC_SIO_EE_CLK = common dso_local global i32 0, align 4
@DC_SIO_EE_CS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc_softc*)* @dc_eeprom_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dc_eeprom_idle(%struct.dc_softc* %0) #0 {
  %2 = alloca %struct.dc_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.dc_softc* %0, %struct.dc_softc** %2, align 8
  %4 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %5 = load i32, i32* @DC_SIO, align 4
  %6 = load i32, i32* @DC_SIO_EESEL, align 4
  %7 = call i32 @CSR_WRITE_4(%struct.dc_softc* %4, i32 %5, i32 %6)
  %8 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %9 = call i32 @dc_delay(%struct.dc_softc* %8)
  %10 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %11 = load i32, i32* @DC_SIO, align 4
  %12 = load i32, i32* @DC_SIO_ROMCTL_READ, align 4
  %13 = call i32 @DC_SETBIT(%struct.dc_softc* %10, i32 %11, i32 %12)
  %14 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %15 = call i32 @dc_delay(%struct.dc_softc* %14)
  %16 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %17 = load i32, i32* @DC_SIO, align 4
  %18 = load i32, i32* @DC_SIO_EE_CLK, align 4
  %19 = call i32 @DC_CLRBIT(%struct.dc_softc* %16, i32 %17, i32 %18)
  %20 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %21 = call i32 @dc_delay(%struct.dc_softc* %20)
  %22 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %23 = load i32, i32* @DC_SIO, align 4
  %24 = load i32, i32* @DC_SIO_EE_CS, align 4
  %25 = call i32 @DC_SETBIT(%struct.dc_softc* %22, i32 %23, i32 %24)
  %26 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %27 = call i32 @dc_delay(%struct.dc_softc* %26)
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %44, %1
  %29 = load i32, i32* %3, align 4
  %30 = icmp slt i32 %29, 25
  br i1 %30, label %31, label %47

31:                                               ; preds = %28
  %32 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %33 = load i32, i32* @DC_SIO, align 4
  %34 = load i32, i32* @DC_SIO_EE_CLK, align 4
  %35 = call i32 @DC_CLRBIT(%struct.dc_softc* %32, i32 %33, i32 %34)
  %36 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %37 = call i32 @dc_delay(%struct.dc_softc* %36)
  %38 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %39 = load i32, i32* @DC_SIO, align 4
  %40 = load i32, i32* @DC_SIO_EE_CLK, align 4
  %41 = call i32 @DC_SETBIT(%struct.dc_softc* %38, i32 %39, i32 %40)
  %42 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %43 = call i32 @dc_delay(%struct.dc_softc* %42)
  br label %44

44:                                               ; preds = %31
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %28

47:                                               ; preds = %28
  %48 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %49 = load i32, i32* @DC_SIO, align 4
  %50 = load i32, i32* @DC_SIO_EE_CLK, align 4
  %51 = call i32 @DC_CLRBIT(%struct.dc_softc* %48, i32 %49, i32 %50)
  %52 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %53 = call i32 @dc_delay(%struct.dc_softc* %52)
  %54 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %55 = load i32, i32* @DC_SIO, align 4
  %56 = load i32, i32* @DC_SIO_EE_CS, align 4
  %57 = call i32 @DC_CLRBIT(%struct.dc_softc* %54, i32 %55, i32 %56)
  %58 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %59 = call i32 @dc_delay(%struct.dc_softc* %58)
  %60 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %61 = load i32, i32* @DC_SIO, align 4
  %62 = call i32 @CSR_WRITE_4(%struct.dc_softc* %60, i32 %61, i32 0)
  ret void
}

declare dso_local i32 @CSR_WRITE_4(%struct.dc_softc*, i32, i32) #1

declare dso_local i32 @dc_delay(%struct.dc_softc*) #1

declare dso_local i32 @DC_SETBIT(%struct.dc_softc*, i32, i32) #1

declare dso_local i32 @DC_CLRBIT(%struct.dc_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
