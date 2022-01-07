; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_regdomain.c_chancompar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_regdomain.c_chancompar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_channel = type { i64, i32 }

@IEEE80211_CHAN_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @chancompar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chancompar(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca %struct.ieee80211_channel*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.ieee80211_channel*
  store %struct.ieee80211_channel* %8, %struct.ieee80211_channel** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.ieee80211_channel*
  store %struct.ieee80211_channel* %10, %struct.ieee80211_channel** %6, align 8
  %11 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %15 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %2
  %19 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %20 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @IEEE80211_CHAN_ALL, align 4
  %23 = and i32 %21, %22
  %24 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %25 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @IEEE80211_CHAN_ALL, align 4
  %28 = and i32 %26, %27
  %29 = sub nsw i32 %23, %28
  %30 = sext i32 %29 to i64
  br label %39

31:                                               ; preds = %2
  %32 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %33 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %36 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %34, %37
  br label %39

39:                                               ; preds = %31, %18
  %40 = phi i64 [ %30, %18 ], [ %38, %31 ]
  %41 = trunc i64 %40 to i32
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
