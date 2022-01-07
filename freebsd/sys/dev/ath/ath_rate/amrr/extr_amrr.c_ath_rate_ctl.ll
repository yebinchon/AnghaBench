; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_rate/amrr/extr_amrr.c_ath_rate_ctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_rate/amrr/extr_amrr.c_ath_rate_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ath_softc = type { i32 }
%struct.amrr_node = type { i32, i32, i32, i32, i64, i64, i64, i64, i64 }

@IEEE80211_MSG_RATECTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"cnt0: %d cnt1: %d cnt2: %d cnt3: %d -- threshold: %d\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"increase rate to %d\00", align 1
@ath_rate_max_success_threshold = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"decrease rate recovery thr: %d\00", align 1
@ath_rate_min_success_threshold = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"decrease rate normal thr: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ieee80211_node*)* @ath_rate_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_rate_ctl(i8* %0, %struct.ieee80211_node* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ieee80211_node*, align 8
  %5 = alloca %struct.ath_softc*, align 8
  %6 = alloca %struct.amrr_node*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.ieee80211_node* %1, %struct.ieee80211_node** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.ath_softc*
  store %struct.ath_softc* %9, %struct.ath_softc** %5, align 8
  %10 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %11 = call i32 @ATH_NODE(%struct.ieee80211_node* %10)
  %12 = call %struct.amrr_node* @ATH_NODE_AMRR(i32 %11)
  store %struct.amrr_node* %12, %struct.amrr_node** %6, align 8
  %13 = load %struct.amrr_node*, %struct.amrr_node** %6, align 8
  %14 = getelementptr inbounds %struct.amrr_node, %struct.amrr_node* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  %16 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %17 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @IEEE80211_MSG_RATECTL, align 4
  %20 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %21 = load %struct.amrr_node*, %struct.amrr_node** %6, align 8
  %22 = getelementptr inbounds %struct.amrr_node, %struct.amrr_node* %21, i32 0, i32 8
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = load %struct.amrr_node*, %struct.amrr_node** %6, align 8
  %26 = getelementptr inbounds %struct.amrr_node, %struct.amrr_node* %25, i32 0, i32 7
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.amrr_node*, %struct.amrr_node** %6, align 8
  %29 = getelementptr inbounds %struct.amrr_node, %struct.amrr_node* %28, i32 0, i32 6
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.amrr_node*, %struct.amrr_node** %6, align 8
  %32 = getelementptr inbounds %struct.amrr_node, %struct.amrr_node* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.amrr_node*, %struct.amrr_node** %6, align 8
  %35 = getelementptr inbounds %struct.amrr_node, %struct.amrr_node* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i32, i32, %struct.ieee80211_node*, i8*, i32, ...) @IEEE80211_NOTE(i32 %18, i32 %19, %struct.ieee80211_node* %20, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %24, i64 %27, i64 %30, i64 %33, i32 %36)
  %38 = load %struct.amrr_node*, %struct.amrr_node** %6, align 8
  %39 = getelementptr inbounds %struct.amrr_node, %struct.amrr_node* %38, i32 0, i32 7
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.amrr_node*, %struct.amrr_node** %6, align 8
  %42 = getelementptr inbounds %struct.amrr_node, %struct.amrr_node* %41, i32 0, i32 8
  %43 = load i64, i64* %42, align 8
  %44 = sdiv i64 %43, 10
  %45 = icmp slt i64 %40, %44
  br i1 %45, label %46, label %89

46:                                               ; preds = %2
  %47 = load %struct.amrr_node*, %struct.amrr_node** %6, align 8
  %48 = getelementptr inbounds %struct.amrr_node, %struct.amrr_node* %47, i32 0, i32 8
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %49, 10
  br i1 %50, label %51, label %89

51:                                               ; preds = %46
  %52 = load %struct.amrr_node*, %struct.amrr_node** %6, align 8
  %53 = getelementptr inbounds %struct.amrr_node, %struct.amrr_node* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  %56 = load %struct.amrr_node*, %struct.amrr_node** %6, align 8
  %57 = getelementptr inbounds %struct.amrr_node, %struct.amrr_node* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.amrr_node*, %struct.amrr_node** %6, align 8
  %60 = getelementptr inbounds %struct.amrr_node, %struct.amrr_node* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %58, %61
  br i1 %62, label %63, label %85

