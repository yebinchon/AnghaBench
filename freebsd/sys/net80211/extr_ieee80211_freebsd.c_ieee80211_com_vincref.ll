; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_freebsd.c_ieee80211_com_vincref.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_freebsd.c_ieee80211_com_vincref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i32 }

@IEEE80211_COM_REF_ADD = common dso_local global i32 0, align 4
@IEEE80211_COM_DETACHED = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@IEEE80211_COM_REF = common dso_local global i32 0, align 4
@IEEE80211_COM_REF_MAX = common dso_local global i64 0, align 8
@EOVERFLOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_com_vincref(%struct.ieee80211vap* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211vap*, align 8
  %4 = alloca i32, align 4
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %3, align 8
  %5 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %6 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %5, i32 0, i32 0
  %7 = load i32, i32* @IEEE80211_COM_REF_ADD, align 4
  %8 = call i32 @atomic_fetchadd_32(i32* %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @IEEE80211_COM_DETACHED, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %15 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %14, i32 0, i32 0
  %16 = load i32, i32* @IEEE80211_COM_REF_ADD, align 4
  %17 = call i32 @atomic_subtract_32(i32* %15, i32 %16)
  %18 = load i32, i32* @ENETDOWN, align 4
  store i32 %18, i32* %2, align 4
  br label %32

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @IEEE80211_COM_REF, align 4
  %22 = call i64 @MS(i32 %20, i32 %21)
  %23 = load i64, i64* @IEEE80211_COM_REF_MAX, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %27 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %26, i32 0, i32 0
  %28 = load i32, i32* @IEEE80211_COM_REF_ADD, align 4
  %29 = call i32 @atomic_subtract_32(i32* %27, i32 %28)
  %30 = load i32, i32* @EOVERFLOW, align 4
  store i32 %30, i32* %2, align 4
  br label %32

31:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %25, %13
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @atomic_fetchadd_32(i32*, i32) #1

declare dso_local i32 @atomic_subtract_32(i32*, i32) #1

declare dso_local i64 @MS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
