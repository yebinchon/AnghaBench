; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_if_dtsec.c_dtsec_miibus_statchg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_if_dtsec.c_dtsec_miibus_statchg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dtsec_softc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IFM_GMASK = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@e_ENET_SPEED_1000 = common dso_local global i32 0, align 4
@e_ENET_SPEED_100 = common dso_local global i32 0, align 4
@e_ENET_SPEED_10 = common dso_local global i32 0, align 4
@E_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"error while adjusting MAC speed.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dtsec_miibus_statchg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dtsec_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.dtsec_softc* @device_get_softc(i32 %7)
  store %struct.dtsec_softc* %8, %struct.dtsec_softc** %3, align 8
  %9 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %10 = call i32 @DTSEC_LOCK_ASSERT(%struct.dtsec_softc* %9)
  %11 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %12 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @IFM_GMASK, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @IFM_FDX, align 4
  %19 = icmp eq i32 %17, %18
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %5, align 4
  %21 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %22 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @IFM_SUBTYPE(i32 %25)
  switch i32 %26, label %33 [
    i32 130, label %27
    i32 131, label %27
    i32 129, label %29
    i32 128, label %31
  ]

27:                                               ; preds = %1, %1
  %28 = load i32, i32* @e_ENET_SPEED_1000, align 4
  store i32 %28, i32* %4, align 4
  br label %35

29:                                               ; preds = %1
  %30 = load i32, i32* @e_ENET_SPEED_100, align 4
  store i32 %30, i32* %4, align 4
  br label %35

31:                                               ; preds = %1
  %32 = load i32, i32* @e_ENET_SPEED_10, align 4
  store i32 %32, i32* %4, align 4
  br label %35

33:                                               ; preds = %1
  %34 = load i32, i32* @e_ENET_SPEED_10, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %33, %31, %29, %27
  %36 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %37 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @FM_MAC_AdjustLink(i32 %38, i32 %39, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @E_OK, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %35
  %46 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %47 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @device_printf(i32 %48, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %45, %35
  ret void
}

declare dso_local %struct.dtsec_softc* @device_get_softc(i32) #1

declare dso_local i32 @DTSEC_LOCK_ASSERT(%struct.dtsec_softc*) #1

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @FM_MAC_AdjustLink(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
