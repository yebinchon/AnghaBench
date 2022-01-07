; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_rate/sample/extr_sample.c_pick_best_rate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_rate/sample/extr_sample.c_pick_best_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_node = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.sample_node = type { i32, %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i32, i64, i32, i32, i32 }

@IEEE80211_NODE_HT = common dso_local global i32 0, align 4
@IEEE80211_T_HT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_node*, %struct.TYPE_9__*, i32, i32)* @pick_best_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pick_best_rate(%struct.ath_node* %0, %struct.TYPE_9__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ath_node*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sample_node*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ath_node* %0, %struct.ath_node** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load %struct.ath_node*, %struct.ath_node** %5, align 8
  %18 = call %struct.sample_node* @ATH_NODE_SAMPLE(%struct.ath_node* %17)
  store %struct.sample_node* %18, %struct.sample_node** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %19 = load %struct.sample_node*, %struct.sample_node** %9, align 8
  %20 = getelementptr inbounds %struct.sample_node, %struct.sample_node* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %22

22:                                               ; preds = %184, %4
  %23 = load i32, i32* %13, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %189

25:                                               ; preds = %22
  %26 = load i32, i32* %13, align 4
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %184

30:                                               ; preds = %25
  %31 = load %struct.ath_node*, %struct.ath_node** %5, align 8
  %32 = getelementptr inbounds %struct.ath_node, %struct.ath_node* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @IEEE80211_NODE_HT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %30
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = load i32, i32* %14, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @IEEE80211_T_HT, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  br label %184

50:                                               ; preds = %38, %30
  %51 = load %struct.sample_node*, %struct.sample_node** %9, align 8
  %52 = getelementptr inbounds %struct.sample_node, %struct.sample_node* %51, i32 0, i32 1
  %53 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %53, i64 %55
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = load i32, i32* %14, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %15, align 4
  %64 = icmp sle i32 %63, 0
  br i1 %64, label %82, label %65

65:                                               ; preds = %50
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %65
  %69 = load %struct.sample_node*, %struct.sample_node** %9, align 8
  %70 = getelementptr inbounds %struct.sample_node, %struct.sample_node* %69, i32 0, i32 1
  %71 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %71, i64 %73
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = load i32, i32* %14, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %68, %50
  br label %184

83:                                               ; preds = %68, %65
  %84 = load %struct.sample_node*, %struct.sample_node** %9, align 8
  %85 = getelementptr inbounds %struct.sample_node, %struct.sample_node* %84, i32 0, i32 1
  %86 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %86, i64 %88
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = load i32, i32* %14, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp sgt i64 %95, 0
  br i1 %96, label %97, label %110

97:                                               ; preds = %83
  %98 = load %struct.sample_node*, %struct.sample_node** %9, align 8
  %99 = getelementptr inbounds %struct.sample_node, %struct.sample_node* %98, i32 0, i32 1
  %100 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %99, align 8
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %100, i64 %102
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = load i32, i32* %14, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  store i32 %109, i32* %16, align 4
  br label %111

110:                                              ; preds = %83
  store i32 95, i32* %16, align 4
  br label %111

111:                                              ; preds = %110, %97
  %112 = load %struct.sample_node*, %struct.sample_node** %9, align 8
  %113 = getelementptr inbounds %struct.sample_node, %struct.sample_node* %112, i32 0, i32 1
  %114 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %113, align 8
  %115 = load i32, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %114, i64 %116
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = load i32, i32* %14, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = icmp sgt i32 %123, 3
  br i1 %124, label %125, label %126

125:                                              ; preds = %111
  br label %184

126:                                              ; preds = %111
  %127 = load %struct.ath_node*, %struct.ath_node** %5, align 8
  %128 = getelementptr inbounds %struct.ath_node, %struct.ath_node* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @IEEE80211_NODE_HT, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %126
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* %16, align 4
  %137 = add nsw i32 %136, 50
  %138 = icmp sgt i32 %135, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %134
  br label %184

140:                                              ; preds = %134
  br label %141

141:                                              ; preds = %140, %126
  %142 = load %struct.ath_node*, %struct.ath_node** %5, align 8
  %143 = getelementptr inbounds %struct.ath_node, %struct.ath_node* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @IEEE80211_NODE_HT, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %161, label %149

149:                                              ; preds = %141
  %150 = load i32, i32* %11, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %156, label %152

152:                                              ; preds = %149
  %153 = load i32, i32* %15, align 4
  %154 = load i32, i32* %11, align 4
  %155 = icmp sle i32 %153, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %152, %149
  %157 = load i32, i32* %15, align 4
  store i32 %157, i32* %11, align 4
  %158 = load i32, i32* %14, align 4
  store i32 %158, i32* %10, align 4
  %159 = load i32, i32* %16, align 4
  store i32 %159, i32* %12, align 4
  br label %160

160:                                              ; preds = %156, %152
  br label %161

161:                                              ; preds = %160, %141
  %162 = load %struct.ath_node*, %struct.ath_node** %5, align 8
  %163 = getelementptr inbounds %struct.ath_node, %struct.ath_node* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @IEEE80211_NODE_HT, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %183

169:                                              ; preds = %161
  %170 = load i32, i32* %11, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %178, label %172

172:                                              ; preds = %169
  %173 = load i32, i32* %15, align 4
  %174 = mul nsw i32 %173, 8
  %175 = load i32, i32* %11, align 4
  %176 = mul nsw i32 %175, 10
  %177 = icmp sle i32 %174, %176
  br i1 %177, label %178, label %182

178:                                              ; preds = %172, %169
  %179 = load i32, i32* %15, align 4
  store i32 %179, i32* %11, align 4
  %180 = load i32, i32* %14, align 4
  store i32 %180, i32* %10, align 4
  %181 = load i32, i32* %16, align 4
  store i32 %181, i32* %12, align 4
  br label %182

182:                                              ; preds = %178, %172
  br label %183

183:                                              ; preds = %182, %161
  br label %184

184:                                              ; preds = %183, %139, %125, %82, %49, %29
  %185 = load i32, i32* %13, align 4
  %186 = ashr i32 %185, 1
  store i32 %186, i32* %13, align 4
  %187 = load i32, i32* %14, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %14, align 4
  br label %22

189:                                              ; preds = %22
  %190 = load i32, i32* %11, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %189
  %193 = load i32, i32* %10, align 4
  br label %195

194:                                              ; preds = %189
  br label %195

195:                                              ; preds = %194, %192
  %196 = phi i32 [ %193, %192 ], [ -1, %194 ]
  ret i32 %196
}

declare dso_local %struct.sample_node* @ATH_NODE_SAMPLE(%struct.ath_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
