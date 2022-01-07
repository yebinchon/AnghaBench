; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smc/extr_if_smc.c_smc_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smc/extr_if_smc.c_smc_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_softc = type { i32, i32 }

@BSR = common dso_local global i32 0, align 4
@BSR_BANK_MASK = common dso_local global i32 0, align 4
@MSK = common dso_local global i32 0, align 4
@FILTER_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @smc_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.smc_softc*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.smc_softc*
  store %struct.smc_softc* %6, %struct.smc_softc** %3, align 8
  %7 = load %struct.smc_softc*, %struct.smc_softc** %3, align 8
  %8 = load i32, i32* @BSR, align 4
  %9 = call i32 @smc_read_2(%struct.smc_softc* %7, i32 %8)
  %10 = load i32, i32* @BSR_BANK_MASK, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* %4, align 4
  %12 = load %struct.smc_softc*, %struct.smc_softc** %3, align 8
  %13 = call i32 @smc_select_bank(%struct.smc_softc* %12, i32 2)
  %14 = load %struct.smc_softc*, %struct.smc_softc** %3, align 8
  %15 = load i32, i32* @MSK, align 4
  %16 = call i32 @smc_write_1(%struct.smc_softc* %14, i32 %15, i32 0)
  %17 = load %struct.smc_softc*, %struct.smc_softc** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @smc_select_bank(%struct.smc_softc* %17, i32 %18)
  %20 = load %struct.smc_softc*, %struct.smc_softc** %3, align 8
  %21 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.smc_softc*, %struct.smc_softc** %3, align 8
  %24 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %23, i32 0, i32 0
  %25 = call i32 @taskqueue_enqueue(i32 %22, i32* %24)
  %26 = load i32, i32* @FILTER_HANDLED, align 4
  ret i32 %26
}

declare dso_local i32 @smc_read_2(%struct.smc_softc*, i32) #1

declare dso_local i32 @smc_select_bank(%struct.smc_softc*, i32) #1

declare dso_local i32 @smc_write_1(%struct.smc_softc*, i32, i32) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
