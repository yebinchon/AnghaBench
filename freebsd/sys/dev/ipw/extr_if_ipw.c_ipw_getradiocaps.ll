; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ipw/extr_if_ipw.c_ipw_getradiocaps.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ipw/extr_if_ipw.c_ipw_getradiocaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { %struct.ipw_softc* }
%struct.ipw_softc = type { i32 }
%struct.ieee80211_channel = type { i32 }

@IEEE80211_MODE_BYTES = common dso_local global i32 0, align 4
@IEEE80211_MODE_11B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211com*, i32, i32*, %struct.ieee80211_channel*)* @ipw_getradiocaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipw_getradiocaps(%struct.ieee80211com* %0, i32 %1, i32* %2, %struct.ieee80211_channel* %3) #0 {
  %5 = alloca %struct.ieee80211com*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ieee80211_channel*, align 8
  %9 = alloca %struct.ipw_softc*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.ieee80211com* %0, %struct.ieee80211com** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store %struct.ieee80211_channel* %3, %struct.ieee80211_channel** %8, align 8
  %13 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %13, i32 0, i32 0
  %15 = load %struct.ipw_softc*, %struct.ipw_softc** %14, align 8
  store %struct.ipw_softc* %15, %struct.ipw_softc** %9, align 8
  %16 = load i32, i32* @IEEE80211_MODE_BYTES, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %20 = mul nuw i64 4, %17
  %21 = trunc i64 %20 to i32
  %22 = call i32 @memset(i32* %19, i32 0, i32 %21)
  %23 = load i32, i32* @IEEE80211_MODE_11B, align 4
  %24 = call i32 @setbit(i32* %19, i32 %23)
  store i32 1, i32* %12, align 4
  br label %25

25:                                               ; preds = %43, %4
  %26 = load i32, i32* %12, align 4
  %27 = icmp slt i32 %26, 16
  br i1 %27, label %28, label %46

28:                                               ; preds = %25
  %29 = load %struct.ipw_softc*, %struct.ipw_softc** %9, align 8
  %30 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %12, align 4
  %33 = shl i32 1, %32
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %28
  %37 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @ieee80211_add_channel(%struct.ieee80211_channel* %37, i32 %38, i32* %39, i32 %40, i32 0, i32 0, i32 0, i32* %19)
  br label %42

42:                                               ; preds = %36, %28
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %12, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %12, align 4
  br label %25

46:                                               ; preds = %25
  %47 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %47)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @setbit(i32*, i32) #2

declare dso_local i32 @ieee80211_add_channel(%struct.ieee80211_channel*, i32, i32*, i32, i32, i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
