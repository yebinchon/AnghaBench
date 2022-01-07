; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bktr/extr_bktr_os.c_bktr_shutdown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bktr/extr_bktr_os.c_bktr_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bktr_softc = type { i32 }

@BKTR_INT_MASK = common dso_local global i32 0, align 4
@ALL_INTS_DISABLED = common dso_local global i32 0, align 4
@BKTR_GPIO_DMA_CTL = common dso_local global i32 0, align 4
@FIFO_RISC_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bktr_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bktr_shutdown(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bktr_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.bktr_softc* @device_get_softc(i32 %4)
  store %struct.bktr_softc* %5, %struct.bktr_softc** %3, align 8
  %6 = load %struct.bktr_softc*, %struct.bktr_softc** %3, align 8
  %7 = load i32, i32* @BKTR_INT_MASK, align 4
  %8 = load i32, i32* @ALL_INTS_DISABLED, align 4
  %9 = call i32 @OUTL(%struct.bktr_softc* %6, i32 %7, i32 %8)
  %10 = load %struct.bktr_softc*, %struct.bktr_softc** %3, align 8
  %11 = load i32, i32* @BKTR_GPIO_DMA_CTL, align 4
  %12 = load i32, i32* @FIFO_RISC_DISABLED, align 4
  %13 = call i32 @OUTW(%struct.bktr_softc* %10, i32 %11, i32 %12)
  ret i32 0
}

declare dso_local %struct.bktr_softc* @device_get_softc(i32) #1

declare dso_local i32 @OUTL(%struct.bktr_softc*, i32, i32) #1

declare dso_local i32 @OUTW(%struct.bktr_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
