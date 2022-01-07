; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_rssadapt.c_rssadapt_lower_rate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_rssadapt.c_rssadapt_lower_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.ieee80211_rssadapt_node = type { i64, %struct.TYPE_5__, %struct.TYPE_4__*, i32** }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32 }

@IEEE80211_RATE_SIZE = common dso_local global i32 0, align 4
@master_expavgctl = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@IEEE80211_MSG_RATECTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"RSSADAPT lower threshold for rate %d (last_thr %d new thr %d rssi %d)\0A\00", align 1
@IEEE80211_RATE_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_rssadapt_node*, i32, i32)* @rssadapt_lower_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rssadapt_lower_rate(%struct.ieee80211_rssadapt_node* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_rssadapt_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.ieee80211_rssadapt_node* %0, %struct.ieee80211_rssadapt_node** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @IEEE80211_RATE_SIZE, align 4
  %11 = zext i32 %10 to i64
  %12 = load %struct.ieee80211_rssadapt_node*, %struct.ieee80211_rssadapt_node** %4, align 8
  %13 = getelementptr inbounds %struct.ieee80211_rssadapt_node, %struct.ieee80211_rssadapt_node* %12, i32 0, i32 3
  %14 = load i32**, i32*** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i64 @bucket(i32 %15)
  %17 = getelementptr inbounds i32*, i32** %14, i64 %16
  %18 = bitcast i32** %17 to i32*
  store i32* %18, i32** %8, align 8
  %19 = load %struct.ieee80211_rssadapt_node*, %struct.ieee80211_rssadapt_node** %4, align 8
  %20 = getelementptr inbounds %struct.ieee80211_rssadapt_node, %struct.ieee80211_rssadapt_node* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %9, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @master_expavgctl, i32 0, i32 0), align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = shl i32 %28, 8
  %30 = call i32 @interpolate(i32 %26, i32 %27, i32 %29)
  %31 = load i32*, i32** %8, align 8
  %32 = load i64, i64* %9, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  store i32 %30, i32* %33, align 4
  %34 = load %struct.ieee80211_rssadapt_node*, %struct.ieee80211_rssadapt_node** %4, align 8
  %35 = getelementptr inbounds %struct.ieee80211_rssadapt_node, %struct.ieee80211_rssadapt_node* %34, i32 0, i32 2
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @IEEE80211_MSG_RATECTL, align 4
  %40 = load %struct.ieee80211_rssadapt_node*, %struct.ieee80211_rssadapt_node** %4, align 8
  %41 = getelementptr inbounds %struct.ieee80211_rssadapt_node, %struct.ieee80211_rssadapt_node* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* %9, align 8
  %45 = add i64 %44, 1
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @IEEE80211_RATE_VAL, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* %7, align 4
  %51 = load i32*, i32** %8, align 8
  %52 = load i64, i64* %9, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @IEEE80211_DPRINTF(i32 %38, i32 %39, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50, i32 %54, i32 %55)
  ret void
}

declare dso_local i64 @bucket(i32) #1

declare dso_local i32 @interpolate(i32, i32, i32) #1

declare dso_local i32 @IEEE80211_DPRINTF(i32, i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
