; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ratectl.c_ieee80211_ratectl_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ratectl.c_ieee80211_ratectl_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_ratectl = type { i32 }

@IEEE80211_RATECTL_MAX = common dso_local global i32 0, align 4
@ratectls = common dso_local global %struct.ieee80211_ratectl** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_ratectl_register(i32 %0, %struct.ieee80211_ratectl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_ratectl*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.ieee80211_ratectl* %1, %struct.ieee80211_ratectl** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @IEEE80211_RATECTL_MAX, align 4
  %7 = icmp sge i32 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %15

9:                                                ; preds = %2
  %10 = load %struct.ieee80211_ratectl*, %struct.ieee80211_ratectl** %4, align 8
  %11 = load %struct.ieee80211_ratectl**, %struct.ieee80211_ratectl*** @ratectls, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.ieee80211_ratectl*, %struct.ieee80211_ratectl** %11, i64 %13
  store %struct.ieee80211_ratectl* %10, %struct.ieee80211_ratectl** %14, align 8
  br label %15

15:                                               ; preds = %9, %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
