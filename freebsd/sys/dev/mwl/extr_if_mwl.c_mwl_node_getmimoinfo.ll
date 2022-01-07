; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_node_getmimoinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_node_getmimoinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i32 }
%struct.ieee80211_mimo_info = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32*, i32* }
%struct.mwl_node = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i64, i64, i32, i32, i32 }

@mwl_node_getmimoinfo.logdbtbl = internal constant [32 x i32] [i32 0, i32 0, i32 24, i32 38, i32 48, i32 56, i32 62, i32 68, i32 72, i32 76, i32 80, i32 83, i32 86, i32 89, i32 92, i32 94, i32 96, i32 98, i32 100, i32 102, i32 104, i32 106, i32 107, i32 109, i32 110, i32 112, i32 113, i32 115, i32 116, i32 117, i32 118, i32 119], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_node*, %struct.ieee80211_mimo_info*)* @mwl_node_getmimoinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwl_node_getmimoinfo(%struct.ieee80211_node* %0, %struct.ieee80211_mimo_info* %1) #0 {
  %3 = alloca %struct.ieee80211_node*, align 8
  %4 = alloca %struct.ieee80211_mimo_info*, align 8
  %5 = alloca %struct.mwl_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %3, align 8
  store %struct.ieee80211_mimo_info* %1, %struct.ieee80211_mimo_info** %4, align 8
  %8 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %9 = call %struct.mwl_node* @MWL_NODE_CONST(%struct.ieee80211_node* %8)
  store %struct.mwl_node* %9, %struct.mwl_node** %5, align 8
  %10 = load %struct.mwl_node*, %struct.mwl_node** %5, align 8
  %11 = getelementptr inbounds %struct.mwl_node, %struct.mwl_node* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sdiv i32 %13, 2
  store i32 %14, i32* %6, align 4
  %15 = load %struct.mwl_node*, %struct.mwl_node** %5, align 8
  %16 = getelementptr inbounds %struct.mwl_node, %struct.mwl_node* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %7, align 8
  %19 = load %struct.mwl_node*, %struct.mwl_node** %5, align 8
  %20 = getelementptr inbounds %struct.mwl_node, %struct.mwl_node* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load %struct.mwl_node*, %struct.mwl_node** %5, align 8
  %27 = getelementptr inbounds %struct.mwl_node, %struct.mwl_node* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %7, align 8
  br label %30

30:                                               ; preds = %25, %2
  %31 = load %struct.mwl_node*, %struct.mwl_node** %5, align 8
  %32 = getelementptr inbounds %struct.mwl_node, %struct.mwl_node* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load %struct.mwl_node*, %struct.mwl_node** %5, align 8
  %39 = getelementptr inbounds %struct.mwl_node, %struct.mwl_node* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %7, align 8
  br label %42

42:                                               ; preds = %37, %30
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.mwl_node*, %struct.mwl_node** %5, align 8
  %46 = getelementptr inbounds %struct.mwl_node, %struct.mwl_node* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds [32 x i32], [32 x i32]* @mwl_node_getmimoinfo.logdbtbl, i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i64, i64* %7, align 8
  %52 = getelementptr inbounds [32 x i32], [32 x i32]* @mwl_node_getmimoinfo.logdbtbl, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %50, %53
  %55 = ashr i32 %54, 2
  %56 = add nsw i32 %44, %55
  %57 = load %struct.ieee80211_mimo_info*, %struct.ieee80211_mimo_info** %4, align 8
  %58 = getelementptr inbounds %struct.ieee80211_mimo_info, %struct.ieee80211_mimo_info* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  store i32 %56, i32* %63, align 4
  %64 = load %struct.ieee80211_mimo_info*, %struct.ieee80211_mimo_info** %4, align 8
  %65 = getelementptr inbounds %struct.ieee80211_mimo_info, %struct.ieee80211_mimo_info* %64, i32 0, i32 0
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp sgt i32 %71, 64
  br i1 %72, label %73, label %74

73:                                               ; preds = %43
  br label %84

74:                                               ; preds = %43
  %75 = load %struct.ieee80211_mimo_info*, %struct.ieee80211_mimo_info** %4, align 8
  %76 = getelementptr inbounds %struct.ieee80211_mimo_info, %struct.ieee80211_mimo_info* %75, i32 0, i32 0
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i64 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = shl i32 %82, 1
  br label %84

84:                                               ; preds = %74, %73
  %85 = phi i32 [ 127, %73 ], [ %83, %74 ]
  %86 = load %struct.ieee80211_mimo_info*, %struct.ieee80211_mimo_info** %4, align 8
  %87 = getelementptr inbounds %struct.ieee80211_mimo_info, %struct.ieee80211_mimo_info* %86, i32 0, i32 0
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i64 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  store i32 %85, i32* %92, align 4
  br label %93

93:                                               ; preds = %84
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %6, align 4
  %96 = load %struct.mwl_node*, %struct.mwl_node** %5, align 8
  %97 = getelementptr inbounds %struct.mwl_node, %struct.mwl_node* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds [32 x i32], [32 x i32]* @mwl_node_getmimoinfo.logdbtbl, i64 0, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i64, i64* %7, align 8
  %103 = getelementptr inbounds [32 x i32], [32 x i32]* @mwl_node_getmimoinfo.logdbtbl, i64 0, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = sub nsw i32 %101, %104
  %106 = ashr i32 %105, 2
  %107 = add nsw i32 %95, %106
  %108 = load %struct.ieee80211_mimo_info*, %struct.ieee80211_mimo_info** %4, align 8
  %109 = getelementptr inbounds %struct.ieee80211_mimo_info, %struct.ieee80211_mimo_info* %108, i32 0, i32 0
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i64 1
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  store i32 %107, i32* %114, align 4
  %115 = load %struct.ieee80211_mimo_info*, %struct.ieee80211_mimo_info** %4, align 8
  %116 = getelementptr inbounds %struct.ieee80211_mimo_info, %struct.ieee80211_mimo_info* %115, i32 0, i32 0
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i64 1
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp sgt i32 %122, 64
  br i1 %123, label %124, label %125

