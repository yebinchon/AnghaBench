; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_scan_sta.c_maxrate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_scan_sta.c_maxrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.ieee80211_scan_entry = type { i32*, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.ieee80211_ie_htcap = type { i32*, i32 }

@IEEE80211_HTCAP_CHWIDTH40 = common dso_local global i32 0, align 4
@IEEE80211_HTCAP_SHORTGI40 = common dso_local global i32 0, align 4
@ieee80211_htrates = common dso_local global %struct.TYPE_4__* null, align 8
@IEEE80211_HTCAP_SHORTGI20 = common dso_local global i32 0, align 4
@IEEE80211_RATE_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_scan_entry*)* @maxrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @maxrate(%struct.ieee80211_scan_entry* %0) #0 {
  %2 = alloca %struct.ieee80211_scan_entry*, align 8
  %3 = alloca %struct.ieee80211_ie_htcap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ieee80211_scan_entry* %0, %struct.ieee80211_scan_entry** %2, align 8
  %10 = load %struct.ieee80211_scan_entry*, %struct.ieee80211_scan_entry** %2, align 8
  %11 = getelementptr inbounds %struct.ieee80211_scan_entry, %struct.ieee80211_scan_entry* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.ieee80211_ie_htcap*
  store %struct.ieee80211_ie_htcap* %14, %struct.ieee80211_ie_htcap** %3, align 8
  store i32 0, i32* %4, align 4
  %15 = load %struct.ieee80211_ie_htcap*, %struct.ieee80211_ie_htcap** %3, align 8
  %16 = icmp ne %struct.ieee80211_ie_htcap* %15, null
  br i1 %16, label %17, label %110

17:                                               ; preds = %1
  %18 = load %struct.ieee80211_ie_htcap*, %struct.ieee80211_ie_htcap** %3, align 8
  %19 = getelementptr inbounds %struct.ieee80211_ie_htcap, %struct.ieee80211_ie_htcap* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 12
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = and i32 %23, 3
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %17
  %27 = load i32, i32* %9, align 4
  %28 = and i32 %27, 12
  %29 = ashr i32 %28, 2
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = mul nsw i32 %31, 8
  %33 = sub nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %52

34:                                               ; preds = %17
  store i32 31, i32* %6, align 4
  br label %35

35:                                               ; preds = %48, %34
  %36 = load i32, i32* %6, align 4
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load %struct.ieee80211_ie_htcap*, %struct.ieee80211_ie_htcap** %3, align 8
  %40 = getelementptr inbounds %struct.ieee80211_ie_htcap, %struct.ieee80211_ie_htcap* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i64 @isclr(i32* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br label %45

45:                                               ; preds = %38, %35
  %46 = phi i1 [ false, %35 ], [ %44, %38 ]
  br i1 %46, label %47, label %51

47:                                               ; preds = %45
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %6, align 4
  br label %35

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51, %26
  %53 = load i32, i32* %6, align 4
  %54 = icmp sge i32 %53, 0
  br i1 %54, label %55, label %109

55:                                               ; preds = %52
  %56 = load %struct.ieee80211_ie_htcap*, %struct.ieee80211_ie_htcap** %3, align 8
  %57 = getelementptr inbounds %struct.ieee80211_ie_htcap, %struct.ieee80211_ie_htcap* %56, i32 0, i32 1
  %58 = call i32 @le16dec(i32* %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @IEEE80211_HTCAP_CHWIDTH40, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %55
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @IEEE80211_HTCAP_SHORTGI40, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ieee80211_htrates, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %4, align 4
  br label %108

75:                                               ; preds = %63, %55
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @IEEE80211_HTCAP_CHWIDTH40, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %75
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ieee80211_htrates, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %4, align 4
  br label %107

87:                                               ; preds = %75
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* @IEEE80211_HTCAP_SHORTGI20, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %87
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ieee80211_htrates, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %4, align 4
  br label %106

99:                                               ; preds = %87
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ieee80211_htrates, align 8
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %99, %92
  br label %107

107:                                              ; preds = %106, %80
  br label %108

108:                                              ; preds = %107, %68
  br label %109

109:                                              ; preds = %108, %52
  br label %110

110:                                              ; preds = %109, %1
  store i32 0, i32* %6, align 4
  br label %111

111:                                              ; preds = %136, %110
  %112 = load i32, i32* %6, align 4
  %113 = load %struct.ieee80211_scan_entry*, %struct.ieee80211_scan_entry** %2, align 8
  %114 = getelementptr inbounds %struct.ieee80211_scan_entry, %struct.ieee80211_scan_entry* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp slt i32 %112, %117
  br i1 %118, label %119, label %139

119:                                              ; preds = %111
  %120 = load %struct.ieee80211_scan_entry*, %struct.ieee80211_scan_entry** %2, align 8
  %121 = getelementptr inbounds %struct.ieee80211_scan_entry, %struct.ieee80211_scan_entry* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %6, align 4
  %124 = add nsw i32 2, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %122, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @IEEE80211_RATE_VAL, align 4
  %129 = and i32 %127, %128
  store i32 %129, i32* %5, align 4
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* %4, align 4
  %132 = icmp sgt i32 %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %119
  %134 = load i32, i32* %5, align 4
  store i32 %134, i32* %4, align 4
  br label %135

135:                                              ; preds = %133, %119
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %6, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %6, align 4
  br label %111

139:                                              ; preds = %111
  store i32 0, i32* %6, align 4
  br label %140

140:                                              ; preds = %165, %139
  %141 = load i32, i32* %6, align 4
  %142 = load %struct.ieee80211_scan_entry*, %struct.ieee80211_scan_entry** %2, align 8
  %143 = getelementptr inbounds %struct.ieee80211_scan_entry, %struct.ieee80211_scan_entry* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 1
  %146 = load i32, i32* %145, align 4
  %147 = icmp slt i32 %141, %146
  br i1 %147, label %148, label %168

148:                                              ; preds = %140
  %149 = load %struct.ieee80211_scan_entry*, %struct.ieee80211_scan_entry** %2, align 8
  %150 = getelementptr inbounds %struct.ieee80211_scan_entry, %struct.ieee80211_scan_entry* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %6, align 4
  %153 = add nsw i32 2, %152
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %151, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @IEEE80211_RATE_VAL, align 4
  %158 = and i32 %156, %157
  store i32 %158, i32* %5, align 4
  %159 = load i32, i32* %5, align 4
  %160 = load i32, i32* %4, align 4
  %161 = icmp sgt i32 %159, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %148
  %163 = load i32, i32* %5, align 4
  store i32 %163, i32* %4, align 4
  br label %164

164:                                              ; preds = %162, %148
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %6, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %6, align 4
  br label %140

168:                                              ; preds = %140
  %169 = load i32, i32* %4, align 4
  ret i32 %169
}

declare dso_local i64 @isclr(i32*, i32) #1

declare dso_local i32 @le16dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
