; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpioled_fdt.c_gpioled_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpioled_fdt.c_gpioled_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpioleds_softc = type { i64, i32*, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"gpios\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @gpioled_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpioled_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpioleds_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @ofw_bus_get_node(i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @ENXIO, align 4
  store i32 %12, i32* %2, align 4
  br label %86

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = call %struct.gpioleds_softc* @device_get_softc(i32 %14)
  store %struct.gpioleds_softc* %15, %struct.gpioleds_softc** %4, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.gpioleds_softc*, %struct.gpioleds_softc** %4, align 8
  %18 = getelementptr inbounds %struct.gpioleds_softc, %struct.gpioleds_softc* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @device_get_parent(i32 %19)
  %21 = load %struct.gpioleds_softc*, %struct.gpioleds_softc** %4, align 8
  %22 = getelementptr inbounds %struct.gpioleds_softc, %struct.gpioleds_softc* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  store i32 0, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @OF_child(i32 %23)
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %36, %13
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %25
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @OF_hasprop(i32 %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  br label %36

33:                                               ; preds = %28
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %33, %32
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @OF_peer(i32 %37)
  store i32 %38, i32* %5, align 4
  br label %25

39:                                               ; preds = %25
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %85

42:                                               ; preds = %39
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 4, %44
  %46 = trunc i64 %45 to i32
  %47 = load i32, i32* @M_DEVBUF, align 4
  %48 = load i32, i32* @M_WAITOK, align 4
  %49 = load i32, i32* @M_ZERO, align 4
  %50 = or i32 %48, %49
  %51 = call i32* @malloc(i32 %46, i32 %47, i32 %50)
  %52 = load %struct.gpioleds_softc*, %struct.gpioleds_softc** %4, align 8
  %53 = getelementptr inbounds %struct.gpioleds_softc, %struct.gpioleds_softc* %52, i32 0, i32 1
  store i32* %51, i32** %53, align 8
  %54 = load %struct.gpioleds_softc*, %struct.gpioleds_softc** %4, align 8
  %55 = getelementptr inbounds %struct.gpioleds_softc, %struct.gpioleds_softc* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @OF_child(i32 %56)
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %81, %42
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %84

61:                                               ; preds = %58
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @OF_hasprop(i32 %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %61
  br label %81

66:                                               ; preds = %61
  %67 = load %struct.gpioleds_softc*, %struct.gpioleds_softc** %4, align 8
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.gpioleds_softc*, %struct.gpioleds_softc** %4, align 8
  %70 = getelementptr inbounds %struct.gpioleds_softc, %struct.gpioleds_softc* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.gpioleds_softc*, %struct.gpioleds_softc** %4, align 8
  %73 = getelementptr inbounds %struct.gpioleds_softc, %struct.gpioleds_softc* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  %76 = call i32 @gpioleds_attach_led(%struct.gpioleds_softc* %67, i32 %68, i32* %75)
  %77 = load %struct.gpioleds_softc*, %struct.gpioleds_softc** %4, align 8
  %78 = getelementptr inbounds %struct.gpioleds_softc, %struct.gpioleds_softc* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %78, align 8
  br label %81

81:                                               ; preds = %66, %65
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @OF_peer(i32 %82)
  store i32 %83, i32* %5, align 4
  br label %58

84:                                               ; preds = %58
  br label %85

85:                                               ; preds = %84, %39
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %85, %11
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local %struct.gpioleds_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @OF_child(i32) #1

declare dso_local i32 @OF_hasprop(i32, i8*) #1

declare dso_local i32 @OF_peer(i32) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @gpioleds_attach_led(%struct.gpioleds_softc*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
