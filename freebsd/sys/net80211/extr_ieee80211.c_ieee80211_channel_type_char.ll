; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211.c_ieee80211_channel_type_char.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211.c_ieee80211_channel_type_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_channel = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @ieee80211_channel_type_char(%struct.ieee80211_channel* %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.ieee80211_channel*, align 8
  store %struct.ieee80211_channel* %0, %struct.ieee80211_channel** %3, align 8
  %4 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %5 = call i64 @IEEE80211_IS_CHAN_ST(%struct.ieee80211_channel* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i8 83, i8* %2, align 1
  br label %44

8:                                                ; preds = %1
  %9 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %10 = call i64 @IEEE80211_IS_CHAN_108A(%struct.ieee80211_channel* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i8 84, i8* %2, align 1
  br label %44

13:                                               ; preds = %8
  %14 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %15 = call i64 @IEEE80211_IS_CHAN_108G(%struct.ieee80211_channel* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i8 71, i8* %2, align 1
  br label %44

18:                                               ; preds = %13
  %19 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %20 = call i64 @IEEE80211_IS_CHAN_VHT(%struct.ieee80211_channel* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i8 118, i8* %2, align 1
  br label %44

23:                                               ; preds = %18
  %24 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %25 = call i64 @IEEE80211_IS_CHAN_HT(%struct.ieee80211_channel* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i8 110, i8* %2, align 1
  br label %44

28:                                               ; preds = %23
  %29 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %30 = call i64 @IEEE80211_IS_CHAN_A(%struct.ieee80211_channel* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i8 97, i8* %2, align 1
  br label %44

33:                                               ; preds = %28
  %34 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %35 = call i64 @IEEE80211_IS_CHAN_ANYG(%struct.ieee80211_channel* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i8 103, i8* %2, align 1
  br label %44

38:                                               ; preds = %33
  %39 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %40 = call i64 @IEEE80211_IS_CHAN_B(%struct.ieee80211_channel* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i8 98, i8* %2, align 1
  br label %44

43:                                               ; preds = %38
  store i8 102, i8* %2, align 1
  br label %44

44:                                               ; preds = %43, %42, %37, %32, %27, %22, %17, %12, %7
  %45 = load i8, i8* %2, align 1
  ret i8 %45
}

declare dso_local i64 @IEEE80211_IS_CHAN_ST(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_108A(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_108G(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_VHT(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HT(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_A(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_ANYG(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_B(%struct.ieee80211_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
