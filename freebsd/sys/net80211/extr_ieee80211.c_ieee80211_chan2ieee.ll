; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211.c_ieee80211_chan2ieee.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211.c_ieee80211_chan2ieee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_channel = type { i32 }
%struct.ieee80211com = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"invalid channel (NULL)\0A\00", align 1
@IEEE80211_CHAN_ANYC = common dso_local global %struct.ieee80211_channel* null, align 8
@IEEE80211_CHAN_ANY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_chan2ieee(%struct.ieee80211com* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211com*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  store %struct.ieee80211com* %0, %struct.ieee80211com** %4, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %5, align 8
  %6 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %7 = icmp eq %struct.ieee80211_channel* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %10 = call i32 @ic_printf(%struct.ieee80211com* %9, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %23

11:                                               ; preds = %2
  %12 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %13 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** @IEEE80211_CHAN_ANYC, align 8
  %14 = icmp eq %struct.ieee80211_channel* %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load i32, i32* @IEEE80211_CHAN_ANY, align 4
  br label %21

17:                                               ; preds = %11
  %18 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %19 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  br label %21

21:                                               ; preds = %17, %15
  %22 = phi i32 [ %16, %15 ], [ %20, %17 ]
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %21, %8
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @ic_printf(%struct.ieee80211com*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
