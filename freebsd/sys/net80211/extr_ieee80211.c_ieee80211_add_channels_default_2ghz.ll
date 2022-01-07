; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211.c_ieee80211_add_channels_default_2ghz.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211.c_ieee80211_add_channels_default_2ghz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_channel = type { i32 }

@__const.ieee80211_add_channels_default_2ghz.default_chan_list = private unnamed_addr constant [14 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_add_channels_default_2ghz(%struct.ieee80211_channel* %0, i32 %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.ieee80211_channel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [14 x i32], align 16
  store %struct.ieee80211_channel* %0, %struct.ieee80211_channel** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = bitcast [14 x i32]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 bitcast ([14 x i32]* @__const.ieee80211_add_channels_default_2ghz.default_chan_list to i8*), i64 56, i1 false)
  %13 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32*, i32** %8, align 8
  %16 = getelementptr inbounds [14 x i32], [14 x i32]* %11, i64 0, i64 0
  %17 = getelementptr inbounds [14 x i32], [14 x i32]* %11, i64 0, i64 0
  %18 = call i32 @nitems(i32* %17)
  %19 = load i32*, i32** %9, align 8
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @ieee80211_add_channel_list_2ghz(%struct.ieee80211_channel* %13, i32 %14, i32* %15, i32* %16, i32 %18, i32* %19, i32 %20)
  ret i32 %21
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ieee80211_add_channel_list_2ghz(%struct.ieee80211_channel*, i32, i32*, i32*, i32, i32*, i32) #2

declare dso_local i32 @nitems(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
