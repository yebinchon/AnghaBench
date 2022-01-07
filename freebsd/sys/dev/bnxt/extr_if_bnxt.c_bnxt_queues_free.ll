; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_if_bnxt.c_bnxt_queues_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_if_bnxt.c_bnxt_queues_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { i32*, i32*, i32*, i32*, i32, i32, i32, i64, i32*, i32*, i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @bnxt_queues_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_queues_free(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnxt_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.bnxt_softc* @iflib_get_softc(i32 %4)
  store %struct.bnxt_softc* %5, %struct.bnxt_softc** %3, align 8
  %6 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %7 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %6, i32 0, i32 10
  %8 = call i32 @iflib_dma_free(i32* %7)
  %9 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %10 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %9, i32 0, i32 9
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* @M_DEVBUF, align 4
  %13 = call i32 @free(i32* %11, i32 %12)
  %14 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %15 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %14, i32 0, i32 9
  store i32* null, i32** %15, align 8
  %16 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %17 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %16, i32 0, i32 8
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* @M_DEVBUF, align 4
  %20 = call i32 @free(i32* %18, i32 %19)
  %21 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %22 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %21, i32 0, i32 8
  store i32* null, i32** %22, align 8
  %23 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %24 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %23, i32 0, i32 7
  store i64 0, i64* %24, align 8
  %25 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %26 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %25, i32 0, i32 6
  %27 = call i32 @iflib_dma_free(i32* %26)
  %28 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %29 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %28, i32 0, i32 5
  %30 = call i32 @iflib_dma_free(i32* %29)
  %31 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %32 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %31, i32 0, i32 4
  %33 = call i32 @iflib_dma_free(i32* %32)
  %34 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %35 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* @M_DEVBUF, align 4
  %38 = call i32 @free(i32* %36, i32 %37)
  %39 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %40 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* @M_DEVBUF, align 4
  %43 = call i32 @free(i32* %41, i32 %42)
  %44 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %45 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* @M_DEVBUF, align 4
  %48 = call i32 @free(i32* %46, i32 %47)
  %49 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %50 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* @M_DEVBUF, align 4
  %53 = call i32 @free(i32* %51, i32 %52)
  ret void
}

declare dso_local %struct.bnxt_softc* @iflib_get_softc(i32) #1

declare dso_local i32 @iflib_dma_free(i32*) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
