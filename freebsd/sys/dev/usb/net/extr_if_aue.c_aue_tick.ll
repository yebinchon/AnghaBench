; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_aue.c_aue_tick.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_aue.c_aue_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ether = type { i32 }
%struct.aue_softc = type { i32 }
%struct.mii_data = type { i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@AUE_FLAG_LINK = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@IFM_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ether*)* @aue_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aue_tick(%struct.usb_ether* %0) #0 {
  %2 = alloca %struct.usb_ether*, align 8
  %3 = alloca %struct.aue_softc*, align 8
  %4 = alloca %struct.mii_data*, align 8
  store %struct.usb_ether* %0, %struct.usb_ether** %2, align 8
  %5 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %6 = call %struct.aue_softc* @uether_getsc(%struct.usb_ether* %5)
  store %struct.aue_softc* %6, %struct.aue_softc** %3, align 8
  %7 = load %struct.aue_softc*, %struct.aue_softc** %3, align 8
  %8 = call %struct.mii_data* @GET_MII(%struct.aue_softc* %7)
  store %struct.mii_data* %8, %struct.mii_data** %4, align 8
  %9 = load %struct.aue_softc*, %struct.aue_softc** %3, align 8
  %10 = load i32, i32* @MA_OWNED, align 4
  %11 = call i32 @AUE_LOCK_ASSERT(%struct.aue_softc* %9, i32 %10)
  %12 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %13 = call i32 @mii_tick(%struct.mii_data* %12)
  %14 = load %struct.aue_softc*, %struct.aue_softc** %3, align 8
  %15 = getelementptr inbounds %struct.aue_softc, %struct.aue_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @AUE_FLAG_LINK, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %42

20:                                               ; preds = %1
  %21 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %22 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IFM_ACTIVE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %20
  %28 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %29 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @IFM_SUBTYPE(i32 %30)
  %32 = load i64, i64* @IFM_NONE, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %27
  %35 = load i32, i32* @AUE_FLAG_LINK, align 4
  %36 = load %struct.aue_softc*, %struct.aue_softc** %3, align 8
  %37 = getelementptr inbounds %struct.aue_softc, %struct.aue_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %41 = call i32 @aue_start(%struct.usb_ether* %40)
  br label %42

42:                                               ; preds = %34, %27, %20, %1
  ret void
}

declare dso_local %struct.aue_softc* @uether_getsc(%struct.usb_ether*) #1

declare dso_local %struct.mii_data* @GET_MII(%struct.aue_softc*) #1

declare dso_local i32 @AUE_LOCK_ASSERT(%struct.aue_softc*, i32) #1

declare dso_local i32 @mii_tick(%struct.mii_data*) #1

declare dso_local i64 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @aue_start(%struct.usb_ether*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
