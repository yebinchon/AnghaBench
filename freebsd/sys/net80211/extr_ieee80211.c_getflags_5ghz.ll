; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211.c_getflags_5ghz.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211.c_getflags_5ghz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IEEE80211_MODE_11A = common dso_local global i32 0, align 4
@IEEE80211_CHAN_A = common dso_local global i32 0, align 4
@IEEE80211_MODE_11NA = common dso_local global i32 0, align 4
@IEEE80211_CHAN_HT20 = common dso_local global i32 0, align 4
@IEEE80211_MODE_VHT_5GHZ = common dso_local global i32 0, align 4
@IEEE80211_CHAN_VHT20 = common dso_local global i32 0, align 4
@IEEE80211_CHAN_HT40U = common dso_local global i32 0, align 4
@IEEE80211_CHAN_VHT40U = common dso_local global i32 0, align 4
@IEEE80211_CHAN_HT40D = common dso_local global i32 0, align 4
@IEEE80211_CHAN_VHT40D = common dso_local global i32 0, align 4
@IEEE80211_CHAN_VHT80 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32)* @getflags_5ghz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getflags_5ghz(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* @IEEE80211_MODE_11A, align 4
  %12 = call i64 @isset(i32* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %4
  %15 = load i32, i32* @IEEE80211_CHAN_A, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %9, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %9, align 4
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  store i32 %15, i32* %20, align 4
  br label %21

21:                                               ; preds = %14, %4
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* @IEEE80211_MODE_11NA, align 4
  %24 = call i64 @isset(i32* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = load i32, i32* @IEEE80211_CHAN_A, align 4
  %28 = load i32, i32* @IEEE80211_CHAN_HT20, align 4
  %29 = or i32 %27, %28
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %9, align 4
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  store i32 %29, i32* %34, align 4
  br label %35

35:                                               ; preds = %26, %21
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* @IEEE80211_MODE_VHT_5GHZ, align 4
  %38 = call i64 @isset(i32* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %35
  %41 = load i32, i32* @IEEE80211_CHAN_A, align 4
  %42 = load i32, i32* @IEEE80211_CHAN_HT20, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @IEEE80211_CHAN_VHT20, align 4
  %45 = or i32 %43, %44
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  store i32 %45, i32* %50, align 4
  br label %51

51:                                               ; preds = %40, %35
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %51
  %55 = load i32, i32* @IEEE80211_CHAN_A, align 4
  %56 = load i32, i32* @IEEE80211_CHAN_HT40U, align 4
  %57 = or i32 %55, %56
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  store i32 %57, i32* %62, align 4
  br label %63

63:                                               ; preds = %54, %51
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %82

66:                                               ; preds = %63
  %67 = load i32*, i32** %5, align 8
  %68 = load i32, i32* @IEEE80211_MODE_VHT_5GHZ, align 4
  %69 = call i64 @isset(i32* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %66
  %72 = load i32, i32* @IEEE80211_CHAN_A, align 4
  %73 = load i32, i32* @IEEE80211_CHAN_HT40U, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @IEEE80211_CHAN_VHT40U, align 4
  %76 = or i32 %74, %75
  %77 = load i32*, i32** %6, align 8
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i32, i32* %77, i64 %80
  store i32 %76, i32* %81, align 4
  br label %82

82:                                               ; preds = %71, %66, %63
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %82
  %86 = load i32, i32* @IEEE80211_CHAN_A, align 4
  %87 = load i32, i32* @IEEE80211_CHAN_HT40D, align 4
  %88 = or i32 %86, %87
  %89 = load i32*, i32** %6, align 8
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  store i32 %88, i32* %93, align 4
  br label %94

94:                                               ; preds = %85, %82
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %113

97:                                               ; preds = %94
  %98 = load i32*, i32** %5, align 8
  %99 = load i32, i32* @IEEE80211_MODE_VHT_5GHZ, align 4
  %100 = call i64 @isset(i32* %98, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %97
  %103 = load i32, i32* @IEEE80211_CHAN_A, align 4
  %104 = load i32, i32* @IEEE80211_CHAN_HT40D, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @IEEE80211_CHAN_VHT40D, align 4
  %107 = or i32 %105, %106
  %108 = load i32*, i32** %6, align 8
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %9, align 4
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  store i32 %107, i32* %112, align 4
  br label %113

113:                                              ; preds = %102, %97, %94
  %114 = load i32, i32* %8, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %142

116:                                              ; preds = %113
  %117 = load i32*, i32** %5, align 8
  %118 = load i32, i32* @IEEE80211_MODE_VHT_5GHZ, align 4
  %119 = call i64 @isset(i32* %117, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %142

121:                                              ; preds = %116
  %122 = load i32, i32* @IEEE80211_CHAN_A, align 4
  %123 = load i32, i32* @IEEE80211_CHAN_HT40U, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @IEEE80211_CHAN_VHT80, align 4
  %126 = or i32 %124, %125
  %127 = load i32*, i32** %6, align 8
  %128 = load i32, i32* %9, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %9, align 4
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds i32, i32* %127, i64 %130
  store i32 %126, i32* %131, align 4
  %132 = load i32, i32* @IEEE80211_CHAN_A, align 4
  %133 = load i32, i32* @IEEE80211_CHAN_HT40D, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* @IEEE80211_CHAN_VHT80, align 4
  %136 = or i32 %134, %135
  %137 = load i32*, i32** %6, align 8
  %138 = load i32, i32* %9, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %9, align 4
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i32, i32* %137, i64 %140
  store i32 %136, i32* %141, align 4
  br label %142

142:                                              ; preds = %121, %116, %113
  %143 = load i32*, i32** %6, align 8
  %144 = load i32, i32* %9, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  store i32 0, i32* %146, align 4
  ret void
}

declare dso_local i64 @isset(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
