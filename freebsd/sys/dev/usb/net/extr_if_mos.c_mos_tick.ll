; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_mos.c_mos_tick.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_mos.c_mos_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ether = type { i32 }
%struct.mos_softc = type { i32 }
%struct.mii_data = type { i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@IFM_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"got link\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ether*)* @mos_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mos_tick(%struct.usb_ether* %0) #0 {
  %2 = alloca %struct.usb_ether*, align 8
  %3 = alloca %struct.mos_softc*, align 8
  %4 = alloca %struct.mii_data*, align 8
  store %struct.usb_ether* %0, %struct.usb_ether** %2, align 8
  %5 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %6 = call %struct.mos_softc* @uether_getsc(%struct.usb_ether* %5)
  store %struct.mos_softc* %6, %struct.mos_softc** %3, align 8
  %7 = load %struct.mos_softc*, %struct.mos_softc** %3, align 8
  %8 = call %struct.mii_data* @GET_MII(%struct.mos_softc* %7)
  store %struct.mii_data* %8, %struct.mii_data** %4, align 8
  %9 = load %struct.mos_softc*, %struct.mos_softc** %3, align 8
  %10 = load i32, i32* @MA_OWNED, align 4
  %11 = call i32 @MOS_LOCK_ASSERT(%struct.mos_softc* %9, i32 %10)
  %12 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %13 = call i32 @mii_tick(%struct.mii_data* %12)
  %14 = load %struct.mos_softc*, %struct.mos_softc** %3, align 8
  %15 = getelementptr inbounds %struct.mos_softc, %struct.mos_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %40, label %18

18:                                               ; preds = %1
  %19 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %20 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IFM_ACTIVE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %18
  %26 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %27 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @IFM_SUBTYPE(i32 %28)
  %30 = load i64, i64* @IFM_NONE, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = call i32 @MOS_DPRINTFN(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.mos_softc*, %struct.mos_softc** %3, align 8
  %35 = getelementptr inbounds %struct.mos_softc, %struct.mos_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %39 = call i32 @mos_start(%struct.usb_ether* %38)
  br label %40

40:                                               ; preds = %32, %25, %18, %1
  ret void
}

declare dso_local %struct.mos_softc* @uether_getsc(%struct.usb_ether*) #1

declare dso_local %struct.mii_data* @GET_MII(%struct.mos_softc*) #1

declare dso_local i32 @MOS_LOCK_ASSERT(%struct.mos_softc*, i32) #1

declare dso_local i32 @mii_tick(%struct.mii_data*) #1

declare dso_local i64 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @MOS_DPRINTFN(i8*) #1

declare dso_local i32 @mos_start(%struct.usb_ether*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
