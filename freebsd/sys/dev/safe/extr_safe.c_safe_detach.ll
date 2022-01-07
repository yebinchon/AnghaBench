; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/safe/extr_safe.c_safe_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/safe/extr_safe.c_safe_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.safe_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32 }

@SAFE_HI_MASK = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@BS_BAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @safe_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safe_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.safe_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.safe_softc* @device_get_softc(i32 %4)
  store %struct.safe_softc* %5, %struct.safe_softc** %3, align 8
  %6 = load %struct.safe_softc*, %struct.safe_softc** %3, align 8
  %7 = load i32, i32* @SAFE_HI_MASK, align 4
  %8 = call i32 @WRITE_REG(%struct.safe_softc* %6, i32 %7, i32 0)
  %9 = load %struct.safe_softc*, %struct.safe_softc** %3, align 8
  %10 = getelementptr inbounds %struct.safe_softc, %struct.safe_softc* %9, i32 0, i32 11
  %11 = call i32 @callout_stop(i32* %10)
  %12 = load %struct.safe_softc*, %struct.safe_softc** %3, align 8
  %13 = getelementptr inbounds %struct.safe_softc, %struct.safe_softc* %12, i32 0, i32 10
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @crypto_unregister_all(i32 %14)
  %16 = load %struct.safe_softc*, %struct.safe_softc** %3, align 8
  %17 = call i32 @safe_cleanchip(%struct.safe_softc* %16)
  %18 = load %struct.safe_softc*, %struct.safe_softc** %3, align 8
  %19 = load %struct.safe_softc*, %struct.safe_softc** %3, align 8
  %20 = getelementptr inbounds %struct.safe_softc, %struct.safe_softc* %19, i32 0, i32 8
  %21 = call i32 @safe_dma_free(%struct.safe_softc* %18, i32* %20)
  %22 = load %struct.safe_softc*, %struct.safe_softc** %3, align 8
  %23 = load %struct.safe_softc*, %struct.safe_softc** %3, align 8
  %24 = getelementptr inbounds %struct.safe_softc, %struct.safe_softc* %23, i32 0, i32 7
  %25 = call i32 @safe_dma_free(%struct.safe_softc* %22, i32* %24)
  %26 = load %struct.safe_softc*, %struct.safe_softc** %3, align 8
  %27 = getelementptr inbounds %struct.safe_softc, %struct.safe_softc* %26, i32 0, i32 6
  %28 = call i32 @mtx_destroy(i32* %27)
  %29 = load %struct.safe_softc*, %struct.safe_softc** %3, align 8
  %30 = load %struct.safe_softc*, %struct.safe_softc** %3, align 8
  %31 = getelementptr inbounds %struct.safe_softc, %struct.safe_softc* %30, i32 0, i32 5
  %32 = call i32 @safe_dma_free(%struct.safe_softc* %29, i32* %31)
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @bus_generic_detach(i32 %33)
  %35 = load i32, i32* %2, align 4
  %36 = load %struct.safe_softc*, %struct.safe_softc** %3, align 8
  %37 = getelementptr inbounds %struct.safe_softc, %struct.safe_softc* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.safe_softc*, %struct.safe_softc** %3, align 8
  %40 = getelementptr inbounds %struct.safe_softc, %struct.safe_softc* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @bus_teardown_intr(i32 %35, i32 %38, i32 %41)
  %43 = load i32, i32* %2, align 4
  %44 = load i32, i32* @SYS_RES_IRQ, align 4
  %45 = load %struct.safe_softc*, %struct.safe_softc** %3, align 8
  %46 = getelementptr inbounds %struct.safe_softc, %struct.safe_softc* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @bus_release_resource(i32 %43, i32 %44, i32 0, i32 %47)
  %49 = load %struct.safe_softc*, %struct.safe_softc** %3, align 8
  %50 = getelementptr inbounds %struct.safe_softc, %struct.safe_softc* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @bus_dma_tag_destroy(i32 %51)
  %53 = load %struct.safe_softc*, %struct.safe_softc** %3, align 8
  %54 = getelementptr inbounds %struct.safe_softc, %struct.safe_softc* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @bus_dma_tag_destroy(i32 %55)
  %57 = load i32, i32* %2, align 4
  %58 = load i32, i32* @SYS_RES_MEMORY, align 4
  %59 = load i32, i32* @BS_BAR, align 4
  %60 = load %struct.safe_softc*, %struct.safe_softc** %3, align 8
  %61 = getelementptr inbounds %struct.safe_softc, %struct.safe_softc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @bus_release_resource(i32 %57, i32 %58, i32 %59, i32 %62)
  ret i32 0
}

declare dso_local %struct.safe_softc* @device_get_softc(i32) #1

declare dso_local i32 @WRITE_REG(%struct.safe_softc*, i32, i32) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @crypto_unregister_all(i32) #1

declare dso_local i32 @safe_cleanchip(%struct.safe_softc*) #1

declare dso_local i32 @safe_dma_free(%struct.safe_softc*, i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
