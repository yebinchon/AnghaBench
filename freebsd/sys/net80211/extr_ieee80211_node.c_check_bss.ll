; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_node.c_check_bss.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_node.c_check_bss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i64, i32, i64, i32, i32 }
%struct.ieee80211_node = type { i32, i32, i32, i32, %struct.ieee80211com* }
%struct.ieee80211com = type { i32 }

@IEEE80211_M_IBSS = common dso_local global i64 0, align 8
@IEEE80211_CAPINFO_IBSS = common dso_local global i32 0, align 4
@IEEE80211_CAPINFO_ESS = common dso_local global i32 0, align 4
@IEEE80211_F_PRIVACY = common dso_local global i32 0, align 4
@IEEE80211_CAPINFO_PRIVACY = common dso_local global i32 0, align 4
@IEEE80211_F_JOIN = common dso_local global i32 0, align 4
@IEEE80211_F_DONEGO = common dso_local global i32 0, align 4
@IEEE80211_F_DOFRATE = common dso_local global i32 0, align 4
@IEEE80211_RATE_BASIC = common dso_local global i32 0, align 4
@IEEE80211_F_DESBSSID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, %struct.ieee80211_node*)* @check_bss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_bss(%struct.ieee80211vap* %0, %struct.ieee80211_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca %struct.ieee80211_node*, align 8
  %6 = alloca %struct.ieee80211com*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %4, align 8
  store %struct.ieee80211_node* %1, %struct.ieee80211_node** %5, align 8
  %8 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %9 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %8, i32 0, i32 4
  %10 = load %struct.ieee80211com*, %struct.ieee80211com** %9, align 8
  store %struct.ieee80211com* %10, %struct.ieee80211com** %6, align 8
  %11 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %12 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %15 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %16 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ieee80211_chan2ieee(%struct.ieee80211com* %14, i32 %17)
  %19 = call i64 @isclr(i32 %13, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %120

22:                                               ; preds = %2
  %23 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %24 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IEEE80211_M_IBSS, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %22
  %29 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %30 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @IEEE80211_CAPINFO_IBSS, align 4
  %33 = and i32 %31, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %120

36:                                               ; preds = %28
  br label %46

37:                                               ; preds = %22
  %38 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %39 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @IEEE80211_CAPINFO_ESS, align 4
  %42 = and i32 %40, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %120

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45, %36
  %47 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %48 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @IEEE80211_F_PRIVACY, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %46
  %54 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %55 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @IEEE80211_CAPINFO_PRIVACY, align 4
  %58 = and i32 %56, %57
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %120

61:                                               ; preds = %53
  br label %71

62:                                               ; preds = %46
  %63 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %64 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @IEEE80211_CAPINFO_PRIVACY, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %120

70:                                               ; preds = %62
  br label %71

71:                                               ; preds = %70, %61
  %72 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %73 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %74 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %73, i32 0, i32 2
  %75 = load i32, i32* @IEEE80211_F_JOIN, align 4
  %76 = load i32, i32* @IEEE80211_F_DONEGO, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @IEEE80211_F_DOFRATE, align 4
  %79 = or i32 %77, %78
  %80 = call i32 @ieee80211_fix_rate(%struct.ieee80211_node* %72, i32* %74, i32 %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @IEEE80211_RATE_BASIC, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %71
  store i32 0, i32* %3, align 4
  br label %120

86:                                               ; preds = %71
  %87 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %88 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %86
  %92 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %93 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %94 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %97 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @match_ssid(%struct.ieee80211_node* %92, i64 %95, i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %91
  store i32 0, i32* %3, align 4
  br label %120

102:                                              ; preds = %91, %86
  %103 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %104 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @IEEE80211_F_DESBSSID, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %102
  %110 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %111 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %114 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @IEEE80211_ADDR_EQ(i32 %112, i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %109
  store i32 0, i32* %3, align 4
  br label %120

119:                                              ; preds = %109, %102
  store i32 1, i32* %3, align 4
  br label %120

120:                                              ; preds = %119, %118, %101, %85, %69, %60, %44, %35, %21
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i64 @isclr(i32, i32) #1

declare dso_local i32 @ieee80211_chan2ieee(%struct.ieee80211com*, i32) #1

declare dso_local i32 @ieee80211_fix_rate(%struct.ieee80211_node*, i32*, i32) #1

declare dso_local i32 @match_ssid(%struct.ieee80211_node*, i64, i32) #1

declare dso_local i32 @IEEE80211_ADDR_EQ(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
