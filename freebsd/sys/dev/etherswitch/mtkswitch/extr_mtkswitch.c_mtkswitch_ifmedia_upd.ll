; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch.c_mtkswitch_ifmedia_upd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch.c_mtkswitch_ifmedia_upd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, %struct.mtkswitch_softc* }
%struct.mtkswitch_softc = type { i32 }
%struct.mii_data = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*)* @mtkswitch_ifmedia_upd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtkswitch_ifmedia_upd(%struct.ifnet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.mtkswitch_softc*, align 8
  %5 = alloca %struct.mii_data*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  %6 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %7 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %6, i32 0, i32 1
  %8 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %7, align 8
  store %struct.mtkswitch_softc* %8, %struct.mtkswitch_softc** %4, align 8
  %9 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %10 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %11 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.mii_data* @mtkswitch_miiforport(%struct.mtkswitch_softc* %9, i32 %12)
  store %struct.mii_data* %13, %struct.mii_data** %5, align 8
  %14 = load %struct.mii_data*, %struct.mii_data** %5, align 8
  %15 = icmp eq %struct.mii_data* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @ENXIO, align 4
  store i32 %17, i32* %2, align 4
  br label %21

18:                                               ; preds = %1
  %19 = load %struct.mii_data*, %struct.mii_data** %5, align 8
  %20 = call i32 @mii_mediachg(%struct.mii_data* %19)
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %18, %16
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local %struct.mii_data* @mtkswitch_miiforport(%struct.mtkswitch_softc*, i32) #1

declare dso_local i32 @mii_mediachg(%struct.mii_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
