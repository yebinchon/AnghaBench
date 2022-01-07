; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_uath.c_uath_get_devstatus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_uath.c_uath_get_devstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uath_softc = type { i32, i32* }

@IEEE80211_ADDR_LEN = common dso_local global i32 0, align 4
@ST_MAC_ADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"could not read MAC address\0A\00", align 1
@ST_SERIAL_NUMBER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"could not read device serial number\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uath_softc*, i32*)* @uath_get_devstatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uath_get_devstatus(%struct.uath_softc* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uath_softc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.uath_softc* %0, %struct.uath_softc** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32, i32* @IEEE80211_ADDR_LEN, align 4
  %8 = zext i32 %7 to i64
  %9 = load %struct.uath_softc*, %struct.uath_softc** %4, align 8
  %10 = load i32, i32* @ST_MAC_ADDR, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* @IEEE80211_ADDR_LEN, align 4
  %13 = call i32 @uath_get_status(%struct.uath_softc* %9, i32 %10, i32* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.uath_softc*, %struct.uath_softc** %4, align 8
  %18 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @device_printf(i32 %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %39

22:                                               ; preds = %2
  %23 = load %struct.uath_softc*, %struct.uath_softc** %4, align 8
  %24 = load i32, i32* @ST_SERIAL_NUMBER, align 4
  %25 = load %struct.uath_softc*, %struct.uath_softc** %4, align 8
  %26 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = call i32 @uath_get_status(%struct.uath_softc* %23, i32 %24, i32* %28, i32 8)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %22
  %33 = load %struct.uath_softc*, %struct.uath_softc** %4, align 8
  %34 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @device_printf(i32 %35, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %39

38:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %32, %16
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @uath_get_status(%struct.uath_softc*, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
