; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8812a/usb/extr_r12au_init.c_r12au_arfb_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8812a/usb/extr_r12au_init.c_r12au_arfb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtwn_softc*)* @r12au_arfb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r12au_arfb_init(%struct.rtwn_softc* %0) #0 {
  %2 = alloca %struct.rtwn_softc*, align 8
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %2, align 8
  %3 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %4 = call i64 @R12A_ARFR_5G(i32 0)
  %5 = call i32 @rtwn_write_4(%struct.rtwn_softc* %3, i64 %4, i32 16)
  %6 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %7 = call i64 @R12A_ARFR_5G(i32 0)
  %8 = add nsw i64 %7, 4
  %9 = call i32 @rtwn_write_4(%struct.rtwn_softc* %6, i64 %8, i32 -4096)
  %10 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %11 = call i64 @R12A_ARFR_5G(i32 1)
  %12 = call i32 @rtwn_write_4(%struct.rtwn_softc* %10, i64 %11, i32 16)
  %13 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %14 = call i64 @R12A_ARFR_5G(i32 1)
  %15 = add nsw i64 %14, 4
  %16 = call i32 @rtwn_write_4(%struct.rtwn_softc* %13, i64 %15, i32 4190208)
  %17 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %18 = call i64 @R12A_ARFR_2G(i32 0)
  %19 = call i32 @rtwn_write_4(%struct.rtwn_softc* %17, i64 %18, i32 21)
  %20 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %21 = call i64 @R12A_ARFR_2G(i32 0)
  %22 = add nsw i64 %21, 4
  %23 = call i32 @rtwn_write_4(%struct.rtwn_softc* %20, i64 %22, i32 4190208)
  %24 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %25 = call i64 @R12A_ARFR_2G(i32 1)
  %26 = call i32 @rtwn_write_4(%struct.rtwn_softc* %24, i64 %25, i32 21)
  %27 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %28 = call i64 @R12A_ARFR_2G(i32 1)
  %29 = add nsw i64 %28, 4
  %30 = call i32 @rtwn_write_4(%struct.rtwn_softc* %27, i64 %29, i32 -3149824)
  ret void
}

declare dso_local i32 @rtwn_write_4(%struct.rtwn_softc*, i64, i32) #1

declare dso_local i64 @R12A_ARFR_5G(i32) #1

declare dso_local i64 @R12A_ARFR_2G(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
