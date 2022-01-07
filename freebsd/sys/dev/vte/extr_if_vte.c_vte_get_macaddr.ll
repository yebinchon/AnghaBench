; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vte/extr_if_vte.c_vte_get_macaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vte/extr_if_vte.c_vte_get_macaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vte_softc = type { i32* }

@VTE_MID0L = common dso_local global i32 0, align 4
@VTE_MID0M = common dso_local global i32 0, align 4
@VTE_MID0H = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vte_softc*)* @vte_get_macaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vte_get_macaddr(%struct.vte_softc* %0) #0 {
  %2 = alloca %struct.vte_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.vte_softc* %0, %struct.vte_softc** %2, align 8
  %4 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %5 = load i32, i32* @VTE_MID0L, align 4
  %6 = call i32 @CSR_READ_2(%struct.vte_softc* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = ashr i32 %7, 0
  %9 = and i32 %8, 255
  %10 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %11 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  store i32 %9, i32* %13, align 4
  %14 = load i32, i32* %3, align 4
  %15 = ashr i32 %14, 8
  %16 = and i32 %15, 255
  %17 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %18 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 %16, i32* %20, align 4
  %21 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %22 = load i32, i32* @VTE_MID0M, align 4
  %23 = call i32 @CSR_READ_2(%struct.vte_softc* %21, i32 %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = ashr i32 %24, 0
  %26 = and i32 %25, 255
  %27 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %28 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  store i32 %26, i32* %30, align 4
  %31 = load i32, i32* %3, align 4
  %32 = ashr i32 %31, 8
  %33 = and i32 %32, 255
  %34 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %35 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 3
  store i32 %33, i32* %37, align 4
  %38 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %39 = load i32, i32* @VTE_MID0H, align 4
  %40 = call i32 @CSR_READ_2(%struct.vte_softc* %38, i32 %39)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = ashr i32 %41, 0
  %43 = and i32 %42, 255
  %44 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %45 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 4
  store i32 %43, i32* %47, align 4
  %48 = load i32, i32* %3, align 4
  %49 = ashr i32 %48, 8
  %50 = and i32 %49, 255
  %51 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %52 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 5
  store i32 %50, i32* %54, align 4
  ret void
}

declare dso_local i32 @CSR_READ_2(%struct.vte_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
