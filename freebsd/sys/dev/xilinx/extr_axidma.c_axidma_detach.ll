; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xilinx/extr_axidma.c_axidma_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xilinx/extr_axidma.c_axidma_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axidma_softc = type { i32*, i32* }

@axidma_spec = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @axidma_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axidma_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.axidma_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.axidma_softc* @device_get_softc(i32 %4)
  store %struct.axidma_softc* %5, %struct.axidma_softc** %3, align 8
  %6 = load i32, i32* %2, align 4
  %7 = load %struct.axidma_softc*, %struct.axidma_softc** %3, align 8
  %8 = getelementptr inbounds %struct.axidma_softc, %struct.axidma_softc* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.axidma_softc*, %struct.axidma_softc** %3, align 8
  %13 = getelementptr inbounds %struct.axidma_softc, %struct.axidma_softc* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @bus_teardown_intr(i32 %6, i32 %11, i32 %16)
  %18 = load i32, i32* %2, align 4
  %19 = load %struct.axidma_softc*, %struct.axidma_softc** %3, align 8
  %20 = getelementptr inbounds %struct.axidma_softc, %struct.axidma_softc* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.axidma_softc*, %struct.axidma_softc** %3, align 8
  %25 = getelementptr inbounds %struct.axidma_softc, %struct.axidma_softc* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @bus_teardown_intr(i32 %18, i32 %23, i32 %28)
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* @axidma_spec, align 4
  %32 = load %struct.axidma_softc*, %struct.axidma_softc** %3, align 8
  %33 = getelementptr inbounds %struct.axidma_softc, %struct.axidma_softc* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @bus_release_resources(i32 %30, i32 %31, i32* %34)
  ret i32 0
}

declare dso_local %struct.axidma_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
