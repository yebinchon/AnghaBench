; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_thunder_mdio.c_thunder_mdio_phy_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_thunder_mdio.c_thunder_mdio_phy_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thunder_mdio_softc = type { i32 }
%struct.phy_desc = type { i32, i32*, i32 }

@M_THUNDER_MDIO = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IFT_ETHER = common dso_local global i32 0, align 4
@thunder_ifmedia_change_stub = common dso_local global i32 0, align 4
@thunder_ifmedia_status_stub = common dso_local global i32 0, align 4
@BMSR_DEFCAPMASK = common dso_local global i32 0, align 4
@MII_OFFSET_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Could not attach PHY%d\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@phy_desc_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @thunder_mdio_phy_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thunder_mdio_phy_connect(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.thunder_mdio_softc*, align 8
  %9 = alloca %struct.phy_desc*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.thunder_mdio_softc* @device_get_softc(i32 %11)
  store %struct.thunder_mdio_softc* %12, %struct.thunder_mdio_softc** %8, align 8
  %13 = load %struct.thunder_mdio_softc*, %struct.thunder_mdio_softc** %8, align 8
  %14 = call i32 @MDIO_LOCK(%struct.thunder_mdio_softc* %13)
  %15 = load %struct.thunder_mdio_softc*, %struct.thunder_mdio_softc** %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.phy_desc* @get_phy_desc(%struct.thunder_mdio_softc* %15, i32 %16)
  store %struct.phy_desc* %17, %struct.phy_desc** %9, align 8
  %18 = load %struct.thunder_mdio_softc*, %struct.thunder_mdio_softc** %8, align 8
  %19 = call i32 @MDIO_UNLOCK(%struct.thunder_mdio_softc* %18)
  %20 = load %struct.phy_desc*, %struct.phy_desc** %9, align 8
  %21 = icmp eq %struct.phy_desc* %20, null
  br i1 %21, label %22, label %50

22:                                               ; preds = %3
  %23 = load i32, i32* @M_THUNDER_MDIO, align 4
  %24 = load i32, i32* @M_NOWAIT, align 4
  %25 = load i32, i32* @M_ZERO, align 4
  %26 = or i32 %24, %25
  %27 = call %struct.phy_desc* @malloc(i32 24, i32 %23, i32 %26)
  store %struct.phy_desc* %27, %struct.phy_desc** %9, align 8
  %28 = load %struct.phy_desc*, %struct.phy_desc** %9, align 8
  %29 = icmp eq %struct.phy_desc* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* @ENOMEM, align 4
  store i32 %31, i32* %4, align 4
  br label %87

32:                                               ; preds = %22
  %33 = load i32, i32* @IFT_ETHER, align 4
  %34 = call i32* @if_alloc(i32 %33)
  %35 = load %struct.phy_desc*, %struct.phy_desc** %9, align 8
  %36 = getelementptr inbounds %struct.phy_desc, %struct.phy_desc* %35, i32 0, i32 1
  store i32* %34, i32** %36, align 8
  %37 = load %struct.phy_desc*, %struct.phy_desc** %9, align 8
  %38 = getelementptr inbounds %struct.phy_desc, %struct.phy_desc* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %32
  %42 = load %struct.phy_desc*, %struct.phy_desc** %9, align 8
  %43 = load i32, i32* @M_THUNDER_MDIO, align 4
  %44 = call i32 @free(%struct.phy_desc* %42, i32 %43)
  %45 = load i32, i32* @ENOMEM, align 4
  store i32 %45, i32* %4, align 4
  br label %87

46:                                               ; preds = %32
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.phy_desc*, %struct.phy_desc** %9, align 8
  %49 = getelementptr inbounds %struct.phy_desc, %struct.phy_desc* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  br label %50

50:                                               ; preds = %46, %3
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.phy_desc*, %struct.phy_desc** %9, align 8
  %53 = getelementptr inbounds %struct.phy_desc, %struct.phy_desc* %52, i32 0, i32 2
  %54 = load %struct.phy_desc*, %struct.phy_desc** %9, align 8
  %55 = getelementptr inbounds %struct.phy_desc, %struct.phy_desc* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* @thunder_ifmedia_change_stub, align 4
  %58 = load i32, i32* @thunder_ifmedia_status_stub, align 4
  %59 = load i32, i32* @BMSR_DEFCAPMASK, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @MII_OFFSET_ANY, align 4
  %62 = call i32 @mii_attach(i32 %51, i32* %53, i32* %56, i32 %57, i32 %58, i32 %59, i32 %60, i32 %61, i32 0)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %50
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @device_printf(i32 %66, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %67)
  %69 = load %struct.phy_desc*, %struct.phy_desc** %9, align 8
  %70 = getelementptr inbounds %struct.phy_desc, %struct.phy_desc* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @if_free(i32* %71)
  %73 = load %struct.phy_desc*, %struct.phy_desc** %9, align 8
  %74 = load i32, i32* @M_THUNDER_MDIO, align 4
  %75 = call i32 @free(%struct.phy_desc* %73, i32 %74)
  %76 = load i32, i32* @ENXIO, align 4
  store i32 %76, i32* %4, align 4
  br label %87

77:                                               ; preds = %50
  %78 = load %struct.thunder_mdio_softc*, %struct.thunder_mdio_softc** %8, align 8
  %79 = call i32 @MDIO_LOCK(%struct.thunder_mdio_softc* %78)
  %80 = load %struct.thunder_mdio_softc*, %struct.thunder_mdio_softc** %8, align 8
  %81 = getelementptr inbounds %struct.thunder_mdio_softc, %struct.thunder_mdio_softc* %80, i32 0, i32 0
  %82 = load %struct.phy_desc*, %struct.phy_desc** %9, align 8
  %83 = load i32, i32* @phy_desc_list, align 4
  %84 = call i32 @TAILQ_INSERT_TAIL(i32* %81, %struct.phy_desc* %82, i32 %83)
  %85 = load %struct.thunder_mdio_softc*, %struct.thunder_mdio_softc** %8, align 8
  %86 = call i32 @MDIO_UNLOCK(%struct.thunder_mdio_softc* %85)
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %77, %65, %41, %30
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local %struct.thunder_mdio_softc* @device_get_softc(i32) #1

declare dso_local i32 @MDIO_LOCK(%struct.thunder_mdio_softc*) #1

declare dso_local %struct.phy_desc* @get_phy_desc(%struct.thunder_mdio_softc*, i32) #1

declare dso_local i32 @MDIO_UNLOCK(%struct.thunder_mdio_softc*) #1

declare dso_local %struct.phy_desc* @malloc(i32, i32, i32) #1

declare dso_local i32* @if_alloc(i32) #1

declare dso_local i32 @free(%struct.phy_desc*, i32) #1

declare dso_local i32 @mii_attach(i32, i32*, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @if_free(i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.phy_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
