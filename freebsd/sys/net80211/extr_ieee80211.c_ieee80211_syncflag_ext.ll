; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211.c_ieee80211_syncflag_ext.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211.c_ieee80211_syncflag_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i32, %struct.ieee80211com* }
%struct.ieee80211com = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_syncflag_ext(%struct.ieee80211vap* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211vap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211com*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %6, i32 0, i32 1
  %8 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  store %struct.ieee80211com* %8, %struct.ieee80211com** %5, align 8
  %9 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %10 = call i32 @IEEE80211_LOCK(%struct.ieee80211com* %9)
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %19 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 8
  br label %28

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %25 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  br label %28

28:                                               ; preds = %22, %13
  %29 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @ieee80211_syncflag_ext_locked(%struct.ieee80211com* %29, i32 %30)
  %32 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %33 = call i32 @IEEE80211_UNLOCK(%struct.ieee80211com* %32)
  ret void
}

declare dso_local i32 @IEEE80211_LOCK(%struct.ieee80211com*) #1

declare dso_local i32 @ieee80211_syncflag_ext_locked(%struct.ieee80211com*, i32) #1

declare dso_local i32 @IEEE80211_UNLOCK(%struct.ieee80211com*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
