; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amdsmb/extr_amdsmb.c_amdsmb_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amdsmb/extr_amdsmb.c_amdsmb_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdsmb_softc = type { i32, i32, i32*, i32 }

@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"could not map i/o space\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"amdsmb\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"smbus\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @amdsmb_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdsmb_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdsmb_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.amdsmb_softc* @device_get_softc(i32 %5)
  store %struct.amdsmb_softc* %6, %struct.amdsmb_softc** %4, align 8
  %7 = call i32 @PCIR_BAR(i32 0)
  %8 = load %struct.amdsmb_softc*, %struct.amdsmb_softc** %4, align 8
  %9 = getelementptr inbounds %struct.amdsmb_softc, %struct.amdsmb_softc* %8, i32 0, i32 3
  store i32 %7, i32* %9, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @SYS_RES_IOPORT, align 4
  %12 = load %struct.amdsmb_softc*, %struct.amdsmb_softc** %4, align 8
  %13 = getelementptr inbounds %struct.amdsmb_softc, %struct.amdsmb_softc* %12, i32 0, i32 3
  %14 = load i32, i32* @RF_ACTIVE, align 4
  %15 = call i32* @bus_alloc_resource_any(i32 %10, i32 %11, i32* %13, i32 %14)
  %16 = load %struct.amdsmb_softc*, %struct.amdsmb_softc** %4, align 8
  %17 = getelementptr inbounds %struct.amdsmb_softc, %struct.amdsmb_softc* %16, i32 0, i32 2
  store i32* %15, i32** %17, align 8
  %18 = load %struct.amdsmb_softc*, %struct.amdsmb_softc** %4, align 8
  %19 = getelementptr inbounds %struct.amdsmb_softc, %struct.amdsmb_softc* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @device_printf(i32 %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENXIO, align 4
  store i32 %25, i32* %2, align 4
  br label %48

26:                                               ; preds = %1
  %27 = load %struct.amdsmb_softc*, %struct.amdsmb_softc** %4, align 8
  %28 = getelementptr inbounds %struct.amdsmb_softc, %struct.amdsmb_softc* %27, i32 0, i32 1
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @device_get_nameunit(i32 %29)
  %31 = load i32, i32* @MTX_DEF, align 4
  %32 = call i32 @mtx_init(i32* %28, i32 %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @device_add_child(i32 %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 -1)
  %35 = load %struct.amdsmb_softc*, %struct.amdsmb_softc** %4, align 8
  %36 = getelementptr inbounds %struct.amdsmb_softc, %struct.amdsmb_softc* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.amdsmb_softc*, %struct.amdsmb_softc** %4, align 8
  %38 = getelementptr inbounds %struct.amdsmb_softc, %struct.amdsmb_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %26
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @amdsmb_detach(i32 %42)
  %44 = load i32, i32* @EINVAL, align 4
  store i32 %44, i32* %2, align 4
  br label %48

45:                                               ; preds = %26
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @bus_generic_attach(i32 %46)
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %45, %41, %22
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.amdsmb_softc* @device_get_softc(i32) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @mtx_init(i32*, i32, i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @amdsmb_detach(i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
