; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ioctl.c_setcurchan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ioctl.c_setcurchan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_channel = type { i32 }
%struct.ieee80211vap = type { i64, i64, %struct.ieee80211_channel*, %struct.TYPE_2__*, i32, i32, %struct.ieee80211com* }
%struct.TYPE_2__ = type { %struct.ieee80211_channel* }
%struct.ieee80211com = type { %struct.ieee80211_channel*, i8* }

@IEEE80211_CHAN_ANYC = common dso_local global %struct.ieee80211_channel* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@IEEE80211_M_HOSTAP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IEEE80211_M_IBSS = common dso_local global i64 0, align 8
@IEEE80211_S_RUN = common dso_local global i64 0, align 8
@IEEE80211_S_SLEEP = common dso_local global i64 0, align 8
@IEEE80211_M_MONITOR = common dso_local global i64 0, align 8
@IEEE80211_S_SCAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, %struct.ieee80211_channel*)* @setcurchan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setcurchan(%struct.ieee80211vap* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca %struct.ieee80211com*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %4, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %5, align 8
  %8 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %9 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %8, i32 0, i32 6
  %10 = load %struct.ieee80211com*, %struct.ieee80211com** %9, align 8
  store %struct.ieee80211com* %10, %struct.ieee80211com** %6, align 8
  %11 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %12 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** @IEEE80211_CHAN_ANYC, align 8
  %13 = icmp ne %struct.ieee80211_channel* %11, %12
  br i1 %13, label %14, label %78

14:                                               ; preds = %2
  %15 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %16 = call i64 @IEEE80211_IS_CHAN_RADAR(%struct.ieee80211_channel* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* @EBUSY, align 4
  store i32 %19, i32* %3, align 4
  br label %155

20:                                               ; preds = %14
  %21 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %22 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @IEEE80211_M_HOSTAP, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %20
  %27 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %28 = call i64 @IEEE80211_IS_CHAN_NOHOSTAP(%struct.ieee80211_channel* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %3, align 4
  br label %155

32:                                               ; preds = %26
  %33 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %34 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %35 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @check_mode_consistency(%struct.ieee80211_channel* %33, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %3, align 4
  br label %155

41:                                               ; preds = %32
  br label %56

42:                                               ; preds = %20
  %43 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %44 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @IEEE80211_M_IBSS, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %50 = call i64 @IEEE80211_IS_CHAN_NOADHOC(%struct.ieee80211_channel* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* @EINVAL, align 4
  store i32 %53, i32* %3, align 4
  br label %155

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54, %42
  br label %56

56:                                               ; preds = %55, %41
  %57 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %58 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @IEEE80211_S_RUN, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %68, label %62

62:                                               ; preds = %56
  %63 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %64 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @IEEE80211_S_SLEEP, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %62, %56
  %69 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %70 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %69, i32 0, i32 3
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %72, align 8
  %74 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %75 = icmp eq %struct.ieee80211_channel* %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  store i32 0, i32* %3, align 4
  br label %155

77:                                               ; preds = %68, %62
  br label %78

78:                                               ; preds = %77, %2
  %79 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %80 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %81 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %80, i32 0, i32 2
  store %struct.ieee80211_channel* %79, %struct.ieee80211_channel** %81, align 8
  store i32 0, i32* %7, align 4
  %82 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %83 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @IEEE80211_M_MONITOR, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %125

87:                                               ; preds = %78
  %88 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %89 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %88, i32 0, i32 2
  %90 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %89, align 8
  %91 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** @IEEE80211_CHAN_ANYC, align 8
  %92 = icmp ne %struct.ieee80211_channel* %90, %91
  br i1 %92, label %93, label %125

93:                                               ; preds = %87
  %94 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %95 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = call i64 @IFNET_IS_UP_RUNNING(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %112

99:                                               ; preds = %93
  %100 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %101 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %102 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %101, i32 0, i32 2
  %103 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %102, align 8
  %104 = call i32 @ieee80211_setcurchan(%struct.ieee80211com* %100, %struct.ieee80211_channel* %103)
  %105 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %106 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %105, i32 0, i32 0
  %107 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %106, align 8
  %108 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %109 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %108, i32 0, i32 3
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  store %struct.ieee80211_channel* %107, %struct.ieee80211_channel** %111, align 8
  br label %124

112:                                              ; preds = %93
  %113 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %114 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %113, i32 0, i32 2
  %115 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %114, align 8
  %116 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %117 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %116, i32 0, i32 0
  store %struct.ieee80211_channel* %115, %struct.ieee80211_channel** %117, align 8
  %118 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %119 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %118, i32 0, i32 0
  %120 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %119, align 8
  %121 = call i8* @ieee80211_get_ratetable(%struct.ieee80211_channel* %120)
  %122 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %123 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %122, i32 0, i32 1
  store i8* %121, i8** %123, align 8
  br label %124

124:                                              ; preds = %112, %99
  br label %153

125:                                              ; preds = %87, %78
  %126 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %127 = call i64 @IS_UP_AUTO(%struct.ieee80211vap* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %125
  %130 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %131 = load i32, i32* @IEEE80211_S_SCAN, align 4
  %132 = call i32 @ieee80211_new_state(%struct.ieee80211vap* %130, i32 %131, i32 0)
  br label %152

133:                                              ; preds = %125
  %134 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %135 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %134, i32 0, i32 2
  %136 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %135, align 8
  %137 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** @IEEE80211_CHAN_ANYC, align 8
  %138 = icmp ne %struct.ieee80211_channel* %136, %137
  br i1 %138, label %139, label %151

139:                                              ; preds = %133
  %140 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %141 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %140, i32 0, i32 2
  %142 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %141, align 8
  %143 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %144 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %143, i32 0, i32 0
  store %struct.ieee80211_channel* %142, %struct.ieee80211_channel** %144, align 8
  %145 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %146 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %145, i32 0, i32 0
  %147 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %146, align 8
  %148 = call i8* @ieee80211_get_ratetable(%struct.ieee80211_channel* %147)
  %149 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %150 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %149, i32 0, i32 1
  store i8* %148, i8** %150, align 8
  br label %151

151:                                              ; preds = %139, %133
  br label %152

152:                                              ; preds = %151, %129
  br label %153

153:                                              ; preds = %152, %124
  %154 = load i32, i32* %7, align 4
  store i32 %154, i32* %3, align 4
  br label %155

155:                                              ; preds = %153, %76, %52, %39, %30, %18
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local i64 @IEEE80211_IS_CHAN_RADAR(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_NOHOSTAP(%struct.ieee80211_channel*) #1

declare dso_local i32 @check_mode_consistency(%struct.ieee80211_channel*, i32) #1

declare dso_local i64 @IEEE80211_IS_CHAN_NOADHOC(%struct.ieee80211_channel*) #1

declare dso_local i64 @IFNET_IS_UP_RUNNING(i32) #1

declare dso_local i32 @ieee80211_setcurchan(%struct.ieee80211com*, %struct.ieee80211_channel*) #1

declare dso_local i8* @ieee80211_get_ratetable(%struct.ieee80211_channel*) #1

declare dso_local i64 @IS_UP_AUTO(%struct.ieee80211vap*) #1

declare dso_local i32 @ieee80211_new_state(%struct.ieee80211vap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
