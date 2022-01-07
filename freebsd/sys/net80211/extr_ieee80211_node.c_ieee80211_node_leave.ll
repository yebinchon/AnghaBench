; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_node.c_ieee80211_node_leave.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_node.c_ieee80211_node_leave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i64, %struct.ieee80211_node_table*, %struct.ieee80211vap*, %struct.ieee80211com* }
%struct.ieee80211_node_table = type { i32 }
%struct.ieee80211vap = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ieee80211_node*)* }
%struct.ieee80211com = type { i32, i32 }

@IEEE80211_MSG_ASSOC = common dso_local global i32 0, align 4
@IEEE80211_MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"station with aid %d leaves\00", align 1
@IEEE80211_M_STA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"unexpected operating mode %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_node_leave(%struct.ieee80211_node* %0) #0 {
  %2 = alloca %struct.ieee80211_node*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca %struct.ieee80211_node_table*, align 8
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %2, align 8
  %6 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %7 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %6, i32 0, i32 3
  %8 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  store %struct.ieee80211com* %8, %struct.ieee80211com** %3, align 8
  %9 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %10 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %9, i32 0, i32 2
  %11 = load %struct.ieee80211vap*, %struct.ieee80211vap** %10, align 8
  store %struct.ieee80211vap* %11, %struct.ieee80211vap** %4, align 8
  %12 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %13 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %12, i32 0, i32 1
  %14 = load %struct.ieee80211_node_table*, %struct.ieee80211_node_table** %13, align 8
  store %struct.ieee80211_node_table* %14, %struct.ieee80211_node_table** %5, align 8
  %15 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %16 = load i32, i32* @IEEE80211_MSG_ASSOC, align 4
  %17 = load i32, i32* @IEEE80211_MSG_DEBUG, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %20 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %21 = call i32 @IEEE80211_NODE_AID(%struct.ieee80211_node* %20)
  %22 = call i32 @IEEE80211_NOTE(%struct.ieee80211vap* %15, i32 %18, %struct.ieee80211_node* %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %24 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IEEE80211_M_STA, align 8
  %27 = icmp ne i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %30 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @KASSERT(i32 %28, i8* %32)
  %34 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %35 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %1
  br label %107

39:                                               ; preds = %1
  %40 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %41 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32 (%struct.ieee80211_node*)*, i32 (%struct.ieee80211_node*)** %43, align 8
  %45 = icmp ne i32 (%struct.ieee80211_node*)* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %39
  %47 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %48 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32 (%struct.ieee80211_node*)*, i32 (%struct.ieee80211_node*)** %50, align 8
  %52 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %53 = call i32 %51(%struct.ieee80211_node* %52)
  br label %54

54:                                               ; preds = %46, %39
  %55 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %56 = call i32 @IEEE80211_LOCK(%struct.ieee80211com* %55)
  %57 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %58 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %59 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @IEEE80211_AID_CLR(%struct.ieee80211vap* %57, i64 %60)
  %62 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %63 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %63, align 8
  %66 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %67 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %67, align 4
  %70 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %71 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @IEEE80211_IS_CHAN_VHT(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %54
  %76 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %77 = call i32 @ieee80211_vht_node_leave(%struct.ieee80211_node* %76)
  br label %78

78:                                               ; preds = %75, %54
  %79 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %80 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @IEEE80211_IS_CHAN_HT(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %86 = call i32 @ieee80211_ht_node_leave(%struct.ieee80211_node* %85)
  br label %87

87:                                               ; preds = %84, %78
  %88 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %89 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @IEEE80211_IS_CHAN_ANYG(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %87
  %94 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %95 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @IEEE80211_IS_CHAN_FULL(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %101 = call i32 @ieee80211_node_leave_11g(%struct.ieee80211_node* %100)
  br label %102

102:                                              ; preds = %99, %93, %87
  %103 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %104 = call i32 @IEEE80211_UNLOCK(%struct.ieee80211com* %103)
  %105 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %106 = call i32 @ieee80211_sta_leave(%struct.ieee80211_node* %105)
  br label %107

107:                                              ; preds = %102, %38
  %108 = load %struct.ieee80211_node_table*, %struct.ieee80211_node_table** %5, align 8
  %109 = icmp ne %struct.ieee80211_node_table* %108, null
  br i1 %109, label %110, label %118

110:                                              ; preds = %107
  %111 = load %struct.ieee80211_node_table*, %struct.ieee80211_node_table** %5, align 8
  %112 = call i32 @IEEE80211_NODE_LOCK(%struct.ieee80211_node_table* %111)
  %113 = load %struct.ieee80211_node_table*, %struct.ieee80211_node_table** %5, align 8
  %114 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %115 = call i32 @node_reclaim(%struct.ieee80211_node_table* %113, %struct.ieee80211_node* %114)
  %116 = load %struct.ieee80211_node_table*, %struct.ieee80211_node_table** %5, align 8
  %117 = call i32 @IEEE80211_NODE_UNLOCK(%struct.ieee80211_node_table* %116)
  br label %121

118:                                              ; preds = %107
  %119 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %120 = call i32 @ieee80211_free_node(%struct.ieee80211_node* %119)
  br label %121

121:                                              ; preds = %118, %110
  ret void
}

declare dso_local i32 @IEEE80211_NOTE(%struct.ieee80211vap*, i32, %struct.ieee80211_node*, i8*, i32) #1

declare dso_local i32 @IEEE80211_NODE_AID(%struct.ieee80211_node*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @IEEE80211_LOCK(%struct.ieee80211com*) #1

declare dso_local i32 @IEEE80211_AID_CLR(%struct.ieee80211vap*, i64) #1

declare dso_local i64 @IEEE80211_IS_CHAN_VHT(i32) #1

declare dso_local i32 @ieee80211_vht_node_leave(%struct.ieee80211_node*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HT(i32) #1

declare dso_local i32 @ieee80211_ht_node_leave(%struct.ieee80211_node*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_ANYG(i32) #1

declare dso_local i64 @IEEE80211_IS_CHAN_FULL(i32) #1

declare dso_local i32 @ieee80211_node_leave_11g(%struct.ieee80211_node*) #1

declare dso_local i32 @IEEE80211_UNLOCK(%struct.ieee80211com*) #1

declare dso_local i32 @ieee80211_sta_leave(%struct.ieee80211_node*) #1

declare dso_local i32 @IEEE80211_NODE_LOCK(%struct.ieee80211_node_table*) #1

declare dso_local i32 @node_reclaim(%struct.ieee80211_node_table*, %struct.ieee80211_node*) #1

declare dso_local i32 @IEEE80211_NODE_UNLOCK(%struct.ieee80211_node_table*) #1

declare dso_local i32 @ieee80211_free_node(%struct.ieee80211_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
