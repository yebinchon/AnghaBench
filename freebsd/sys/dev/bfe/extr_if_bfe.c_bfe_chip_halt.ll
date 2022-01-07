; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bfe/extr_if_bfe.c_bfe_chip_halt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bfe/extr_if_bfe.c_bfe_chip_halt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfe_softc = type { i32 }

@BFE_IMASK = common dso_local global i32 0, align 4
@BFE_ENET_CTRL = common dso_local global i32 0, align 4
@BFE_ENET_DISABLE = common dso_local global i32 0, align 4
@BFE_DMARX_CTRL = common dso_local global i32 0, align 4
@BFE_DMATX_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfe_softc*)* @bfe_chip_halt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfe_chip_halt(%struct.bfe_softc* %0) #0 {
  %2 = alloca %struct.bfe_softc*, align 8
  store %struct.bfe_softc* %0, %struct.bfe_softc** %2, align 8
  %3 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %4 = call i32 @BFE_LOCK_ASSERT(%struct.bfe_softc* %3)
  %5 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %6 = load i32, i32* @BFE_IMASK, align 4
  %7 = call i32 @CSR_WRITE_4(%struct.bfe_softc* %5, i32 %6, i32 0)
  %8 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %9 = load i32, i32* @BFE_IMASK, align 4
  %10 = call i32 @CSR_READ_4(%struct.bfe_softc* %8, i32 %9)
  %11 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %12 = load i32, i32* @BFE_ENET_CTRL, align 4
  %13 = load i32, i32* @BFE_ENET_DISABLE, align 4
  %14 = call i32 @CSR_WRITE_4(%struct.bfe_softc* %11, i32 %12, i32 %13)
  %15 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %16 = load i32, i32* @BFE_ENET_CTRL, align 4
  %17 = load i32, i32* @BFE_ENET_DISABLE, align 4
  %18 = call i32 @bfe_wait_bit(%struct.bfe_softc* %15, i32 %16, i32 %17, i32 200, i32 1)
  %19 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %20 = load i32, i32* @BFE_DMARX_CTRL, align 4
  %21 = call i32 @CSR_WRITE_4(%struct.bfe_softc* %19, i32 %20, i32 0)
  %22 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %23 = load i32, i32* @BFE_DMATX_CTRL, align 4
  %24 = call i32 @CSR_WRITE_4(%struct.bfe_softc* %22, i32 %23, i32 0)
  %25 = call i32 @DELAY(i32 10)
  ret void
}

declare dso_local i32 @BFE_LOCK_ASSERT(%struct.bfe_softc*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.bfe_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.bfe_softc*, i32) #1

declare dso_local i32 @bfe_wait_bit(%struct.bfe_softc*, i32, i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
