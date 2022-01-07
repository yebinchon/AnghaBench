; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pbio/extr_pbio.c_pbioprobe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pbio/extr_pbio.c_pbioprobe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.pbio_softc = type { i32*, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@IO_PBIOSIZE = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Intel 8255 PPI (basic mode)\00", align 1
@PBIO_CFG = common dso_local global i32 0, align 4
@PBIO_PORTA = common dso_local global i32 0, align 4
@sc = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pbioprobe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pbioprobe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pbio_softc*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.pbio_softc* @device_get_softc(i32 %6)
  store %struct.pbio_softc* %7, %struct.pbio_softc** %5, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @isa_get_logicalid(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @ENXIO, align 4
  store i32 %12, i32* %2, align 4
  br label %37

13:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @SYS_RES_IOPORT, align 4
  %16 = load i32, i32* @IO_PBIOSIZE, align 4
  %17 = load i32, i32* @RF_ACTIVE, align 4
  %18 = call i32* @bus_alloc_resource_anywhere(i32 %14, i32 %15, i32* %4, i32 %16, i32 %17)
  %19 = load %struct.pbio_softc*, %struct.pbio_softc** %5, align 8
  %20 = getelementptr inbounds %struct.pbio_softc, %struct.pbio_softc* %19, i32 0, i32 0
  store i32* %18, i32** %20, align 8
  %21 = load %struct.pbio_softc*, %struct.pbio_softc** %5, align 8
  %22 = getelementptr inbounds %struct.pbio_softc, %struct.pbio_softc* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %13
  %26 = load i32, i32* @ENXIO, align 4
  store i32 %26, i32* %2, align 4
  br label %37

27:                                               ; preds = %13
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @device_set_desc(i32 %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @SYS_RES_IOPORT, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.pbio_softc*, %struct.pbio_softc** %5, align 8
  %34 = getelementptr inbounds %struct.pbio_softc, %struct.pbio_softc* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @bus_release_resource(i32 %30, i32 %31, i32 %32, i32* %35)
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %27, %25, %11
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.pbio_softc* @device_get_softc(i32) #1

declare dso_local i64 @isa_get_logicalid(i32) #1

declare dso_local i32* @bus_alloc_resource_anywhere(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
