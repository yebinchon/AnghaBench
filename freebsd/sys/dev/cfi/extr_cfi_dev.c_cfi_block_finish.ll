; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cfi/extr_cfi_dev.c_cfi_block_finish.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cfi/extr_cfi_dev.c_cfi_block_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfi_softc = type { i64, i64, i64, i32*, i32* }

@M_TEMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfi_block_finish(%struct.cfi_softc* %0) #0 {
  %2 = alloca %struct.cfi_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.cfi_softc* %0, %struct.cfi_softc** %2, align 8
  %4 = load %struct.cfi_softc*, %struct.cfi_softc** %2, align 8
  %5 = call i32 @cfi_write_block(%struct.cfi_softc* %4)
  store i32 %5, i32* %3, align 4
  %6 = load %struct.cfi_softc*, %struct.cfi_softc** %2, align 8
  %7 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %6, i32 0, i32 3
  %8 = load i32*, i32** %7, align 8
  %9 = load i32, i32* @M_TEMP, align 4
  %10 = call i32 @free(i32* %8, i32 %9)
  %11 = load %struct.cfi_softc*, %struct.cfi_softc** %2, align 8
  %12 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %11, i32 0, i32 4
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* @M_TEMP, align 4
  %15 = call i32 @free(i32* %13, i32 %14)
  %16 = load %struct.cfi_softc*, %struct.cfi_softc** %2, align 8
  %17 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %16, i32 0, i32 3
  store i32* null, i32** %17, align 8
  %18 = load %struct.cfi_softc*, %struct.cfi_softc** %2, align 8
  %19 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = load %struct.cfi_softc*, %struct.cfi_softc** %2, align 8
  %21 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load %struct.cfi_softc*, %struct.cfi_softc** %2, align 8
  %23 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @cfi_write_block(%struct.cfi_softc*) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
