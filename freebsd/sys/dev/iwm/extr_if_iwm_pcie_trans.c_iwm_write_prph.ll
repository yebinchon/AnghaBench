; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_pcie_trans.c_iwm_write_prph.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_pcie_trans.c_iwm_write_prph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { i32 }

@IWM_HBUS_TARG_PRPH_WADDR = common dso_local global i32 0, align 4
@IWM_HBUS_TARG_PRPH_WDAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwm_write_prph(%struct.iwm_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.iwm_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.iwm_softc* %0, %struct.iwm_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %8 = load i32, i32* @IWM_HBUS_TARG_PRPH_WADDR, align 4
  %9 = load i32, i32* %5, align 4
  %10 = and i32 %9, 1048575
  %11 = or i32 %10, 50331648
  %12 = call i32 @IWM_WRITE(%struct.iwm_softc* %7, i32 %8, i32 %11)
  %13 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %14 = call i32 @IWM_BARRIER_WRITE(%struct.iwm_softc* %13)
  %15 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %16 = load i32, i32* @IWM_HBUS_TARG_PRPH_WDAT, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @IWM_WRITE(%struct.iwm_softc* %15, i32 %16, i32 %17)
  ret void
}

declare dso_local i32 @IWM_WRITE(%struct.iwm_softc*, i32, i32) #1

declare dso_local i32 @IWM_BARRIER_WRITE(%struct.iwm_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
