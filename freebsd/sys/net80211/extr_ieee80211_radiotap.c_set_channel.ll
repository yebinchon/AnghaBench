; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_radiotap.c_set_channel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_radiotap.c_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_channel = type { i32, i32 }
%struct.anon = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ieee80211_channel*)* @set_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_channel(i8* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca %struct.anon*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.anon*
  store %struct.anon* %7, %struct.anon** %5, align 8
  %8 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %9 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i8* @htole16(i32 %10)
  %12 = load %struct.anon*, %struct.anon** %5, align 8
  %13 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 0
  store i8* %11, i8** %13, align 8
  %14 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %15 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @htole16(i32 %16)
  %18 = load %struct.anon*, %struct.anon** %5, align 8
  %19 = getelementptr inbounds %struct.anon, %struct.anon* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  ret void
}

declare dso_local i8* @htole16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
