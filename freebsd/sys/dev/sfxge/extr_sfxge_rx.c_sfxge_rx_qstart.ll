; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_rx.c_sfxge_rx_qstart.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_rx.c_sfxge_rx_qstart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_softc = type { i32, i32, %struct.sfxge_evq**, %struct.sfxge_rxq** }
%struct.sfxge_evq = type { i64, i32 }
%struct.sfxge_rxq = type { i64, i32, i32, i32, i32 }

@SFXGE_RXQ_INITIALIZED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"rxq->init_state != SFXGE_RXQ_INITIALIZED\00", align 1
@SFXGE_EVQ_STARTED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"evq->init_state != SFXGE_EVQ_STARTED\00", align 1
@EFX_RXQ_TYPE_DEFAULT = common dso_local global i32 0, align 4
@EFX_RXQ_FLAG_NONE = common dso_local global i32 0, align 4
@SFXGE_RXQ_STARTED = common dso_local global i64 0, align 8
@SFXGE_FLUSH_REQUIRED = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sfxge_softc*, i32)* @sfxge_rx_qstart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfxge_rx_qstart(%struct.sfxge_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sfxge_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sfxge_rxq*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.sfxge_evq*, align 8
  %9 = alloca i32, align 4
  store %struct.sfxge_softc* %0, %struct.sfxge_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %11 = call i32 @SFXGE_ADAPTER_LOCK_ASSERT_OWNED(%struct.sfxge_softc* %10)
  %12 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %13 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %12, i32 0, i32 3
  %14 = load %struct.sfxge_rxq**, %struct.sfxge_rxq*** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.sfxge_rxq*, %struct.sfxge_rxq** %14, i64 %16
  %18 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %17, align 8
  store %struct.sfxge_rxq* %18, %struct.sfxge_rxq** %6, align 8
  %19 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %6, align 8
  %20 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %19, i32 0, i32 4
  store i32* %20, i32** %7, align 8
  %21 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %22 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %21, i32 0, i32 2
  %23 = load %struct.sfxge_evq**, %struct.sfxge_evq*** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.sfxge_evq*, %struct.sfxge_evq** %23, i64 %25
  %27 = load %struct.sfxge_evq*, %struct.sfxge_evq** %26, align 8
  store %struct.sfxge_evq* %27, %struct.sfxge_evq** %8, align 8
  %28 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %6, align 8
  %29 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SFXGE_RXQ_INITIALIZED, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @KASSERT(i32 %33, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.sfxge_evq*, %struct.sfxge_evq** %8, align 8
  %36 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SFXGE_EVQ_STARTED, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @KASSERT(i32 %40, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %43 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %6, align 8
  %46 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %50 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @EFX_RXQ_NBUFS(i32 %51)
  %53 = call i32 @efx_sram_buf_tbl_set(i32 %44, i32 %47, i32* %48, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %2
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %3, align 4
  br label %114

57:                                               ; preds = %2
  %58 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %59 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @EFX_RXQ_TYPE_DEFAULT, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %65 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %6, align 8
  %68 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @EFX_RXQ_FLAG_NONE, align 4
  %71 = load %struct.sfxge_evq*, %struct.sfxge_evq** %8, align 8
  %72 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %6, align 8
  %75 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %74, i32 0, i32 3
  %76 = call i32 @efx_rx_qcreate(i32 %60, i32 %61, i32 0, i32 %62, i32* %63, i32 %66, i32 %69, i32 %70, i32 %73, i32* %75)
  store i32 %76, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %57
  br label %101

79:                                               ; preds = %57
  %80 = load %struct.sfxge_evq*, %struct.sfxge_evq** %8, align 8
  %81 = call i32 @SFXGE_EVQ_LOCK(%struct.sfxge_evq* %80)
  %82 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %6, align 8
  %83 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @efx_rx_qenable(i32 %84)
  %86 = load i64, i64* @SFXGE_RXQ_STARTED, align 8
  %87 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %6, align 8
  %88 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  %89 = load i32, i32* @SFXGE_FLUSH_REQUIRED, align 4
  %90 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %6, align 8
  %91 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 4
  %92 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %6, align 8
  %93 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %94 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @EFX_RXQ_LIMIT(i32 %95)
  %97 = load i32, i32* @B_FALSE, align 4
  %98 = call i32 @sfxge_rx_qfill(%struct.sfxge_rxq* %92, i32 %96, i32 %97)
  %99 = load %struct.sfxge_evq*, %struct.sfxge_evq** %8, align 8
  %100 = call i32 @SFXGE_EVQ_UNLOCK(%struct.sfxge_evq* %99)
  store i32 0, i32* %3, align 4
  br label %114

101:                                              ; preds = %78
  %102 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %103 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %6, align 8
  %106 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %109 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @EFX_RXQ_NBUFS(i32 %110)
  %112 = call i32 @efx_sram_buf_tbl_clear(i32 %104, i32 %107, i32 %111)
  %113 = load i32, i32* %9, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %101, %79, %55
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @SFXGE_ADAPTER_LOCK_ASSERT_OWNED(%struct.sfxge_softc*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @efx_sram_buf_tbl_set(i32, i32, i32*, i32) #1

declare dso_local i32 @EFX_RXQ_NBUFS(i32) #1

declare dso_local i32 @efx_rx_qcreate(i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @SFXGE_EVQ_LOCK(%struct.sfxge_evq*) #1

declare dso_local i32 @efx_rx_qenable(i32) #1

declare dso_local i32 @sfxge_rx_qfill(%struct.sfxge_rxq*, i32, i32) #1

declare dso_local i32 @EFX_RXQ_LIMIT(i32) #1

declare dso_local i32 @SFXGE_EVQ_UNLOCK(%struct.sfxge_evq*) #1

declare dso_local i32 @efx_sram_buf_tbl_clear(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
