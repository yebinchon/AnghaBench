; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ieee80211_decap_amsdu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ieee80211_decap_amsdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i32, %struct.ieee80211vap* }
%struct.ieee80211vap = type { i32 (%struct.ieee80211vap*, %struct.ieee80211_node.0*, %struct.mbuf*)*, %struct.TYPE_4__ }
%struct.ieee80211_node.0 = type opaque
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.mbuf = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@IEEE80211_MSG_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"a-msdu\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"decap failed\00", align 1
@M_NOWAIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"unable to split encapsulated frames\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbuf* @ieee80211_decap_amsdu(%struct.ieee80211_node* %0, %struct.mbuf* %1) #0 {
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca %struct.ieee80211_node*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.ieee80211vap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mbuf*, align 8
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  %9 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %10 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %9, i32 0, i32 1
  %11 = load %struct.ieee80211vap*, %struct.ieee80211vap** %10, align 8
  store %struct.ieee80211vap* %11, %struct.ieee80211vap** %6, align 8
  %12 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %13 = call i32 @m_adj(%struct.mbuf* %12, i32 4)
  %14 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %15 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 8
  br label %19

19:                                               ; preds = %65, %2
  %20 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %21 = call %struct.mbuf* @ieee80211_decap1(%struct.mbuf* %20, i32* %7)
  store %struct.mbuf* %21, %struct.mbuf** %5, align 8
  %22 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %23 = icmp eq %struct.mbuf* %22, null
  br i1 %23, label %24, label %36

24:                                               ; preds = %19
  %25 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %26 = load i32, i32* @IEEE80211_MSG_ANY, align 4
  %27 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %28 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @IEEE80211_DISCARD_MAC(%struct.ieee80211vap* %25, i32 %26, i32 %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %31 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %32 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  store %struct.mbuf* null, %struct.mbuf** %3, align 8
  br label %83

36:                                               ; preds = %19
  %37 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %38 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %81

44:                                               ; preds = %36
  %45 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @M_NOWAIT, align 4
  %48 = call %struct.mbuf* @m_split(%struct.mbuf* %45, i32 %46, i32 %47)
  store %struct.mbuf* %48, %struct.mbuf** %8, align 8
  %49 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %50 = icmp eq %struct.mbuf* %49, null
  br i1 %50, label %51, label %65

51:                                               ; preds = %44
  %52 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %53 = load i32, i32* @IEEE80211_MSG_ANY, align 4
  %54 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %55 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @IEEE80211_DISCARD_MAC(%struct.ieee80211vap* %52, i32 %53, i32 %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %58 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %59 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 8
  %63 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %64 = call i32 @m_freem(%struct.mbuf* %63)
  store %struct.mbuf* null, %struct.mbuf** %3, align 8
  br label %83

65:                                               ; preds = %44
  %66 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %67 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %66, i32 0, i32 0
  %68 = load i32 (%struct.ieee80211vap*, %struct.ieee80211_node.0*, %struct.mbuf*)*, i32 (%struct.ieee80211vap*, %struct.ieee80211_node.0*, %struct.mbuf*)** %67, align 8
  %69 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %70 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %71 = bitcast %struct.ieee80211_node* %70 to %struct.ieee80211_node.0*
  %72 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %73 = call i32 %68(%struct.ieee80211vap* %69, %struct.ieee80211_node.0* %71, %struct.mbuf* %72)
  %74 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  store %struct.mbuf* %74, %struct.mbuf** %5, align 8
  %75 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @roundup2(i32 %76, i32 4)
  %78 = load i32, i32* %7, align 4
  %79 = sub nsw i32 %77, %78
  %80 = call i32 @m_adj(%struct.mbuf* %75, i32 %79)
  br label %19

81:                                               ; preds = %43
  %82 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  store %struct.mbuf* %82, %struct.mbuf** %3, align 8
  br label %83

83:                                               ; preds = %81, %51, %24
  %84 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  ret %struct.mbuf* %84
}

declare dso_local i32 @m_adj(%struct.mbuf*, i32) #1

declare dso_local %struct.mbuf* @ieee80211_decap1(%struct.mbuf*, i32*) #1

declare dso_local i32 @IEEE80211_DISCARD_MAC(%struct.ieee80211vap*, i32, i32, i8*, i8*, i8*) #1

declare dso_local %struct.mbuf* @m_split(%struct.mbuf*, i32, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @roundup2(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
