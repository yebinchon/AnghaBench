; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_if_glc.c_glc_media_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_if_glc.c_glc_media_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.glc_softc* }
%struct.glc_softc = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IFM_ETHER = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GELIC_AUTO_NEG = common dso_local global i32 0, align 4
@GELIC_SPEED_10 = common dso_local global i32 0, align 4
@GELIC_SPEED_100 = common dso_local global i32 0, align 4
@GELIC_SPEED_1000 = common dso_local global i32 0, align 4
@GELIC_FULL_DUPLEX = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@GELIC_SET_LINK_MODE = common dso_local global i32 0, align 4
@GELIC_VLAN_TX_ETHERNET = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*)* @glc_media_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @glc_media_change(%struct.ifnet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.glc_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  %8 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %9 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %8, i32 0, i32 0
  %10 = load %struct.glc_softc*, %struct.glc_softc** %9, align 8
  store %struct.glc_softc* %10, %struct.glc_softc** %4, align 8
  %11 = load %struct.glc_softc*, %struct.glc_softc** %4, align 8
  %12 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @IFM_TYPE(i32 %14)
  %16 = load i64, i64* @IFM_ETHER, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %2, align 4
  br label %69

20:                                               ; preds = %1
  %21 = load %struct.glc_softc*, %struct.glc_softc** %4, align 8
  %22 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @IFM_SUBTYPE(i32 %24)
  switch i32 %25, label %36 [
    i32 128, label %26
    i32 129, label %28
    i32 130, label %30
    i32 131, label %32
  ]

26:                                               ; preds = %20
  %27 = load i32, i32* @GELIC_AUTO_NEG, align 4
  store i32 %27, i32* %5, align 4
  br label %38

28:                                               ; preds = %20
  %29 = load i32, i32* @GELIC_SPEED_10, align 4
  store i32 %29, i32* %5, align 4
  br label %38

30:                                               ; preds = %20
  %31 = load i32, i32* @GELIC_SPEED_100, align 4
  store i32 %31, i32* %5, align 4
  br label %38

32:                                               ; preds = %20
  %33 = load i32, i32* @GELIC_SPEED_1000, align 4
  %34 = load i32, i32* @GELIC_FULL_DUPLEX, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %5, align 4
  br label %38

36:                                               ; preds = %20
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* %2, align 4
  br label %69

38:                                               ; preds = %32, %30, %28, %26
  %39 = load %struct.glc_softc*, %struct.glc_softc** %4, align 8
  %40 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @IFM_OPTIONS(i32 %42)
  %44 = load i32, i32* @IFM_FDX, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %38
  %48 = load i32, i32* @GELIC_FULL_DUPLEX, align 4
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %47, %38
  %52 = load %struct.glc_softc*, %struct.glc_softc** %4, align 8
  %53 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.glc_softc*, %struct.glc_softc** %4, align 8
  %56 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @GELIC_SET_LINK_MODE, align 4
  %59 = load i32, i32* @GELIC_VLAN_TX_ETHERNET, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @lv1_net_control(i32 %54, i32 %57, i32 %58, i32 %59, i32 %60, i32 0, i32* %6, i32* %6)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %51
  %65 = load i32, i32* @EIO, align 4
  br label %67

66:                                               ; preds = %51
  br label %67

67:                                               ; preds = %66, %64
  %68 = phi i32 [ %65, %64 ], [ 0, %66 ]
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %67, %36, %18
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i64 @IFM_TYPE(i32) #1

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @IFM_OPTIONS(i32) #1

declare dso_local i32 @lv1_net_control(i32, i32, i32, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
