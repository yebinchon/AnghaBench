; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_output.c_add_appie.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_output.c_add_appie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_appie = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.ieee80211_appie*)* @add_appie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @add_appie(i32* %0, %struct.ieee80211_appie* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ieee80211_appie*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.ieee80211_appie* %1, %struct.ieee80211_appie** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load %struct.ieee80211_appie*, %struct.ieee80211_appie** %4, align 8
  %7 = getelementptr inbounds %struct.ieee80211_appie, %struct.ieee80211_appie* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.ieee80211_appie*, %struct.ieee80211_appie** %4, align 8
  %10 = getelementptr inbounds %struct.ieee80211_appie, %struct.ieee80211_appie* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @memcpy(i32* %5, i32 %8, i32 %11)
  %13 = load i32*, i32** %3, align 8
  %14 = load %struct.ieee80211_appie*, %struct.ieee80211_appie** %4, align 8
  %15 = getelementptr inbounds %struct.ieee80211_appie, %struct.ieee80211_appie* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %13, i64 %17
  ret i32* %18
}

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
