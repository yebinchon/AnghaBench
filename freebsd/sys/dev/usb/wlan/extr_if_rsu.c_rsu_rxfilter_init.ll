; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rsu.c_rsu_rxfilter_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rsu.c_rsu_rxfilter_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsu_softc = type { i64 }

@R92S_RCR = common dso_local global i32 0, align 4
@R92S_RCR_AICV = common dso_local global i32 0, align 4
@R92S_RCR_APP_PHYSTS = common dso_local global i32 0, align 4
@R92S_RCR_TCP_OFFLD_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsu_softc*)* @rsu_rxfilter_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsu_rxfilter_init(%struct.rsu_softc* %0) #0 {
  %2 = alloca %struct.rsu_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.rsu_softc* %0, %struct.rsu_softc** %2, align 8
  %4 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %5 = call i32 @RSU_ASSERT_LOCKED(%struct.rsu_softc* %4)
  %6 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %7 = call i32 @rsu_set_multi(%struct.rsu_softc* %6)
  %8 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %9 = load i32, i32* @R92S_RCR, align 4
  %10 = call i32 @rsu_read_4(%struct.rsu_softc* %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @R92S_RCR_AICV, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @R92S_RCR_APP_PHYSTS, align 4
  %16 = load i32, i32* %3, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %3, align 4
  %18 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %19 = getelementptr inbounds %struct.rsu_softc, %struct.rsu_softc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load i32, i32* @R92S_RCR_TCP_OFFLD_EN, align 4
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %22, %1
  %27 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %28 = load i32, i32* @R92S_RCR, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @rsu_write_4(%struct.rsu_softc* %27, i32 %28, i32 %29)
  %31 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %32 = call i32 @rsu_rxfilter_refresh(%struct.rsu_softc* %31)
  ret void
}

declare dso_local i32 @RSU_ASSERT_LOCKED(%struct.rsu_softc*) #1

declare dso_local i32 @rsu_set_multi(%struct.rsu_softc*) #1

declare dso_local i32 @rsu_read_4(%struct.rsu_softc*, i32) #1

declare dso_local i32 @rsu_write_4(%struct.rsu_softc*, i32, i32) #1

declare dso_local i32 @rsu_rxfilter_refresh(%struct.rsu_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
