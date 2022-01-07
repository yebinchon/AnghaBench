; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_tx.c_sfxge_tx_qfini.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_tx.c_sfxge_tx_qfini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_softc = type { i32, %struct.sfxge_txq** }
%struct.sfxge_txq = type { i64, i64, i32, %struct.sfxge_txq*, i32, i32, %struct.sfxge_txq* }

@SFXGE_TXQ_INITIALIZED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"txq->init_state != SFXGE_TXQ_INITIALIZED\00", align 1
@SFXGE_TXQ_IP_TCP_UDP_CKSUM = common dso_local global i64 0, align 8
@M_SFXGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sfxge_softc*, i32)* @sfxge_tx_qfini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfxge_tx_qfini(%struct.sfxge_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.sfxge_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sfxge_txq*, align 8
  %6 = alloca i32, align 4
  store %struct.sfxge_softc* %0, %struct.sfxge_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %8 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %7, i32 0, i32 1
  %9 = load %struct.sfxge_txq**, %struct.sfxge_txq*** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.sfxge_txq*, %struct.sfxge_txq** %9, i64 %11
  %13 = load %struct.sfxge_txq*, %struct.sfxge_txq** %12, align 8
  store %struct.sfxge_txq* %13, %struct.sfxge_txq** %5, align 8
  %14 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %15 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SFXGE_TXQ_INITIALIZED, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @KASSERT(i32 %19, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %22 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SFXGE_TXQ_IP_TCP_UDP_CKSUM, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %28 = call i32 @tso_fini(%struct.sfxge_txq* %27)
  br label %29

29:                                               ; preds = %26, %2
  %30 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %31 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %30, i32 0, i32 6
  %32 = load %struct.sfxge_txq*, %struct.sfxge_txq** %31, align 8
  %33 = load i32, i32* @M_SFXGE, align 4
  %34 = call i32 @free(%struct.sfxge_txq* %32, i32 %33)
  %35 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %36 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %42, %29
  %39 = load i32, i32* %6, align 4
  %40 = add i32 %39, -1
  store i32 %40, i32* %6, align 4
  %41 = icmp ne i32 %39, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %38
  %43 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %44 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %47 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %46, i32 0, i32 3
  %48 = load %struct.sfxge_txq*, %struct.sfxge_txq** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %48, i64 %50
  %52 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @bus_dmamap_destroy(i32 %45, i32 %53)
  br label %38

55:                                               ; preds = %38
  %56 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %57 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %56, i32 0, i32 3
  %58 = load %struct.sfxge_txq*, %struct.sfxge_txq** %57, align 8
  %59 = load i32, i32* @M_SFXGE, align 4
  %60 = call i32 @free(%struct.sfxge_txq* %58, i32 %59)
  %61 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %62 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %61, i32 0, i32 2
  %63 = call i32 @sfxge_dma_free(i32* %62)
  %64 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %65 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %64, i32 0, i32 1
  %66 = load %struct.sfxge_txq**, %struct.sfxge_txq*** %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.sfxge_txq*, %struct.sfxge_txq** %66, i64 %68
  store %struct.sfxge_txq* null, %struct.sfxge_txq** %69, align 8
  %70 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %71 = call i32 @SFXGE_TXQ_LOCK_DESTROY(%struct.sfxge_txq* %70)
  %72 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %73 = load i32, i32* @M_SFXGE, align 4
  %74 = call i32 @free(%struct.sfxge_txq* %72, i32 %73)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @tso_fini(%struct.sfxge_txq*) #1

declare dso_local i32 @free(%struct.sfxge_txq*, i32) #1

declare dso_local i32 @bus_dmamap_destroy(i32, i32) #1

declare dso_local i32 @sfxge_dma_free(i32*) #1

declare dso_local i32 @SFXGE_TXQ_LOCK_DESTROY(%struct.sfxge_txq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
