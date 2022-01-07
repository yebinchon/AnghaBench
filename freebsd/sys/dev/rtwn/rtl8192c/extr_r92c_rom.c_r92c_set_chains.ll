; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/extr_r92c_rom.c_r92c_set_chains.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/extr_r92c_rom.c_r92c_set_chains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32, i32, %struct.r92c_softc* }
%struct.r92c_softc = type { i32 }

@R92C_CHIP_92C = common dso_local global i32 0, align 4
@R92C_CHIP_92C_1T2R = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtwn_softc*)* @r92c_set_chains to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r92c_set_chains(%struct.rtwn_softc* %0) #0 {
  %2 = alloca %struct.rtwn_softc*, align 8
  %3 = alloca %struct.r92c_softc*, align 8
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %2, align 8
  %4 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %5 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %4, i32 0, i32 2
  %6 = load %struct.r92c_softc*, %struct.r92c_softc** %5, align 8
  store %struct.r92c_softc* %6, %struct.r92c_softc** %3, align 8
  %7 = load %struct.r92c_softc*, %struct.r92c_softc** %3, align 8
  %8 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @R92C_CHIP_92C, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %1
  %14 = load %struct.r92c_softc*, %struct.r92c_softc** %3, align 8
  %15 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @R92C_CHIP_92C_1T2R, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 1, i32 2
  %22 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %23 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %25 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %24, i32 0, i32 1
  store i32 2, i32* %25, align 4
  br label %31

26:                                               ; preds = %1
  %27 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %28 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %30 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %29, i32 0, i32 1
  store i32 1, i32* %30, align 4
  br label %31

31:                                               ; preds = %26, %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
