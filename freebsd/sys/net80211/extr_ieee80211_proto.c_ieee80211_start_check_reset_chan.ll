; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_proto.c_ieee80211_start_check_reset_chan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_proto.c_ieee80211_start_check_reset_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i64, %struct.ieee80211com* }
%struct.ieee80211com = type { i32 }

@IEEE80211_M_IBSS = common dso_local global i64 0, align 8
@IEEE80211_M_HOSTAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*)* @ieee80211_start_check_reset_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_start_check_reset_chan(%struct.ieee80211vap* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211vap*, align 8
  %4 = alloca %struct.ieee80211com*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %3, align 8
  %5 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %6 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %5, i32 0, i32 1
  %7 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  store %struct.ieee80211com* %7, %struct.ieee80211com** %4, align 8
  %8 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @IEEE80211_M_IBSS, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %15 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @IEEE80211_IS_CHAN_NOADHOC(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %13, %1
  %20 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %21 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IEEE80211_M_HOSTAP, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %27 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @IEEE80211_IS_CHAN_NOHOSTAP(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25, %13
  store i32 1, i32* %2, align 4
  br label %33

32:                                               ; preds = %25, %19
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %31
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i64 @IEEE80211_IS_CHAN_NOADHOC(i32) #1

declare dso_local i64 @IEEE80211_IS_CHAN_NOHOSTAP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
