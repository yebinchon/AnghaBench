; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/ap/extr_ap.c_ack.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/ap/extr_ap.c_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params = type { i32, i32 }
%struct.ieee80211_frame = type { i32*, i32, i32 }

@IEEE80211_FC0_TYPE_MASK = common dso_local global i32 0, align 4
@IEEE80211_FC0_TYPE_CTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ack(%struct.params* %0, %struct.ieee80211_frame* %1) #0 {
  %3 = alloca %struct.params*, align 8
  %4 = alloca %struct.ieee80211_frame*, align 8
  store %struct.params* %0, %struct.params** %3, align 8
  store %struct.ieee80211_frame* %1, %struct.ieee80211_frame** %4, align 8
  %5 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %4, align 8
  %6 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.params*, %struct.params** %3, align 8
  %9 = getelementptr inbounds %struct.params, %struct.params* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @memcmp(i32 %7, i32 %10, i32 6)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %33

14:                                               ; preds = %2
  %15 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %4, align 8
  %16 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IEEE80211_FC0_TYPE_MASK, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @IEEE80211_FC0_TYPE_CTL, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  br label %33

25:                                               ; preds = %14
  %26 = load %struct.params*, %struct.params** %3, align 8
  %27 = getelementptr inbounds %struct.params, %struct.params* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %4, align 8
  %30 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @send_ack(i32 %28, i32 %31)
  br label %33

33:                                               ; preds = %25, %24, %13
  ret void
}

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @send_ack(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
