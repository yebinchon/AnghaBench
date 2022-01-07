; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/wesside/wesside/extr_wesside.c_fill_basic.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/wesside/wesside/extr_wesside.c_fill_basic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ieee80211_frame = type { i64, i64, i32, i32, i32 }

@victim = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@mymac = common dso_local global i32 0, align 4
@txstate = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fill_basic(%struct.ieee80211_frame* %0) #0 {
  %2 = alloca %struct.ieee80211_frame*, align 8
  %3 = alloca i16*, align 8
  store %struct.ieee80211_frame* %0, %struct.ieee80211_frame** %2, align 8
  %4 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @victim, i32 0, i32 0), align 4
  %8 = call i32 @memcpy(i32 %6, i32 %7, i32 6)
  %9 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %2, align 8
  %10 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @mymac, align 4
  %13 = call i32 @memcpy(i32 %11, i32 %12, i32 6)
  %14 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %2, align 8
  %15 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @victim, i32 0, i32 0), align 4
  %18 = call i32 @memcpy(i32 %16, i32 %17, i32 6)
  %19 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %2, align 8
  %20 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i16*
  store i16* %22, i16** %3, align 8
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @txstate, i32 0, i32 0), align 4
  %24 = call zeroext i16 @fnseq(i32 0, i32 %23)
  %25 = load i16*, i16** %3, align 8
  store i16 %24, i16* %25, align 2
  %26 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %2, align 8
  %27 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i16*
  store i16* %29, i16** %3, align 8
  %30 = call zeroext i16 @htole16(i32 32767)
  %31 = load i16*, i16** %3, align 8
  store i16 %30, i16* %31, align 2
  ret void
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local zeroext i16 @fnseq(i32, i32) #1

declare dso_local zeroext i16 @htole16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
