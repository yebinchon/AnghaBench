; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_rxreuse_jumbo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_rxreuse_jumbo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bge_softc = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32** }
%struct.TYPE_3__ = type { %struct.bge_extrx_bd* }
%struct.bge_extrx_bd = type { i32, i32, i32, i32, i32, i32 }

@BGE_RXBDFLAG_JUMBO_RING = common dso_local global i32 0, align 4
@BGE_RXBDFLAG_END = common dso_local global i32 0, align 4
@BGE_JUMBO_RX_RING_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bge_softc*, i32)* @bge_rxreuse_jumbo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bge_rxreuse_jumbo(%struct.bge_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.bge_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bge_extrx_bd*, align 8
  store %struct.bge_softc* %0, %struct.bge_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %7 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.bge_extrx_bd*, %struct.bge_extrx_bd** %8, align 8
  %10 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %11 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.bge_extrx_bd, %struct.bge_extrx_bd* %9, i64 %12
  store %struct.bge_extrx_bd* %13, %struct.bge_extrx_bd** %5, align 8
  %14 = load i32, i32* @BGE_RXBDFLAG_JUMBO_RING, align 4
  %15 = load i32, i32* @BGE_RXBDFLAG_END, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.bge_extrx_bd*, %struct.bge_extrx_bd** %5, align 8
  %18 = getelementptr inbounds %struct.bge_extrx_bd, %struct.bge_extrx_bd* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %20 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32**, i32*** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32*, i32** %22, i64 %24
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.bge_extrx_bd*, %struct.bge_extrx_bd** %5, align 8
  %30 = getelementptr inbounds %struct.bge_extrx_bd, %struct.bge_extrx_bd* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 4
  %31 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %32 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32**, i32*** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %34, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.bge_extrx_bd*, %struct.bge_extrx_bd** %5, align 8
  %42 = getelementptr inbounds %struct.bge_extrx_bd, %struct.bge_extrx_bd* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 4
  %43 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %44 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32**, i32*** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %46, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.bge_extrx_bd*, %struct.bge_extrx_bd** %5, align 8
  %54 = getelementptr inbounds %struct.bge_extrx_bd, %struct.bge_extrx_bd* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %56 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32**, i32*** %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32*, i32** %58, i64 %60
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.bge_extrx_bd*, %struct.bge_extrx_bd** %5, align 8
  %66 = getelementptr inbounds %struct.bge_extrx_bd, %struct.bge_extrx_bd* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* %4, align 4
  %68 = load %struct.bge_extrx_bd*, %struct.bge_extrx_bd** %5, align 8
  %69 = getelementptr inbounds %struct.bge_extrx_bd, %struct.bge_extrx_bd* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %71 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* @BGE_JUMBO_RX_RING_CNT, align 4
  %74 = call i32 @BGE_INC(i64 %72, i32 %73)
  ret void
}

declare dso_local i32 @BGE_INC(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
