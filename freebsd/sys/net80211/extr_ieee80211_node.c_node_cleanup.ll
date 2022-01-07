; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_node.c_node_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_node.c_node_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i32, i32**, i32*, i64, %struct.ieee80211com*, %struct.ieee80211vap* }
%struct.ieee80211com = type { i32 }
%struct.ieee80211vap = type { i64, i32 (%struct.ieee80211_node.0*, i32)*, i32 }
%struct.ieee80211_node.0 = type opaque

@IEEE80211_NODE_PWR_MGT = common dso_local global i32 0, align 4
@IEEE80211_M_STA = common dso_local global i64 0, align 8
@IEEE80211_MSG_POWER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"power save mode off, %u sta's in ps mode\00", align 1
@IEEE80211_NODE_VHT = common dso_local global i32 0, align 4
@IEEE80211_NODE_HT = common dso_local global i32 0, align 4
@IEEE80211_NODE_AREF = common dso_local global i32 0, align 4
@IEEE80211_NODE_ASSOCID = common dso_local global i32 0, align 4
@M_80211_NODE = common dso_local global i32 0, align 4
@IEEE80211_M_MBSS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_node*)* @node_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @node_cleanup(%struct.ieee80211_node* %0) #0 {
  %2 = alloca %struct.ieee80211_node*, align 8
  %3 = alloca %struct.ieee80211vap*, align 8
  %4 = alloca %struct.ieee80211com*, align 8
  %5 = alloca i32, align 4
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %2, align 8
  %6 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %7 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %6, i32 0, i32 5
  %8 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  store %struct.ieee80211vap* %8, %struct.ieee80211vap** %3, align 8
  %9 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %10 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %9, i32 0, i32 4
  %11 = load %struct.ieee80211com*, %struct.ieee80211com** %10, align 8
  store %struct.ieee80211com* %11, %struct.ieee80211com** %4, align 8
  %12 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %13 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @IEEE80211_NODE_PWR_MGT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %43

18:                                               ; preds = %1
  %19 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %20 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @IEEE80211_M_STA, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %26 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %26, align 8
  br label %29

29:                                               ; preds = %24, %18
  %30 = load i32, i32* @IEEE80211_NODE_PWR_MGT, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %33 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %37 = load i32, i32* @IEEE80211_MSG_POWER, align 4
  %38 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %39 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %40 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @IEEE80211_NOTE(%struct.ieee80211vap* %36, i32 %37, %struct.ieee80211_node* %38, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %29, %1
  %44 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %45 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @IEEE80211_NODE_VHT, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %52 = call i32 @ieee80211_vht_node_cleanup(%struct.ieee80211_node* %51)
  br label %53

53:                                               ; preds = %50, %43
  %54 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %55 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @IEEE80211_NODE_HT, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %62 = call i32 @ieee80211_ht_node_cleanup(%struct.ieee80211_node* %61)
  br label %63

63:                                               ; preds = %60, %53
  %64 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %65 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %64, i32 0, i32 0
  %66 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %67 = call i32 @ieee80211_ageq_drain_node(i32* %65, %struct.ieee80211_node* %66)
  %68 = load i32, i32* @IEEE80211_NODE_AREF, align 4
  %69 = load i32, i32* @IEEE80211_NODE_ASSOCID, align 4
  %70 = or i32 %68, %69
  %71 = xor i32 %70, -1
  %72 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %73 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = and i32 %74, %71
  store i32 %75, i32* %73, align 8
  %76 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %77 = call i64 @ieee80211_node_psq_drain(%struct.ieee80211_node* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %63
  %80 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %81 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %80, i32 0, i32 1
  %82 = load i32 (%struct.ieee80211_node.0*, i32)*, i32 (%struct.ieee80211_node.0*, i32)** %81, align 8
  %83 = icmp ne i32 (%struct.ieee80211_node.0*, i32)* %82, null
  br i1 %83, label %84, label %91

84:                                               ; preds = %79
  %85 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %86 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %85, i32 0, i32 1
  %87 = load i32 (%struct.ieee80211_node.0*, i32)*, i32 (%struct.ieee80211_node.0*, i32)** %86, align 8
  %88 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %89 = bitcast %struct.ieee80211_node* %88 to %struct.ieee80211_node.0*
  %90 = call i32 %87(%struct.ieee80211_node.0* %89, i32 0)
  br label %91

91:                                               ; preds = %84, %79, %63
  %92 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %93 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %92, i32 0, i32 3
  store i64 0, i64* %93, align 8
  %94 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %95 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %106

98:                                               ; preds = %91
  %99 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %100 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* @M_80211_NODE, align 4
  %103 = call i32 @IEEE80211_FREE(i32* %101, i32 %102)
  %104 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %105 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %104, i32 0, i32 2
  store i32* null, i32** %105, align 8
  br label %106

106:                                              ; preds = %98, %91
  store i32 0, i32* %5, align 4
  br label %107

107:                                              ; preds = %139, %106
  %108 = load i32, i32* %5, align 4
  %109 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %110 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %109, i32 0, i32 1
  %111 = load i32**, i32*** %110, align 8
  %112 = call i32 @nitems(i32** %111)
  %113 = icmp slt i32 %108, %112
  br i1 %113, label %114, label %142

114:                                              ; preds = %107
  %115 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %116 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %115, i32 0, i32 1
  %117 = load i32**, i32*** %116, align 8
  %118 = load i32, i32* %5, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32*, i32** %117, i64 %119
  %121 = load i32*, i32** %120, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %138

123:                                              ; preds = %114
  %124 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %125 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %124, i32 0, i32 1
  %126 = load i32**, i32*** %125, align 8
  %127 = load i32, i32* %5, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32*, i32** %126, i64 %128
  %130 = load i32*, i32** %129, align 8
  %131 = call i32 @m_freem(i32* %130)
  %132 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %133 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %132, i32 0, i32 1
  %134 = load i32**, i32*** %133, align 8
  %135 = load i32, i32* %5, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32*, i32** %134, i64 %136
  store i32* null, i32** %137, align 8
  br label %138

138:                                              ; preds = %123, %114
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %5, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %5, align 4
  br label %107

142:                                              ; preds = %107
  %143 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %144 = call i32 @ieee80211_node_delucastkey(%struct.ieee80211_node* %143)
  ret void
}

declare dso_local i32 @IEEE80211_NOTE(%struct.ieee80211vap*, i32, %struct.ieee80211_node*, i8*, i32) #1

declare dso_local i32 @ieee80211_vht_node_cleanup(%struct.ieee80211_node*) #1

declare dso_local i32 @ieee80211_ht_node_cleanup(%struct.ieee80211_node*) #1

declare dso_local i32 @ieee80211_ageq_drain_node(i32*, %struct.ieee80211_node*) #1

declare dso_local i64 @ieee80211_node_psq_drain(%struct.ieee80211_node*) #1

declare dso_local i32 @IEEE80211_FREE(i32*, i32) #1

declare dso_local i32 @nitems(i32**) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @ieee80211_node_delucastkey(%struct.ieee80211_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
