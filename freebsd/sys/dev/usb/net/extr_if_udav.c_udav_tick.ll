; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_udav.c_udav_tick.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_udav.c_udav_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ether = type { %struct.udav_softc* }
%struct.udav_softc = type { i32 }
%struct.mii_data = type { i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@UDAV_FLAG_LINK = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@IFM_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ether*)* @udav_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udav_tick(%struct.usb_ether* %0) #0 {
  %2 = alloca %struct.usb_ether*, align 8
  %3 = alloca %struct.udav_softc*, align 8
  %4 = alloca %struct.mii_data*, align 8
  store %struct.usb_ether* %0, %struct.usb_ether** %2, align 8
  %5 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %6 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %5, i32 0, i32 0
  %7 = load %struct.udav_softc*, %struct.udav_softc** %6, align 8
  store %struct.udav_softc* %7, %struct.udav_softc** %3, align 8
  %8 = load %struct.udav_softc*, %struct.udav_softc** %3, align 8
  %9 = call %struct.mii_data* @GET_MII(%struct.udav_softc* %8)
  store %struct.mii_data* %9, %struct.mii_data** %4, align 8
  %10 = load %struct.udav_softc*, %struct.udav_softc** %3, align 8
  %11 = load i32, i32* @MA_OWNED, align 4
  %12 = call i32 @UDAV_LOCK_ASSERT(%struct.udav_softc* %10, i32 %11)
  %13 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %14 = call i32 @mii_tick(%struct.mii_data* %13)
  %15 = load %struct.udav_softc*, %struct.udav_softc** %3, align 8
  %16 = getelementptr inbounds %struct.udav_softc, %struct.udav_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @UDAV_FLAG_LINK, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %43

21:                                               ; preds = %1
  %22 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %23 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IFM_ACTIVE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %21
  %29 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %30 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @IFM_SUBTYPE(i32 %31)
  %33 = load i64, i64* @IFM_NONE, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = load i32, i32* @UDAV_FLAG_LINK, align 4
  %37 = load %struct.udav_softc*, %struct.udav_softc** %3, align 8
  %38 = getelementptr inbounds %struct.udav_softc, %struct.udav_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %42 = call i32 @udav_start(%struct.usb_ether* %41)
  br label %43

43:                                               ; preds = %35, %28, %21, %1
  ret void
}

declare dso_local %struct.mii_data* @GET_MII(%struct.udav_softc*) #1

declare dso_local i32 @UDAV_LOCK_ASSERT(%struct.udav_softc*, i32) #1

declare dso_local i32 @mii_tick(%struct.mii_data*) #1

declare dso_local i64 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @udav_start(%struct.usb_ether*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
