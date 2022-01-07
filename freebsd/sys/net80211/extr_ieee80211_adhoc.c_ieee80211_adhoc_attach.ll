; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_adhoc.c_ieee80211_adhoc_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_adhoc.c_ieee80211_adhoc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { i8** }

@adhoc_vattach = common dso_local global i8* null, align 8
@IEEE80211_M_IBSS = common dso_local global i64 0, align 8
@IEEE80211_M_AHDEMO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_adhoc_attach(%struct.ieee80211com* %0) #0 {
  %2 = alloca %struct.ieee80211com*, align 8
  store %struct.ieee80211com* %0, %struct.ieee80211com** %2, align 8
  %3 = load i8*, i8** @adhoc_vattach, align 8
  %4 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %4, i32 0, i32 0
  %6 = load i8**, i8*** %5, align 8
  %7 = load i64, i64* @IEEE80211_M_IBSS, align 8
  %8 = getelementptr inbounds i8*, i8** %6, i64 %7
  store i8* %3, i8** %8, align 8
  %9 = load i8*, i8** @adhoc_vattach, align 8
  %10 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %11 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %10, i32 0, i32 0
  %12 = load i8**, i8*** %11, align 8
  %13 = load i64, i64* @IEEE80211_M_AHDEMO, align 8
  %14 = getelementptr inbounds i8*, i8** %12, i64 %13
  store i8* %9, i8** %14, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
