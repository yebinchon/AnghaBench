; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_bman_portals.c_bman_portals_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_bman_portals.c_bman_portals_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa_portals_softc = type { i32, i32 }

@bp_sc = common dso_local global %struct.dpaa_portals_softc* null, align 8
@OCP85XX_TGTIF_BMAN = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bman_portals_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.dpaa_portals_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.dpaa_portals_softc* @device_get_softc(i32 %5)
  store %struct.dpaa_portals_softc* %6, %struct.dpaa_portals_softc** @bp_sc, align 8
  store %struct.dpaa_portals_softc* %6, %struct.dpaa_portals_softc** %4, align 8
  %7 = load i32, i32* @OCP85XX_TGTIF_BMAN, align 4
  %8 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %4, align 8
  %9 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %4, align 8
  %12 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @law_enable(i32 %7, i32 %10, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @bman_portals_detach(i32 %17)
  %19 = load i32, i32* @ENXIO, align 4
  store i32 %19, i32* %2, align 4
  br label %25

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @XX_PortalSetInfo(i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @bus_generic_attach(i32 %23)
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %20, %16
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local %struct.dpaa_portals_softc* @device_get_softc(i32) #1

declare dso_local i64 @law_enable(i32, i32, i32) #1

declare dso_local i32 @bman_portals_detach(i32) #1

declare dso_local i32 @XX_PortalSetInfo(i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
