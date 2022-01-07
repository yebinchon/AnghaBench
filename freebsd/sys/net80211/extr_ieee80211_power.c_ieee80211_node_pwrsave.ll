; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_power.c_ieee80211_node_pwrsave.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_power.c_ieee80211_node_pwrsave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i32, %struct.TYPE_2__, %struct.ieee80211vap* }
%struct.TYPE_2__ = type { i64 }
%struct.ieee80211vap = type { i32, i32 (%struct.ieee80211vap*, i32)*, i32 (%struct.ieee80211_node.0*, i32)* }
%struct.ieee80211_node.0 = type opaque

@IEEE80211_NODE_PWR_MGT = common dso_local global i32 0, align 4
@IEEE80211_MSG_POWER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"power save mode on, %u sta's in ps mode\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"power save mode off, %u sta's in ps mode\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_node_pwrsave(%struct.ieee80211_node* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211vap*, align 8
  %6 = alloca i32, align 4
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %7, i32 0, i32 2
  %9 = load %struct.ieee80211vap*, %struct.ieee80211vap** %8, align 8
  store %struct.ieee80211vap* %9, %struct.ieee80211vap** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %49

12:                                               ; preds = %2
  %13 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %14 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @IEEE80211_NODE_PWR_MGT, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %12
  %20 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %21 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 8
  store i32 1, i32* %6, align 4
  br label %24

24:                                               ; preds = %19, %12
  %25 = load i32, i32* @IEEE80211_NODE_PWR_MGT, align 4
  %26 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %27 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %31 = load i32, i32* @IEEE80211_MSG_POWER, align 4
  %32 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %33 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %34 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @IEEE80211_NOTE(%struct.ieee80211vap* %30, i32 %31, %struct.ieee80211_node* %32, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %24
  %40 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %41 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %40, i32 0, i32 1
  %42 = load i32 (%struct.ieee80211vap*, i32)*, i32 (%struct.ieee80211vap*, i32)** %41, align 8
  %43 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %44 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %45 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 %42(%struct.ieee80211vap* %43, i32 %46)
  br label %48

48:                                               ; preds = %39, %24
  br label %108

49:                                               ; preds = %2
  %50 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %51 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @IEEE80211_NODE_PWR_MGT, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %58 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %58, align 8
  store i32 1, i32* %6, align 4
  br label %61

61:                                               ; preds = %56, %49
  %62 = load i32, i32* @IEEE80211_NODE_PWR_MGT, align 4
  %63 = xor i32 %62, -1
  %64 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %65 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = and i32 %66, %63
  store i32 %67, i32* %65, align 8
  %68 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %69 = load i32, i32* @IEEE80211_MSG_POWER, align 4
  %70 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %71 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %72 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @IEEE80211_NOTE(%struct.ieee80211vap* %68, i32 %69, %struct.ieee80211_node* %70, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %76 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %75, i32 0, i32 2
  %77 = load i32 (%struct.ieee80211_node.0*, i32)*, i32 (%struct.ieee80211_node.0*, i32)** %76, align 8
  %78 = icmp ne i32 (%struct.ieee80211_node.0*, i32)* %77, null
  br i1 %78, label %79, label %86

79:                                               ; preds = %61
  %80 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %81 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %80, i32 0, i32 2
  %82 = load i32 (%struct.ieee80211_node.0*, i32)*, i32 (%struct.ieee80211_node.0*, i32)** %81, align 8
  %83 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %84 = bitcast %struct.ieee80211_node* %83 to %struct.ieee80211_node.0*
  %85 = call i32 %82(%struct.ieee80211_node.0* %84, i32 0)
  br label %86

86:                                               ; preds = %79, %61
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %86
  %90 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %91 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %90, i32 0, i32 1
  %92 = load i32 (%struct.ieee80211vap*, i32)*, i32 (%struct.ieee80211vap*, i32)** %91, align 8
  %93 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %94 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %95 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 %92(%struct.ieee80211vap* %93, i32 %96)
  br label %98

98:                                               ; preds = %89, %86
  %99 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %100 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %98
  %105 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %106 = call i32 @pwrsave_flushq(%struct.ieee80211_node* %105)
  br label %107

107:                                              ; preds = %104, %98
  br label %108

108:                                              ; preds = %107, %48
  ret void
}

declare dso_local i32 @IEEE80211_NOTE(%struct.ieee80211vap*, i32, %struct.ieee80211_node*, i8*, i32) #1

declare dso_local i32 @pwrsave_flushq(%struct.ieee80211_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
