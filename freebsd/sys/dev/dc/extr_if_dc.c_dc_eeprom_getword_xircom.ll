; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_eeprom_getword_xircom.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_eeprom_getword_xircom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_softc = type { i32 }

@DC_SIO_ROMSEL = common dso_local global i32 0, align 4
@DC_SIO_ROMCTL_READ = common dso_local global i32 0, align 4
@DC_ROM = common dso_local global i32 0, align 4
@DC_SIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc_softc*, i32, i32*)* @dc_eeprom_getword_xircom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dc_eeprom_getword_xircom(%struct.dc_softc* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.dc_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.dc_softc* %0, %struct.dc_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* @DC_SIO_ROMSEL, align 4
  %8 = load i32, i32* @DC_SIO_ROMCTL_READ, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @SIO_SET(i32 %9)
  %11 = load i32, i32* %5, align 4
  %12 = mul nsw i32 %11, 2
  store i32 %12, i32* %5, align 4
  %13 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %14 = load i32, i32* @DC_ROM, align 4
  %15 = load i32, i32* %5, align 4
  %16 = or i32 %15, 352
  %17 = call i32 @CSR_WRITE_4(%struct.dc_softc* %13, i32 %14, i32 %16)
  %18 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %19 = load i32, i32* @DC_SIO, align 4
  %20 = call i64 @CSR_READ_4(%struct.dc_softc* %18, i32 %19)
  %21 = trunc i64 %20 to i32
  %22 = and i32 %21, 255
  %23 = load i32*, i32** %6, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  %26 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %27 = load i32, i32* @DC_ROM, align 4
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, 352
  %30 = call i32 @CSR_WRITE_4(%struct.dc_softc* %26, i32 %27, i32 %29)
  %31 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %32 = load i32, i32* @DC_SIO, align 4
  %33 = call i64 @CSR_READ_4(%struct.dc_softc* %31, i32 %32)
  %34 = trunc i64 %33 to i32
  %35 = and i32 %34, 255
  %36 = shl i32 %35, 8
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %36
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* @DC_SIO_ROMSEL, align 4
  %41 = load i32, i32* @DC_SIO_ROMCTL_READ, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @SIO_CLR(i32 %42)
  ret void
}

declare dso_local i32 @SIO_SET(i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.dc_softc*, i32, i32) #1

declare dso_local i64 @CSR_READ_4(%struct.dc_softc*, i32) #1

declare dso_local i32 @SIO_CLR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
