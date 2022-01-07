; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx_osm.c_ahd_map_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx_osm.c_ahd_map_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@INTR_TYPE_CAM = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@ahd_platform_intr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"bus_setup_intr() failed: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahd_map_int(%struct.ahd_softc* %0) #0 {
  %2 = alloca %struct.ahd_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %2, align 8
  %4 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %5 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %8 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @INTR_TYPE_CAM, align 4
  %13 = load i32, i32* @INTR_MPSAFE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @ahd_platform_intr, align 4
  %16 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %17 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %18 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @bus_setup_intr(i32 %6, i32 %11, i32 %14, i32* null, i32 %15, %struct.ahd_softc* %16, i32* %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %26 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @device_printf(i32 %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %24, %1
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @bus_setup_intr(i32, i32, i32, i32*, i32, %struct.ahd_softc*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
