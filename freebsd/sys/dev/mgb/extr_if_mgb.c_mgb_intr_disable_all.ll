; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mgb/extr_if_mgb.c_mgb_intr_disable_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mgb/extr_if_mgb.c_mgb_intr_disable_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgb_softc = type { i32 }

@MGB_INTR_ENBL_CLR = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i32 0, align 4
@MGB_INTR_VEC_ENBL_CLR = common dso_local global i32 0, align 4
@MGB_INTR_STS = common dso_local global i32 0, align 4
@MGB_DMAC_INTR_ENBL_CLR = common dso_local global i32 0, align 4
@MGB_DMAC_INTR_STS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @mgb_intr_disable_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mgb_intr_disable_all(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mgb_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.mgb_softc* @iflib_get_softc(i32 %4)
  store %struct.mgb_softc* %5, %struct.mgb_softc** %3, align 8
  %6 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %7 = load i32, i32* @MGB_INTR_ENBL_CLR, align 4
  %8 = load i32, i32* @UINT32_MAX, align 4
  %9 = call i32 @CSR_WRITE_REG(%struct.mgb_softc* %6, i32 %7, i32 %8)
  %10 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %11 = load i32, i32* @MGB_INTR_VEC_ENBL_CLR, align 4
  %12 = load i32, i32* @UINT32_MAX, align 4
  %13 = call i32 @CSR_WRITE_REG(%struct.mgb_softc* %10, i32 %11, i32 %12)
  %14 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %15 = load i32, i32* @MGB_INTR_STS, align 4
  %16 = load i32, i32* @UINT32_MAX, align 4
  %17 = call i32 @CSR_WRITE_REG(%struct.mgb_softc* %14, i32 %15, i32 %16)
  %18 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %19 = load i32, i32* @MGB_DMAC_INTR_ENBL_CLR, align 4
  %20 = load i32, i32* @UINT32_MAX, align 4
  %21 = call i32 @CSR_WRITE_REG(%struct.mgb_softc* %18, i32 %19, i32 %20)
  %22 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %23 = load i32, i32* @MGB_DMAC_INTR_STS, align 4
  %24 = load i32, i32* @UINT32_MAX, align 4
  %25 = call i32 @CSR_WRITE_REG(%struct.mgb_softc* %22, i32 %23, i32 %24)
  ret void
}

declare dso_local %struct.mgb_softc* @iflib_get_softc(i32) #1

declare dso_local i32 @CSR_WRITE_REG(%struct.mgb_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
