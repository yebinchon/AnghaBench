; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_node.c_ieee80211_node_setuptxparms.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_node.c_ieee80211_node_setuptxparms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i32, i32*, i32, %struct.ieee80211vap* }
%struct.ieee80211vap = type { i32* }

@IEEE80211_NODE_VHT = common dso_local global i32 0, align 4
@IEEE80211_MODE_VHT_5GHZ = common dso_local global i32 0, align 4
@IEEE80211_MODE_VHT_2GHZ = common dso_local global i32 0, align 4
@IEEE80211_NODE_HT = common dso_local global i32 0, align 4
@IEEE80211_MODE_11NA = common dso_local global i32 0, align 4
@IEEE80211_MODE_11NG = common dso_local global i32 0, align 4
@IEEE80211_MODE_STURBO_A = common dso_local global i32 0, align 4
@IEEE80211_MODE_HALF = common dso_local global i32 0, align 4
@IEEE80211_MODE_QUARTER = common dso_local global i32 0, align 4
@IEEE80211_MODE_11A = common dso_local global i32 0, align 4
@IEEE80211_NODE_ERP = common dso_local global i32 0, align 4
@IEEE80211_MODE_11G = common dso_local global i32 0, align 4
@IEEE80211_MODE_11B = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_node_setuptxparms(%struct.ieee80211_node* %0) #0 {
  %2 = alloca %struct.ieee80211_node*, align 8
  %3 = alloca %struct.ieee80211vap*, align 8
  %4 = alloca i32, align 4
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %2, align 8
  %5 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %5, i32 0, i32 3
  %7 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  store %struct.ieee80211vap* %7, %struct.ieee80211vap** %3, align 8
  %8 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %9 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @IEEE80211_NODE_VHT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %1
  %15 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %16 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @IEEE80211_IS_CHAN_5GHZ(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* @IEEE80211_MODE_VHT_5GHZ, align 4
  store i32 %21, i32* %4, align 4
  br label %24

22:                                               ; preds = %14
  %23 = load i32, i32* @IEEE80211_MODE_VHT_2GHZ, align 4
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %22, %20
  br label %98

25:                                               ; preds = %1
  %26 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %27 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @IEEE80211_NODE_HT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %25
  %33 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %34 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @IEEE80211_IS_CHAN_5GHZ(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @IEEE80211_MODE_11NA, align 4
  store i32 %39, i32* %4, align 4
  br label %42

40:                                               ; preds = %32
  %41 = load i32, i32* @IEEE80211_MODE_11NG, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %40, %38
  br label %97

43:                                               ; preds = %25
  %44 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %45 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @IEEE80211_IS_CHAN_ST(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* @IEEE80211_MODE_STURBO_A, align 4
  store i32 %50, i32* %4, align 4
  br label %96

51:                                               ; preds = %43
  %52 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %53 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @IEEE80211_IS_CHAN_HALF(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* @IEEE80211_MODE_HALF, align 4
  store i32 %58, i32* %4, align 4
  br label %95

59:                                               ; preds = %51
  %60 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %61 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @IEEE80211_IS_CHAN_QUARTER(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* @IEEE80211_MODE_QUARTER, align 4
  store i32 %66, i32* %4, align 4
  br label %94

67:                                               ; preds = %59
  %68 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %69 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @IEEE80211_IS_CHAN_A(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* @IEEE80211_MODE_11A, align 4
  store i32 %74, i32* %4, align 4
  br label %93

75:                                               ; preds = %67
  %76 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %77 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @IEEE80211_IS_CHAN_108G(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %75
  %82 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %83 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @IEEE80211_NODE_ERP, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %81, %75
  %89 = load i32, i32* @IEEE80211_MODE_11G, align 4
  store i32 %89, i32* %4, align 4
  br label %92

90:                                               ; preds = %81
  %91 = load i32, i32* @IEEE80211_MODE_11B, align 4
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %90, %88
  br label %93

93:                                               ; preds = %92, %73
  br label %94

94:                                               ; preds = %93, %65
  br label %95

95:                                               ; preds = %94, %57
  br label %96

96:                                               ; preds = %95, %49
  br label %97

97:                                               ; preds = %96, %42
  br label %98

98:                                               ; preds = %97, %24
  %99 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %100 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %4, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %106 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %105, i32 0, i32 1
  store i32* %104, i32** %106, align 8
  ret void
}

declare dso_local i64 @IEEE80211_IS_CHAN_5GHZ(i32) #1

declare dso_local i64 @IEEE80211_IS_CHAN_ST(i32) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HALF(i32) #1

declare dso_local i64 @IEEE80211_IS_CHAN_QUARTER(i32) #1

declare dso_local i64 @IEEE80211_IS_CHAN_A(i32) #1

declare dso_local i64 @IEEE80211_IS_CHAN_108G(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
