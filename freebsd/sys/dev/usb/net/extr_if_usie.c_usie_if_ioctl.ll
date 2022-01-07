; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_usie.c_usie_if_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_usie.c_usie_if_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, %struct.usie_softc* }
%struct.usie_softc = type { i32, i32, i32 }
%struct.ieee80211req = type { i64, i32 }
%struct.ieee80211req_sta_info = type { i32, i32 }
%struct.ifmediareq = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Connect to the network first.\0A\00", align 1
@USIE_CNS_ID_RSSI = common dso_local global i32 0, align 4
@USIE_CNS_OB_RSSI = common dso_local global i32 0, align 4
@IEEE80211_IOC_STA_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"copyout failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"80211\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"media\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @usie_if_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usie_if_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.usie_softc*, align 8
  %9 = alloca %struct.ieee80211req*, align 8
  %10 = alloca %struct.ieee80211req_sta_info, align 4
  %11 = alloca %struct.ifmediareq*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %12 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %13 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %12, i32 0, i32 2
  %14 = load %struct.usie_softc*, %struct.usie_softc** %13, align 8
  store %struct.usie_softc* %14, %struct.usie_softc** %8, align 8
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %104 [
    i32 128, label %16
    i32 129, label %46
    i32 132, label %69
    i32 131, label %97
    i32 130, label %103
  ]

16:                                               ; preds = %3
  %17 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %18 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @IFF_UP, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %16
  %24 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %25 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load %struct.usie_softc*, %struct.usie_softc** %8, align 8
  %32 = call i32 @usie_if_init(%struct.usie_softc* %31)
  br label %33

33:                                               ; preds = %30, %23
  br label %45

34:                                               ; preds = %16
  %35 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %36 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load %struct.usie_softc*, %struct.usie_softc** %8, align 8
  %43 = call i32 @usie_if_stop(%struct.usie_softc* %42)
  br label %44

44:                                               ; preds = %41, %34
  br label %45

45:                                               ; preds = %44, %33
  br label %106

46:                                               ; preds = %3
  %47 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %48 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %46
  %54 = load %struct.usie_softc*, %struct.usie_softc** %8, align 8
  %55 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @device_printf(i32 %56, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %106

58:                                               ; preds = %46
  %59 = load %struct.usie_softc*, %struct.usie_softc** %8, align 8
  %60 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %59, i32 0, i32 1
  %61 = call i32 @mtx_lock(i32* %60)
  %62 = load %struct.usie_softc*, %struct.usie_softc** %8, align 8
  %63 = load i32, i32* @USIE_CNS_ID_RSSI, align 4
  %64 = load i32, i32* @USIE_CNS_OB_RSSI, align 4
  %65 = call i32 @usie_cns_req(%struct.usie_softc* %62, i32 %63, i32 %64)
  %66 = load %struct.usie_softc*, %struct.usie_softc** %8, align 8
  %67 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %66, i32 0, i32 1
  %68 = call i32 @mtx_unlock(i32* %67)
  br label %106

69:                                               ; preds = %3
  %70 = load i64, i64* %7, align 8
  %71 = inttoptr i64 %70 to %struct.ieee80211req*
  store %struct.ieee80211req* %71, %struct.ieee80211req** %9, align 8
  %72 = load %struct.ieee80211req*, %struct.ieee80211req** %9, align 8
  %73 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @IEEE80211_IOC_STA_INFO, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  br label %106

78:                                               ; preds = %69
  %79 = call i32 @memset(%struct.ieee80211req_sta_info* %10, i32 0, i32 8)
  %80 = getelementptr inbounds %struct.ieee80211req_sta_info, %struct.ieee80211req_sta_info* %10, i32 0, i32 0
  store i32 8, i32* %80, align 4
  %81 = load %struct.usie_softc*, %struct.usie_softc** %8, align 8
  %82 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 2, %83
  %85 = getelementptr inbounds %struct.ieee80211req_sta_info, %struct.ieee80211req_sta_info* %10, i32 0, i32 1
  store i32 %84, i32* %85, align 4
  %86 = load %struct.ieee80211req*, %struct.ieee80211req** %9, align 8
  %87 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = inttoptr i64 %88 to i32*
  %90 = getelementptr inbounds i32, i32* %89, i64 8
  %91 = call i32 @copyout(%struct.ieee80211req_sta_info* %10, i32* %90, i32 8)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %78
  %94 = call i32 @DPRINTF(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %78
  %96 = call i32 @DPRINTF(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %106

97:                                               ; preds = %3
  %98 = load i64, i64* %7, align 8
  %99 = inttoptr i64 %98 to %struct.ifmediareq*
  store %struct.ifmediareq* %99, %struct.ifmediareq** %11, align 8
  %100 = load %struct.ifmediareq*, %struct.ifmediareq** %11, align 8
  %101 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %100, i32 0, i32 0
  store i32 1, i32* %101, align 4
  %102 = call i32 @DPRINTF(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %106

103:                                              ; preds = %3
  br label %106

104:                                              ; preds = %3
  %105 = load i32, i32* @EINVAL, align 4
  store i32 %105, i32* %4, align 4
  br label %107

106:                                              ; preds = %103, %97, %95, %77, %58, %53, %45
  store i32 0, i32* %4, align 4
  br label %107

107:                                              ; preds = %106, %104
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i32 @usie_if_init(%struct.usie_softc*) #1

declare dso_local i32 @usie_if_stop(%struct.usie_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @usie_cns_req(%struct.usie_softc*, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @memset(%struct.ieee80211req_sta_info*, i32, i32) #1

declare dso_local i32 @copyout(%struct.ieee80211req_sta_info*, i32*, i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
