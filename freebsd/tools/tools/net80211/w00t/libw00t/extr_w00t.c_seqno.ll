; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/libw00t/extr_w00t.c_seqno.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/libw00t/extr_w00t.c_seqno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_frame = type { i64 }

@IEEE80211_SEQ_SEQ_MASK = common dso_local global i16 0, align 2
@IEEE80211_SEQ_SEQ_SHIFT = common dso_local global i16 0, align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @seqno(%struct.ieee80211_frame* %0) #0 {
  %2 = alloca %struct.ieee80211_frame*, align 8
  %3 = alloca i16*, align 8
  store %struct.ieee80211_frame* %0, %struct.ieee80211_frame** %2, align 8
  %4 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to i16*
  store i16* %7, i16** %3, align 8
  %8 = load i16*, i16** %3, align 8
  %9 = load i16, i16* %8, align 2
  %10 = zext i16 %9 to i32
  %11 = load i16, i16* @IEEE80211_SEQ_SEQ_MASK, align 2
  %12 = zext i16 %11 to i32
  %13 = and i32 %10, %12
  %14 = load i16, i16* @IEEE80211_SEQ_SEQ_SHIFT, align 2
  %15 = zext i16 %14 to i32
  %16 = ashr i32 %13, %15
  %17 = trunc i32 %16 to i16
  ret i16 %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
