; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_addchannels.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_addchannels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_channel = type { i32 }
%struct.bwn_channelinfo = type { i32, %struct.bwn_channel* }
%struct.bwn_channel = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_channel*, i32, i32*, %struct.bwn_channelinfo*, i32*)* @bwn_addchannels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_addchannels(%struct.ieee80211_channel* %0, i32 %1, i32* %2, %struct.bwn_channelinfo* %3, i32* %4) #0 {
  %6 = alloca %struct.ieee80211_channel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.bwn_channelinfo*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.bwn_channel*, align 8
  store %struct.ieee80211_channel* %0, %struct.ieee80211_channel** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %struct.bwn_channelinfo* %3, %struct.bwn_channelinfo** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %14

14:                                               ; preds = %46, %5
  %15 = load i32, i32* %11, align 4
  %16 = load %struct.bwn_channelinfo*, %struct.bwn_channelinfo** %9, align 8
  %17 = getelementptr inbounds %struct.bwn_channelinfo, %struct.bwn_channelinfo* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* %12, align 4
  %22 = icmp eq i32 %21, 0
  br label %23

23:                                               ; preds = %20, %14
  %24 = phi i1 [ false, %14 ], [ %22, %20 ]
  br i1 %24, label %25, label %49

25:                                               ; preds = %23
  %26 = load %struct.bwn_channelinfo*, %struct.bwn_channelinfo** %9, align 8
  %27 = getelementptr inbounds %struct.bwn_channelinfo, %struct.bwn_channelinfo* %26, i32 0, i32 1
  %28 = load %struct.bwn_channel*, %struct.bwn_channel** %27, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.bwn_channel, %struct.bwn_channel* %28, i64 %30
  store %struct.bwn_channel* %31, %struct.bwn_channel** %13, align 8
  %32 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = load %struct.bwn_channel*, %struct.bwn_channel** %13, align 8
  %36 = getelementptr inbounds %struct.bwn_channel, %struct.bwn_channel* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.bwn_channel*, %struct.bwn_channel** %13, align 8
  %39 = getelementptr inbounds %struct.bwn_channel, %struct.bwn_channel* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.bwn_channel*, %struct.bwn_channel** %13, align 8
  %42 = getelementptr inbounds %struct.bwn_channel, %struct.bwn_channel* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %10, align 8
  %45 = call i32 @ieee80211_add_channel(%struct.ieee80211_channel* %32, i32 %33, i32* %34, i32 %37, i32 %40, i32 %43, i32 0, i32* %44)
  store i32 %45, i32* %12, align 4
  br label %46

46:                                               ; preds = %25
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %11, align 4
  br label %14

49:                                               ; preds = %23
  ret void
}

declare dso_local i32 @ieee80211_add_channel(%struct.ieee80211_channel*, i32, i32*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
