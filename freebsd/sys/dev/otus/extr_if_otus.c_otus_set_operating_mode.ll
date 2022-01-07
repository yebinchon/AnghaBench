; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/otus/extr_if_otus.c_otus_set_operating_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/otus/extr_if_otus.c_otus_set_operating_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.otus_softc = type { %struct.ieee80211com }
%struct.ieee80211com = type { i32, i32*, i32 }
%struct.ieee80211vap = type { i32, i32* }
%struct.ieee80211_node = type { i32 }

@AR_MAC_CAM_DEFAULTS = common dso_local global i32 0, align 4
@AR_MAC_RX_CTRL_DEAGG = common dso_local global i32 0, align 4
@AR_MAC_RX_CTRL_SHORT_FILTER = common dso_local global i32 0, align 4
@AR_MAC_SNIFFER_DEFAULTS = common dso_local global i32 0, align 4
@IEEE80211_ADDR_LEN = common dso_local global i32 0, align 4
@zero_macaddr = common dso_local global i32 0, align 4
@AR_MAC_CAM_STA = common dso_local global i32 0, align 4
@AR_MAC_RX_CTRL_PASS_TO_HOST = common dso_local global i32 0, align 4
@AR_MAC_REG_SNIFFER = common dso_local global i32 0, align 4
@AR_MAC_REG_CAM_MODE = common dso_local global i32 0, align 4
@AR_MAC_REG_ENCRYPTION = common dso_local global i32 0, align 4
@AR_MAC_REG_RX_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.otus_softc*)* @otus_set_operating_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @otus_set_operating_mode(%struct.otus_softc* %0) #0 {
  %2 = alloca %struct.otus_softc*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ieee80211_node*, align 8
  store %struct.otus_softc* %0, %struct.otus_softc** %2, align 8
  %13 = load %struct.otus_softc*, %struct.otus_softc** %2, align 8
  %14 = getelementptr inbounds %struct.otus_softc, %struct.otus_softc* %13, i32 0, i32 0
  store %struct.ieee80211com* %14, %struct.ieee80211com** %3, align 8
  %15 = load i32, i32* @AR_MAC_CAM_DEFAULTS, align 4
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @AR_MAC_RX_CTRL_DEAGG, align 4
  %17 = load i32, i32* @AR_MAC_RX_CTRL_SHORT_FILTER, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @AR_MAC_SNIFFER_DEFAULTS, align 4
  store i32 %19, i32* %7, align 4
  store i32 120, i32* %8, align 4
  %20 = load i32, i32* @IEEE80211_ADDR_LEN, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %10, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %11, align 8
  %24 = load %struct.otus_softc*, %struct.otus_softc** %2, align 8
  %25 = call i32 @OTUS_LOCK_ASSERT(%struct.otus_softc* %24)
  %26 = load i32, i32* @zero_macaddr, align 4
  %27 = call i32 @IEEE80211_ADDR_COPY(i32* %23, i32 %26)
  %28 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %29 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %28, i32 0, i32 2
  %30 = call %struct.ieee80211vap* @TAILQ_FIRST(i32* %29)
  store %struct.ieee80211vap* %30, %struct.ieee80211vap** %4, align 8
  %31 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %32 = icmp ne %struct.ieee80211vap* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %1
  %34 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %35 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  br label %41

37:                                               ; preds = %1
  %38 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %39 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  br label %41

41:                                               ; preds = %37, %33
  %42 = phi i32* [ %36, %33 ], [ %40, %37 ]
  store i32* %42, i32** %9, align 8
  %43 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %44 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  switch i32 %45, label %68 [
    i32 128, label %46
    i32 129, label %67
  ]

46:                                               ; preds = %41
  %47 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %48 = icmp ne %struct.ieee80211vap* %47, null
  br i1 %48, label %49, label %60

49:                                               ; preds = %46
  %50 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %51 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call %struct.ieee80211_node* @ieee80211_ref_node(i32 %52)
  store %struct.ieee80211_node* %53, %struct.ieee80211_node** %12, align 8
  %54 = load %struct.ieee80211_node*, %struct.ieee80211_node** %12, align 8
  %55 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @IEEE80211_ADDR_COPY(i32* %23, i32 %56)
  %58 = load %struct.ieee80211_node*, %struct.ieee80211_node** %12, align 8
  %59 = call i32 @ieee80211_free_node(%struct.ieee80211_node* %58)
  br label %60

60:                                               ; preds = %49, %46
  %61 = load i32, i32* @AR_MAC_CAM_STA, align 4
  %62 = load i32, i32* %5, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* @AR_MAC_RX_CTRL_PASS_TO_HOST, align 4
  %65 = load i32, i32* %6, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %6, align 4
  br label %75

67:                                               ; preds = %41
  br label %68

68:                                               ; preds = %41, %67
  %69 = load i32, i32* @AR_MAC_CAM_STA, align 4
  %70 = load i32, i32* %5, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* @AR_MAC_RX_CTRL_PASS_TO_HOST, align 4
  %73 = load i32, i32* %6, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %68, %60
  %76 = load %struct.otus_softc*, %struct.otus_softc** %2, align 8
  %77 = load i32, i32* @AR_MAC_REG_SNIFFER, align 4
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @otus_write(%struct.otus_softc* %76, i32 %77, i32 %78)
  %80 = load %struct.otus_softc*, %struct.otus_softc** %2, align 8
  %81 = load i32, i32* @AR_MAC_REG_CAM_MODE, align 4
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @otus_write(%struct.otus_softc* %80, i32 %81, i32 %82)
  %84 = load %struct.otus_softc*, %struct.otus_softc** %2, align 8
  %85 = load i32, i32* @AR_MAC_REG_ENCRYPTION, align 4
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @otus_write(%struct.otus_softc* %84, i32 %85, i32 %86)
  %88 = load %struct.otus_softc*, %struct.otus_softc** %2, align 8
  %89 = load i32, i32* @AR_MAC_REG_RX_CONTROL, align 4
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @otus_write(%struct.otus_softc* %88, i32 %89, i32 %90)
  %92 = load %struct.otus_softc*, %struct.otus_softc** %2, align 8
  %93 = load i32*, i32** %9, align 8
  %94 = call i32 @otus_set_macaddr(%struct.otus_softc* %92, i32* %93)
  %95 = load %struct.otus_softc*, %struct.otus_softc** %2, align 8
  %96 = call i32 @otus_set_bssid(%struct.otus_softc* %95, i32* %23)
  %97 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %97)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @OTUS_LOCK_ASSERT(%struct.otus_softc*) #2

declare dso_local i32 @IEEE80211_ADDR_COPY(i32*, i32) #2

declare dso_local %struct.ieee80211vap* @TAILQ_FIRST(i32*) #2

declare dso_local %struct.ieee80211_node* @ieee80211_ref_node(i32) #2

declare dso_local i32 @ieee80211_free_node(%struct.ieee80211_node*) #2

declare dso_local i32 @otus_write(%struct.otus_softc*, i32, i32) #2

declare dso_local i32 @otus_set_macaddr(%struct.otus_softc*, i32*) #2

declare dso_local i32 @otus_set_bssid(%struct.otus_softc*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
