; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ht_announce.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ht_announce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { i32 }

@ieee80211_phymode_name = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [14 x i8] c"%s MCS 20MHz\0A\00", align 1
@IEEE80211_HTCAP_SHORTGI20 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"%s MCS 20MHz SGI\0A\00", align 1
@IEEE80211_HTCAP_CHWIDTH40 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"%s MCS 40MHz:\0A\00", align 1
@IEEE80211_HTCAP_SHORTGI40 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"%s MCS 40MHz SGI:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211com*, i32)* @ht_announce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ht_announce(%struct.ieee80211com* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.ieee80211com* %0, %struct.ieee80211com** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8**, i8*** @ieee80211_phymode_name, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds i8*, i8** %6, i64 %8
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %5, align 8
  %11 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @ic_printf(%struct.ieee80211com* %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @ht_rateprint(%struct.ieee80211com* %14, i32 %15, i32 0)
  %17 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %18 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IEEE80211_HTCAP_SHORTGI20, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @ic_printf(%struct.ieee80211com* %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  %27 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @ht_rateprint(%struct.ieee80211com* %27, i32 %28, i32 1)
  br label %30

30:                                               ; preds = %23, %2
  %31 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %32 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @IEEE80211_HTCAP_CHWIDTH40, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @ic_printf(%struct.ieee80211com* %38, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %39)
  %41 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @ht_rateprint(%struct.ieee80211com* %41, i32 %42, i32 2)
  br label %44

44:                                               ; preds = %37, %30
  %45 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %46 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @IEEE80211_HTCAP_CHWIDTH40, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %44
  %52 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %53 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @IEEE80211_HTCAP_SHORTGI40, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %51
  %59 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 @ic_printf(%struct.ieee80211com* %59, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %60)
  %62 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @ht_rateprint(%struct.ieee80211com* %62, i32 %63, i32 3)
  br label %65

65:                                               ; preds = %58, %51, %44
  ret void
}

declare dso_local i32 @ic_printf(%struct.ieee80211com*, i8*, i8*) #1

declare dso_local i32 @ht_rateprint(%struct.ieee80211com*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
