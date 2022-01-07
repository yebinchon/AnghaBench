; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/twsi/extr_twsi.c_twsi_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/twsi/extr_twsi.c_twsi_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twsi_softc = type { i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"twsi\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@res_spec = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"could not allocate resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"iicbus\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"could not allocate iicbus instance\0A\00", align 1
@twsi_intr_start = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @twsi_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.twsi_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.twsi_softc* @device_get_softc(i32 %5)
  store %struct.twsi_softc* %6, %struct.twsi_softc** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.twsi_softc*, %struct.twsi_softc** %4, align 8
  %9 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %8, i32 0, i32 3
  store i32 %7, i32* %9, align 8
  %10 = load %struct.twsi_softc*, %struct.twsi_softc** %4, align 8
  %11 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %10, i32 0, i32 2
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @device_get_nameunit(i32 %12)
  %14 = load i32, i32* @MTX_DEF, align 4
  %15 = call i32 @mtx_init(i32* %11, i32 %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @res_spec, align 4
  %18 = load %struct.twsi_softc*, %struct.twsi_softc** %4, align 8
  %19 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @bus_alloc_resources(i32 %16, i32 %17, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @device_printf(i32 %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @twsi_detach(i32 %26)
  %28 = load i32, i32* @ENXIO, align 4
  store i32 %28, i32* %2, align 4
  br label %47

29:                                               ; preds = %1
  %30 = load i32, i32* %3, align 4
  %31 = call i32* @device_add_child(i32 %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 -1)
  %32 = load %struct.twsi_softc*, %struct.twsi_softc** %4, align 8
  %33 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %32, i32 0, i32 0
  store i32* %31, i32** %33, align 8
  %34 = icmp eq i32* %31, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @device_printf(i32 %36, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @twsi_detach(i32 %38)
  %40 = load i32, i32* @ENXIO, align 4
  store i32 %40, i32* %2, align 4
  br label %47

41:                                               ; preds = %29
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @bus_generic_attach(i32 %42)
  %44 = load i32, i32* @twsi_intr_start, align 4
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @config_intrhook_oneshot(i32 %44, i32 %45)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %41, %35, %23
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.twsi_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @twsi_detach(i32) #1

declare dso_local i32* @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

declare dso_local i32 @config_intrhook_oneshot(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
