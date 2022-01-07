; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_node.c_ieee80211_sta_join1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_node.c_ieee80211_sta_join1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i32, i32, %struct.ieee80211_node_table*, i32, %struct.ieee80211com*, %struct.ieee80211vap* }
%struct.ieee80211_node_table = type { i32 }
%struct.ieee80211com = type { i32 }
%struct.ieee80211vap = type { i64, i64, %struct.ieee80211_node* }

@IEEE80211_S_RUN = common dso_local global i64 0, align 8
@IEEE80211_F_DODEL = common dso_local global i32 0, align 4
@IEEE80211_F_JOIN = common dso_local global i32 0, align 4
@IEEE80211_M_STA = common dso_local global i64 0, align 8
@IEEE80211_S_ASSOC = common dso_local global i64 0, align 8
@IEEE80211_S_AUTH = common dso_local global i64 0, align 8
@IEEE80211_FC0_SUBTYPE_DEAUTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_node*)* @ieee80211_sta_join1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_sta_join1(%struct.ieee80211_node* %0) #0 {
  %2 = alloca %struct.ieee80211_node*, align 8
  %3 = alloca %struct.ieee80211vap*, align 8
  %4 = alloca %struct.ieee80211com*, align 8
  %5 = alloca %struct.ieee80211_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_node_table*, align 8
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %2, align 8
  %8 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %9 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %8, i32 0, i32 5
  %10 = load %struct.ieee80211vap*, %struct.ieee80211vap** %9, align 8
  store %struct.ieee80211vap* %10, %struct.ieee80211vap** %3, align 8
  %11 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %12 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %11, i32 0, i32 4
  %13 = load %struct.ieee80211com*, %struct.ieee80211com** %12, align 8
  store %struct.ieee80211com* %13, %struct.ieee80211com** %4, align 8
  %14 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %15 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %14, i32 0, i32 2
  %16 = load %struct.ieee80211_node*, %struct.ieee80211_node** %15, align 8
  store %struct.ieee80211_node* %16, %struct.ieee80211_node** %5, align 8
  %17 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %18 = icmp ne %struct.ieee80211_node* %17, null
  br i1 %18, label %19, label %34

19:                                               ; preds = %1
  %20 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %21 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IEEE80211_S_RUN, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %19
  %26 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %27 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %30 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @IEEE80211_ADDR_EQ(i32 %28, i32 %31)
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %25, %19, %1
  %35 = phi i1 [ false, %19 ], [ false, %1 ], [ %33, %25 ]
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %6, align 4
  %37 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %38 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %39 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %38, i32 0, i32 2
  store %struct.ieee80211_node* %37, %struct.ieee80211_node** %39, align 8
  %40 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %41 = icmp ne %struct.ieee80211_node* %40, null
  br i1 %41, label %42, label %58

42:                                               ; preds = %34
  %43 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %44 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %43, i32 0, i32 2
  %45 = load %struct.ieee80211_node_table*, %struct.ieee80211_node_table** %44, align 8
  store %struct.ieee80211_node_table* %45, %struct.ieee80211_node_table** %7, align 8
  %46 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %47 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %48 = call i32 @copy_bss(%struct.ieee80211_node* %46, %struct.ieee80211_node* %47)
  %49 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %50 = call i32 @ieee80211_node_decref(%struct.ieee80211_node* %49)
  %51 = load %struct.ieee80211_node_table*, %struct.ieee80211_node_table** %7, align 8
  %52 = call i32 @IEEE80211_NODE_LOCK(%struct.ieee80211_node_table* %51)
  %53 = load %struct.ieee80211_node_table*, %struct.ieee80211_node_table** %7, align 8
  %54 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %55 = call i32 @node_reclaim(%struct.ieee80211_node_table* %53, %struct.ieee80211_node* %54)
  %56 = load %struct.ieee80211_node_table*, %struct.ieee80211_node_table** %7, align 8
  %57 = call i32 @IEEE80211_NODE_UNLOCK(%struct.ieee80211_node_table* %56)
  store %struct.ieee80211_node* null, %struct.ieee80211_node** %5, align 8
  br label %58

58:                                               ; preds = %42, %34
  %59 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %60 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %59, i32 0, i32 2
  %61 = load %struct.ieee80211_node*, %struct.ieee80211_node** %60, align 8
  %62 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %63 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %62, i32 0, i32 2
  %64 = load %struct.ieee80211_node*, %struct.ieee80211_node** %63, align 8
  %65 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %64, i32 0, i32 1
  %66 = load i32, i32* @IEEE80211_F_DODEL, align 4
  %67 = load i32, i32* @IEEE80211_F_JOIN, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @ieee80211_fix_rate(%struct.ieee80211_node* %61, i32* %65, i32 %68)
  %70 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %71 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %72 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @ieee80211_setcurchan(%struct.ieee80211com* %70, i32 %73)
  %75 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %76 = call i32 @ieee80211_reset_erp(%struct.ieee80211com* %75)
  %77 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %78 = call i32 @ieee80211_wme_initparams(%struct.ieee80211vap* %77)
  %79 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %80 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @IEEE80211_M_STA, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %97

84:                                               ; preds = %58
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %89 = load i64, i64* @IEEE80211_S_ASSOC, align 8
  %90 = call i32 @ieee80211_new_state(%struct.ieee80211vap* %88, i64 %89, i32 1)
  br label %96

91:                                               ; preds = %84
  %92 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %93 = load i64, i64* @IEEE80211_S_AUTH, align 8
  %94 = load i32, i32* @IEEE80211_FC0_SUBTYPE_DEAUTH, align 4
  %95 = call i32 @ieee80211_new_state(%struct.ieee80211vap* %92, i64 %93, i32 %94)
  br label %96

96:                                               ; preds = %91, %87
  br label %101

97:                                               ; preds = %58
  %98 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %99 = load i64, i64* @IEEE80211_S_RUN, align 8
  %100 = call i32 @ieee80211_new_state(%struct.ieee80211vap* %98, i64 %99, i32 -1)
  br label %101

101:                                              ; preds = %97, %96
  ret i32 1
}

declare dso_local i64 @IEEE80211_ADDR_EQ(i32, i32) #1

declare dso_local i32 @copy_bss(%struct.ieee80211_node*, %struct.ieee80211_node*) #1

declare dso_local i32 @ieee80211_node_decref(%struct.ieee80211_node*) #1

declare dso_local i32 @IEEE80211_NODE_LOCK(%struct.ieee80211_node_table*) #1

declare dso_local i32 @node_reclaim(%struct.ieee80211_node_table*, %struct.ieee80211_node*) #1

declare dso_local i32 @IEEE80211_NODE_UNLOCK(%struct.ieee80211_node_table*) #1

declare dso_local i32 @ieee80211_fix_rate(%struct.ieee80211_node*, i32*, i32) #1

declare dso_local i32 @ieee80211_setcurchan(%struct.ieee80211com*, i32) #1

declare dso_local i32 @ieee80211_reset_erp(%struct.ieee80211com*) #1

declare dso_local i32 @ieee80211_wme_initparams(%struct.ieee80211vap*) #1

declare dso_local i32 @ieee80211_new_state(%struct.ieee80211vap*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
