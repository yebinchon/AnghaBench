; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sbni/extr_if_sbni.c_card_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sbni/extr_if_sbni.c_card_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbni_softc = type { i32, i32, i64, i64, i32 }

@CHANGE_LEVEL_START_TICKS = common dso_local global i32 0, align 4
@FL_WAIT_ACK = common dso_local global i32 0, align 4
@FL_NEED_RESEND = common dso_local global i32 0, align 4
@FL_PREV_OK = common dso_local global i32 0, align 4
@CSR1 = common dso_local global i32 0, align 4
@PR_RES = common dso_local global i32 0, align 4
@CSR0 = common dso_local global i32 0, align 4
@EN_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbni_softc*)* @card_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @card_start(%struct.sbni_softc* %0) #0 {
  %2 = alloca %struct.sbni_softc*, align 8
  store %struct.sbni_softc* %0, %struct.sbni_softc** %2, align 8
  %3 = load i32, i32* @CHANGE_LEVEL_START_TICKS, align 4
  %4 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %5 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %4, i32 0, i32 4
  store i32 %3, i32* %5, align 8
  %6 = load i32, i32* @FL_WAIT_ACK, align 4
  %7 = load i32, i32* @FL_NEED_RESEND, align 4
  %8 = or i32 %6, %7
  %9 = xor i32 %8, -1
  %10 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %11 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %12, %9
  store i32 %13, i32* %11, align 8
  %14 = load i32, i32* @FL_PREV_OK, align 4
  %15 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %16 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 8
  %19 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %20 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %19, i32 0, i32 3
  store i64 0, i64* %20, align 8
  %21 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %22 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %24 = load i32, i32* @CSR1, align 4
  %25 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %26 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @PR_RES, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @sbni_outb(%struct.sbni_softc* %23, i32 %24, i32 %29)
  %31 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %32 = load i32, i32* @CSR0, align 4
  %33 = load i32, i32* @EN_INT, align 4
  %34 = call i32 @sbni_outb(%struct.sbni_softc* %31, i32 %32, i32 %33)
  ret void
}

declare dso_local i32 @sbni_outb(%struct.sbni_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
