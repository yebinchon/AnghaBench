; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_node.c_ieee80211_setupcurchan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_node.c_ieee80211_setupcurchan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { i32, i64, %struct.ieee80211_channel*, i32, i32, %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32 }

@IEEE80211_HTC_HT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_setupcurchan(%struct.ieee80211com* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ieee80211com* %0, %struct.ieee80211com** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  %7 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @IEEE80211_HTC_HT, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %2
  %14 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %15 = call i32 @gethtadjustflags(%struct.ieee80211com* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %18 = call i32 @ieee80211_htchanflags(%struct.ieee80211_channel* %17)
  %19 = icmp sgt i32 %16, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %22 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call %struct.ieee80211_channel* @ieee80211_ht_adjust_channel(%struct.ieee80211com* %21, %struct.ieee80211_channel* %22, i32 %23)
  store %struct.ieee80211_channel* %24, %struct.ieee80211_channel** %4, align 8
  br label %25

25:                                               ; preds = %20, %13
  br label %26

26:                                               ; preds = %25, %2
  %27 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %28 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %26
  %32 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %33 = call i32 @getvhtadjustflags(%struct.ieee80211com* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %36 = call i32 @ieee80211_vhtchanflags(%struct.ieee80211_channel* %35)
  %37 = icmp sgt i32 %34, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %40 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call %struct.ieee80211_channel* @ieee80211_vht_adjust_channel(%struct.ieee80211com* %39, %struct.ieee80211_channel* %40, i32 %41)
  store %struct.ieee80211_channel* %42, %struct.ieee80211_channel** %4, align 8
  br label %43

43:                                               ; preds = %38, %31
  br label %44

44:                                               ; preds = %43, %26
  %45 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %46 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %47 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %46, i32 0, i32 2
  store %struct.ieee80211_channel* %45, %struct.ieee80211_channel** %47, align 8
  %48 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %49 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %48, i32 0, i32 5
  store %struct.ieee80211_channel* %45, %struct.ieee80211_channel** %49, align 8
  %50 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %51 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %50, i32 0, i32 2
  %52 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %51, align 8
  %53 = call i32 @ieee80211_chan2mode(%struct.ieee80211_channel* %52)
  %54 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %55 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 4
  %56 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %57 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %56, i32 0, i32 2
  %58 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %57, align 8
  %59 = call i32 @ieee80211_get_ratetable(%struct.ieee80211_channel* %58)
  %60 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %61 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 8
  ret void
}

declare dso_local i32 @gethtadjustflags(%struct.ieee80211com*) #1

declare dso_local i32 @ieee80211_htchanflags(%struct.ieee80211_channel*) #1

declare dso_local %struct.ieee80211_channel* @ieee80211_ht_adjust_channel(%struct.ieee80211com*, %struct.ieee80211_channel*, i32) #1

declare dso_local i32 @getvhtadjustflags(%struct.ieee80211com*) #1

declare dso_local i32 @ieee80211_vhtchanflags(%struct.ieee80211_channel*) #1

declare dso_local %struct.ieee80211_channel* @ieee80211_vht_adjust_channel(%struct.ieee80211com*, %struct.ieee80211_channel*, i32) #1

declare dso_local i32 @ieee80211_chan2mode(%struct.ieee80211_channel*) #1

declare dso_local i32 @ieee80211_get_ratetable(%struct.ieee80211_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
