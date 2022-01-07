; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_update_msr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_update_msr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urtw_softc = type { i64, i32, %struct.ieee80211com }
%struct.ieee80211com = type { i32 }

@URTW_MSR = common dso_local global i32 0, align 4
@URTW_MSR_LINK_MASK = common dso_local global i32 0, align 4
@IEEE80211_S_RUN = common dso_local global i64 0, align 8
@URTW_MSR_LINK_STA = common dso_local global i32 0, align 4
@URTW_RTL8187B = common dso_local global i32 0, align 4
@URTW_MSR_LINK_ENEDCA = common dso_local global i32 0, align 4
@URTW_MSR_LINK_ADHOC = common dso_local global i32 0, align 4
@URTW_MSR_LINK_HOSTAP = common dso_local global i32 0, align 4
@URTW_DEBUG_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"unsupported operation mode 0x%x\0A\00", align 1
@USB_ERR_INVAL = common dso_local global i32 0, align 4
@URTW_MSR_LINK_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.urtw_softc*)* @urtw_update_msr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @urtw_update_msr(%struct.urtw_softc* %0) #0 {
  %2 = alloca %struct.urtw_softc*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.urtw_softc* %0, %struct.urtw_softc** %2, align 8
  %6 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %7 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %6, i32 0, i32 2
  store %struct.ieee80211com* %7, %struct.ieee80211com** %3, align 8
  %8 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %9 = load i32, i32* @URTW_MSR, align 4
  %10 = call i32 @urtw_read8_m(%struct.urtw_softc* %8, i32 %9, i32* %4)
  %11 = load i32, i32* @URTW_MSR_LINK_MASK, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %4, align 4
  %15 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %16 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @IEEE80211_S_RUN, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %56

20:                                               ; preds = %1
  %21 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %22 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %47 [
    i32 128, label %24
    i32 129, label %24
    i32 130, label %39
    i32 131, label %43
  ]

24:                                               ; preds = %20, %20
  %25 = load i32, i32* @URTW_MSR_LINK_STA, align 4
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %29 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @URTW_RTL8187B, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %24
  %35 = load i32, i32* @URTW_MSR_LINK_ENEDCA, align 4
  %36 = load i32, i32* %4, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %34, %24
  br label %55

39:                                               ; preds = %20
  %40 = load i32, i32* @URTW_MSR_LINK_ADHOC, align 4
  %41 = load i32, i32* %4, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %4, align 4
  br label %55

43:                                               ; preds = %20
  %44 = load i32, i32* @URTW_MSR_LINK_HOSTAP, align 4
  %45 = load i32, i32* %4, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %4, align 4
  br label %55

47:                                               ; preds = %20
  %48 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %49 = load i32, i32* @URTW_DEBUG_STATE, align 4
  %50 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %51 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @DPRINTF(%struct.urtw_softc* %48, i32 %49, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @USB_ERR_INVAL, align 4
  store i32 %54, i32* %5, align 4
  br label %65

55:                                               ; preds = %43, %39, %38
  br label %60

56:                                               ; preds = %1
  %57 = load i32, i32* @URTW_MSR_LINK_NONE, align 4
  %58 = load i32, i32* %4, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %56, %55
  %61 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %62 = load i32, i32* @URTW_MSR, align 4
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @urtw_write8_m(%struct.urtw_softc* %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %60, %47
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @urtw_read8_m(%struct.urtw_softc*, i32, i32*) #1

declare dso_local i32 @DPRINTF(%struct.urtw_softc*, i32, i8*, i32) #1

declare dso_local i32 @urtw_write8_m(%struct.urtw_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
