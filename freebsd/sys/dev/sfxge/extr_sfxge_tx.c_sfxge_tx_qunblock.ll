; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_tx.c_sfxge_tx_qunblock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_tx.c_sfxge_tx_qunblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_txq = type { i64, i64, i32, i32, i64, i32, %struct.sfxge_softc* }
%struct.sfxge_softc = type { %struct.sfxge_evq** }
%struct.sfxge_evq = type { i32 }

@SFXGE_TXQ_STARTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sfxge_txq*)* @sfxge_tx_qunblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfxge_tx_qunblock(%struct.sfxge_txq* %0) #0 {
  %2 = alloca %struct.sfxge_txq*, align 8
  %3 = alloca %struct.sfxge_softc*, align 8
  %4 = alloca %struct.sfxge_evq*, align 8
  %5 = alloca i32, align 4
  store %struct.sfxge_txq* %0, %struct.sfxge_txq** %2, align 8
  %6 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %7 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %6, i32 0, i32 6
  %8 = load %struct.sfxge_softc*, %struct.sfxge_softc** %7, align 8
  store %struct.sfxge_softc* %8, %struct.sfxge_softc** %3, align 8
  %9 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %10 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %9, i32 0, i32 0
  %11 = load %struct.sfxge_evq**, %struct.sfxge_evq*** %10, align 8
  %12 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %13 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.sfxge_evq*, %struct.sfxge_evq** %11, i64 %14
  %16 = load %struct.sfxge_evq*, %struct.sfxge_evq** %15, align 8
  store %struct.sfxge_evq* %16, %struct.sfxge_evq** %4, align 8
  %17 = load %struct.sfxge_evq*, %struct.sfxge_evq** %4, align 8
  %18 = call i32 @SFXGE_EVQ_LOCK_ASSERT_OWNED(%struct.sfxge_evq* %17)
  %19 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %20 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SFXGE_TXQ_STARTED, align 8
  %23 = icmp ne i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i64 @__predict_false(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  br label %58

28:                                               ; preds = %1
  %29 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %30 = call i32 @SFXGE_TXQ_LOCK(%struct.sfxge_txq* %29)
  %31 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %32 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %28
  %36 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %37 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %40 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = sub i32 %38, %41
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %45 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @SFXGE_TXQ_UNBLOCK_LEVEL(i32 %46)
  %48 = icmp ule i32 %43, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %35
  %50 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %51 = call i32 @sfxge_tx_qreap(%struct.sfxge_txq* %50)
  %52 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %53 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %52, i32 0, i32 4
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %49, %35
  br label %55

55:                                               ; preds = %54, %28
  %56 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %57 = call i32 @sfxge_tx_qdpl_service(%struct.sfxge_txq* %56)
  br label %58

58:                                               ; preds = %55, %27
  ret void
}

declare dso_local i32 @SFXGE_EVQ_LOCK_ASSERT_OWNED(%struct.sfxge_evq*) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @SFXGE_TXQ_LOCK(%struct.sfxge_txq*) #1

declare dso_local i32 @SFXGE_TXQ_UNBLOCK_LEVEL(i32) #1

declare dso_local i32 @sfxge_tx_qreap(%struct.sfxge_txq*) #1

declare dso_local i32 @sfxge_tx_qdpl_service(%struct.sfxge_txq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
