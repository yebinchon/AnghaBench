; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ioctl.c_ieee80211_ioctl_setappie.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ioctl.c_ieee80211_ioctl_setappie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { %struct.ieee80211com* }
%struct.ieee80211com = type { i32 }
%struct.ieee80211req = type { i32 }

@IEEE80211_FC0_TYPE_MASK = common dso_local global i32 0, align 4
@IEEE80211_FC0_TYPE_MGT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, %struct.ieee80211req*)* @ieee80211_ioctl_setappie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_ioctl_setappie(%struct.ieee80211vap* %0, %struct.ieee80211req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca %struct.ieee80211req*, align 8
  %6 = alloca %struct.ieee80211com*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %4, align 8
  store %struct.ieee80211req* %1, %struct.ieee80211req** %5, align 8
  %9 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %10 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %9, i32 0, i32 0
  %11 = load %struct.ieee80211com*, %struct.ieee80211com** %10, align 8
  store %struct.ieee80211com* %11, %struct.ieee80211com** %6, align 8
  %12 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, 255
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @IEEE80211_FC0_TYPE_MASK, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @IEEE80211_FC0_TYPE_MGT, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %3, align 4
  br label %33

23:                                               ; preds = %2
  %24 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %25 = call i32 @IEEE80211_LOCK(%struct.ieee80211com* %24)
  %26 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %27 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @ieee80211_ioctl_setappie_locked(%struct.ieee80211vap* %26, %struct.ieee80211req* %27, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %31 = call i32 @IEEE80211_UNLOCK(%struct.ieee80211com* %30)
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %23, %21
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @IEEE80211_LOCK(%struct.ieee80211com*) #1

declare dso_local i32 @ieee80211_ioctl_setappie_locked(%struct.ieee80211vap*, %struct.ieee80211req*, i32) #1

declare dso_local i32 @IEEE80211_UNLOCK(%struct.ieee80211com*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
