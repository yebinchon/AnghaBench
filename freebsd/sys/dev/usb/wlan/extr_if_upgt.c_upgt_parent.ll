; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_upgt.c_upgt_parent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_upgt.c_upgt_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { i64, i64, i64, %struct.upgt_softc* }
%struct.upgt_softc = type { i32 }

@UPGT_FLAG_DETACHED = common dso_local global i32 0, align 4
@UPGT_FLAG_INITDONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211com*)* @upgt_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @upgt_parent(%struct.ieee80211com* %0) #0 {
  %2 = alloca %struct.ieee80211com*, align 8
  %3 = alloca %struct.upgt_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.ieee80211com* %0, %struct.ieee80211com** %2, align 8
  %5 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %5, i32 0, i32 3
  %7 = load %struct.upgt_softc*, %struct.upgt_softc** %6, align 8
  store %struct.upgt_softc* %7, %struct.upgt_softc** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.upgt_softc*, %struct.upgt_softc** %3, align 8
  %9 = call i32 @UPGT_LOCK(%struct.upgt_softc* %8)
  %10 = load %struct.upgt_softc*, %struct.upgt_softc** %3, align 8
  %11 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @UPGT_FLAG_DETACHED, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.upgt_softc*, %struct.upgt_softc** %3, align 8
  %18 = call i32 @UPGT_UNLOCK(%struct.upgt_softc* %17)
  br label %68

19:                                               ; preds = %1
  %20 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %21 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %49

24:                                               ; preds = %19
  %25 = load %struct.upgt_softc*, %struct.upgt_softc** %3, align 8
  %26 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @UPGT_FLAG_INITDONE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %24
  %32 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %33 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %38 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36, %31
  %42 = load %struct.upgt_softc*, %struct.upgt_softc** %3, align 8
  %43 = call i32 @upgt_set_multi(%struct.upgt_softc* %42)
  br label %44

44:                                               ; preds = %41, %36
  br label %48

45:                                               ; preds = %24
  %46 = load %struct.upgt_softc*, %struct.upgt_softc** %3, align 8
  %47 = call i32 @upgt_init(%struct.upgt_softc* %46)
  store i32 1, i32* %4, align 4
  br label %48

48:                                               ; preds = %45, %44
  br label %60

49:                                               ; preds = %19
  %50 = load %struct.upgt_softc*, %struct.upgt_softc** %3, align 8
  %51 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @UPGT_FLAG_INITDONE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load %struct.upgt_softc*, %struct.upgt_softc** %3, align 8
  %58 = call i32 @upgt_stop(%struct.upgt_softc* %57)
  br label %59

59:                                               ; preds = %56, %49
  br label %60

60:                                               ; preds = %59, %48
  %61 = load %struct.upgt_softc*, %struct.upgt_softc** %3, align 8
  %62 = call i32 @UPGT_UNLOCK(%struct.upgt_softc* %61)
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %67 = call i32 @ieee80211_start_all(%struct.ieee80211com* %66)
  br label %68

68:                                               ; preds = %16, %65, %60
  ret void
}

declare dso_local i32 @UPGT_LOCK(%struct.upgt_softc*) #1

declare dso_local i32 @UPGT_UNLOCK(%struct.upgt_softc*) #1

declare dso_local i32 @upgt_set_multi(%struct.upgt_softc*) #1

declare dso_local i32 @upgt_init(%struct.upgt_softc*) #1

declare dso_local i32 @upgt_stop(%struct.upgt_softc*) #1

declare dso_local i32 @ieee80211_start_all(%struct.ieee80211com*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
