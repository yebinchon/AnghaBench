; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/wlantxtime/extr_wlantxtime.c_checkpreamble.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/wlantxtime/extr_wlantxtime.c_checkpreamble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_rate_table = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i32 }

@IEEE80211_T_CCK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"short preamble not meaningful, ignored\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"short preamble not meaningful with rate %s, ignored\00", align 1
@IEEE80211_RATE_BASIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_rate_table*, i64, i32, i32)* @checkpreamble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checkpreamble(%struct.ieee80211_rate_table* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_rate_table*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ieee80211_rate_table* %0, %struct.ieee80211_rate_table** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %55

11:                                               ; preds = %4
  %12 = load %struct.ieee80211_rate_table*, %struct.ieee80211_rate_table** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211_rate_table, %struct.ieee80211_rate_table* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i64, i64* %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @IEEE80211_T_CCK, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %11
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %21
  store i32 0, i32* %7, align 4
  br label %54

27:                                               ; preds = %11
  %28 = load %struct.ieee80211_rate_table*, %struct.ieee80211_rate_table** %5, align 8
  %29 = getelementptr inbounds %struct.ieee80211_rate_table, %struct.ieee80211_rate_table* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %53, label %36

36:                                               ; preds = %27
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %36
  %40 = load %struct.ieee80211_rate_table*, %struct.ieee80211_rate_table** %5, align 8
  %41 = getelementptr inbounds %struct.ieee80211_rate_table, %struct.ieee80211_rate_table* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i64, i64* %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @IEEE80211_RATE_BASIC, align 4
  %48 = xor i32 %47, -1
  %49 = and i32 %46, %48
  %50 = call i32 @srate(i32 %49)
  %51 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %39, %36
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %52, %27
  br label %54

54:                                               ; preds = %53, %26
  br label %55

55:                                               ; preds = %54, %4
  %56 = load i32, i32* %7, align 4
  ret i32 %56
}

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @srate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
