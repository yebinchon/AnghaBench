; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar9002/extr_ar9287_olc.c_ar9287olcGetTxGainIndex.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar9002/extr_ar9287_olc.c_ar9287olcGetTxGainIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.cal_data_op_loop_ar9287 = type { i64** }
%struct.TYPE_3__ = type { i32 }

@AR5416_BCHAN_UNUSED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9287olcGetTxGainIndex(%struct.ath_hal* %0, %struct.ieee80211_channel* %1, %struct.cal_data_op_loop_ar9287* %2, i64* %3, i64 %4, i32* %5) #0 {
  %7 = alloca %struct.ath_hal*, align 8
  %8 = alloca %struct.ieee80211_channel*, align 8
  %9 = alloca %struct.cal_data_op_loop_ar9287*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_3__, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %7, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %8, align 8
  store %struct.cal_data_op_loop_ar9287* %2, %struct.cal_data_op_loop_ar9287** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32* %5, i32** %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %18 = load %struct.ath_hal*, %struct.ath_hal** %7, align 8
  %19 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %20 = call i32 @ar5416GetChannelCenters(%struct.ath_hal* %18, %struct.ieee80211_channel* %19, %struct.TYPE_3__* %17)
  store i64 0, i64* %15, align 8
  br label %21

21:                                               ; preds = %34, %6
  %22 = load i64, i64* %15, align 8
  %23 = load i64, i64* %11, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %21
  %26 = load i64*, i64** %10, align 8
  %27 = load i64, i64* %15, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @AR5416_BCHAN_UNUSED, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %37

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33
  %35 = load i64, i64* %15, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %15, align 8
  br label %21

37:                                               ; preds = %32, %21
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %41 = call i32 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel* %40)
  %42 = call i64 @FREQ2FBIN(i32 %39, i32 %41)
  %43 = load i64*, i64** %10, align 8
  %44 = load i64, i64* %15, align 8
  %45 = call i64 @ath_ee_getLowerUpperIndex(i64 %42, i64* %43, i64 %44, i64* %13, i64* %14)
  store i64 %45, i64* %16, align 8
  %46 = load i64, i64* %16, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %37
  %49 = load %struct.cal_data_op_loop_ar9287*, %struct.cal_data_op_loop_ar9287** %9, align 8
  %50 = load i64, i64* %13, align 8
  %51 = getelementptr inbounds %struct.cal_data_op_loop_ar9287, %struct.cal_data_op_loop_ar9287* %49, i64 %50
  %52 = getelementptr inbounds %struct.cal_data_op_loop_ar9287, %struct.cal_data_op_loop_ar9287* %51, i32 0, i32 0
  %53 = load i64**, i64*** %52, align 8
  %54 = getelementptr inbounds i64*, i64** %53, i64 0
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 0
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  %59 = load i32*, i32** %12, align 8
  store i32 %58, i32* %59, align 4
  br label %84

60:                                               ; preds = %37
  %61 = load %struct.cal_data_op_loop_ar9287*, %struct.cal_data_op_loop_ar9287** %9, align 8
  %62 = load i64, i64* %13, align 8
  %63 = getelementptr inbounds %struct.cal_data_op_loop_ar9287, %struct.cal_data_op_loop_ar9287* %61, i64 %62
  %64 = getelementptr inbounds %struct.cal_data_op_loop_ar9287, %struct.cal_data_op_loop_ar9287* %63, i32 0, i32 0
  %65 = load i64**, i64*** %64, align 8
  %66 = getelementptr inbounds i64*, i64** %65, i64 0
  %67 = load i64*, i64** %66, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 0
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = load %struct.cal_data_op_loop_ar9287*, %struct.cal_data_op_loop_ar9287** %9, align 8
  %72 = load i64, i64* %14, align 8
  %73 = getelementptr inbounds %struct.cal_data_op_loop_ar9287, %struct.cal_data_op_loop_ar9287* %71, i64 %72
  %74 = getelementptr inbounds %struct.cal_data_op_loop_ar9287, %struct.cal_data_op_loop_ar9287* %73, i32 0, i32 0
  %75 = load i64**, i64*** %74, align 8
  %76 = getelementptr inbounds i64*, i64** %75, i64 0
  %77 = load i64*, i64** %76, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 0
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = add nsw i32 %70, %80
  %82 = sdiv i32 %81, 2
  %83 = load i32*, i32** %12, align 8
  store i32 %82, i32* %83, align 4
  br label %84

84:                                               ; preds = %60, %48
  ret void
}

declare dso_local i32 @ar5416GetChannelCenters(%struct.ath_hal*, %struct.ieee80211_channel*, %struct.TYPE_3__*) #1

declare dso_local i64 @ath_ee_getLowerUpperIndex(i64, i64*, i64, i64*, i64*) #1

declare dso_local i64 @FREQ2FBIN(i32, i32) #1

declare dso_local i32 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
