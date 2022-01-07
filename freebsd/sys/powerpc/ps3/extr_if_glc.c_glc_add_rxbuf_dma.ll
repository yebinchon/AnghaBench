; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_if_glc.c_glc_add_rxbuf_dma.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_if_glc.c_glc_add_rxbuf_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.glc_softc = type { i64, %struct.TYPE_4__*, %struct.glc_rxsoft* }
%struct.TYPE_4__ = type { i32, i64, i32, i32 }
%struct.glc_rxsoft = type { i32, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@GLC_MAX_RX_PACKETS = common dso_local global i32 0, align 4
@GELIC_DESCR_OWNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.glc_softc*, i32)* @glc_add_rxbuf_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @glc_add_rxbuf_dma(%struct.glc_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.glc_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.glc_rxsoft*, align 8
  store %struct.glc_softc* %0, %struct.glc_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.glc_softc*, %struct.glc_softc** %3, align 8
  %7 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %6, i32 0, i32 2
  %8 = load %struct.glc_rxsoft*, %struct.glc_rxsoft** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.glc_rxsoft, %struct.glc_rxsoft* %8, i64 %10
  store %struct.glc_rxsoft* %11, %struct.glc_rxsoft** %5, align 8
  %12 = load %struct.glc_softc*, %struct.glc_softc** %3, align 8
  %13 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 %16
  %18 = call i32 @bzero(%struct.TYPE_4__* %17, i32 24)
  %19 = load %struct.glc_rxsoft*, %struct.glc_rxsoft** %5, align 8
  %20 = getelementptr inbounds %struct.glc_rxsoft, %struct.glc_rxsoft* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.glc_softc*, %struct.glc_softc** %3, align 8
  %24 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 3
  store i32 %22, i32* %29, align 4
  %30 = load %struct.glc_rxsoft*, %struct.glc_rxsoft** %5, align 8
  %31 = getelementptr inbounds %struct.glc_rxsoft, %struct.glc_rxsoft* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.glc_softc*, %struct.glc_softc** %3, align 8
  %35 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  store i32 %33, i32* %40, align 8
  %41 = load %struct.glc_softc*, %struct.glc_softc** %3, align 8
  %42 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  %46 = load i32, i32* @GLC_MAX_RX_PACKETS, align 4
  %47 = srem i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = mul i64 %48, 24
  %50 = add i64 %43, %49
  %51 = load %struct.glc_softc*, %struct.glc_softc** %3, align 8
  %52 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  store i64 %50, i64* %57, align 8
  %58 = load i32, i32* @GELIC_DESCR_OWNED, align 4
  %59 = load %struct.glc_softc*, %struct.glc_softc** %3, align 8
  %60 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i32 %58, i32* %65, align 8
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.glc_rxsoft*, %struct.glc_rxsoft** %5, align 8
  %68 = getelementptr inbounds %struct.glc_rxsoft, %struct.glc_rxsoft* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.glc_softc*, %struct.glc_softc** %3, align 8
  %70 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = mul i64 %73, 4
  %75 = add i64 %71, %74
  %76 = load %struct.glc_rxsoft*, %struct.glc_rxsoft** %5, align 8
  %77 = getelementptr inbounds %struct.glc_rxsoft, %struct.glc_rxsoft* %76, i32 0, i32 1
  store i64 %75, i64* %77, align 8
  ret i32 0
}

declare dso_local i32 @bzero(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
