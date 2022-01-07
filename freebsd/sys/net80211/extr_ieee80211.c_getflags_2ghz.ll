; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211.c_getflags_2ghz.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211.c_getflags_2ghz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IEEE80211_MODE_11B = common dso_local global i32 0, align 4
@IEEE80211_CHAN_B = common dso_local global i32 0, align 4
@IEEE80211_MODE_11G = common dso_local global i32 0, align 4
@IEEE80211_CHAN_G = common dso_local global i32 0, align 4
@IEEE80211_MODE_11NG = common dso_local global i32 0, align 4
@IEEE80211_CHAN_HT20 = common dso_local global i32 0, align 4
@IEEE80211_CHAN_HT40U = common dso_local global i32 0, align 4
@IEEE80211_CHAN_HT40D = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @getflags_2ghz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getflags_2ghz(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* @IEEE80211_MODE_11B, align 4
  %10 = call i64 @isset(i32* %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load i32, i32* @IEEE80211_CHAN_B, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %7, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %7, align 4
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  store i32 %13, i32* %18, align 4
  br label %19

19:                                               ; preds = %12, %3
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* @IEEE80211_MODE_11G, align 4
  %22 = call i64 @isset(i32* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load i32, i32* @IEEE80211_CHAN_G, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %7, align 4
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  store i32 %25, i32* %30, align 4
  br label %31

31:                                               ; preds = %24, %19
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* @IEEE80211_MODE_11NG, align 4
  %34 = call i64 @isset(i32* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load i32, i32* @IEEE80211_CHAN_G, align 4
  %38 = load i32, i32* @IEEE80211_CHAN_HT20, align 4
  %39 = or i32 %37, %38
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  store i32 %39, i32* %44, align 4
  br label %45

45:                                               ; preds = %36, %31
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %65

48:                                               ; preds = %45
  %49 = load i32, i32* @IEEE80211_CHAN_G, align 4
  %50 = load i32, i32* @IEEE80211_CHAN_HT40U, align 4
  %51 = or i32 %49, %50
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  store i32 %51, i32* %56, align 4
  %57 = load i32, i32* @IEEE80211_CHAN_G, align 4
  %58 = load i32, i32* @IEEE80211_CHAN_HT40D, align 4
  %59 = or i32 %57, %58
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  store i32 %59, i32* %64, align 4
  br label %65

65:                                               ; preds = %48, %45
  %66 = load i32*, i32** %5, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 0, i32* %69, align 4
  ret void
}

declare dso_local i64 @isset(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
