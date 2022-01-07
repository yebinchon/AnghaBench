; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_rssadapt.c_rssadapt_raise_rate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_rssadapt.c_rssadapt_raise_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.ieee80211_rssadapt_node = type { i32**, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32 }

@IEEE80211_RATE_SIZE = common dso_local global i32 0, align 4
@master_expavgctl = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@IEEE80211_MSG_RATECTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"RSSADAPT raise threshold for rate %d (oldthr %d newthr %d rssi %d)\0A\00", align 1
@IEEE80211_RATE_VAL = common dso_local global i32 0, align 4
@ticks = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_rssadapt_node*, i32, i32)* @rssadapt_raise_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rssadapt_raise_rate(%struct.ieee80211_rssadapt_node* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_rssadapt_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ieee80211_rssadapt_node* %0, %struct.ieee80211_rssadapt_node** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @IEEE80211_RATE_SIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = load %struct.ieee80211_rssadapt_node*, %struct.ieee80211_rssadapt_node** %4, align 8
  %14 = getelementptr inbounds %struct.ieee80211_rssadapt_node, %struct.ieee80211_rssadapt_node* %13, i32 0, i32 0
  %15 = load i32**, i32*** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @bucket(i32 %16)
  %18 = getelementptr inbounds i32*, i32** %15, i64 %17
  %19 = bitcast i32** %18 to i32*
  store i32* %19, i32** %7, align 8
  %20 = load %struct.ieee80211_rssadapt_node*, %struct.ieee80211_rssadapt_node** %4, align 8
  %21 = getelementptr inbounds %struct.ieee80211_rssadapt_node, %struct.ieee80211_rssadapt_node* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %10, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %10, align 4
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %28, %33
  br i1 %34, label %35, label %91

35:                                               ; preds = %3
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %9, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %35
  %49 = load i32, i32* %6, align 4
  %50 = shl i32 %49, 8
  store i32 %50, i32* %8, align 4
  br label %57

51:                                               ; preds = %35
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %51, %48
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @master_expavgctl, i32 0, i32 0), align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @interpolate(i32 %58, i32 %59, i32 %60)
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  store i32 %61, i32* %66, align 4
  %67 = load %struct.ieee80211_rssadapt_node*, %struct.ieee80211_rssadapt_node** %4, align 8
  %68 = getelementptr inbounds %struct.ieee80211_rssadapt_node, %struct.ieee80211_rssadapt_node* %67, i32 0, i32 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @IEEE80211_MSG_RATECTL, align 4
  %73 = load %struct.ieee80211_rssadapt_node*, %struct.ieee80211_rssadapt_node** %4, align 8
  %74 = getelementptr inbounds %struct.ieee80211_rssadapt_node, %struct.ieee80211_rssadapt_node* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @IEEE80211_RATE_VAL, align 4
  %83 = and i32 %81, %82
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @IEEE80211_DPRINTF(i32 %71, i32 %72, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %83, i32 %84, i32 %85, i32 %86)
  %88 = load i32, i32* @ticks, align 4
  %89 = load %struct.ieee80211_rssadapt_node*, %struct.ieee80211_rssadapt_node** %4, align 8
  %90 = getelementptr inbounds %struct.ieee80211_rssadapt_node, %struct.ieee80211_rssadapt_node* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 4
  br label %91

91:                                               ; preds = %57, %3
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
