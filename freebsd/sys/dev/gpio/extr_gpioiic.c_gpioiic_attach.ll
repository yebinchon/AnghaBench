; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpioiic.c_gpioiic_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpioiic.c_gpioiic_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpiobus_ivar = type { i32* }
%struct.gpioiic_softc = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"scl\00", align 1
@GPIOIIC_SCL_DFLT = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"sda\00", align 1
@GPIOIIC_SDA_DFLT = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"SCL pin: %d, SDA pin: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"iicbb\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @gpioiic_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpioiic_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpiobus_ivar*, align 8
  %5 = alloca %struct.gpioiic_softc*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.gpioiic_softc* @device_get_softc(i32 %6)
  store %struct.gpioiic_softc* %7, %struct.gpioiic_softc** %5, align 8
  %8 = load i32, i32* %2, align 4
  %9 = load %struct.gpioiic_softc*, %struct.gpioiic_softc** %5, align 8
  %10 = getelementptr inbounds %struct.gpioiic_softc, %struct.gpioiic_softc* %9, i32 0, i32 3
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @device_get_parent(i32 %11)
  %13 = load %struct.gpioiic_softc*, %struct.gpioiic_softc** %5, align 8
  %14 = getelementptr inbounds %struct.gpioiic_softc, %struct.gpioiic_softc* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @device_get_name(i32 %15)
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @device_get_unit(i32 %17)
  %19 = load %struct.gpioiic_softc*, %struct.gpioiic_softc** %5, align 8
  %20 = getelementptr inbounds %struct.gpioiic_softc, %struct.gpioiic_softc* %19, i32 0, i32 0
  %21 = call i64 @resource_int_value(i32 %16, i32 %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load i8*, i8** @GPIOIIC_SCL_DFLT, align 8
  %25 = ptrtoint i8* %24 to i32
  %26 = load %struct.gpioiic_softc*, %struct.gpioiic_softc** %5, align 8
  %27 = getelementptr inbounds %struct.gpioiic_softc, %struct.gpioiic_softc* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %23, %1
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @device_get_name(i32 %29)
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @device_get_unit(i32 %31)
  %33 = load %struct.gpioiic_softc*, %struct.gpioiic_softc** %5, align 8
  %34 = getelementptr inbounds %struct.gpioiic_softc, %struct.gpioiic_softc* %33, i32 0, i32 1
  %35 = call i64 @resource_int_value(i32 %30, i32 %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %28
  %38 = load i8*, i8** @GPIOIIC_SDA_DFLT, align 8
  %39 = ptrtoint i8* %38 to i32
  %40 = load %struct.gpioiic_softc*, %struct.gpioiic_softc** %5, align 8
  %41 = getelementptr inbounds %struct.gpioiic_softc, %struct.gpioiic_softc* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %37, %28
  %43 = load %struct.gpioiic_softc*, %struct.gpioiic_softc** %5, align 8
  %44 = getelementptr inbounds %struct.gpioiic_softc, %struct.gpioiic_softc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load %struct.gpioiic_softc*, %struct.gpioiic_softc** %5, align 8
  %49 = getelementptr inbounds %struct.gpioiic_softc, %struct.gpioiic_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp sgt i32 %50, 1
  br i1 %51, label %52, label %57

52:                                               ; preds = %47, %42
  %53 = load i8*, i8** @GPIOIIC_SCL_DFLT, align 8
  %54 = ptrtoint i8* %53 to i32
  %55 = load %struct.gpioiic_softc*, %struct.gpioiic_softc** %5, align 8
  %56 = getelementptr inbounds %struct.gpioiic_softc, %struct.gpioiic_softc* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %52, %47
  %58 = load %struct.gpioiic_softc*, %struct.gpioiic_softc** %5, align 8
  %59 = getelementptr inbounds %struct.gpioiic_softc, %struct.gpioiic_softc* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load %struct.gpioiic_softc*, %struct.gpioiic_softc** %5, align 8
  %64 = getelementptr inbounds %struct.gpioiic_softc, %struct.gpioiic_softc* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp sgt i32 %65, 1
  br i1 %66, label %67, label %72

67:                                               ; preds = %62, %57
  %68 = load i8*, i8** @GPIOIIC_SDA_DFLT, align 8
  %69 = ptrtoint i8* %68 to i32
  %70 = load %struct.gpioiic_softc*, %struct.gpioiic_softc** %5, align 8
  %71 = getelementptr inbounds %struct.gpioiic_softc, %struct.gpioiic_softc* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %67, %62
  %73 = load i32, i32* %2, align 4
  %74 = call %struct.gpiobus_ivar* @GPIOBUS_IVAR(i32 %73)
  store %struct.gpiobus_ivar* %74, %struct.gpiobus_ivar** %4, align 8
  %75 = load i32, i32* %2, align 4
  %76 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %4, align 8
  %77 = getelementptr inbounds %struct.gpiobus_ivar, %struct.gpiobus_ivar* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.gpioiic_softc*, %struct.gpioiic_softc** %5, align 8
  %80 = getelementptr inbounds %struct.gpioiic_softc, %struct.gpioiic_softc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %78, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %4, align 8
  %86 = getelementptr inbounds %struct.gpiobus_ivar, %struct.gpiobus_ivar* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.gpioiic_softc*, %struct.gpioiic_softc** %5, align 8
  %89 = getelementptr inbounds %struct.gpioiic_softc, %struct.gpioiic_softc* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %87, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @device_printf(i32 %75, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %84, i32 %93)
  %95 = load i32, i32* %2, align 4
  %96 = call i32 @device_add_child(i32 %95, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 -1)
  store i32 %96, i32* %3, align 4
  %97 = load i32, i32* %3, align 4
  %98 = call i32 @device_probe_and_attach(i32 %97)
  ret i32 0
}

declare dso_local %struct.gpioiic_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i64 @resource_int_value(i32, i32, i8*, i32*) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local %struct.gpiobus_ivar* @GPIOBUS_IVAR(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @device_probe_and_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