63:                                               ; preds = %51
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  %66 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %67 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %65, %69
  br i1 %70, label %71, label %85

71:                                               ; preds = %63
  %72 = load %struct.amrr_node*, %struct.amrr_node** %6, align 8
  %73 = getelementptr inbounds %struct.amrr_node, %struct.amrr_node* %72, i32 0, i32 3
  store i32 1, i32* %73, align 4
  %74 = load %struct.amrr_node*, %struct.amrr_node** %6, align 8
  %75 = getelementptr inbounds %struct.amrr_node, %struct.amrr_node* %74, i32 0, i32 2
  store i32 0, i32* %75, align 8
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  %78 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %79 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @IEEE80211_MSG_RATECTL, align 4
  %82 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %83 = load i32, i32* %7, align 4
  %84 = call i32 (i32, i32, %struct.ieee80211_node*, i8*, i32, ...) @IEEE80211_NOTE(i32 %80, i32 %81, %struct.ieee80211_node* %82, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  br label %88

85:                                               ; preds = %63, %51
  %86 = load %struct.amrr_node*, %struct.amrr_node** %6, align 8
  %87 = getelementptr inbounds %struct.amrr_node, %struct.amrr_node* %86, i32 0, i32 3
  store i32 0, i32* %87, align 4
  br label %88

88:                                               ; preds = %85, %71
  br label %153

89:                                               ; preds = %46, %2
  %90 = load %struct.amrr_node*, %struct.amrr_node** %6, align 8
  %91 = getelementptr inbounds %struct.amrr_node, %struct.amrr_node* %90, i32 0, i32 7
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.amrr_node*, %struct.amrr_node** %6, align 8
  %94 = getelementptr inbounds %struct.amrr_node, %struct.amrr_node* %93, i32 0, i32 8
  %95 = load i64, i64* %94, align 8
  %96 = sdiv i64 %95, 3
  %97 = icmp sgt i64 %92, %96
  br i1 %97, label %98, label %152

98:                                               ; preds = %89
  %99 = load %struct.amrr_node*, %struct.amrr_node** %6, align 8
  %100 = getelementptr inbounds %struct.amrr_node, %struct.amrr_node* %99, i32 0, i32 2
  store i32 0, i32* %100, align 8
  %101 = load i32, i32* %7, align 4
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %148

103:                                              ; preds = %98
  %104 = load %struct.amrr_node*, %struct.amrr_node** %6, align 8
  %105 = getelementptr inbounds %struct.amrr_node, %struct.amrr_node* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %130

108:                                              ; preds = %103
  %109 = load %struct.amrr_node*, %struct.amrr_node** %6, align 8
  %110 = getelementptr inbounds %struct.amrr_node, %struct.amrr_node* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = mul nsw i32 %111, 2
  store i32 %112, i32* %110, align 4
  %113 = load %struct.amrr_node*, %struct.amrr_node** %6, align 8
  %114 = getelementptr inbounds %struct.amrr_node, %struct.amrr_node* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i64, i64* @ath_rate_max_success_threshold, align 8
  %117 = trunc i64 %116 to i32
  %118 = call i32 @min(i32 %115, i32 %117)
  %119 = load %struct.amrr_node*, %struct.amrr_node** %6, align 8
  %120 = getelementptr inbounds %struct.amrr_node, %struct.amrr_node* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  %121 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %122 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @IEEE80211_MSG_RATECTL, align 4
  %125 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %126 = load %struct.amrr_node*, %struct.amrr_node** %6, align 8
  %127 = getelementptr inbounds %struct.amrr_node, %struct.amrr_node* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 (i32, i32, %struct.ieee80211_node*, i8*, i32, ...) @IEEE80211_NOTE(i32 %123, i32 %124, %struct.ieee80211_node* %125, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %128)
  br label %143

130:                                              ; preds = %103
  %131 = load i32, i32* @ath_rate_min_success_threshold, align 4
  %132 = load %struct.amrr_node*, %struct.amrr_node** %6, align 8
  %133 = getelementptr inbounds %struct.amrr_node, %struct.amrr_node* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 4
  %134 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %135 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @IEEE80211_MSG_RATECTL, align 4
  %138 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %139 = load %struct.amrr_node*, %struct.amrr_node** %6, align 8
  %140 = getelementptr inbounds %struct.amrr_node, %struct.amrr_node* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 (i32, i32, %struct.ieee80211_node*, i8*, i32, ...) @IEEE80211_NOTE(i32 %136, i32 %137, %struct.ieee80211_node* %138, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %141)
  br label %143

143:                                              ; preds = %130, %108
  %144 = load %struct.amrr_node*, %struct.amrr_node** %6, align 8
  %145 = getelementptr inbounds %struct.amrr_node, %struct.amrr_node* %144, i32 0, i32 3
  store i32 0, i32* %145, align 4
  %146 = load i32, i32* %7, align 4
  %147 = add nsw i32 %146, -1
  store i32 %147, i32* %7, align 4
  br label %151

148:                                              ; preds = %98
  %149 = load %struct.amrr_node*, %struct.amrr_node** %6, align 8
  %150 = getelementptr inbounds %struct.amrr_node, %struct.amrr_node* %149, i32 0, i32 3
  store i32 0, i32* %150, align 4
  br label %151

151:                                              ; preds = %148, %143
  br label %152

152:                                              ; preds = %151, %89
  br label %153

153:                                              ; preds = %152, %88
  %154 = load %struct.amrr_node*, %struct.amrr_node** %6, align 8
  %155 = getelementptr inbounds %struct.amrr_node, %struct.amrr_node* %154, i32 0, i32 8
  %156 = load i64, i64* %155, align 8
  %157 = icmp sgt i64 %156, 10
  br i1 %157, label %164, label %158

158:                                              ; preds = %153
  %159 = load i32, i32* %7, align 4
  %160 = load %struct.amrr_node*, %struct.amrr_node** %6, align 8
  %161 = getelementptr inbounds %struct.amrr_node, %struct.amrr_node* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = icmp ne i32 %159, %162
  br i1 %163, label %164, label %175

164:                                              ; preds = %158, %153
  %165 = load %struct.amrr_node*, %struct.amrr_node** %6, align 8
  %166 = getelementptr inbounds %struct.amrr_node, %struct.amrr_node* %165, i32 0, i32 8
  store i64 0, i64* %166, align 8
  %167 = load %struct.amrr_node*, %struct.amrr_node** %6, align 8
  %168 = getelementptr inbounds %struct.amrr_node, %struct.amrr_node* %167, i32 0, i32 7
  store i64 0, i64* %168, align 8
  %169 = load %struct.amrr_node*, %struct.amrr_node** %6, align 8
  %170 = getelementptr inbounds %struct.amrr_node, %struct.amrr_node* %169, i32 0, i32 6
  store i64 0, i64* %170, align 8
  %171 = load %struct.amrr_node*, %struct.amrr_node** %6, align 8
  %172 = getelementptr inbounds %struct.amrr_node, %struct.amrr_node* %171, i32 0, i32 5
  store i64 0, i64* %172, align 8
  %173 = load %struct.amrr_node*, %struct.amrr_node** %6, align 8
  %174 = getelementptr inbounds %struct.amrr_node, %struct.amrr_node* %173, i32 0, i32 4
  store i64 0, i64* %174, align 8
  br label %175

175:                                              ; preds = %164, %158
  %176 = load i32, i32* %7, align 4
  %177 = load %struct.amrr_node*, %struct.amrr_node** %6, align 8
  %178 = getelementptr inbounds %struct.amrr_node, %struct.amrr_node* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = icmp ne i32 %176, %179
  br i1 %180, label %181, label %186

181:                                              ; preds = %175
  %182 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %183 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %184 = load i32, i32* %7, align 4
  %185 = call i32 @ath_rate_update(%struct.ath_softc* %182, %struct.ieee80211_node* %183, i32 %184)
  br label %186

186:                                              ; preds = %181, %175
  ret void
}

declare dso_local %struct.amrr_node* @ATH_NODE_AMRR(i32) #1

declare dso_local i32 @ATH_NODE(%struct.ieee80211_node*) #1

declare dso_local i32 @IEEE80211_NOTE(i32, i32, %struct.ieee80211_node*, i8*, i32, ...) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ath_rate_update(%struct.ath_softc*, %struct.ieee80211_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
