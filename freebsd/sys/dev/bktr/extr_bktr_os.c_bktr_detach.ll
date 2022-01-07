; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bktr/extr_bktr_os.c_bktr_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bktr/extr_bktr_os.c_bktr_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bktr_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }

@BKTR_INT_MASK = common dso_local global i32 0, align 4
@ALL_INTS_DISABLED = common dso_local global i32 0, align 4
@BKTR_GPIO_DMA_CTL = common dso_local global i32 0, align 4
@FIFO_RISC_DISABLED = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bktr_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bktr_detach(i32 %0) #0 {
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
  %14 = load %struct.bktr_softc*, %struct.bktr_softc** %3, align 8
  %15 = getelementptr inbounds %struct.bktr_softc, %struct.bktr_softc* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @destroy_dev(i32 %16)
  %18 = load %struct.bktr_softc*, %struct.bktr_softc** %3, align 8
  %19 = getelementptr inbounds %struct.bktr_softc, %struct.bktr_softc* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @destroy_dev(i32 %20)
  %22 = load %struct.bktr_softc*, %struct.bktr_softc** %3, align 8
  %23 = getelementptr inbounds %struct.bktr_softc, %struct.bktr_softc* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @destroy_dev(i32 %24)
  %26 = load i32, i32* %2, align 4
  %27 = load %struct.bktr_softc*, %struct.bktr_softc** %3, align 8
  %28 = getelementptr inbounds %struct.bktr_softc, %struct.bktr_softc* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.bktr_softc*, %struct.bktr_softc** %3, align 8
  %31 = getelementptr inbounds %struct.bktr_softc, %struct.bktr_softc* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @bus_teardown_intr(i32 %26, i32 %29, i32 %32)
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* @SYS_RES_IRQ, align 4
  %36 = load %struct.bktr_softc*, %struct.bktr_softc** %3, align 8
  %37 = getelementptr inbounds %struct.bktr_softc, %struct.bktr_softc* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.bktr_softc*, %struct.bktr_softc** %3, align 8
  %40 = getelementptr inbounds %struct.bktr_softc, %struct.bktr_softc* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @bus_release_resource(i32 %34, i32 %35, i32 %38, i32 %41)
  %43 = load i32, i32* %2, align 4
  %44 = load i32, i32* @SYS_RES_MEMORY, align 4
  %45 = load %struct.bktr_softc*, %struct.bktr_softc** %3, align 8
  %46 = getelementptr inbounds %struct.bktr_softc, %struct.bktr_softc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.bktr_softc*, %struct.bktr_softc** %3, align 8
  %49 = getelementptr inbounds %struct.bktr_softc, %struct.bktr_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @bus_release_resource(i32 %43, i32 %44, i32 %47, i32 %50)
  ret i32 0
}

declare dso_local %struct.bktr_softc* @device_get_softc(i32) #1

declare dso_local i32 @OUTL(%struct.bktr_softc*, i32, i32) #1

declare dso_local i32 @OUTW(%struct.bktr_softc*, i32, i32) #1

declare dso_local i32 @destroy_dev(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
