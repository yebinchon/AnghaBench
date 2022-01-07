; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_amrr.c_amrr_setinterval.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_amrr.c_amrr_setinterval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { %struct.ieee80211_amrr* }
%struct.ieee80211_amrr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211vap*, i32)* @amrr_setinterval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amrr_setinterval(%struct.ieee80211vap* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211vap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_amrr*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %6, i32 0, i32 0
  %8 = load %struct.ieee80211_amrr*, %struct.ieee80211_amrr** %7, align 8
  store %struct.ieee80211_amrr* %8, %struct.ieee80211_amrr** %5, align 8
  %9 = load %struct.ieee80211_amrr*, %struct.ieee80211_amrr** %5, align 8
  %10 = icmp ne %struct.ieee80211_amrr* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %21

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 100
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 100, i32* %4, align 4
  br label %16

16:                                               ; preds = %15, %12
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @msecs_to_ticks(i32 %17)
  %19 = load %struct.ieee80211_amrr*, %struct.ieee80211_amrr** %5, align 8
  %20 = getelementptr inbounds %struct.ieee80211_amrr, %struct.ieee80211_amrr* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  br label %21

21:                                               ; preds = %16, %11
  ret void
}

declare dso_local i32 @msecs_to_ticks(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
