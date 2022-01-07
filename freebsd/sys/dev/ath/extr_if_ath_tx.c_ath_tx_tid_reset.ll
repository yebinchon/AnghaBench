; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_tx.c_ath_tx_tid_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_tx.c_ath_tx_tid_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32 }
%struct.ath_tid = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*, %struct.ath_tid*)* @ath_tx_tid_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_tx_tid_reset(%struct.ath_softc* %0, %struct.ath_tid* %1) #0 {
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.ath_tid*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  store %struct.ath_tid* %1, %struct.ath_tid** %4, align 8
  %5 = load %struct.ath_tid*, %struct.ath_tid** %4, align 8
  %6 = getelementptr inbounds %struct.ath_tid, %struct.ath_tid* %5, i32 0, i32 5
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %2
  %10 = load %struct.ath_tid*, %struct.ath_tid** %4, align 8
  %11 = getelementptr inbounds %struct.ath_tid, %struct.ath_tid* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load %struct.ath_tid*, %struct.ath_tid** %4, align 8
  %16 = getelementptr inbounds %struct.ath_tid, %struct.ath_tid* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, -1
  store i64 %18, i64* %16, align 8
  br label %19

19:                                               ; preds = %14, %9
  br label %20

20:                                               ; preds = %19, %2
  %21 = load %struct.ath_tid*, %struct.ath_tid** %4, align 8
  %22 = getelementptr inbounds %struct.ath_tid, %struct.ath_tid* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %20
  %26 = load %struct.ath_tid*, %struct.ath_tid** %4, align 8
  %27 = getelementptr inbounds %struct.ath_tid, %struct.ath_tid* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.ath_tid*, %struct.ath_tid** %4, align 8
  %32 = getelementptr inbounds %struct.ath_tid, %struct.ath_tid* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, -1
  store i64 %34, i64* %32, align 8
  br label %35

35:                                               ; preds = %30, %25
  br label %36

36:                                               ; preds = %35, %20
  %37 = load %struct.ath_tid*, %struct.ath_tid** %4, align 8
  %38 = getelementptr inbounds %struct.ath_tid, %struct.ath_tid* %37, i32 0, i32 5
  store i64 0, i64* %38, align 8
  %39 = load %struct.ath_tid*, %struct.ath_tid** %4, align 8
  %40 = getelementptr inbounds %struct.ath_tid, %struct.ath_tid* %39, i32 0, i32 4
  store i64 0, i64* %40, align 8
  %41 = load %struct.ath_tid*, %struct.ath_tid** %4, align 8
  %42 = getelementptr inbounds %struct.ath_tid, %struct.ath_tid* %41, i32 0, i32 3
  store i64 0, i64* %42, align 8
  %43 = load %struct.ath_tid*, %struct.ath_tid** %4, align 8
  %44 = getelementptr inbounds %struct.ath_tid, %struct.ath_tid* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  %45 = load %struct.ath_tid*, %struct.ath_tid** %4, align 8
  %46 = getelementptr inbounds %struct.ath_tid, %struct.ath_tid* %45, i32 0, i32 2
  store i64 0, i64* %46, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
