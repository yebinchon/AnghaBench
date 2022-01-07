; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_rx.c_sfxge_rx_qinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_rx.c_sfxge_rx_qinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_softc = type { i32, i32, %struct.sfxge_evq**, %struct.sfxge_rxq** }
%struct.sfxge_evq = type { i32 }
%struct.sfxge_rxq = type { i32, i32, i32, i32, i32, i8*, i32, i32, i32, %struct.sfxge_softc* }

@.str = private unnamed_addr constant [12 x i8] c"index >= %d\00", align 1
@M_SFXGE = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@SFXGE_RXQ_INITIALIZED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sfxge_softc*, i32)* @sfxge_rx_qinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfxge_rx_qinit(%struct.sfxge_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sfxge_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sfxge_rxq*, align 8
  %7 = alloca %struct.sfxge_evq*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.sfxge_softc* %0, %struct.sfxge_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %12 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ult i32 %10, %13
  %15 = zext i1 %14 to i32
  %16 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %17 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = zext i32 %18 to i64
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 @KASSERT(i32 %15, i8* %20)
  %22 = load i32, i32* @M_SFXGE, align 4
  %23 = load i32, i32* @M_ZERO, align 4
  %24 = load i32, i32* @M_WAITOK, align 4
  %25 = or i32 %23, %24
  %26 = call i8* @malloc(i32 56, i32 %22, i32 %25)
  %27 = bitcast i8* %26 to %struct.sfxge_rxq*
  store %struct.sfxge_rxq* %27, %struct.sfxge_rxq** %6, align 8
  %28 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %29 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %6, align 8
  %30 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %29, i32 0, i32 9
  store %struct.sfxge_softc* %28, %struct.sfxge_softc** %30, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %6, align 8
  %33 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %35 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %6, align 8
  %38 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %6, align 8
  %40 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %41, 1
  %43 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %6, align 8
  %44 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %6, align 8
  %46 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @RX_REFILL_THRESHOLD(i32 %47)
  %49 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %6, align 8
  %50 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %49, i32 0, i32 8
  store i32 %48, i32* %50, align 8
  %51 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %6, align 8
  %52 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %53 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %52, i32 0, i32 3
  %54 = load %struct.sfxge_rxq**, %struct.sfxge_rxq*** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.sfxge_rxq*, %struct.sfxge_rxq** %54, i64 %56
  store %struct.sfxge_rxq* %51, %struct.sfxge_rxq** %57, align 8
  %58 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %6, align 8
  %59 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %58, i32 0, i32 7
  store i32* %59, i32** %8, align 8
  %60 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %61 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %60, i32 0, i32 2
  %62 = load %struct.sfxge_evq**, %struct.sfxge_evq*** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.sfxge_evq*, %struct.sfxge_evq** %62, i64 %64
  %66 = load %struct.sfxge_evq*, %struct.sfxge_evq** %65, align 8
  store %struct.sfxge_evq* %66, %struct.sfxge_evq** %7, align 8
  %67 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %68 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %69 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @EFX_RXQ_SIZE(i32 %70)
  %72 = load i32*, i32** %8, align 8
  %73 = call i32 @sfxge_dma_alloc(%struct.sfxge_softc* %67, i32 %71, i32* %72)
  store i32 %73, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %2
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %3, align 4
  br label %107

77:                                               ; preds = %2
  %78 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %79 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %80 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @EFX_RXQ_NBUFS(i32 %81)
  %83 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %6, align 8
  %84 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %83, i32 0, i32 6
  %85 = call i32 @sfxge_sram_buf_tbl_alloc(%struct.sfxge_softc* %78, i32 %82, i32* %84)
  %86 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %87 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = mul i64 4, %89
  %91 = trunc i64 %90 to i32
  %92 = load i32, i32* @M_SFXGE, align 4
  %93 = load i32, i32* @M_WAITOK, align 4
  %94 = load i32, i32* @M_ZERO, align 4
  %95 = or i32 %93, %94
  %96 = call i8* @malloc(i32 %91, i32 %92, i32 %95)
  %97 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %6, align 8
  %98 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %97, i32 0, i32 5
  store i8* %96, i8** %98, align 8
  %99 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %6, align 8
  %100 = call i32 @sfxge_lro_init(%struct.sfxge_rxq* %99)
  %101 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %6, align 8
  %102 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %101, i32 0, i32 4
  %103 = call i32 @callout_init(i32* %102, i32 1)
  %104 = load i32, i32* @SFXGE_RXQ_INITIALIZED, align 4
  %105 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %6, align 8
  %106 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 4
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %77, %75
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @RX_REFILL_THRESHOLD(i32) #1

declare dso_local i32 @sfxge_dma_alloc(%struct.sfxge_softc*, i32, i32*) #1

declare dso_local i32 @EFX_RXQ_SIZE(i32) #1

declare dso_local i32 @sfxge_sram_buf_tbl_alloc(%struct.sfxge_softc*, i32, i32*) #1

declare dso_local i32 @EFX_RXQ_NBUFS(i32) #1

declare dso_local i32 @sfxge_lro_init(%struct.sfxge_rxq*) #1

declare dso_local i32 @callout_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
