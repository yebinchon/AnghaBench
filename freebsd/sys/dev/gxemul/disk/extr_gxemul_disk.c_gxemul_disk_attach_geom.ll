; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gxemul/disk/extr_gxemul_disk.c_gxemul_disk_attach_geom.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gxemul/disk/extr_gxemul_disk.c_gxemul_disk_attach_geom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gxemul_disk_softc = type { %struct.TYPE_5__*, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.gxemul_disk_softc* }

@g_gxemul_disk_class = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@GXEMUL_DISK_DEV_BLOCKSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @gxemul_disk_attach_geom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gxemul_disk_attach_geom(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gxemul_disk_softc*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.gxemul_disk_softc*
  store %struct.gxemul_disk_softc* %7, %struct.gxemul_disk_softc** %5, align 8
  %8 = load %struct.gxemul_disk_softc*, %struct.gxemul_disk_softc** %5, align 8
  %9 = getelementptr inbounds %struct.gxemul_disk_softc, %struct.gxemul_disk_softc* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @device_get_nameunit(i32 %10)
  %12 = call %struct.TYPE_6__* @g_new_geomf(i32* @g_gxemul_disk_class, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.gxemul_disk_softc*, %struct.gxemul_disk_softc** %5, align 8
  %14 = getelementptr inbounds %struct.gxemul_disk_softc, %struct.gxemul_disk_softc* %13, i32 0, i32 2
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %14, align 8
  %15 = load %struct.gxemul_disk_softc*, %struct.gxemul_disk_softc** %5, align 8
  %16 = load %struct.gxemul_disk_softc*, %struct.gxemul_disk_softc** %5, align 8
  %17 = getelementptr inbounds %struct.gxemul_disk_softc, %struct.gxemul_disk_softc* %16, i32 0, i32 2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  store %struct.gxemul_disk_softc* %15, %struct.gxemul_disk_softc** %19, align 8
  %20 = load %struct.gxemul_disk_softc*, %struct.gxemul_disk_softc** %5, align 8
  %21 = getelementptr inbounds %struct.gxemul_disk_softc, %struct.gxemul_disk_softc* %20, i32 0, i32 2
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = load %struct.gxemul_disk_softc*, %struct.gxemul_disk_softc** %5, align 8
  %24 = getelementptr inbounds %struct.gxemul_disk_softc, %struct.gxemul_disk_softc* %23, i32 0, i32 2
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.TYPE_5__* @g_new_providerf(%struct.TYPE_6__* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.gxemul_disk_softc*, %struct.gxemul_disk_softc** %5, align 8
  %30 = getelementptr inbounds %struct.gxemul_disk_softc, %struct.gxemul_disk_softc* %29, i32 0, i32 0
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %30, align 8
  %31 = load i32, i32* @GXEMUL_DISK_DEV_BLOCKSIZE, align 4
  %32 = load %struct.gxemul_disk_softc*, %struct.gxemul_disk_softc** %5, align 8
  %33 = getelementptr inbounds %struct.gxemul_disk_softc, %struct.gxemul_disk_softc* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  store i32 %31, i32* %35, align 4
  %36 = load %struct.gxemul_disk_softc*, %struct.gxemul_disk_softc** %5, align 8
  %37 = getelementptr inbounds %struct.gxemul_disk_softc, %struct.gxemul_disk_softc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.gxemul_disk_softc*, %struct.gxemul_disk_softc** %5, align 8
  %40 = getelementptr inbounds %struct.gxemul_disk_softc, %struct.gxemul_disk_softc* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i32 %38, i32* %42, align 4
  %43 = load %struct.gxemul_disk_softc*, %struct.gxemul_disk_softc** %5, align 8
  %44 = getelementptr inbounds %struct.gxemul_disk_softc, %struct.gxemul_disk_softc* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = call i32 @g_error_provider(%struct.TYPE_5__* %45, i32 0)
  ret void
}

declare dso_local %struct.TYPE_6__* @g_new_geomf(i32*, i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local %struct.TYPE_5__* @g_new_providerf(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @g_error_provider(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
