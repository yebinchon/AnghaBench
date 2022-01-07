; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192e/usb/extr_r92eu_attach.c_r92eu_attach_private.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192e/usb/extr_r92eu_attach.c_r92eu_attach_private.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { %struct.r92e_softc* }
%struct.r92e_softc = type { i32, i32 }

@M_RTWN_PRIV = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtwn_softc*)* @r92eu_attach_private to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r92eu_attach_private(%struct.rtwn_softc* %0) #0 {
  %2 = alloca %struct.rtwn_softc*, align 8
  %3 = alloca %struct.r92e_softc*, align 8
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %2, align 8
  %4 = load i32, i32* @M_RTWN_PRIV, align 4
  %5 = load i32, i32* @M_WAITOK, align 4
  %6 = load i32, i32* @M_ZERO, align 4
  %7 = or i32 %5, %6
  %8 = call %struct.r92e_softc* @malloc(i32 8, i32 %4, i32 %7)
  store %struct.r92e_softc* %8, %struct.r92e_softc** %3, align 8
  %9 = load %struct.r92e_softc*, %struct.r92e_softc** %3, align 8
  %10 = getelementptr inbounds %struct.r92e_softc, %struct.r92e_softc* %9, i32 0, i32 0
  store i32 6, i32* %10, align 4
  %11 = load %struct.r92e_softc*, %struct.r92e_softc** %3, align 8
  %12 = getelementptr inbounds %struct.r92e_softc, %struct.r92e_softc* %11, i32 0, i32 1
  store i32 32, i32* %12, align 4
  %13 = load %struct.r92e_softc*, %struct.r92e_softc** %3, align 8
  %14 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %15 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %14, i32 0, i32 0
  store %struct.r92e_softc* %13, %struct.r92e_softc** %15, align 8
  ret void
}

declare dso_local %struct.r92e_softc* @malloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
