; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rc/extr_rc.c_rc_hwreset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rc/extr_rc.c_rc_hwreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_softc = type { i32 }

@CCR_HWRESET = common dso_local global i32 0, align 4
@RC_CTOUT = common dso_local global i32 0, align 4
@CD180_GIVR = common dso_local global i32 0, align 4
@CD180_GICR = common dso_local global i32 0, align 4
@CD180_PPRL = common dso_local global i32 0, align 4
@RC_OSCFREQ = common dso_local global i32 0, align 4
@CD180_PPRH = common dso_local global i32 0, align 4
@CD180_PILR1 = common dso_local global i32 0, align 4
@RC_PILR_MODEM = common dso_local global i32 0, align 4
@CD180_PILR2 = common dso_local global i32 0, align 4
@RC_PILR_TX = common dso_local global i32 0, align 4
@CD180_PILR3 = common dso_local global i32 0, align 4
@RC_PILR_RX = common dso_local global i32 0, align 4
@RC_DTREG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rc_softc*, i32)* @rc_hwreset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rc_hwreset(%struct.rc_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.rc_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.rc_softc* %0, %struct.rc_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.rc_softc*, %struct.rc_softc** %3, align 8
  %6 = load i32, i32* @CCR_HWRESET, align 4
  %7 = call i32 @CCRCMD(%struct.rc_softc* %5, i32 -1, i32 %6)
  %8 = call i32 @DELAY(i32 20000)
  %9 = load %struct.rc_softc*, %struct.rc_softc** %3, align 8
  %10 = call i32 @WAITFORCCR(%struct.rc_softc* %9, i32 -1)
  %11 = load %struct.rc_softc*, %struct.rc_softc** %3, align 8
  %12 = load i32, i32* @RC_CTOUT, align 4
  %13 = call i32 @rcout(%struct.rc_softc* %11, i32 %12, i32 0)
  %14 = load %struct.rc_softc*, %struct.rc_softc** %3, align 8
  %15 = load i32, i32* @CD180_GIVR, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @rcout(%struct.rc_softc* %14, i32 %15, i32 %16)
  %18 = load %struct.rc_softc*, %struct.rc_softc** %3, align 8
  %19 = load i32, i32* @CD180_GICR, align 4
  %20 = call i32 @rcout(%struct.rc_softc* %18, i32 %19, i32 0)
  %21 = load %struct.rc_softc*, %struct.rc_softc** %3, align 8
  %22 = load i32, i32* @CD180_PPRL, align 4
  %23 = load i32, i32* @RC_OSCFREQ, align 4
  %24 = add nsw i32 %23, 999
  %25 = sdiv i32 %24, 1000
  %26 = and i32 %25, 255
  %27 = call i32 @rcout(%struct.rc_softc* %21, i32 %22, i32 %26)
  %28 = load %struct.rc_softc*, %struct.rc_softc** %3, align 8
  %29 = load i32, i32* @CD180_PPRH, align 4
  %30 = load i32, i32* @RC_OSCFREQ, align 4
  %31 = add nsw i32 %30, 999
  %32 = sdiv i32 %31, 1000
  %33 = ashr i32 %32, 8
  %34 = call i32 @rcout(%struct.rc_softc* %28, i32 %29, i32 %33)
  %35 = load %struct.rc_softc*, %struct.rc_softc** %3, align 8
  %36 = load i32, i32* @CD180_PILR1, align 4
  %37 = load i32, i32* @RC_PILR_MODEM, align 4
  %38 = call i32 @rcout(%struct.rc_softc* %35, i32 %36, i32 %37)
  %39 = load %struct.rc_softc*, %struct.rc_softc** %3, align 8
  %40 = load i32, i32* @CD180_PILR2, align 4
  %41 = load i32, i32* @RC_PILR_TX, align 4
  %42 = call i32 @rcout(%struct.rc_softc* %39, i32 %40, i32 %41)
  %43 = load %struct.rc_softc*, %struct.rc_softc** %3, align 8
  %44 = load i32, i32* @CD180_PILR3, align 4
  %45 = load i32, i32* @RC_PILR_RX, align 4
  %46 = call i32 @rcout(%struct.rc_softc* %43, i32 %44, i32 %45)
  %47 = load %struct.rc_softc*, %struct.rc_softc** %3, align 8
  %48 = load i32, i32* @RC_DTREG, align 4
  %49 = call i32 @rcout(%struct.rc_softc* %47, i32 %48, i32 -1)
  ret void
}

declare dso_local i32 @CCRCMD(%struct.rc_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @WAITFORCCR(%struct.rc_softc*, i32) #1

declare dso_local i32 @rcout(%struct.rc_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
