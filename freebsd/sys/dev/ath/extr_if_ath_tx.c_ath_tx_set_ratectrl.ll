; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_tx.c_ath_tx_set_ratectrl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_tx.c_ath_tx_set_ratectrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32 }
%struct.ieee80211_node = type { i32 }
%struct.ath_buf = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, %struct.ath_rc_series* }
%struct.ath_rc_series = type { i32, i32 }

@HAL_TXDESC_NOACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*, %struct.ieee80211_node*, %struct.ath_buf*)* @ath_tx_set_ratectrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_tx_set_ratectrl(%struct.ath_softc* %0, %struct.ieee80211_node* %1, %struct.ath_buf* %2) #0 {
  %4 = alloca %struct.ath_softc*, align 8
  %5 = alloca %struct.ieee80211_node*, align 8
  %6 = alloca %struct.ath_buf*, align 8
  %7 = alloca %struct.ath_rc_series*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %4, align 8
  store %struct.ieee80211_node* %1, %struct.ieee80211_node** %5, align 8
  store %struct.ath_buf* %2, %struct.ath_buf** %6, align 8
  %8 = load %struct.ath_buf*, %struct.ath_buf** %6, align 8
  %9 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  %11 = load %struct.ath_rc_series*, %struct.ath_rc_series** %10, align 8
  store %struct.ath_rc_series* %11, %struct.ath_rc_series** %7, align 8
  %12 = load %struct.ath_buf*, %struct.ath_buf** %6, align 8
  %13 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %3
  %18 = load %struct.ath_rc_series*, %struct.ath_rc_series** %7, align 8
  %19 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %18, i64 3
  %20 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %19, i32 0, i32 0
  store i32 0, i32* %20, align 4
  %21 = load %struct.ath_rc_series*, %struct.ath_rc_series** %7, align 8
  %22 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %21, i64 2
  %23 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %22, i32 0, i32 0
  store i32 0, i32* %23, align 4
  %24 = load %struct.ath_rc_series*, %struct.ath_rc_series** %7, align 8
  %25 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %24, i64 1
  %26 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %25, i32 0, i32 0
  store i32 0, i32* %26, align 4
  br label %27

27:                                               ; preds = %17, %3
  %28 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %29 = call i64 @ath_tx_is_11n(%struct.ath_softc* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %33 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %34 = load %struct.ath_buf*, %struct.ath_buf** %6, align 8
  %35 = call i32 @ath_buf_set_rate(%struct.ath_softc* %32, %struct.ieee80211_node* %33, %struct.ath_buf* %34)
  br label %68

36:                                               ; preds = %27
  %37 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %38 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ath_buf*, %struct.ath_buf** %6, align 8
  %41 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.ath_rc_series*, %struct.ath_rc_series** %7, align 8
  %44 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %43, i64 1
  %45 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ath_rc_series*, %struct.ath_rc_series** %7, align 8
  %48 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %47, i64 1
  %49 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ath_rc_series*, %struct.ath_rc_series** %7, align 8
  %52 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %51, i64 2
  %53 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ath_rc_series*, %struct.ath_rc_series** %7, align 8
  %56 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %55, i64 2
  %57 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ath_rc_series*, %struct.ath_rc_series** %7, align 8
  %60 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %59, i64 3
  %61 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ath_rc_series*, %struct.ath_rc_series** %7, align 8
  %64 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %63, i64 3
  %65 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ath_hal_setupxtxdesc(i32 %39, i32 %42, i32 %46, i32 %50, i32 %54, i32 %58, i32 %62, i32 %66)
  br label %68

68:                                               ; preds = %36, %31
  ret void
}

declare dso_local i64 @ath_tx_is_11n(%struct.ath_softc*) #1

declare dso_local i32 @ath_buf_set_rate(%struct.ath_softc*, %struct.ieee80211_node*, %struct.ath_buf*) #1

declare dso_local i32 @ath_hal_setupxtxdesc(i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
