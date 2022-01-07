; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ioctl.c_ieee80211_ioctl_setcurchan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ioctl.c_ieee80211_ioctl_setcurchan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_channel = type { i64, i32 }
%struct.ieee80211vap = type { %struct.ieee80211com* }
%struct.ieee80211com = type { i32 }
%struct.ieee80211req = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IEEE80211_CHAN_ANY = common dso_local global i64 0, align 8
@IEEE80211_CHAN_ANYC = common dso_local global %struct.ieee80211_channel* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, %struct.ieee80211req*)* @ieee80211_ioctl_setcurchan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_ioctl_setcurchan(%struct.ieee80211vap* %0, %struct.ieee80211req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca %struct.ieee80211req*, align 8
  %6 = alloca %struct.ieee80211com*, align 8
  %7 = alloca %struct.ieee80211_channel, align 8
  %8 = alloca %struct.ieee80211_channel*, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %4, align 8
  store %struct.ieee80211req* %1, %struct.ieee80211req** %5, align 8
  %10 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %10, i32 0, i32 0
  %12 = load %struct.ieee80211com*, %struct.ieee80211com** %11, align 8
  store %struct.ieee80211com* %12, %struct.ieee80211com** %6, align 8
  %13 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ne i64 %16, 16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %3, align 4
  br label %56

20:                                               ; preds = %2
  %21 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %22 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @copyin(i32 %23, %struct.ieee80211_channel* %7, i32 16)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %3, align 4
  br label %56

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %7, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %7, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @IEEE80211_CHAN_ANY, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %33, %29
  %39 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** @IEEE80211_CHAN_ANYC, align 8
  store %struct.ieee80211_channel* %39, %struct.ieee80211_channel** %8, align 8
  br label %52

40:                                               ; preds = %33
  %41 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %42 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %7, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %7, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call %struct.ieee80211_channel* @ieee80211_find_channel(%struct.ieee80211com* %41, i64 %43, i32 %45)
  store %struct.ieee80211_channel* %46, %struct.ieee80211_channel** %8, align 8
  %47 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %48 = icmp eq %struct.ieee80211_channel* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = load i32, i32* @EINVAL, align 4
  store i32 %50, i32* %3, align 4
  br label %56

51:                                               ; preds = %40
  br label %52

52:                                               ; preds = %51, %38
  %53 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %54 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %55 = call i32 @setcurchan(%struct.ieee80211vap* %53, %struct.ieee80211_channel* %54)
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %52, %49, %27, %18
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @copyin(i32, %struct.ieee80211_channel*, i32) #1

declare dso_local %struct.ieee80211_channel* @ieee80211_find_channel(%struct.ieee80211com*, i64, i32) #1

declare dso_local i32 @setcurchan(%struct.ieee80211vap*, %struct.ieee80211_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
