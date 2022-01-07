; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athratestats/extr_main.c_dot11rate.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athratestats/extr_main.c_dot11rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_rateioctl_rt = type { i32* }

@IEEE80211_RATE_MCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_rateioctl_rt*, i32)* @dot11rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dot11rate(%struct.ath_rateioctl_rt* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_rateioctl_rt*, align 8
  %5 = alloca i32, align 4
  store %struct.ath_rateioctl_rt* %0, %struct.ath_rateioctl_rt** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.ath_rateioctl_rt*, %struct.ath_rateioctl_rt** %4, align 8
  %7 = getelementptr inbounds %struct.ath_rateioctl_rt, %struct.ath_rateioctl_rt* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @IEEE80211_RATE_MCS, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = load %struct.ath_rateioctl_rt*, %struct.ath_rateioctl_rt** %4, align 8
  %18 = getelementptr inbounds %struct.ath_rateioctl_rt, %struct.ath_rateioctl_rt* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IEEE80211_RATE_MCS, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  store i32 %26, i32* %3, align 4
  br label %36

27:                                               ; preds = %2
  %28 = load %struct.ath_rateioctl_rt*, %struct.ath_rateioctl_rt** %4, align 8
  %29 = getelementptr inbounds %struct.ath_rateioctl_rt, %struct.ath_rateioctl_rt* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = sdiv i32 %34, 2
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %27, %16
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
