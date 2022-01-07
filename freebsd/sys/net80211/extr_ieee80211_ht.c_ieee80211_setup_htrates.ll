; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ieee80211_setup_htrates.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ieee80211_setup_htrates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { %struct.ieee80211_htrateset, %struct.ieee80211vap*, %struct.ieee80211com* }
%struct.ieee80211_htrateset = type { i32, i32* }
%struct.ieee80211vap = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211com = type { i32, i32 }
%struct.ieee80211_ie_htcap = type { i32 }
%struct.ieee80211_rateset = type { i32 }

@IEEE80211_HTC_TXUNEQUAL = common dso_local global i32 0, align 4
@IEEE80211_ELEMID_VENDOR = common dso_local global i64 0, align 8
@IEEE80211_HTRATE_MAXSIZE = common dso_local global i32 0, align 4
@IEEE80211_MSG_XRATE = common dso_local global i32 0, align 4
@IEEE80211_MSG_11N = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"WARNING, HT rate set too large; only using %u rates\00", align 1
@IEEE80211_HTC_TXMCS32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_setup_htrates(%struct.ieee80211_node* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_node*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211com*, align 8
  %8 = alloca %struct.ieee80211vap*, align 8
  %9 = alloca %struct.ieee80211_ie_htcap*, align 8
  %10 = alloca %struct.ieee80211_htrateset*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %15 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %14, i32 0, i32 2
  %16 = load %struct.ieee80211com*, %struct.ieee80211com** %15, align 8
  store %struct.ieee80211com* %16, %struct.ieee80211com** %7, align 8
  %17 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %18 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %17, i32 0, i32 1
  %19 = load %struct.ieee80211vap*, %struct.ieee80211vap** %18, align 8
  store %struct.ieee80211vap* %19, %struct.ieee80211vap** %8, align 8
  %20 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %21 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %22, 8
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %25 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %26 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @IEEE80211_HTC_TXUNEQUAL, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %3
  %32 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %33 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp sge i32 %34, 2
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 38, i32* %13, align 4
  br label %37

37:                                               ; preds = %36, %31
  %38 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %39 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp sge i32 %40, 3
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 52, i32* %13, align 4
  br label %43

43:                                               ; preds = %42, %37
  %44 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %45 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp sge i32 %46, 4
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 76, i32* %13, align 4
  br label %49

49:                                               ; preds = %48, %43
  br label %50

50:                                               ; preds = %49, %3
  %51 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %52 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %51, i32 0, i32 0
  store %struct.ieee80211_htrateset* %52, %struct.ieee80211_htrateset** %10, align 8
  %53 = load %struct.ieee80211_htrateset*, %struct.ieee80211_htrateset** %10, align 8
  %54 = call i32 @memset(%struct.ieee80211_htrateset* %53, i32 0, i32 16)
  %55 = load i64*, i64** %5, align 8
  %56 = icmp ne i64* %55, null
  br i1 %56, label %57, label %142

57:                                               ; preds = %50
  %58 = load i64*, i64** %5, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @IEEE80211_ELEMID_VENDOR, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i64*, i64** %5, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 4
  store i64* %65, i64** %5, align 8
  br label %66

66:                                               ; preds = %63, %57
  %67 = load i64*, i64** %5, align 8
  %68 = bitcast i64* %67 to %struct.ieee80211_ie_htcap*
  store %struct.ieee80211_ie_htcap* %68, %struct.ieee80211_ie_htcap** %9, align 8
  store i32 0, i32* %11, align 4
  br label %69

69:                                               ; preds = %138, %66
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @IEEE80211_HTRATE_MAXSIZE, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %141

73:                                               ; preds = %69
  %74 = load %struct.ieee80211_ie_htcap*, %struct.ieee80211_ie_htcap** %9, align 8
  %75 = getelementptr inbounds %struct.ieee80211_ie_htcap, %struct.ieee80211_ie_htcap* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %11, align 4
  %78 = call i64 @isclr(i32 %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %138

81:                                               ; preds = %73
  %82 = load %struct.ieee80211_htrateset*, %struct.ieee80211_htrateset** %10, align 8
  %83 = getelementptr inbounds %struct.ieee80211_htrateset, %struct.ieee80211_htrateset* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @IEEE80211_HTRATE_MAXSIZE, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %100

87:                                               ; preds = %81
  %88 = load %struct.ieee80211vap*, %struct.ieee80211vap** %8, align 8
  %89 = load i32, i32* @IEEE80211_MSG_XRATE, align 4
  %90 = load i32, i32* @IEEE80211_MSG_11N, align 4
  %91 = or i32 %89, %90
  %92 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %93 = load i32, i32* @IEEE80211_HTRATE_MAXSIZE, align 4
  %94 = call i32 @IEEE80211_NOTE(%struct.ieee80211vap* %88, i32 %91, %struct.ieee80211_node* %92, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %93)
  %95 = load %struct.ieee80211vap*, %struct.ieee80211vap** %8, align 8
  %96 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  br label %141

100:                                              ; preds = %81
  %101 = load i32, i32* %11, align 4
  %102 = icmp sle i32 %101, 31
  br i1 %102, label %103, label %108

103:                                              ; preds = %100
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %12, align 4
  %106 = icmp sgt i32 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  br label %138

108:                                              ; preds = %103, %100
  %109 = load i32, i32* %11, align 4
  %110 = icmp eq i32 %109, 32
  br i1 %110, label %111, label %119

111:                                              ; preds = %108
  %112 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %113 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @IEEE80211_HTC_TXMCS32, align 4
  %116 = and i32 %114, %115
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %111
  br label %138

119:                                              ; preds = %111, %108
  %120 = load i32, i32* %11, align 4
  %121 = icmp sgt i32 %120, 32
  br i1 %121, label %122, label %127

122:                                              ; preds = %119
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* %13, align 4
  %125 = icmp sgt i32 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  br label %138

127:                                              ; preds = %122, %119
  %128 = load i32, i32* %11, align 4
  %129 = load %struct.ieee80211_htrateset*, %struct.ieee80211_htrateset** %10, align 8
  %130 = getelementptr inbounds %struct.ieee80211_htrateset, %struct.ieee80211_htrateset* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = load %struct.ieee80211_htrateset*, %struct.ieee80211_htrateset** %10, align 8
  %133 = getelementptr inbounds %struct.ieee80211_htrateset, %struct.ieee80211_htrateset* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %133, align 8
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds i32, i32* %131, i64 %136
  store i32 %128, i32* %137, align 4
  br label %138

138:                                              ; preds = %127, %126, %118, %107, %80
  %139 = load i32, i32* %11, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %11, align 4
  br label %69

141:                                              ; preds = %87, %69
  br label %142

142:                                              ; preds = %141, %50
  %143 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %144 = load %struct.ieee80211_htrateset*, %struct.ieee80211_htrateset** %10, align 8
  %145 = bitcast %struct.ieee80211_htrateset* %144 to %struct.ieee80211_rateset*
  %146 = load i32, i32* %6, align 4
  %147 = call i32 @ieee80211_fix_rate(%struct.ieee80211_node* %143, %struct.ieee80211_rateset* %145, i32 %146)
  ret i32 %147
}

declare dso_local i32 @memset(%struct.ieee80211_htrateset*, i32, i32) #1

declare dso_local i64 @isclr(i32, i32) #1

declare dso_local i32 @IEEE80211_NOTE(%struct.ieee80211vap*, i32, %struct.ieee80211_node*, i8*, i32) #1

declare dso_local i32 @ieee80211_fix_rate(%struct.ieee80211_node*, %struct.ieee80211_rateset*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
