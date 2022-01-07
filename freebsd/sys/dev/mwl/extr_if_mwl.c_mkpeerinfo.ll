; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mkpeerinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mkpeerinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.ieee80211_node = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ieee80211vap* }
%struct.ieee80211vap = type { i32 }

@IEEE80211_NODE_HT = common dso_local global i32 0, align 4
@IEEE80211_FHT_SHORTGI40 = common dso_local global i32 0, align 4
@IEEE80211_HTCAP_SHORTGI40 = common dso_local global i32 0, align 4
@IEEE80211_FHT_SHORTGI20 = common dso_local global i32 0, align 4
@IEEE80211_HTCAP_SHORTGI20 = common dso_local global i32 0, align 4
@IEEE80211_HTCAP_CHWIDTH40 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (%struct.TYPE_7__*, %struct.ieee80211_node*)* @mkpeerinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @mkpeerinfo(%struct.TYPE_7__* %0, %struct.ieee80211_node* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.ieee80211_node*, align 8
  %5 = alloca %struct.ieee80211vap*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.ieee80211_node* %1, %struct.ieee80211_node** %4, align 8
  %6 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %7 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %6, i32 0, i32 11
  %8 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  store %struct.ieee80211vap* %8, %struct.ieee80211vap** %5, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %10 = call i32 @memset(%struct.TYPE_7__* %9, i32 0, i32 36)
  %11 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %11, i32 0, i32 10
  %13 = call i32 @get_rate_bitmap(i32* %12)
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 5
  store i32 %13, i32* %15, align 4
  %16 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %17 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %16, i32 0, i32 9
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 4
  %21 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %22 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @IEEE80211_NODE_HT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %107

27:                                               ; preds = %2
  %28 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %29 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %28, i32 0, i32 8
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %34 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %39 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %38, i32 0, i32 6
  %40 = call i32 @get_htrate_bitmap(i32* %39)
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %44 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 3
  store i32 %45, i32* %48, align 4
  %49 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %50 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  store i32 %51, i32* %54, align 4
  %55 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %56 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  store i32 %57, i32* %60, align 4
  %61 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %62 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 4
  %67 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %68 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @IEEE80211_FHT_SHORTGI40, align 4
  %71 = and i32 %69, %70
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %27
  %74 = load i32, i32* @IEEE80211_HTCAP_SHORTGI40, align 4
  %75 = xor i32 %74, -1
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %73, %27
  %81 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %82 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @IEEE80211_FHT_SHORTGI20, align 4
  %85 = and i32 %83, %84
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %80
  %88 = load i32, i32* @IEEE80211_HTCAP_SHORTGI20, align 4
  %89 = xor i32 %88, -1
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, %89
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %87, %80
  %95 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %96 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 40
  br i1 %98, label %99, label %106

99:                                               ; preds = %94
  %100 = load i32, i32* @IEEE80211_HTCAP_CHWIDTH40, align 4
  %101 = xor i32 %100, -1
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, %101
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %99, %94
  br label %107

107:                                              ; preds = %106, %2
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  ret %struct.TYPE_7__* %108
}

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @get_rate_bitmap(i32*) #1

declare dso_local i32 @get_htrate_bitmap(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
