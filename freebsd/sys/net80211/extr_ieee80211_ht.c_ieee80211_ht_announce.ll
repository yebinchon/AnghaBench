; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ieee80211_ht_announce.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ieee80211_ht_announce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { i32, i32, i32 }

@IEEE80211_MODE_11NA = common dso_local global i32 0, align 4
@IEEE80211_MODE_11NG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%dT%dR\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_ht_announce(%struct.ieee80211com* %0) #0 {
  %2 = alloca %struct.ieee80211com*, align 8
  store %struct.ieee80211com* %0, %struct.ieee80211com** %2, align 8
  %3 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %4 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @IEEE80211_MODE_11NA, align 4
  %7 = call i64 @isset(i32 %5, i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %11 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @IEEE80211_MODE_11NG, align 4
  %14 = call i64 @isset(i32 %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %9, %1
  %17 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %18 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %19 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %22 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ic_printf(%struct.ieee80211com* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23)
  br label %25

25:                                               ; preds = %16, %9
  %26 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %27 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IEEE80211_MODE_11NA, align 4
  %30 = call i64 @isset(i32 %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %34 = load i32, i32* @IEEE80211_MODE_11NA, align 4
  %35 = call i32 @ht_announce(%struct.ieee80211com* %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %25
  %37 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %38 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @IEEE80211_MODE_11NG, align 4
  %41 = call i64 @isset(i32 %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %45 = load i32, i32* @IEEE80211_MODE_11NG, align 4
  %46 = call i32 @ht_announce(%struct.ieee80211com* %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %36
  ret void
}

declare dso_local i64 @isset(i32, i32) #1

declare dso_local i32 @ic_printf(%struct.ieee80211com*, i8*, i32, i32) #1

declare dso_local i32 @ht_announce(%struct.ieee80211com*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
