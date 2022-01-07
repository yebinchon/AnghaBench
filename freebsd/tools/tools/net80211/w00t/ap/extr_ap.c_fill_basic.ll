; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/ap/extr_ap.c_fill_basic.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/ap/extr_ap.c_fill_basic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_frame = type { i32*, i64, i32 }
%struct.params = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fill_basic(%struct.ieee80211_frame* %0, %struct.params* %1) #0 {
  %3 = alloca %struct.ieee80211_frame*, align 8
  %4 = alloca %struct.params*, align 8
  %5 = alloca i16*, align 8
  store %struct.ieee80211_frame* %0, %struct.ieee80211_frame** %3, align 8
  store %struct.params* %1, %struct.params** %4, align 8
  %6 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  store i32 105, i32* %9, align 4
  %10 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %3, align 8
  %11 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  store i32 0, i32* %13, align 4
  %14 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %3, align 8
  %15 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.params*, %struct.params** %4, align 8
  %18 = getelementptr inbounds %struct.params, %struct.params* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @memcpy(i32 %16, i32 %19, i32 6)
  %21 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %3, align 8
  %22 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i16*
  store i16* %24, i16** %5, align 8
  %25 = load %struct.params*, %struct.params** %4, align 8
  %26 = getelementptr inbounds %struct.params, %struct.params* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call signext i16 @seqfn(i32 %27, i32 0)
  %29 = load i16*, i16** %5, align 8
  store i16 %28, i16* %29, align 2
  ret void
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local signext i16 @seqfn(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
