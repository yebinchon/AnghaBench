; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_muge.c_muge_tick.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_muge.c_muge_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ether = type { i32 }
%struct.muge_softc = type { i32, i32 }
%struct.mii_data = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@MUGE_FLAG_LINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ether*)* @muge_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @muge_tick(%struct.usb_ether* %0) #0 {
  %2 = alloca %struct.usb_ether*, align 8
  %3 = alloca %struct.muge_softc*, align 8
  %4 = alloca %struct.mii_data*, align 8
  store %struct.usb_ether* %0, %struct.usb_ether** %2, align 8
  %5 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %6 = call %struct.muge_softc* @uether_getsc(%struct.usb_ether* %5)
  store %struct.muge_softc* %6, %struct.muge_softc** %3, align 8
  %7 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %8 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %7, i32 0, i32 1
  %9 = call %struct.mii_data* @uether_getmii(i32* %8)
  store %struct.mii_data* %9, %struct.mii_data** %4, align 8
  %10 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %11 = load i32, i32* @MA_OWNED, align 4
  %12 = call i32 @MUGE_LOCK_ASSERT(%struct.muge_softc* %10, i32 %11)
  %13 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %14 = call i32 @mii_tick(%struct.mii_data* %13)
  %15 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %16 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @MUGE_FLAG_LINK, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %1
  %22 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %23 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @lan78xx_miibus_statchg(i32 %24)
  %26 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %27 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MUGE_FLAG_LINK, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %21
  %33 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %34 = call i32 @muge_start(%struct.usb_ether* %33)
  br label %35

35:                                               ; preds = %32, %21
  br label %36

36:                                               ; preds = %35, %1
  ret void
}

declare dso_local %struct.muge_softc* @uether_getsc(%struct.usb_ether*) #1

declare dso_local %struct.mii_data* @uether_getmii(i32*) #1

declare dso_local i32 @MUGE_LOCK_ASSERT(%struct.muge_softc*, i32) #1

declare dso_local i32 @mii_tick(%struct.mii_data*) #1

declare dso_local i32 @lan78xx_miibus_statchg(i32) #1

declare dso_local i32 @muge_start(%struct.usb_ether*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
