; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ieee80211_setup_basic_htrates.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ieee80211_setup_basic_htrates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i32, %struct.ieee80211_htrateset }
%struct.ieee80211_htrateset = type { i32, i32* }
%struct.ieee80211_ie_htinfo = type { i32 }

@IEEE80211_ELEMID_VENDOR = common dso_local global i64 0, align 8
@IEEE80211_MSG_XRATE = common dso_local global i32 0, align 4
@IEEE80211_MSG_11N = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"WARNING, empty HT rate set\00", align 1
@IEEE80211_HTRATE_MAXSIZE = common dso_local global i32 0, align 4
@IEEE80211_RATE_VAL = common dso_local global i32 0, align 4
@IEEE80211_RATE_BASIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_setup_basic_htrates(%struct.ieee80211_node* %0, i64* %1) #0 {
  %3 = alloca %struct.ieee80211_node*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.ieee80211_ie_htinfo*, align 8
  %6 = alloca %struct.ieee80211_htrateset*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %3, align 8
  store i64* %1, i64** %4, align 8
  %9 = load i64*, i64** %4, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @IEEE80211_ELEMID_VENDOR, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i64*, i64** %4, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 4
  store i64* %16, i64** %4, align 8
  br label %17

17:                                               ; preds = %14, %2
  %18 = load i64*, i64** %4, align 8
  %19 = bitcast i64* %18 to %struct.ieee80211_ie_htinfo*
  store %struct.ieee80211_ie_htinfo* %19, %struct.ieee80211_ie_htinfo** %5, align 8
  %20 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %21 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %20, i32 0, i32 1
  store %struct.ieee80211_htrateset* %21, %struct.ieee80211_htrateset** %6, align 8
  %22 = load %struct.ieee80211_htrateset*, %struct.ieee80211_htrateset** %6, align 8
  %23 = getelementptr inbounds %struct.ieee80211_htrateset, %struct.ieee80211_htrateset* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %17
  %27 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %28 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @IEEE80211_MSG_XRATE, align 4
  %31 = load i32, i32* @IEEE80211_MSG_11N, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %34 = call i32 @IEEE80211_NOTE(i32 %29, i32 %32, %struct.ieee80211_node* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %85

35:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %82, %35
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @IEEE80211_HTRATE_MAXSIZE, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %85

40:                                               ; preds = %36
  %41 = load %struct.ieee80211_ie_htinfo*, %struct.ieee80211_ie_htinfo** %5, align 8
  %42 = getelementptr inbounds %struct.ieee80211_ie_htinfo, %struct.ieee80211_ie_htinfo* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i64 @isclr(i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %82

48:                                               ; preds = %40
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %78, %48
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.ieee80211_htrateset*, %struct.ieee80211_htrateset** %6, align 8
  %52 = getelementptr inbounds %struct.ieee80211_htrateset, %struct.ieee80211_htrateset* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %81

55:                                               ; preds = %49
  %56 = load %struct.ieee80211_htrateset*, %struct.ieee80211_htrateset** %6, align 8
  %57 = getelementptr inbounds %struct.ieee80211_htrateset, %struct.ieee80211_htrateset* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @IEEE80211_RATE_VAL, align 4
  %64 = and i32 %62, %63
  %65 = load i32, i32* %7, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %55
  %68 = load i32, i32* @IEEE80211_RATE_BASIC, align 4
  %69 = load %struct.ieee80211_htrateset*, %struct.ieee80211_htrateset** %6, align 8
  %70 = getelementptr inbounds %struct.ieee80211_htrateset, %struct.ieee80211_htrateset* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %68
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %67, %55
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %8, align 4
  br label %49

81:                                               ; preds = %49
  br label %82

82:                                               ; preds = %81, %47
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %7, align 4
  br label %36

85:                                               ; preds = %26, %36
  ret void
}

declare dso_local i32 @IEEE80211_NOTE(i32, i32, %struct.ieee80211_node*, i8*, i8*) #1

declare dso_local i64 @isclr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
