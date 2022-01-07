; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_misc.c_ar5212SetCoverageClass.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_misc.c_ar5212SetCoverageClass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@IFS_SLOT_HALF_RATE = common dso_local global i64 0, align 8
@IFS_EIFS_HALF_RATE = common dso_local global i64 0, align 8
@IFS_SLOT_QUARTER_RATE = common dso_local global i64 0, align 8
@IFS_EIFS_QUARTER_RATE = common dso_local global i64 0, align 8
@IFS_SLOT_FULL_RATE = common dso_local global i64 0, align 8
@IFS_EIFS_FULL_RATE = common dso_local global i64 0, align 8
@ACK_CTS_TIMEOUT_11A = common dso_local global i32 0, align 4
@AR_D_GBL_IFS_SLOT = common dso_local global i32 0, align 4
@AR_D_GBL_IFS_EIFS = common dso_local global i32 0, align 4
@AR_TIME_OUT = common dso_local global i32 0, align 4
@AR_TIME_OUT_CTS = common dso_local global i32 0, align 4
@AR_TIME_OUT_ACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar5212SetCoverageClass(%struct.ath_hal* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ath_hal*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %13 = call %struct.TYPE_2__* @AH_PRIVATE(%struct.ath_hal* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 %11, i32* %14, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %115

17:                                               ; preds = %3
  %18 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %19 = call %struct.TYPE_2__* @AH_PRIVATE(%struct.ath_hal* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %115

24:                                               ; preds = %17
  %25 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %26 = call %struct.TYPE_2__* @AH_PRIVATE(%struct.ath_hal* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @IEEE80211_IS_CHAN_A(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  br label %115

32:                                               ; preds = %24
  %33 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %34 = call i32 @ath_hal_mac_clks(%struct.ath_hal* %33, i32 1)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %5, align 4
  %36 = mul nsw i32 %35, 3
  %37 = load i32, i32* %10, align 4
  %38 = mul nsw i32 %36, %37
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %5, align 4
  %40 = mul nsw i32 %39, 6
  %41 = load i32, i32* %10, align 4
  %42 = mul nsw i32 %40, %41
  store i32 %42, i32* %9, align 4
  %43 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %44 = call %struct.TYPE_2__* @AH_PRIVATE(%struct.ath_hal* %43)
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @IEEE80211_IS_CHAN_HALF(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %32
  %50 = load i64, i64* @IFS_SLOT_HALF_RATE, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %7, align 4
  %55 = load i64, i64* @IFS_EIFS_HALF_RATE, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %55
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %9, align 4
  br label %90

60:                                               ; preds = %32
  %61 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %62 = call %struct.TYPE_2__* @AH_PRIVATE(%struct.ath_hal* %61)
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @IEEE80211_IS_CHAN_QUARTER(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %60
  %68 = load i64, i64* @IFS_SLOT_QUARTER_RATE, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %7, align 4
  %73 = load i64, i64* @IFS_EIFS_QUARTER_RATE, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %75, %73
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %9, align 4
  br label %89

78:                                               ; preds = %60
  %79 = load i64, i64* @IFS_SLOT_FULL_RATE, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %81, %79
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %7, align 4
  %84 = load i64, i64* @IFS_EIFS_FULL_RATE, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %86, %84
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %9, align 4
  br label %89

89:                                               ; preds = %78, %67
  br label %90

90:                                               ; preds = %89, %49
  %91 = load i32, i32* @ACK_CTS_TIMEOUT_11A, align 4
  %92 = load i32, i32* %5, align 4
  %93 = mul nsw i32 %92, 3
  %94 = load i32, i32* %10, align 4
  %95 = mul nsw i32 %93, %94
  %96 = add nsw i32 %91, %95
  store i32 %96, i32* %8, align 4
  %97 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %98 = load i32, i32* @AR_D_GBL_IFS_SLOT, align 4
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @OS_REG_WRITE(%struct.ath_hal* %97, i32 %98, i32 %99)
  %101 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %102 = load i32, i32* @AR_D_GBL_IFS_EIFS, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @OS_REG_WRITE(%struct.ath_hal* %101, i32 %102, i32 %103)
  %105 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %106 = load i32, i32* @AR_TIME_OUT, align 4
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* @AR_TIME_OUT_CTS, align 4
  %109 = call i32 @SM(i32 %107, i32 %108)
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* @AR_TIME_OUT_ACK, align 4
  %112 = call i32 @SM(i32 %110, i32 %111)
  %113 = or i32 %109, %112
  %114 = call i32 @OS_REG_WRITE(%struct.ath_hal* %105, i32 %106, i32 %113)
  br label %115

115:                                              ; preds = %23, %31, %90, %3
  ret void
}

declare dso_local %struct.TYPE_2__* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i32 @IEEE80211_IS_CHAN_A(i32) #1

declare dso_local i32 @ath_hal_mac_clks(%struct.ath_hal*, i32) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HALF(i32) #1

declare dso_local i64 @IEEE80211_IS_CHAN_QUARTER(i32) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @SM(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
