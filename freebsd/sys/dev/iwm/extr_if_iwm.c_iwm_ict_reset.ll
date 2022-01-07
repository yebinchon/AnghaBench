; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_ict_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_ict_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@IWM_ICT_SIZE = common dso_local global i32 0, align 4
@IWM_CSR_DRAM_INT_TBL_REG = common dso_local global i32 0, align 4
@IWM_CSR_DRAM_INT_TBL_ENABLE = common dso_local global i32 0, align 4
@IWM_CSR_DRAM_INIT_TBL_WRITE_POINTER = common dso_local global i32 0, align 4
@IWM_CSR_DRAM_INIT_TBL_WRAP_CHECK = common dso_local global i32 0, align 4
@IWM_ICT_PADDR_SHIFT = common dso_local global i32 0, align 4
@IWM_FLAG_USE_ICT = common dso_local global i32 0, align 4
@IWM_CSR_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwm_softc*)* @iwm_ict_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwm_ict_reset(%struct.iwm_softc* %0) #0 {
  %2 = alloca %struct.iwm_softc*, align 8
  store %struct.iwm_softc* %0, %struct.iwm_softc** %2, align 8
  %3 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %4 = call i32 @iwm_disable_interrupts(%struct.iwm_softc* %3)
  %5 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %6 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @IWM_ICT_SIZE, align 4
  %10 = call i32 @memset(i32 %8, i32 0, i32 %9)
  %11 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %12 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %11, i32 0, i32 2
  store i64 0, i64* %12, align 8
  %13 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %14 = load i32, i32* @IWM_CSR_DRAM_INT_TBL_REG, align 4
  %15 = load i32, i32* @IWM_CSR_DRAM_INT_TBL_ENABLE, align 4
  %16 = load i32, i32* @IWM_CSR_DRAM_INIT_TBL_WRITE_POINTER, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @IWM_CSR_DRAM_INIT_TBL_WRAP_CHECK, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %21 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IWM_ICT_PADDR_SHIFT, align 4
  %25 = ashr i32 %23, %24
  %26 = or i32 %19, %25
  %27 = call i32 @IWM_WRITE(%struct.iwm_softc* %13, i32 %14, i32 %26)
  %28 = load i32, i32* @IWM_FLAG_USE_ICT, align 4
  %29 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %30 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 8
  %33 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %34 = load i32, i32* @IWM_CSR_INT, align 4
  %35 = call i32 @IWM_WRITE(%struct.iwm_softc* %33, i32 %34, i32 -1)
  %36 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %37 = call i32 @iwm_enable_interrupts(%struct.iwm_softc* %36)
  ret void
}

declare dso_local i32 @iwm_disable_interrupts(%struct.iwm_softc*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @IWM_WRITE(%struct.iwm_softc*, i32, i32) #1

declare dso_local i32 @iwm_enable_interrupts(%struct.iwm_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