124:                                              ; preds = %94
  br label %135

125:                                              ; preds = %94
  %126 = load %struct.ieee80211_mimo_info*, %struct.ieee80211_mimo_info** %4, align 8
  %127 = getelementptr inbounds %struct.ieee80211_mimo_info, %struct.ieee80211_mimo_info* %126, i32 0, i32 0
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i64 1
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  %133 = load i32, i32* %132, align 4
  %134 = shl i32 %133, 1
  br label %135

135:                                              ; preds = %125, %124
  %136 = phi i32 [ 127, %124 ], [ %134, %125 ]
  %137 = load %struct.ieee80211_mimo_info*, %struct.ieee80211_mimo_info** %4, align 8
  %138 = getelementptr inbounds %struct.ieee80211_mimo_info, %struct.ieee80211_mimo_info* %137, i32 0, i32 0
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i64 1
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 0
  store i32 %136, i32* %143, align 4
  br label %144

144:                                              ; preds = %135
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %6, align 4
  %147 = load %struct.mwl_node*, %struct.mwl_node** %5, align 8
  %148 = getelementptr inbounds %struct.mwl_node, %struct.mwl_node* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 3
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds [32 x i32], [32 x i32]* @mwl_node_getmimoinfo.logdbtbl, i64 0, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = load i64, i64* %7, align 8
  %154 = getelementptr inbounds [32 x i32], [32 x i32]* @mwl_node_getmimoinfo.logdbtbl, i64 0, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = sub nsw i32 %152, %155
  %157 = ashr i32 %156, 2
  %158 = add nsw i32 %146, %157
  %159 = load %struct.ieee80211_mimo_info*, %struct.ieee80211_mimo_info** %4, align 8
  %160 = getelementptr inbounds %struct.ieee80211_mimo_info, %struct.ieee80211_mimo_info* %159, i32 0, i32 0
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i64 2
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 0
  store i32 %158, i32* %165, align 4
  %166 = load %struct.ieee80211_mimo_info*, %struct.ieee80211_mimo_info** %4, align 8
  %167 = getelementptr inbounds %struct.ieee80211_mimo_info, %struct.ieee80211_mimo_info* %166, i32 0, i32 0
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i64 2
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 1
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 0
  %173 = load i32, i32* %172, align 4
  %174 = icmp sgt i32 %173, 64
  br i1 %174, label %175, label %176

175:                                              ; preds = %145
  br label %186

176:                                              ; preds = %145
  %177 = load %struct.ieee80211_mimo_info*, %struct.ieee80211_mimo_info** %4, align 8
  %178 = getelementptr inbounds %struct.ieee80211_mimo_info, %struct.ieee80211_mimo_info* %177, i32 0, i32 0
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i64 2
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 1
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 0
  %184 = load i32, i32* %183, align 4
  %185 = shl i32 %184, 1
  br label %186

186:                                              ; preds = %176, %175
  %187 = phi i32 [ 127, %175 ], [ %185, %176 ]
  %188 = load %struct.ieee80211_mimo_info*, %struct.ieee80211_mimo_info** %4, align 8
  %189 = getelementptr inbounds %struct.ieee80211_mimo_info, %struct.ieee80211_mimo_info* %188, i32 0, i32 0
  %190 = load %struct.TYPE_3__*, %struct.TYPE_3__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i64 2
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 1
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 0
  store i32 %187, i32* %194, align 4
  br label %195

195:                                              ; preds = %186
  %196 = load %struct.mwl_node*, %struct.mwl_node** %5, align 8
  %197 = getelementptr inbounds %struct.mwl_node, %struct.mwl_node* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 6
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.ieee80211_mimo_info*, %struct.ieee80211_mimo_info** %4, align 8
  %201 = getelementptr inbounds %struct.ieee80211_mimo_info, %struct.ieee80211_mimo_info* %200, i32 0, i32 0
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i64 0
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 0
  %205 = load i32*, i32** %204, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 0
  store i32 %199, i32* %206, align 4
  %207 = load %struct.mwl_node*, %struct.mwl_node** %5, align 8
  %208 = getelementptr inbounds %struct.mwl_node, %struct.mwl_node* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 5
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.ieee80211_mimo_info*, %struct.ieee80211_mimo_info** %4, align 8
  %212 = getelementptr inbounds %struct.ieee80211_mimo_info, %struct.ieee80211_mimo_info* %211, i32 0, i32 0
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i64 1
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 0
  %216 = load i32*, i32** %215, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 0
  store i32 %210, i32* %217, align 4
  %218 = load %struct.mwl_node*, %struct.mwl_node** %5, align 8
  %219 = getelementptr inbounds %struct.mwl_node, %struct.mwl_node* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.ieee80211_mimo_info*, %struct.ieee80211_mimo_info** %4, align 8
  %223 = getelementptr inbounds %struct.ieee80211_mimo_info, %struct.ieee80211_mimo_info* %222, i32 0, i32 0
  %224 = load %struct.TYPE_3__*, %struct.TYPE_3__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %224, i64 2
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i32 0, i32 0
  %227 = load i32*, i32** %226, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 0
  store i32 %221, i32* %228, align 4
  ret void
}

declare dso_local %struct.mwl_node* @MWL_NODE_CONST(%struct.ieee80211_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
