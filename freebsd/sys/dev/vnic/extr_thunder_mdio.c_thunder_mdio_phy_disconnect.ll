; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_thunder_mdio.c_thunder_mdio_phy_disconnect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_thunder_mdio.c_thunder_mdio_phy_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thunder_mdio_softc = type { i32 }
%struct.phy_desc = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@phy_desc_list = common dso_local global i32 0, align 4
@M_THUNDER_MDIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @thunder_mdio_phy_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thunder_mdio_phy_disconnect(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.thunder_mdio_softc*, align 8
  %9 = alloca %struct.phy_desc*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.thunder_mdio_softc* @device_get_softc(i32 %10)
  store %struct.thunder_mdio_softc* %11, %struct.thunder_mdio_softc** %8, align 8
  %12 = load %struct.thunder_mdio_softc*, %struct.thunder_mdio_softc** %8, align 8
  %13 = call i32 @MDIO_LOCK(%struct.thunder_mdio_softc* %12)
  %14 = load %struct.thunder_mdio_softc*, %struct.thunder_mdio_softc** %8, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.phy_desc* @get_phy_desc(%struct.thunder_mdio_softc* %14, i32 %15)
  store %struct.phy_desc* %16, %struct.phy_desc** %9, align 8
  %17 = load %struct.phy_desc*, %struct.phy_desc** %9, align 8
  %18 = icmp eq %struct.phy_desc* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load %struct.thunder_mdio_softc*, %struct.thunder_mdio_softc** %8, align 8
  %21 = call i32 @MDIO_UNLOCK(%struct.thunder_mdio_softc* %20)
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %4, align 4
  br label %45

23:                                               ; preds = %3
  %24 = load %struct.thunder_mdio_softc*, %struct.thunder_mdio_softc** %8, align 8
  %25 = getelementptr inbounds %struct.thunder_mdio_softc, %struct.thunder_mdio_softc* %24, i32 0, i32 0
  %26 = load %struct.phy_desc*, %struct.phy_desc** %9, align 8
  %27 = load i32, i32* @phy_desc_list, align 4
  %28 = call i32 @TAILQ_REMOVE(i32* %25, %struct.phy_desc* %26, i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @bus_generic_detach(i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.phy_desc*, %struct.phy_desc** %9, align 8
  %33 = getelementptr inbounds %struct.phy_desc, %struct.phy_desc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @device_delete_child(i32 %31, i32 %34)
  %36 = load %struct.phy_desc*, %struct.phy_desc** %9, align 8
  %37 = getelementptr inbounds %struct.phy_desc, %struct.phy_desc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @if_free(i32 %38)
  %40 = load %struct.phy_desc*, %struct.phy_desc** %9, align 8
  %41 = load i32, i32* @M_THUNDER_MDIO, align 4
  %42 = call i32 @free(%struct.phy_desc* %40, i32 %41)
  %43 = load %struct.thunder_mdio_softc*, %struct.thunder_mdio_softc** %8, align 8
  %44 = call i32 @MDIO_UNLOCK(%struct.thunder_mdio_softc* %43)
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %23, %19
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.thunder_mdio_softc* @device_get_softc(i32) #1

declare dso_local i32 @MDIO_LOCK(%struct.thunder_mdio_softc*) #1

declare dso_local %struct.phy_desc* @get_phy_desc(%struct.thunder_mdio_softc*, i32) #1

declare dso_local i32 @MDIO_UNLOCK(%struct.thunder_mdio_softc*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.phy_desc*, i32) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @device_delete_child(i32, i32) #1

declare dso_local i32 @if_free(i32) #1

declare dso_local i32 @free(%struct.phy_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
