; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ioctl.c_getappie.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ioctl.c_getappie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_appie = type { i64, i32 }
%struct.ieee80211req = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_appie*, %struct.ieee80211req*)* @getappie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getappie(%struct.ieee80211_appie* %0, %struct.ieee80211req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_appie*, align 8
  %5 = alloca %struct.ieee80211req*, align 8
  store %struct.ieee80211_appie* %0, %struct.ieee80211_appie** %4, align 8
  store %struct.ieee80211req* %1, %struct.ieee80211req** %5, align 8
  %6 = load %struct.ieee80211_appie*, %struct.ieee80211_appie** %4, align 8
  %7 = icmp eq %struct.ieee80211_appie* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* @EINVAL, align 4
  store i32 %9, i32* %3, align 4
  br label %35

10:                                               ; preds = %2
  %11 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.ieee80211_appie*, %struct.ieee80211_appie** %4, align 8
  %15 = getelementptr inbounds %struct.ieee80211_appie, %struct.ieee80211_appie* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %13, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %10
  %19 = load %struct.ieee80211_appie*, %struct.ieee80211_appie** %4, align 8
  %20 = getelementptr inbounds %struct.ieee80211_appie, %struct.ieee80211_appie* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %23 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  br label %24

24:                                               ; preds = %18, %10
  %25 = load %struct.ieee80211_appie*, %struct.ieee80211_appie** %4, align 8
  %26 = getelementptr inbounds %struct.ieee80211_appie, %struct.ieee80211_appie* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %29 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %32 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @copyout(i32 %27, i32 %30, i64 %33)
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %24, %8
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @copyout(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
