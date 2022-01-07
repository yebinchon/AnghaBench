; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ioctl.c_ieee80211_ioctl_setmlme.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ioctl.c_ieee80211_ioctl_setmlme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ieee80211req = type { i32, i32 }
%struct.ieee80211req_mlme = type { i64, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IEEE80211_M_STA = common dso_local global i64 0, align 8
@IEEE80211_MLME_ASSOC = common dso_local global i64 0, align 8
@IEEE80211_M_IBSS = common dso_local global i64 0, align 8
@IEEE80211_M_AHDEMO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, %struct.ieee80211req*)* @ieee80211_ioctl_setmlme to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_ioctl_setmlme(%struct.ieee80211vap* %0, %struct.ieee80211req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca %struct.ieee80211req*, align 8
  %6 = alloca %struct.ieee80211req_mlme, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %4, align 8
  store %struct.ieee80211req* %1, %struct.ieee80211req** %5, align 8
  %8 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %9 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = icmp ne i64 %11, 24
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %3, align 4
  br label %87

15:                                               ; preds = %2
  %16 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %17 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @copyin(i32 %18, %struct.ieee80211req_mlme* %6, i32 24)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %3, align 4
  br label %87

24:                                               ; preds = %15
  %25 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %26 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @IEEE80211_M_STA, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %52

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.ieee80211req_mlme, %struct.ieee80211req_mlme* %6, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @IEEE80211_MLME_ASSOC, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %30
  %36 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %37 = getelementptr inbounds %struct.ieee80211req_mlme, %struct.ieee80211req_mlme* %6, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %40 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %46 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @setmlme_assoc_sta(%struct.ieee80211vap* %36, i32 %38, i32 %44, i32 %50)
  store i32 %51, i32* %3, align 4
  br label %87

52:                                               ; preds = %30, %24
  %53 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %54 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @IEEE80211_M_IBSS, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %64, label %58

58:                                               ; preds = %52
  %59 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %60 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @IEEE80211_M_AHDEMO, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %78

64:                                               ; preds = %58, %52
  %65 = getelementptr inbounds %struct.ieee80211req_mlme, %struct.ieee80211req_mlme* %6, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @IEEE80211_MLME_ASSOC, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %64
  %70 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %71 = getelementptr inbounds %struct.ieee80211req_mlme, %struct.ieee80211req_mlme* %6, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.ieee80211req_mlme, %struct.ieee80211req_mlme* %6, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.ieee80211req_mlme, %struct.ieee80211req_mlme* %6, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @setmlme_assoc_adhoc(%struct.ieee80211vap* %70, i32 %72, i32 %74, i32 %76)
  store i32 %77, i32* %3, align 4
  br label %87

78:                                               ; preds = %64, %58
  %79 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %80 = getelementptr inbounds %struct.ieee80211req_mlme, %struct.ieee80211req_mlme* %6, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.ieee80211req_mlme, %struct.ieee80211req_mlme* %6, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.ieee80211req_mlme, %struct.ieee80211req_mlme* %6, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @setmlme_common(%struct.ieee80211vap* %79, i64 %81, i32 %83, i32 %85)
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %78, %69, %35, %22, %13
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @copyin(i32, %struct.ieee80211req_mlme*, i32) #1

declare dso_local i32 @setmlme_assoc_sta(%struct.ieee80211vap*, i32, i32, i32) #1

declare dso_local i32 @setmlme_assoc_adhoc(%struct.ieee80211vap*, i32, i32, i32) #1

declare dso_local i32 @setmlme_common(%struct.ieee80211vap*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
