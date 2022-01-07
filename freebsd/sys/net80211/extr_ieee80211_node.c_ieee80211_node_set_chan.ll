; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_node.c_ieee80211_node_set_chan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_node.c_ieee80211_node_set_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_channel = type { i32 }
%struct.ieee80211_node = type { i32, i32*, i32, %struct.ieee80211_channel*, %struct.ieee80211vap*, %struct.ieee80211com* }
%struct.ieee80211vap = type { i32, i32, i32* }
%struct.ieee80211com = type { i32 }

@IEEE80211_CHAN_ANYC = common dso_local global %struct.ieee80211_channel* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"no channel\00", align 1
@IEEE80211_MODE_11NA = common dso_local global i32 0, align 4
@IEEE80211_FHT_PUREN = common dso_local global i32 0, align 4
@IEEE80211_MODE_11A = common dso_local global i32 0, align 4
@IEEE80211_MODE_11NG = common dso_local global i32 0, align 4
@IEEE80211_MODE_11G = common dso_local global i32 0, align 4
@IEEE80211_F_PUREG = common dso_local global i32 0, align 4
@IEEE80211_MODE_11B = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_node_set_chan(%struct.ieee80211_node* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.ieee80211_node*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca %struct.ieee80211com*, align 8
  %6 = alloca %struct.ieee80211vap*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  %8 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %8, i32 0, i32 5
  %10 = load %struct.ieee80211com*, %struct.ieee80211com** %9, align 8
  store %struct.ieee80211com* %10, %struct.ieee80211com** %5, align 8
  %11 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %12 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %11, i32 0, i32 4
  %13 = load %struct.ieee80211vap*, %struct.ieee80211vap** %12, align 8
  store %struct.ieee80211vap* %13, %struct.ieee80211vap** %6, align 8
  %14 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %15 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** @IEEE80211_CHAN_ANYC, align 8
  %16 = icmp ne %struct.ieee80211_channel* %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @KASSERT(i32 %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %20 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %21 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %20, i32 0, i32 3
  store %struct.ieee80211_channel* %19, %struct.ieee80211_channel** %21, align 8
  %22 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %23 = call i32 @ieee80211_chan2mode(%struct.ieee80211_channel* %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %25 = call i64 @IEEE80211_IS_CHAN_HT(%struct.ieee80211_channel* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %74

27:                                               ; preds = %2
  %28 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %29 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %30 = call i32* @ieee80211_get_suphtrates(%struct.ieee80211com* %28, %struct.ieee80211_channel* %29)
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %33 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @IEEE80211_MODE_11NA, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %27
  %38 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %39 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @IEEE80211_FHT_PUREN, align 4
  %42 = and i32 %40, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* @IEEE80211_MODE_11A, align 4
  store i32 %45, i32* %7, align 4
  br label %60

46:                                               ; preds = %37, %27
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @IEEE80211_MODE_11NG, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %46
  %51 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %52 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @IEEE80211_FHT_PUREN, align 4
  %55 = and i32 %53, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* @IEEE80211_MODE_11G, align 4
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %57, %50, %46
  br label %60

60:                                               ; preds = %59, %44
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @IEEE80211_MODE_11G, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %60
  %65 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %66 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @IEEE80211_F_PUREG, align 4
  %69 = and i32 %67, %68
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = load i32, i32* @IEEE80211_MODE_11B, align 4
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %71, %64, %60
  br label %74

74:                                               ; preds = %73, %2
  %75 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %76 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %82 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %81, i32 0, i32 1
  store i32* %80, i32** %82, align 8
  %83 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %84 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %85 = call i32* @ieee80211_get_suprates(%struct.ieee80211com* %83, %struct.ieee80211_channel* %84)
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %88 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @ieee80211_chan2mode(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HT(%struct.ieee80211_channel*) #1

declare dso_local i32* @ieee80211_get_suphtrates(%struct.ieee80211com*, %struct.ieee80211_channel*) #1

declare dso_local i32* @ieee80211_get_suprates(%struct.ieee80211com*, %struct.ieee80211_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
