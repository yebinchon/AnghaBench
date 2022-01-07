; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_clock.c_jz4780_clock_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_clock.c_jz4780_clock_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_clock_softc = type { i32, i32*, i32 }

@jz4780_clock_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"could not allocate resources for device\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @jz4780_clock_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_clock_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.jz4780_clock_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.jz4780_clock_softc* @device_get_softc(i32 %5)
  store %struct.jz4780_clock_softc* %6, %struct.jz4780_clock_softc** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @jz4780_clock_spec, align 4
  %9 = load %struct.jz4780_clock_softc*, %struct.jz4780_clock_softc** %4, align 8
  %10 = getelementptr inbounds %struct.jz4780_clock_softc, %struct.jz4780_clock_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @bus_alloc_resources(i32 %7, i32 %8, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @device_printf(i32 %15, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENXIO, align 4
  store i32 %17, i32* %2, align 4
  br label %69

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.jz4780_clock_softc*, %struct.jz4780_clock_softc** %4, align 8
  %21 = getelementptr inbounds %struct.jz4780_clock_softc, %struct.jz4780_clock_softc* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load %struct.jz4780_clock_softc*, %struct.jz4780_clock_softc** %4, align 8
  %23 = call i32 @CGU_LOCK_INIT(%struct.jz4780_clock_softc* %22)
  %24 = load i32, i32* %3, align 4
  %25 = call i32* @clkdom_create(i32 %24)
  %26 = load %struct.jz4780_clock_softc*, %struct.jz4780_clock_softc** %4, align 8
  %27 = getelementptr inbounds %struct.jz4780_clock_softc, %struct.jz4780_clock_softc* %26, i32 0, i32 1
  store i32* %25, i32** %27, align 8
  %28 = load %struct.jz4780_clock_softc*, %struct.jz4780_clock_softc** %4, align 8
  %29 = getelementptr inbounds %struct.jz4780_clock_softc, %struct.jz4780_clock_softc* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %18
  br label %59

33:                                               ; preds = %18
  %34 = load %struct.jz4780_clock_softc*, %struct.jz4780_clock_softc** %4, align 8
  %35 = call i64 @jz4780_clock_register(%struct.jz4780_clock_softc* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %59

38:                                               ; preds = %33
  %39 = load %struct.jz4780_clock_softc*, %struct.jz4780_clock_softc** %4, align 8
  %40 = getelementptr inbounds %struct.jz4780_clock_softc, %struct.jz4780_clock_softc* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = call i64 @clkdom_finit(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %59

45:                                               ; preds = %38
  %46 = load %struct.jz4780_clock_softc*, %struct.jz4780_clock_softc** %4, align 8
  %47 = call i64 @jz4780_clock_fixup(%struct.jz4780_clock_softc* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %59

50:                                               ; preds = %45
  %51 = load i64, i64* @bootverbose, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load %struct.jz4780_clock_softc*, %struct.jz4780_clock_softc** %4, align 8
  %55 = getelementptr inbounds %struct.jz4780_clock_softc, %struct.jz4780_clock_softc* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @clkdom_dump(i32* %56)
  br label %58

58:                                               ; preds = %53, %50
  store i32 0, i32* %2, align 4
  br label %69

59:                                               ; preds = %49, %44, %37, %32
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @jz4780_clock_spec, align 4
  %62 = load %struct.jz4780_clock_softc*, %struct.jz4780_clock_softc** %4, align 8
  %63 = getelementptr inbounds %struct.jz4780_clock_softc, %struct.jz4780_clock_softc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @bus_release_resources(i32 %60, i32 %61, i32 %64)
  %66 = load %struct.jz4780_clock_softc*, %struct.jz4780_clock_softc** %4, align 8
  %67 = call i32 @CGU_LOCK_DESTROY(%struct.jz4780_clock_softc* %66)
  %68 = load i32, i32* @ENXIO, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %59, %58, %14
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.jz4780_clock_softc* @device_get_softc(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @CGU_LOCK_INIT(%struct.jz4780_clock_softc*) #1

declare dso_local i32* @clkdom_create(i32) #1

declare dso_local i64 @jz4780_clock_register(%struct.jz4780_clock_softc*) #1

declare dso_local i64 @clkdom_finit(i32*) #1

declare dso_local i64 @jz4780_clock_fixup(%struct.jz4780_clock_softc*) #1

declare dso_local i32 @clkdom_dump(i32*) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32) #1

declare dso_local i32 @CGU_LOCK_DESTROY(%struct.jz4780_clock_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
