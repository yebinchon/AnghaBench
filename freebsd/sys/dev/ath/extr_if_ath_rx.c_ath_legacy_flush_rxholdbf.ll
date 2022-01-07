; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_rx.c_ath_legacy_flush_rxholdbf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_rx.c_ath_legacy_flush_rxholdbf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.ath_buf* }
%struct.ath_buf = type { i32* }

@HAL_RX_QUEUE_HP = common dso_local global i64 0, align 8
@bf_list = common dso_local global i32 0, align 4
@HAL_RX_QUEUE_LP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_softc*)* @ath_legacy_flush_rxholdbf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath_legacy_flush_rxholdbf(%struct.ath_softc* %0) #0 {
  %2 = alloca %struct.ath_softc*, align 8
  %3 = alloca %struct.ath_buf*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %2, align 8
  %4 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %5 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = load i64, i64* @HAL_RX_QUEUE_HP, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i64 %7
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.ath_buf*, %struct.ath_buf** %9, align 8
  store %struct.ath_buf* %10, %struct.ath_buf** %3, align 8
  %11 = load %struct.ath_buf*, %struct.ath_buf** %3, align 8
  %12 = icmp ne %struct.ath_buf* %11, null
  br i1 %12, label %13, label %34

13:                                               ; preds = %1
  %14 = load %struct.ath_buf*, %struct.ath_buf** %3, align 8
  %15 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.ath_buf*, %struct.ath_buf** %3, align 8
  %20 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @m_freem(i32* %21)
  br label %23

23:                                               ; preds = %18, %13
  %24 = load %struct.ath_buf*, %struct.ath_buf** %3, align 8
  %25 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %24, i32 0, i32 0
  store i32* null, i32** %25, align 8
  %26 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %27 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %26, i32 0, i32 1
  %28 = load %struct.ath_buf*, %struct.ath_buf** %3, align 8
  %29 = load i32, i32* @bf_list, align 4
  %30 = call i32 @TAILQ_INSERT_TAIL(i32* %27, %struct.ath_buf* %28, i32 %29)
  %31 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %32 = load %struct.ath_buf*, %struct.ath_buf** %3, align 8
  %33 = call i32 @ath_rxbuf_init(%struct.ath_softc* %31, %struct.ath_buf* %32)
  br label %34

34:                                               ; preds = %23, %1
  %35 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %36 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i64, i64* @HAL_RX_QUEUE_HP, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store %struct.ath_buf* null, %struct.ath_buf** %40, align 8
  %41 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %42 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i64, i64* @HAL_RX_QUEUE_LP, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load %struct.ath_buf*, %struct.ath_buf** %46, align 8
  store %struct.ath_buf* %47, %struct.ath_buf** %3, align 8
  %48 = load %struct.ath_buf*, %struct.ath_buf** %3, align 8
  %49 = icmp ne %struct.ath_buf* %48, null
  br i1 %49, label %50, label %71

50:                                               ; preds = %34
  %51 = load %struct.ath_buf*, %struct.ath_buf** %3, align 8
  %52 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load %struct.ath_buf*, %struct.ath_buf** %3, align 8
  %57 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @m_freem(i32* %58)
  br label %60

60:                                               ; preds = %55, %50
  %61 = load %struct.ath_buf*, %struct.ath_buf** %3, align 8
  %62 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %61, i32 0, i32 0
  store i32* null, i32** %62, align 8
  %63 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %64 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %63, i32 0, i32 1
  %65 = load %struct.ath_buf*, %struct.ath_buf** %3, align 8
  %66 = load i32, i32* @bf_list, align 4
  %67 = call i32 @TAILQ_INSERT_TAIL(i32* %64, %struct.ath_buf* %65, i32 %66)
  %68 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %69 = load %struct.ath_buf*, %struct.ath_buf** %3, align 8
  %70 = call i32 @ath_rxbuf_init(%struct.ath_softc* %68, %struct.ath_buf* %69)
  br label %71

71:                                               ; preds = %60, %34
  %72 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %73 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load i64, i64* @HAL_RX_QUEUE_LP, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  store %struct.ath_buf* null, %struct.ath_buf** %77, align 8
  ret i32 0
}

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.ath_buf*, i32) #1

declare dso_local i32 @ath_rxbuf_init(%struct.ath_softc*, %struct.ath_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
