; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ioctl.c_ieee80211_ioctl_chanswitch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ioctl.c_ieee80211_ioctl_chanswitch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i64, i32, %struct.ieee80211com* }
%struct.ieee80211com = type { i32 }
%struct.ieee80211req = type { i32, i32 }
%struct.ieee80211_chanswitch_req = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ieee80211_channel = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IEEE80211_M_HOSTAP = common dso_local global i64 0, align 8
@IEEE80211_F_DOTH = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@IEEE80211_F_CSAPENDING = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, %struct.ieee80211req*)* @ieee80211_ioctl_chanswitch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_ioctl_chanswitch(%struct.ieee80211vap* %0, %struct.ieee80211req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca %struct.ieee80211req*, align 8
  %6 = alloca %struct.ieee80211com*, align 8
  %7 = alloca %struct.ieee80211_chanswitch_req, align 8
  %8 = alloca %struct.ieee80211_channel*, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %4, align 8
  store %struct.ieee80211req* %1, %struct.ieee80211req** %5, align 8
  %10 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %10, i32 0, i32 2
  %12 = load %struct.ieee80211com*, %struct.ieee80211com** %11, align 8
  store %struct.ieee80211com* %12, %struct.ieee80211com** %6, align 8
  %13 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ne i64 %16, 24
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %3, align 4
  br label %88

20:                                               ; preds = %2
  %21 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %22 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @copyin(i32 %23, %struct.ieee80211_chanswitch_req* %7, i32 24)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %3, align 4
  br label %88

29:                                               ; preds = %20
  %30 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %31 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @IEEE80211_M_HOSTAP, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %42, label %35

35:                                               ; preds = %29
  %36 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %37 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @IEEE80211_F_DOTH, align 4
  %40 = and i32 %38, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35, %29
  %43 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %43, i32* %3, align 4
  br label %88

44:                                               ; preds = %35
  %45 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %46 = getelementptr inbounds %struct.ieee80211_chanswitch_req, %struct.ieee80211_chanswitch_req* %7, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.ieee80211_chanswitch_req, %struct.ieee80211_chanswitch_req* %7, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call %struct.ieee80211_channel* @ieee80211_find_channel(%struct.ieee80211com* %45, i32 %48, i32 %51)
  store %struct.ieee80211_channel* %52, %struct.ieee80211_channel** %8, align 8
  %53 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %54 = icmp eq %struct.ieee80211_channel* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %44
  %56 = load i32, i32* @ENOENT, align 4
  store i32 %56, i32* %3, align 4
  br label %88

57:                                               ; preds = %44
  %58 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %59 = call i32 @IEEE80211_LOCK(%struct.ieee80211com* %58)
  %60 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %61 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @IEEE80211_F_CSAPENDING, align 4
  %64 = and i32 %62, %63
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %57
  %67 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %68 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %69 = getelementptr inbounds %struct.ieee80211_chanswitch_req, %struct.ieee80211_chanswitch_req* %7, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = getelementptr inbounds %struct.ieee80211_chanswitch_req, %struct.ieee80211_chanswitch_req* %7, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @ieee80211_csa_startswitch(%struct.ieee80211com* %67, %struct.ieee80211_channel* %68, i32 %70, i64 %72)
  br label %84

74:                                               ; preds = %57
  %75 = getelementptr inbounds %struct.ieee80211_chanswitch_req, %struct.ieee80211_chanswitch_req* %7, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %80 = call i32 @ieee80211_csa_cancelswitch(%struct.ieee80211com* %79)
  br label %83

81:                                               ; preds = %74
  %82 = load i32, i32* @EBUSY, align 4
  store i32 %82, i32* %9, align 4
  br label %83

83:                                               ; preds = %81, %78
  br label %84

84:                                               ; preds = %83, %66
  %85 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %86 = call i32 @IEEE80211_UNLOCK(%struct.ieee80211com* %85)
  %87 = load i32, i32* %9, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %84, %55, %42, %27, %18
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @copyin(i32, %struct.ieee80211_chanswitch_req*, i32) #1

declare dso_local %struct.ieee80211_channel* @ieee80211_find_channel(%struct.ieee80211com*, i32, i32) #1

declare dso_local i32 @IEEE80211_LOCK(%struct.ieee80211com*) #1

declare dso_local i32 @ieee80211_csa_startswitch(%struct.ieee80211com*, %struct.ieee80211_channel*, i32, i64) #1

declare dso_local i32 @ieee80211_csa_cancelswitch(%struct.ieee80211com*) #1

declare dso_local i32 @IEEE80211_UNLOCK(%struct.ieee80211com*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
