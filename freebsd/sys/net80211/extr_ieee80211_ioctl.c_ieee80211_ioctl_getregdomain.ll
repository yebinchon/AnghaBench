; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ioctl.c_ieee80211_ioctl_getregdomain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ioctl.c_ieee80211_ioctl_getregdomain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { %struct.ieee80211com* }
%struct.ieee80211com = type { i32 }
%struct.ieee80211req = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, %struct.ieee80211req*)* @ieee80211_ioctl_getregdomain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_ioctl_getregdomain(%struct.ieee80211vap* %0, %struct.ieee80211req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca %struct.ieee80211req*, align 8
  %6 = alloca %struct.ieee80211com*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %4, align 8
  store %struct.ieee80211req* %1, %struct.ieee80211req** %5, align 8
  %7 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %8 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %7, i32 0, i32 0
  %9 = load %struct.ieee80211com*, %struct.ieee80211com** %8, align 8
  store %struct.ieee80211com* %9, %struct.ieee80211com** %6, align 8
  %10 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %11 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp ne i64 %13, 4
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %3, align 4
  br label %24

17:                                               ; preds = %2
  %18 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %19 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %18, i32 0, i32 0
  %20 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %21 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @copyout(i32* %19, i32 %22, i32 4)
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %17, %15
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @copyout(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
