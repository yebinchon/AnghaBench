; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_amrr.c_amrr_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_amrr.c_amrr_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_amrr = type { i32, i32 }
%struct.ieee80211_amrr_node = type { i32, i32, i32, i32, i64, i64 }
%struct.ieee80211_node = type { i32, %struct.ieee80211_rateset, i32 }
%struct.ieee80211_rateset = type { i32*, i32 }

@.str = private unnamed_addr constant [9 x i8] c"txcnt %d\00", align 1
@IEEE80211_MSG_RATECTL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"AMRR: current rate %d, txcnt=%d, retrycnt=%d\00", align 1
@IEEE80211_RATE_VAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"AMRR increasing rate %d (txcnt=%d retrycnt=%d)\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"AMRR decreasing rate %d (txcnt=%d retrycnt=%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_amrr*, %struct.ieee80211_amrr_node*, %struct.ieee80211_node*)* @amrr_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amrr_update(%struct.ieee80211_amrr* %0, %struct.ieee80211_amrr_node* %1, %struct.ieee80211_node* %2) #0 {
  %4 = alloca %struct.ieee80211_amrr*, align 8
  %5 = alloca %struct.ieee80211_amrr_node*, align 8
  %6 = alloca %struct.ieee80211_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_rateset*, align 8
  store %struct.ieee80211_amrr* %0, %struct.ieee80211_amrr** %4, align 8
  store %struct.ieee80211_amrr_node* %1, %struct.ieee80211_amrr_node** %5, align 8
  store %struct.ieee80211_node* %2, %struct.ieee80211_node** %6, align 8
  %9 = load %struct.ieee80211_amrr_node*, %struct.ieee80211_amrr_node** %5, align 8
  %10 = getelementptr inbounds %struct.ieee80211_amrr_node, %struct.ieee80211_amrr_node* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %7, align 4
  store %struct.ieee80211_rateset* null, %struct.ieee80211_rateset** %8, align 8
  %12 = load %struct.ieee80211_amrr_node*, %struct.ieee80211_amrr_node** %5, align 8
  %13 = call i32 @is_enough(%struct.ieee80211_amrr_node* %12)
  %14 = load %struct.ieee80211_amrr_node*, %struct.ieee80211_amrr_node** %5, align 8
  %15 = getelementptr inbounds %struct.ieee80211_amrr_node, %struct.ieee80211_amrr_node* %14, i32 0, i32 5
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = call i32 @KASSERT(i32 %13, i8* %17)
  %19 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %20 = call i64 @amrr_node_is_11n(%struct.ieee80211_node* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %24 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %23, i32 0, i32 2
  %25 = bitcast i32* %24 to %struct.ieee80211_rateset*
  store %struct.ieee80211_rateset* %25, %struct.ieee80211_rateset** %8, align 8
  br label %29

26:                                               ; preds = %3
  %27 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %28 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %27, i32 0, i32 1
  store %struct.ieee80211_rateset* %28, %struct.ieee80211_rateset** %8, align 8
  br label %29

29:                                               ; preds = %26, %22
  %30 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %31 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @IEEE80211_MSG_RATECTL, align 4
  %34 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %35 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %8, align 8
  %36 = getelementptr inbounds %struct.ieee80211_rateset, %struct.ieee80211_rateset* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @IEEE80211_RATE_VAL, align 4
  %43 = and i32 %41, %42
  %44 = load %struct.ieee80211_amrr_node*, %struct.ieee80211_amrr_node** %5, align 8
  %45 = getelementptr inbounds %struct.ieee80211_amrr_node, %struct.ieee80211_amrr_node* %44, i32 0, i32 5
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.ieee80211_amrr_node*, %struct.ieee80211_amrr_node** %5, align 8
  %48 = getelementptr inbounds %struct.ieee80211_amrr_node, %struct.ieee80211_amrr_node* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @IEEE80211_NOTE(i32 %32, i32 %33, %struct.ieee80211_node* %34, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %43, i64 %46, i64 %49)
  %51 = load %struct.ieee80211_amrr_node*, %struct.ieee80211_amrr_node** %5, align 8
  %52 = call i64 @is_success(%struct.ieee80211_amrr_node* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %105

54:                                               ; preds = %29
  %55 = load %struct.ieee80211_amrr_node*, %struct.ieee80211_amrr_node** %5, align 8
  %56 = getelementptr inbounds %struct.ieee80211_amrr_node, %struct.ieee80211_amrr_node* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  %59 = load %struct.ieee80211_amrr_node*, %struct.ieee80211_amrr_node** %5, align 8
  %60 = getelementptr inbounds %struct.ieee80211_amrr_node, %struct.ieee80211_amrr_node* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ieee80211_amrr_node*, %struct.ieee80211_amrr_node** %5, align 8
  %63 = getelementptr inbounds %struct.ieee80211_amrr_node, %struct.ieee80211_amrr_node* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = icmp sge i32 %61, %64
  br i1 %65, label %66, label %101

66:                                               ; preds = %54
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  %69 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %8, align 8
  %70 = getelementptr inbounds %struct.ieee80211_rateset, %struct.ieee80211_rateset* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %101

73:                                               ; preds = %66
  %74 = load %struct.ieee80211_amrr_node*, %struct.ieee80211_amrr_node** %5, align 8
  %75 = getelementptr inbounds %struct.ieee80211_amrr_node, %struct.ieee80211_amrr_node* %74, i32 0, i32 3
  store i32 1, i32* %75, align 4
  %76 = load %struct.ieee80211_amrr_node*, %struct.ieee80211_amrr_node** %5, align 8
  %77 = getelementptr inbounds %struct.ieee80211_amrr_node, %struct.ieee80211_amrr_node* %76, i32 0, i32 1
  store i32 0, i32* %77, align 4
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  %80 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %81 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @IEEE80211_MSG_RATECTL, align 4
  %84 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %85 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %8, align 8
  %86 = getelementptr inbounds %struct.ieee80211_rateset, %struct.ieee80211_rateset* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @IEEE80211_RATE_VAL, align 4
  %93 = and i32 %91, %92
  %94 = load %struct.ieee80211_amrr_node*, %struct.ieee80211_amrr_node** %5, align 8
  %95 = getelementptr inbounds %struct.ieee80211_amrr_node, %struct.ieee80211_amrr_node* %94, i32 0, i32 5
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.ieee80211_amrr_node*, %struct.ieee80211_amrr_node** %5, align 8
  %98 = getelementptr inbounds %struct.ieee80211_amrr_node, %struct.ieee80211_amrr_node* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @IEEE80211_NOTE(i32 %82, i32 %83, %struct.ieee80211_node* %84, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %93, i64 %96, i64 %99)
  br label %104

101:                                              ; preds = %66, %54
  %102 = load %struct.ieee80211_amrr_node*, %struct.ieee80211_amrr_node** %5, align 8
  %103 = getelementptr inbounds %struct.ieee80211_amrr_node, %struct.ieee80211_amrr_node* %102, i32 0, i32 3
  store i32 0, i32* %103, align 4
  br label %104

104:                                              ; preds = %101, %73
  br label %172

105:                                              ; preds = %29
  %106 = load %struct.ieee80211_amrr_node*, %struct.ieee80211_amrr_node** %5, align 8
  %107 = call i64 @is_failure(%struct.ieee80211_amrr_node* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %171

109:                                              ; preds = %105
  %110 = load %struct.ieee80211_amrr_node*, %struct.ieee80211_amrr_node** %5, align 8
  %111 = getelementptr inbounds %struct.ieee80211_amrr_node, %struct.ieee80211_amrr_node* %110, i32 0, i32 1
  store i32 0, i32* %111, align 4
  %112 = load i32, i32* %7, align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %168

114:                                              ; preds = %109
  %115 = load %struct.ieee80211_amrr_node*, %struct.ieee80211_amrr_node** %5, align 8
  %116 = getelementptr inbounds %struct.ieee80211_amrr_node, %struct.ieee80211_amrr_node* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %138

119:                                              ; preds = %114
  %120 = load %struct.ieee80211_amrr_node*, %struct.ieee80211_amrr_node** %5, align 8
  %121 = getelementptr inbounds %struct.ieee80211_amrr_node, %struct.ieee80211_amrr_node* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = mul nsw i32 %122, 2
  store i32 %123, i32* %121, align 8
  %124 = load %struct.ieee80211_amrr_node*, %struct.ieee80211_amrr_node** %5, align 8
  %125 = getelementptr inbounds %struct.ieee80211_amrr_node, %struct.ieee80211_amrr_node* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.ieee80211_amrr*, %struct.ieee80211_amrr** %4, align 8
  %128 = getelementptr inbounds %struct.ieee80211_amrr, %struct.ieee80211_amrr* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = icmp sgt i32 %126, %129
  br i1 %130, label %131, label %137

131:                                              ; preds = %119
  %132 = load %struct.ieee80211_amrr*, %struct.ieee80211_amrr** %4, align 8
  %133 = getelementptr inbounds %struct.ieee80211_amrr, %struct.ieee80211_amrr* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.ieee80211_amrr_node*, %struct.ieee80211_amrr_node** %5, align 8
  %136 = getelementptr inbounds %struct.ieee80211_amrr_node, %struct.ieee80211_amrr_node* %135, i32 0, i32 2
  store i32 %134, i32* %136, align 8
  br label %137

137:                                              ; preds = %131, %119
  br label %144

138:                                              ; preds = %114
  %139 = load %struct.ieee80211_amrr*, %struct.ieee80211_amrr** %4, align 8
  %140 = getelementptr inbounds %struct.ieee80211_amrr, %struct.ieee80211_amrr* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.ieee80211_amrr_node*, %struct.ieee80211_amrr_node** %5, align 8
  %143 = getelementptr inbounds %struct.ieee80211_amrr_node, %struct.ieee80211_amrr_node* %142, i32 0, i32 2
  store i32 %141, i32* %143, align 8
  br label %144

144:                                              ; preds = %138, %137
  %145 = load i32, i32* %7, align 4
  %146 = add nsw i32 %145, -1
  store i32 %146, i32* %7, align 4
  %147 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %148 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @IEEE80211_MSG_RATECTL, align 4
  %151 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %152 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %8, align 8
  %153 = getelementptr inbounds %struct.ieee80211_rateset, %struct.ieee80211_rateset* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %7, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @IEEE80211_RATE_VAL, align 4
  %160 = and i32 %158, %159
  %161 = load %struct.ieee80211_amrr_node*, %struct.ieee80211_amrr_node** %5, align 8
  %162 = getelementptr inbounds %struct.ieee80211_amrr_node, %struct.ieee80211_amrr_node* %161, i32 0, i32 5
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.ieee80211_amrr_node*, %struct.ieee80211_amrr_node** %5, align 8
  %165 = getelementptr inbounds %struct.ieee80211_amrr_node, %struct.ieee80211_amrr_node* %164, i32 0, i32 4
  %166 = load i64, i64* %165, align 8
  %167 = call i32 @IEEE80211_NOTE(i32 %149, i32 %150, %struct.ieee80211_node* %151, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %160, i64 %163, i64 %166)
  br label %168

168:                                              ; preds = %144, %109
  %169 = load %struct.ieee80211_amrr_node*, %struct.ieee80211_amrr_node** %5, align 8
  %170 = getelementptr inbounds %struct.ieee80211_amrr_node, %struct.ieee80211_amrr_node* %169, i32 0, i32 3
  store i32 0, i32* %170, align 4
  br label %171

171:                                              ; preds = %168, %105
  br label %172

172:                                              ; preds = %171, %104
  %173 = load %struct.ieee80211_amrr_node*, %struct.ieee80211_amrr_node** %5, align 8
  %174 = getelementptr inbounds %struct.ieee80211_amrr_node, %struct.ieee80211_amrr_node* %173, i32 0, i32 5
  store i64 0, i64* %174, align 8
  %175 = load %struct.ieee80211_amrr_node*, %struct.ieee80211_amrr_node** %5, align 8
  %176 = getelementptr inbounds %struct.ieee80211_amrr_node, %struct.ieee80211_amrr_node* %175, i32 0, i32 4
  store i64 0, i64* %176, align 8
  %177 = load i32, i32* %7, align 4
  ret i32 %177
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @is_enough(%struct.ieee80211_amrr_node*) #1

declare dso_local i64 @amrr_node_is_11n(%struct.ieee80211_node*) #1

declare dso_local i32 @IEEE80211_NOTE(i32, i32, %struct.ieee80211_node*, i8*, i32, i64, i64) #1

declare dso_local i64 @is_success(%struct.ieee80211_amrr_node*) #1

declare dso_local i64 @is_failure(%struct.ieee80211_amrr_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
