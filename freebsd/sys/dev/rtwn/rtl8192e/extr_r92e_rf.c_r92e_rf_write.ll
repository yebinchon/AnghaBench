; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192e/extr_r92e_rf.c_r92e_rf_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192e/extr_r92e_rf.c_r92e_rf_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }

@R88E_LSSI_PARAM_ADDR = common dso_local global i32 0, align 4
@R92C_LSSI_PARAM_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r92e_rf_write(%struct.rtwn_softc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rtwn_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %10 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %9, i32 2072, i32 131072, i32 0)
  %11 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @R92C_LSSI_PARAM(i32 %12)
  %14 = load i32, i32* @R88E_LSSI_PARAM_ADDR, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @SM(i32 %14, i32 %15)
  %17 = load i32, i32* @R92C_LSSI_PARAM_DATA, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @SM(i32 %17, i32 %18)
  %20 = or i32 %16, %19
  %21 = call i32 @rtwn_bb_write(%struct.rtwn_softc* %11, i32 %13, i32 %20)
  %22 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %23 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %22, i32 2072, i32 0, i32 131072)
  ret void
}

declare dso_local i32 @rtwn_bb_setbits(%struct.rtwn_softc*, i32, i32, i32) #1

declare dso_local i32 @rtwn_bb_write(%struct.rtwn_softc*, i32, i32) #1

declare dso_local i32 @R92C_LSSI_PARAM(i32) #1

declare dso_local i32 @SM(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
