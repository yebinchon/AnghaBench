; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/altera/pio/extr_pio.c_pio_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/altera/pio/extr_pio.c_pio_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pio_softc = type { i8*, i32*, i32, i32 }
%struct.fdt_ic = type { i32, i8* }

@pio_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not allocate resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@fdt_ic_list_head = common dso_local global i32 0, align 4
@fdt_ics = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @pio_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pio_attach(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.pio_softc*, align 8
  %5 = alloca %struct.fdt_ic*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call %struct.pio_softc* @device_get_softc(i8* %7)
  store %struct.pio_softc* %8, %struct.pio_softc** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = load %struct.pio_softc*, %struct.pio_softc** %4, align 8
  %11 = getelementptr inbounds %struct.pio_softc, %struct.pio_softc* %10, i32 0, i32 0
  store i8* %9, i8** %11, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = load i32, i32* @pio_spec, align 4
  %14 = load %struct.pio_softc*, %struct.pio_softc** %4, align 8
  %15 = getelementptr inbounds %struct.pio_softc, %struct.pio_softc* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = call i64 @bus_alloc_resources(i8* %12, i32 %13, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @device_printf(i8* %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENXIO, align 4
  store i32 %22, i32* %2, align 4
  br label %62

23:                                               ; preds = %1
  %24 = load %struct.pio_softc*, %struct.pio_softc** %4, align 8
  %25 = getelementptr inbounds %struct.pio_softc, %struct.pio_softc* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @rman_get_bustag(i32 %28)
  %30 = load %struct.pio_softc*, %struct.pio_softc** %4, align 8
  %31 = getelementptr inbounds %struct.pio_softc, %struct.pio_softc* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load %struct.pio_softc*, %struct.pio_softc** %4, align 8
  %33 = getelementptr inbounds %struct.pio_softc, %struct.pio_softc* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @rman_get_bushandle(i32 %36)
  %38 = load %struct.pio_softc*, %struct.pio_softc** %4, align 8
  %39 = getelementptr inbounds %struct.pio_softc, %struct.pio_softc* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.pio_softc*, %struct.pio_softc** %4, align 8
  %41 = getelementptr inbounds %struct.pio_softc, %struct.pio_softc* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @ofw_bus_get_node(i8* %42)
  store i32 %43, i32* %6, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %47

45:                                               ; preds = %23
  %46 = load i32, i32* @ENXIO, align 4
  store i32 %46, i32* %2, align 4
  br label %62

47:                                               ; preds = %23
  %48 = load i32, i32* @M_DEVBUF, align 4
  %49 = load i32, i32* @M_WAITOK, align 4
  %50 = load i32, i32* @M_ZERO, align 4
  %51 = or i32 %49, %50
  %52 = call %struct.fdt_ic* @malloc(i32 16, i32 %48, i32 %51)
  store %struct.fdt_ic* %52, %struct.fdt_ic** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.fdt_ic*, %struct.fdt_ic** %5, align 8
  %55 = getelementptr inbounds %struct.fdt_ic, %struct.fdt_ic* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load i8*, i8** %3, align 8
  %57 = load %struct.fdt_ic*, %struct.fdt_ic** %5, align 8
  %58 = getelementptr inbounds %struct.fdt_ic, %struct.fdt_ic* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  %59 = load %struct.fdt_ic*, %struct.fdt_ic** %5, align 8
  %60 = load i32, i32* @fdt_ics, align 4
  %61 = call i32 @SLIST_INSERT_HEAD(i32* @fdt_ic_list_head, %struct.fdt_ic* %59, i32 %60)
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %47, %45, %19
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.pio_softc* @device_get_softc(i8*) #1

declare dso_local i64 @bus_alloc_resources(i8*, i32, i32*) #1

declare dso_local i32 @device_printf(i8*, i8*) #1

declare dso_local i32 @rman_get_bustag(i32) #1

declare dso_local i32 @rman_get_bushandle(i32) #1

declare dso_local i32 @ofw_bus_get_node(i8*) #1

declare dso_local %struct.fdt_ic* @malloc(i32, i32, i32) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.fdt_ic*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
