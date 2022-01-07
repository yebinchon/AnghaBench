; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mgb/extr_if_mgb.c_mgb_rx_queue_intr_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mgb/extr_if_mgb.c_mgb_rx_queue_intr_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgb_softc = type { i32 }

@MGB_INTR_VEC_ENBL_SET = common dso_local global i32 0, align 4
@MGB_INTR_ENBL_SET = common dso_local global i32 0, align 4
@MGB_DMAC_INTR_STS = common dso_local global i32 0, align 4
@MGB_DMAC_INTR_ENBL_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @mgb_rx_queue_intr_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mgb_rx_queue_intr_enable(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.mgb_softc*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.mgb_softc* @iflib_get_softc(i32 %6)
  store %struct.mgb_softc* %7, %struct.mgb_softc** %5, align 8
  %8 = load %struct.mgb_softc*, %struct.mgb_softc** %5, align 8
  %9 = load i32, i32* @MGB_INTR_VEC_ENBL_SET, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @MGB_INTR_RX_VEC_STS(i32 %10)
  %12 = call i32 @CSR_WRITE_REG(%struct.mgb_softc* %8, i32 %9, i32 %11)
  %13 = load %struct.mgb_softc*, %struct.mgb_softc** %5, align 8
  %14 = load i32, i32* @MGB_INTR_ENBL_SET, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @MGB_INTR_STS_RX(i32 %15)
  %17 = call i32 @CSR_WRITE_REG(%struct.mgb_softc* %13, i32 %14, i32 %16)
  %18 = load %struct.mgb_softc*, %struct.mgb_softc** %5, align 8
  %19 = load i32, i32* @MGB_DMAC_INTR_STS, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @MGB_DMAC_RX_INTR_ENBL(i32 %20)
  %22 = call i32 @CSR_WRITE_REG(%struct.mgb_softc* %18, i32 %19, i32 %21)
  %23 = load %struct.mgb_softc*, %struct.mgb_softc** %5, align 8
  %24 = load i32, i32* @MGB_DMAC_INTR_ENBL_SET, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @MGB_DMAC_RX_INTR_ENBL(i32 %25)
  %27 = call i32 @CSR_WRITE_REG(%struct.mgb_softc* %23, i32 %24, i32 %26)
  ret i32 0
}

declare dso_local %struct.mgb_softc* @iflib_get_softc(i32) #1

declare dso_local i32 @CSR_WRITE_REG(%struct.mgb_softc*, i32, i32) #1

declare dso_local i32 @MGB_INTR_RX_VEC_STS(i32) #1

declare dso_local i32 @MGB_INTR_STS_RX(i32) #1

declare dso_local i32 @MGB_DMAC_RX_INTR_ENBL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
