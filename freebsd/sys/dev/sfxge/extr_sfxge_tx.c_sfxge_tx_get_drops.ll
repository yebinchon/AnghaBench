; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_tx.c_sfxge_tx_get_drops.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_tx.c_sfxge_tx_get_drops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_softc = type { i32, %struct.sfxge_txq** }
%struct.sfxge_txq = type { i64, i64, i64, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sfxge_tx_get_drops(%struct.sfxge_softc* %0) #0 {
  %2 = alloca %struct.sfxge_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sfxge_txq*, align 8
  store %struct.sfxge_softc* %0, %struct.sfxge_softc** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %51, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %9 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ult i32 %7, %10
  br i1 %11, label %12, label %54

12:                                               ; preds = %6
  %13 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %14 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %13, i32 0, i32 1
  %15 = load %struct.sfxge_txq**, %struct.sfxge_txq*** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.sfxge_txq*, %struct.sfxge_txq** %15, i64 %17
  %19 = load %struct.sfxge_txq*, %struct.sfxge_txq** %18, align 8
  store %struct.sfxge_txq* %19, %struct.sfxge_txq** %5, align 8
  %20 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %21 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %20, i32 0, i32 6
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %24 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  %27 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %28 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %26, %29
  %31 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %32 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %30, %33
  %35 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %36 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %34, %37
  %39 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %40 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %38, %41
  %43 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %44 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %42, %45
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %12
  %52 = load i32, i32* %3, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %6

54:                                               ; preds = %6
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
