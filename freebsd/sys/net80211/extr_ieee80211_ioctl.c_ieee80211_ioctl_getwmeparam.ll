; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ioctl.c_ieee80211_ioctl_getwmeparam.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ioctl.c_ieee80211_ioctl_getwmeparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { %struct.ieee80211com* }
%struct.ieee80211com = type { i32, %struct.ieee80211_wme_state }
%struct.ieee80211_wme_state = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.wmeParams* }
%struct.wmeParams = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.wmeParams* }
%struct.ieee80211req = type { i32, i32, i32 }

@IEEE80211_C_WME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IEEE80211_WMEPARAM_VAL = common dso_local global i32 0, align 4
@WME_NUM_AC = common dso_local global i32 0, align 4
@WME_AC_BE = common dso_local global i32 0, align 4
@IEEE80211_WMEPARAM_BSS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, %struct.ieee80211req*)* @ieee80211_ioctl_getwmeparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_ioctl_getwmeparam(%struct.ieee80211vap* %0, %struct.ieee80211req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca %struct.ieee80211req*, align 8
  %6 = alloca %struct.ieee80211com*, align 8
  %7 = alloca %struct.ieee80211_wme_state*, align 8
  %8 = alloca %struct.wmeParams*, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %4, align 8
  store %struct.ieee80211req* %1, %struct.ieee80211req** %5, align 8
  %10 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %10, i32 0, i32 0
  %12 = load %struct.ieee80211com*, %struct.ieee80211com** %11, align 8
  store %struct.ieee80211com* %12, %struct.ieee80211com** %6, align 8
  %13 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %14 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %13, i32 0, i32 1
  store %struct.ieee80211_wme_state* %14, %struct.ieee80211_wme_state** %7, align 8
  %15 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %16 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @IEEE80211_C_WME, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %3, align 4
  br label %115

23:                                               ; preds = %2
  %24 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %25 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @IEEE80211_WMEPARAM_VAL, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @WME_NUM_AC, align 4
  %31 = icmp sge i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load i32, i32* @WME_AC_BE, align 4
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %32, %23
  %35 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %36 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @IEEE80211_WMEPARAM_BSS, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %34
  %42 = load %struct.ieee80211_wme_state*, %struct.ieee80211_wme_state** %7, align 8
  %43 = getelementptr inbounds %struct.ieee80211_wme_state, %struct.ieee80211_wme_state* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load %struct.wmeParams*, %struct.wmeParams** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %45, i64 %47
  store %struct.wmeParams* %48, %struct.wmeParams** %8, align 8
  br label %57

49:                                               ; preds = %34
  %50 = load %struct.ieee80211_wme_state*, %struct.ieee80211_wme_state** %7, align 8
  %51 = getelementptr inbounds %struct.ieee80211_wme_state, %struct.ieee80211_wme_state* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %struct.wmeParams*, %struct.wmeParams** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %53, i64 %55
  store %struct.wmeParams* %56, %struct.wmeParams** %8, align 8
  br label %57

57:                                               ; preds = %49, %41
  %58 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %59 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  switch i32 %60, label %114 [
    i32 129, label %61
    i32 130, label %67
    i32 131, label %73
    i32 128, label %79
    i32 132, label %85
    i32 133, label %98
  ]

61:                                               ; preds = %57
  %62 = load %struct.wmeParams*, %struct.wmeParams** %8, align 8
  %63 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %66 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  br label %114

67:                                               ; preds = %57
  %68 = load %struct.wmeParams*, %struct.wmeParams** %8, align 8
  %69 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %72 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  br label %114

73:                                               ; preds = %57
  %74 = load %struct.wmeParams*, %struct.wmeParams** %8, align 8
  %75 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %78 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  br label %114

79:                                               ; preds = %57
  %80 = load %struct.wmeParams*, %struct.wmeParams** %8, align 8
  %81 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %84 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 4
  br label %114

85:                                               ; preds = %57
  %86 = load %struct.ieee80211_wme_state*, %struct.ieee80211_wme_state** %7, align 8
  %87 = getelementptr inbounds %struct.ieee80211_wme_state, %struct.ieee80211_wme_state* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load %struct.wmeParams*, %struct.wmeParams** %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %89, i64 %91
  store %struct.wmeParams* %92, %struct.wmeParams** %8, align 8
  %93 = load %struct.wmeParams*, %struct.wmeParams** %8, align 8
  %94 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %97 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 4
  br label %114

98:                                               ; preds = %57
  %99 = load %struct.ieee80211_wme_state*, %struct.ieee80211_wme_state** %7, align 8
  %100 = getelementptr inbounds %struct.ieee80211_wme_state, %struct.ieee80211_wme_state* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load %struct.wmeParams*, %struct.wmeParams** %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %102, i64 %104
  store %struct.wmeParams* %105, %struct.wmeParams** %8, align 8
  %106 = load %struct.wmeParams*, %struct.wmeParams** %8, align 8
  %107 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  %110 = xor i1 %109, true
  %111 = zext i1 %110 to i32
  %112 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %113 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 4
  br label %114

114:                                              ; preds = %57, %98, %85, %79, %73, %67, %61
  store i32 0, i32* %3, align 4
  br label %115

115:                                              ; preds = %114, %21
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
