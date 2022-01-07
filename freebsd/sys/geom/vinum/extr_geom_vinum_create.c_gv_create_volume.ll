; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_create.c_gv_create_volume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_create.c_gv_create_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gv_softc = type { i32 }
%struct.gv_volume = type { i32, i32, i32, %struct.gv_softc* }

@.str = private unnamed_addr constant [25 x i8] c"gv_create_volume: NULL v\00", align 1
@GV_VOL_NEWBORN = common dso_local global i32 0, align 4
@volume = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gv_create_volume(%struct.gv_softc* %0, %struct.gv_volume* %1) #0 {
  %3 = alloca %struct.gv_softc*, align 8
  %4 = alloca %struct.gv_volume*, align 8
  store %struct.gv_softc* %0, %struct.gv_softc** %3, align 8
  store %struct.gv_volume* %1, %struct.gv_volume** %4, align 8
  %5 = load %struct.gv_volume*, %struct.gv_volume** %4, align 8
  %6 = icmp ne %struct.gv_volume* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @KASSERT(i32 %7, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.gv_softc*, %struct.gv_softc** %3, align 8
  %10 = load %struct.gv_volume*, %struct.gv_volume** %4, align 8
  %11 = getelementptr inbounds %struct.gv_volume, %struct.gv_volume* %10, i32 0, i32 3
  store %struct.gv_softc* %9, %struct.gv_softc** %11, align 8
  %12 = load i32, i32* @GV_VOL_NEWBORN, align 4
  %13 = load %struct.gv_volume*, %struct.gv_volume** %4, align 8
  %14 = getelementptr inbounds %struct.gv_volume, %struct.gv_volume* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 8
  %17 = load %struct.gv_volume*, %struct.gv_volume** %4, align 8
  %18 = getelementptr inbounds %struct.gv_volume, %struct.gv_volume* %17, i32 0, i32 1
  %19 = call i32 @LIST_INIT(i32* %18)
  %20 = load %struct.gv_softc*, %struct.gv_softc** %3, align 8
  %21 = getelementptr inbounds %struct.gv_softc, %struct.gv_softc* %20, i32 0, i32 0
  %22 = load %struct.gv_volume*, %struct.gv_volume** %4, align 8
  %23 = load i32, i32* @volume, align 4
  %24 = call i32 @LIST_INSERT_HEAD(i32* %21, %struct.gv_volume* %22, i32 %23)
  %25 = load i32, i32* @M_WAITOK, align 4
  %26 = load i32, i32* @M_ZERO, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @g_malloc(i32 4, i32 %27)
  %29 = load %struct.gv_volume*, %struct.gv_volume** %4, align 8
  %30 = getelementptr inbounds %struct.gv_volume, %struct.gv_volume* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.gv_volume*, %struct.gv_volume** %4, align 8
  %32 = getelementptr inbounds %struct.gv_volume, %struct.gv_volume* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @bioq_init(i32 %33)
  ret i32 0
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.gv_volume*, i32) #1

declare dso_local i32 @g_malloc(i32, i32) #1

declare dso_local i32 @bioq_init(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
