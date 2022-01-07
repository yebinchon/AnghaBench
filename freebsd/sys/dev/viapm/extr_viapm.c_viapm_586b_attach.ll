; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/viapm/extr_viapm.c_viapm_586b_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/viapm/extr_viapm.c_viapm_586b_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.viapm_softc = type { i32, i64, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"viapm\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"could not allocate bus resource\0A\00", align 1
@GPIO_DIR = common dso_local global i32 0, align 4
@VIAPM_SCL = common dso_local global i32 0, align 4
@VIAPM_SDA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"iicbb\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @viapm_586b_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @viapm_586b_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.viapm_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i64 @device_get_softc(i32 %5)
  %7 = inttoptr i64 %6 to %struct.viapm_softc*
  store %struct.viapm_softc* %7, %struct.viapm_softc** %4, align 8
  %8 = load %struct.viapm_softc*, %struct.viapm_softc** %4, align 8
  %9 = getelementptr inbounds %struct.viapm_softc, %struct.viapm_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @device_get_nameunit(i32 %10)
  %12 = load i32, i32* @MTX_DEF, align 4
  %13 = call i32 @mtx_init(i32* %9, i32 %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @SYS_RES_IOPORT, align 4
  %16 = load %struct.viapm_softc*, %struct.viapm_softc** %4, align 8
  %17 = getelementptr inbounds %struct.viapm_softc, %struct.viapm_softc* %16, i32 0, i32 2
  %18 = load i32, i32* @RF_ACTIVE, align 4
  %19 = load i32, i32* @RF_SHAREABLE, align 4
  %20 = or i32 %18, %19
  %21 = call i64 @bus_alloc_resource_any(i32 %14, i32 %15, i32* %17, i32 %20)
  %22 = load %struct.viapm_softc*, %struct.viapm_softc** %4, align 8
  %23 = getelementptr inbounds %struct.viapm_softc, %struct.viapm_softc* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  %24 = icmp ne i64 %21, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @device_printf(i32 %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %46

28:                                               ; preds = %1
  %29 = load i32, i32* @GPIO_DIR, align 4
  %30 = load i32, i32* @GPIO_DIR, align 4
  %31 = call i32 @VIAPM_INB(i32 %30)
  %32 = load i32, i32* @VIAPM_SCL, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @VIAPM_SDA, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @VIAPM_OUTB(i32 %29, i32 %35)
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @device_add_child(i32 %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 -1)
  %39 = load %struct.viapm_softc*, %struct.viapm_softc** %4, align 8
  %40 = getelementptr inbounds %struct.viapm_softc, %struct.viapm_softc* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = icmp ne i32 %38, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %28
  br label %46

43:                                               ; preds = %28
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @bus_generic_attach(i32 %44)
  store i32 0, i32* %2, align 4
  br label %66

46:                                               ; preds = %42, %25
  %47 = load %struct.viapm_softc*, %struct.viapm_softc** %4, align 8
  %48 = getelementptr inbounds %struct.viapm_softc, %struct.viapm_softc* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %46
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @SYS_RES_IOPORT, align 4
  %54 = load %struct.viapm_softc*, %struct.viapm_softc** %4, align 8
  %55 = getelementptr inbounds %struct.viapm_softc, %struct.viapm_softc* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.viapm_softc*, %struct.viapm_softc** %4, align 8
  %58 = getelementptr inbounds %struct.viapm_softc, %struct.viapm_softc* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @bus_release_resource(i32 %52, i32 %53, i32 %56, i64 %59)
  br label %61

61:                                               ; preds = %51, %46
  %62 = load %struct.viapm_softc*, %struct.viapm_softc** %4, align 8
  %63 = getelementptr inbounds %struct.viapm_softc, %struct.viapm_softc* %62, i32 0, i32 0
  %64 = call i32 @mtx_destroy(i32* %63)
  %65 = load i32, i32* @ENXIO, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %61, %43
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i64 @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @VIAPM_OUTB(i32, i32) #1

declare dso_local i32 @VIAPM_INB(i32) #1

declare dso_local i32 @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i64) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
