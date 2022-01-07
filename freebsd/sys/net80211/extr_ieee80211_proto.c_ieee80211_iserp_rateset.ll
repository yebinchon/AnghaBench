; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_proto.c_ieee80211_iserp_rateset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_proto.c_ieee80211_iserp_rateset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_rateset = type { i32, i32* }

@ieee80211_iserp_rateset.rates = internal constant [7 x i32] [i32 2, i32 4, i32 11, i32 22, i32 12, i32 24, i32 48], align 16
@IEEE80211_RATE_VAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_iserp_rateset(%struct.ieee80211_rateset* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_rateset*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ieee80211_rateset* %0, %struct.ieee80211_rateset** %3, align 8
  %7 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_rateset, %struct.ieee80211_rateset* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @nitems(i32* getelementptr inbounds ([7 x i32], [7 x i32]* @ieee80211_iserp_rateset.rates, i64 0, i64 0))
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %60

13:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %56, %13
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @nitems(i32* getelementptr inbounds ([7 x i32], [7 x i32]* @ieee80211_iserp_rateset.rates, i64 0, i64 0))
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %59

18:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %51, %18
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %3, align 8
  %22 = getelementptr inbounds %struct.ieee80211_rateset, %struct.ieee80211_rateset* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %54

25:                                               ; preds = %19
  %26 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %3, align 8
  %27 = getelementptr inbounds %struct.ieee80211_rateset, %struct.ieee80211_rateset* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IEEE80211_RATE_VAL, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [7 x i32], [7 x i32]* @ieee80211_iserp_rateset.rates, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %25
  br label %55

42:                                               ; preds = %25
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [7 x i32], [7 x i32]* @ieee80211_iserp_rateset.rates, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp sgt i32 %43, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %60

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %19

54:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %60

55:                                               ; preds = %41
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %14

59:                                               ; preds = %14
  store i32 1, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %54, %49, %12
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @nitems(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
