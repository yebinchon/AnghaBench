; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ageq.c_ieee80211_ageq_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ageq.c_ieee80211_ageq_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_ageq = type { i64 }

@.str = private unnamed_addr constant [18 x i8] c"%d frames on ageq\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_ageq_cleanup(%struct.ieee80211_ageq* %0) #0 {
  %2 = alloca %struct.ieee80211_ageq*, align 8
  store %struct.ieee80211_ageq* %0, %struct.ieee80211_ageq** %2, align 8
  %3 = load %struct.ieee80211_ageq*, %struct.ieee80211_ageq** %2, align 8
  %4 = getelementptr inbounds %struct.ieee80211_ageq, %struct.ieee80211_ageq* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp eq i64 %5, 0
  %7 = zext i1 %6 to i32
  %8 = load %struct.ieee80211_ageq*, %struct.ieee80211_ageq** %2, align 8
  %9 = getelementptr inbounds %struct.ieee80211_ageq, %struct.ieee80211_ageq* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = call i32 @KASSERT(i32 %7, i8* %11)
  %13 = load %struct.ieee80211_ageq*, %struct.ieee80211_ageq** %2, align 8
  %14 = call i32 @IEEE80211_AGEQ_DESTROY(%struct.ieee80211_ageq* %13)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @IEEE80211_AGEQ_DESTROY(%struct.ieee80211_ageq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
