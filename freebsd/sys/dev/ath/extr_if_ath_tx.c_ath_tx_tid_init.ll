; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_tx.c_ath_tx_tid_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_tx.c_ath_tx_tid_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32 }
%struct.ath_node = type { i32, %struct.ath_tid* }
%struct.ath_tid = type { i32, i32, i64, i64, i64, i64, i64, i64, i32**, %struct.ath_node*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@IEEE80211_TID_SIZE = common dso_local global i32 0, align 4
@ATH_TID_MAX_BUFS = common dso_local global i32 0, align 4
@IEEE80211_NONQOS_TID = common dso_local global i32 0, align 4
@ATH_NONQOS_TID_AC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath_tx_tid_init(%struct.ath_softc* %0, %struct.ath_node* %1) #0 {
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.ath_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath_tid*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  store %struct.ath_node* %1, %struct.ath_node** %4, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %74, %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @IEEE80211_TID_SIZE, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %77

12:                                               ; preds = %8
  %13 = load %struct.ath_node*, %struct.ath_node** %4, align 8
  %14 = getelementptr inbounds %struct.ath_node, %struct.ath_node* %13, i32 0, i32 1
  %15 = load %struct.ath_tid*, %struct.ath_tid** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.ath_tid, %struct.ath_tid* %15, i64 %17
  store %struct.ath_tid* %18, %struct.ath_tid** %7, align 8
  %19 = load %struct.ath_tid*, %struct.ath_tid** %7, align 8
  %20 = call i32 @bzero(%struct.ath_tid* %19, i32 80)
  %21 = load %struct.ath_tid*, %struct.ath_tid** %7, align 8
  %22 = getelementptr inbounds %struct.ath_tid, %struct.ath_tid* %21, i32 0, i32 11
  %23 = call i32 @TAILQ_INIT(i32* %22)
  %24 = load %struct.ath_tid*, %struct.ath_tid** %7, align 8
  %25 = getelementptr inbounds %struct.ath_tid, %struct.ath_tid* %24, i32 0, i32 10
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @TAILQ_INIT(i32* %26)
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.ath_tid*, %struct.ath_tid** %7, align 8
  %30 = getelementptr inbounds %struct.ath_tid, %struct.ath_tid* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.ath_node*, %struct.ath_node** %4, align 8
  %32 = load %struct.ath_tid*, %struct.ath_tid** %7, align 8
  %33 = getelementptr inbounds %struct.ath_tid, %struct.ath_tid* %32, i32 0, i32 9
  store %struct.ath_node* %31, %struct.ath_node** %33, align 8
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %45, %12
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @ATH_TID_MAX_BUFS, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = load %struct.ath_tid*, %struct.ath_tid** %7, align 8
  %40 = getelementptr inbounds %struct.ath_tid, %struct.ath_tid* %39, i32 0, i32 8
  %41 = load i32**, i32*** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32*, i32** %41, i64 %43
  store i32* null, i32** %44, align 8
  br label %45

45:                                               ; preds = %38
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %34

48:                                               ; preds = %34
  %49 = load %struct.ath_tid*, %struct.ath_tid** %7, align 8
  %50 = getelementptr inbounds %struct.ath_tid, %struct.ath_tid* %49, i32 0, i32 6
  store i64 0, i64* %50, align 8
  %51 = load %struct.ath_tid*, %struct.ath_tid** %7, align 8
  %52 = getelementptr inbounds %struct.ath_tid, %struct.ath_tid* %51, i32 0, i32 7
  store i64 0, i64* %52, align 8
  %53 = load %struct.ath_tid*, %struct.ath_tid** %7, align 8
  %54 = getelementptr inbounds %struct.ath_tid, %struct.ath_tid* %53, i32 0, i32 5
  store i64 0, i64* %54, align 8
  %55 = load %struct.ath_tid*, %struct.ath_tid** %7, align 8
  %56 = getelementptr inbounds %struct.ath_tid, %struct.ath_tid* %55, i32 0, i32 4
  store i64 0, i64* %56, align 8
  %57 = load %struct.ath_tid*, %struct.ath_tid** %7, align 8
  %58 = getelementptr inbounds %struct.ath_tid, %struct.ath_tid* %57, i32 0, i32 3
  store i64 0, i64* %58, align 8
  %59 = load %struct.ath_tid*, %struct.ath_tid** %7, align 8
  %60 = getelementptr inbounds %struct.ath_tid, %struct.ath_tid* %59, i32 0, i32 2
  store i64 0, i64* %60, align 8
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @IEEE80211_NONQOS_TID, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %48
  %65 = load i32, i32* @ATH_NONQOS_TID_AC, align 4
  %66 = load %struct.ath_tid*, %struct.ath_tid** %7, align 8
  %67 = getelementptr inbounds %struct.ath_tid, %struct.ath_tid* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  br label %73

68:                                               ; preds = %48
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @TID_TO_WME_AC(i32 %69)
  %71 = load %struct.ath_tid*, %struct.ath_tid** %7, align 8
  %72 = getelementptr inbounds %struct.ath_tid, %struct.ath_tid* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %68, %64
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %8

77:                                               ; preds = %8
  %78 = load %struct.ath_node*, %struct.ath_node** %4, align 8
  %79 = getelementptr inbounds %struct.ath_node, %struct.ath_node* %78, i32 0, i32 0
  store i32 1, i32* %79, align 8
  ret void
}

declare dso_local i32 @bzero(%struct.ath_tid*, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @TID_TO_WME_AC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
