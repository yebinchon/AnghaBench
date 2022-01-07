; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_radiotap.c_ieee80211_radiotap_vattach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_radiotap.c_ieee80211_radiotap_vattach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i32, i32, %struct.ieee80211com* }
%struct.ieee80211com = type { i32*, %struct.ieee80211_radiotap_header* }
%struct.ieee80211_radiotap_header = type { i32 }

@DLT_IEEE802_11_RADIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_radiotap_vattach(%struct.ieee80211vap* %0) #0 {
  %2 = alloca %struct.ieee80211vap*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca %struct.ieee80211_radiotap_header*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %2, align 8
  %5 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %5, i32 0, i32 2
  %7 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  store %struct.ieee80211com* %7, %struct.ieee80211com** %3, align 8
  %8 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %8, i32 0, i32 1
  %10 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %9, align 8
  store %struct.ieee80211_radiotap_header* %10, %struct.ieee80211_radiotap_header** %4, align 8
  %11 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %4, align 8
  %12 = icmp ne %struct.ieee80211_radiotap_header* %11, null
  br i1 %12, label %13, label %31

13:                                               ; preds = %1
  %14 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %15 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %31

18:                                               ; preds = %13
  %19 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %20 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @DLT_IEEE802_11_RADIO, align 4
  %23 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %4, align 8
  %24 = getelementptr inbounds %struct.ieee80211_radiotap_header, %struct.ieee80211_radiotap_header* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @le16toh(i32 %25)
  %27 = add i64 4, %26
  %28 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %29 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %28, i32 0, i32 0
  %30 = call i32 @bpfattach2(i32 %21, i32 %22, i64 %27, i32* %29)
  br label %31

31:                                               ; preds = %18, %13, %1
  ret void
}

declare dso_local i32 @bpfattach2(i32, i32, i64, i32*) #1

declare dso_local i64 @le16toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
