; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_scan_sta.c_find11gchannel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_scan_sta.c_find11gchannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_channel = type { i32 }
%struct.ieee80211com = type { i32, %struct.ieee80211_channel* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ieee80211_channel* (%struct.ieee80211com*, i32, i32)* @find11gchannel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ieee80211_channel* @find11gchannel(%struct.ieee80211com* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca %struct.ieee80211com*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_channel*, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211com* %0, %struct.ieee80211com** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %9, align 4
  br label %12

12:                                               ; preds = %37, %3
  %13 = load i32, i32* %9, align 4
  %14 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %15 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %40

18:                                               ; preds = %12
  %19 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %20 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %19, i32 0, i32 1
  %21 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %21, i64 %23
  store %struct.ieee80211_channel* %24, %struct.ieee80211_channel** %8, align 8
  %25 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %26 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %18
  %31 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %32 = call i64 @IEEE80211_IS_CHAN_G(%struct.ieee80211_channel* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  store %struct.ieee80211_channel* %35, %struct.ieee80211_channel** %4, align 8
  br label %68

36:                                               ; preds = %30, %18
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %9, align 4
  br label %12

40:                                               ; preds = %12
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %64, %40
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %67

45:                                               ; preds = %41
  %46 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %47 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %46, i32 0, i32 1
  %48 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %48, i64 %50
  store %struct.ieee80211_channel* %51, %struct.ieee80211_channel** %8, align 8
  %52 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %53 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %45
  %58 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %59 = call i64 @IEEE80211_IS_CHAN_G(%struct.ieee80211_channel* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  store %struct.ieee80211_channel* %62, %struct.ieee80211_channel** %4, align 8
  br label %68

63:                                               ; preds = %57, %45
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  br label %41

67:                                               ; preds = %41
  store %struct.ieee80211_channel* null, %struct.ieee80211_channel** %4, align 8
  br label %68

68:                                               ; preds = %67, %61, %34
  %69 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  ret %struct.ieee80211_channel* %69
}

declare dso_local i64 @IEEE80211_IS_CHAN_G(%struct.ieee80211_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
