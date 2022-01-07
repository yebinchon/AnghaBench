; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath.c_ath_txqmove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath.c_ath_txqmove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_txq = type { i64, i64, i32*, i32 }

@bf_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath_txqmove(%struct.ath_txq* %0, %struct.ath_txq* %1) #0 {
  %3 = alloca %struct.ath_txq*, align 8
  %4 = alloca %struct.ath_txq*, align 8
  store %struct.ath_txq* %0, %struct.ath_txq** %3, align 8
  store %struct.ath_txq* %1, %struct.ath_txq** %4, align 8
  %5 = load %struct.ath_txq*, %struct.ath_txq** %4, align 8
  %6 = call i32 @ATH_TXQ_LOCK_ASSERT(%struct.ath_txq* %5)
  %7 = load %struct.ath_txq*, %struct.ath_txq** %3, align 8
  %8 = call i32 @ATH_TXQ_LOCK_ASSERT(%struct.ath_txq* %7)
  %9 = load %struct.ath_txq*, %struct.ath_txq** %3, align 8
  %10 = getelementptr inbounds %struct.ath_txq, %struct.ath_txq* %9, i32 0, i32 3
  %11 = load %struct.ath_txq*, %struct.ath_txq** %4, align 8
  %12 = getelementptr inbounds %struct.ath_txq, %struct.ath_txq* %11, i32 0, i32 3
  %13 = load i32, i32* @bf_list, align 4
  %14 = call i32 @TAILQ_CONCAT(i32* %10, i32* %12, i32 %13)
  %15 = load %struct.ath_txq*, %struct.ath_txq** %4, align 8
  %16 = getelementptr inbounds %struct.ath_txq, %struct.ath_txq* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.ath_txq*, %struct.ath_txq** %3, align 8
  %19 = getelementptr inbounds %struct.ath_txq, %struct.ath_txq* %18, i32 0, i32 2
  store i32* %17, i32** %19, align 8
  %20 = load %struct.ath_txq*, %struct.ath_txq** %4, align 8
  %21 = getelementptr inbounds %struct.ath_txq, %struct.ath_txq* %20, i32 0, i32 2
  store i32* null, i32** %21, align 8
  %22 = load %struct.ath_txq*, %struct.ath_txq** %4, align 8
  %23 = getelementptr inbounds %struct.ath_txq, %struct.ath_txq* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.ath_txq*, %struct.ath_txq** %3, align 8
  %26 = getelementptr inbounds %struct.ath_txq, %struct.ath_txq* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, %24
  store i64 %28, i64* %26, align 8
  %29 = load %struct.ath_txq*, %struct.ath_txq** %4, align 8
  %30 = getelementptr inbounds %struct.ath_txq, %struct.ath_txq* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.ath_txq*, %struct.ath_txq** %3, align 8
  %33 = getelementptr inbounds %struct.ath_txq, %struct.ath_txq* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, %31
  store i64 %35, i64* %33, align 8
  %36 = load %struct.ath_txq*, %struct.ath_txq** %4, align 8
  %37 = getelementptr inbounds %struct.ath_txq, %struct.ath_txq* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.ath_txq*, %struct.ath_txq** %4, align 8
  %39 = getelementptr inbounds %struct.ath_txq, %struct.ath_txq* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  ret void
}

declare dso_local i32 @ATH_TXQ_LOCK_ASSERT(%struct.ath_txq*) #1

declare dso_local i32 @TAILQ_CONCAT(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
