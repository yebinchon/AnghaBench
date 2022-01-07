; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cmx/extr_cmx.c_cmx_alloc_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cmx/extr_cmx.c_cmx_alloc_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmx_softc = type { i32, i32, i32, i8*, i32, i8*, i32, i32, i32 }

@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to allocate io port\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"cmx softc lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@MTX_RECURSE = common dso_local global i32 0, align 4
@INTR_TYPE_TTY = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@cmx_intr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmx_alloc_resources(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmx_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.cmx_softc* @device_get_softc(i32 %5)
  store %struct.cmx_softc* %6, %struct.cmx_softc** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @SYS_RES_IOPORT, align 4
  %9 = load %struct.cmx_softc*, %struct.cmx_softc** %4, align 8
  %10 = getelementptr inbounds %struct.cmx_softc, %struct.cmx_softc* %9, i32 0, i32 8
  %11 = load i32, i32* @RF_ACTIVE, align 4
  %12 = call i8* @bus_alloc_resource_any(i32 %7, i32 %8, i32* %10, i32 %11)
  %13 = load %struct.cmx_softc*, %struct.cmx_softc** %4, align 8
  %14 = getelementptr inbounds %struct.cmx_softc, %struct.cmx_softc* %13, i32 0, i32 5
  store i8* %12, i8** %14, align 8
  %15 = load %struct.cmx_softc*, %struct.cmx_softc** %4, align 8
  %16 = getelementptr inbounds %struct.cmx_softc, %struct.cmx_softc* %15, i32 0, i32 5
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @device_printf(i32 %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENOMEM, align 4
  store i32 %22, i32* %2, align 4
  br label %49

23:                                               ; preds = %1
  %24 = load %struct.cmx_softc*, %struct.cmx_softc** %4, align 8
  %25 = getelementptr inbounds %struct.cmx_softc, %struct.cmx_softc* %24, i32 0, i32 5
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @rman_get_bustag(i8* %26)
  %28 = load %struct.cmx_softc*, %struct.cmx_softc** %4, align 8
  %29 = getelementptr inbounds %struct.cmx_softc, %struct.cmx_softc* %28, i32 0, i32 7
  store i32 %27, i32* %29, align 4
  %30 = load %struct.cmx_softc*, %struct.cmx_softc** %4, align 8
  %31 = getelementptr inbounds %struct.cmx_softc, %struct.cmx_softc* %30, i32 0, i32 5
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @rman_get_bushandle(i8* %32)
  %34 = load %struct.cmx_softc*, %struct.cmx_softc** %4, align 8
  %35 = getelementptr inbounds %struct.cmx_softc, %struct.cmx_softc* %34, i32 0, i32 6
  store i32 %33, i32* %35, align 8
  %36 = load %struct.cmx_softc*, %struct.cmx_softc** %4, align 8
  %37 = getelementptr inbounds %struct.cmx_softc, %struct.cmx_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @device_get_nameunit(i32 %38)
  %40 = load i32, i32* @MTX_DEF, align 4
  %41 = load i32, i32* @MTX_RECURSE, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @mtx_init(i32* %37, i32 %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load %struct.cmx_softc*, %struct.cmx_softc** %4, align 8
  %45 = getelementptr inbounds %struct.cmx_softc, %struct.cmx_softc* %44, i32 0, i32 1
  %46 = load %struct.cmx_softc*, %struct.cmx_softc** %4, align 8
  %47 = getelementptr inbounds %struct.cmx_softc, %struct.cmx_softc* %46, i32 0, i32 0
  %48 = call i32 @callout_init_mtx(i32* %45, i32* %47, i32 0)
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %23, %19
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.cmx_softc* @device_get_softc(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rman_get_bustag(i8*) #1

declare dso_local i32 @rman_get_bushandle(i8*) #1

declare dso_local i32 @mtx_init(i32*, i32, i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
