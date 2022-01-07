; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ageq.c_ieee80211_ageq_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ageq.c_ieee80211_ageq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_ageq = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_ageq_init(%struct.ieee80211_ageq* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.ieee80211_ageq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.ieee80211_ageq* %0, %struct.ieee80211_ageq** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load %struct.ieee80211_ageq*, %struct.ieee80211_ageq** %4, align 8
  %8 = call i32 @memset(%struct.ieee80211_ageq* %7, i32 0, i32 4)
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.ieee80211_ageq*, %struct.ieee80211_ageq** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211_ageq, %struct.ieee80211_ageq* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load %struct.ieee80211_ageq*, %struct.ieee80211_ageq** %4, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @IEEE80211_AGEQ_INIT(%struct.ieee80211_ageq* %12, i8* %13)
  ret void
}

declare dso_local i32 @memset(%struct.ieee80211_ageq*, i32, i32) #1

declare dso_local i32 @IEEE80211_AGEQ_INIT(%struct.ieee80211_ageq*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
