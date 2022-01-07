; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpioregulator.c_gpioregulator_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpioregulator.c_gpioregulator_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpioregulator_softc = type { %struct.TYPE_4__, %struct.TYPE_5__*, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32, i8*, %struct.regnode* }
%struct.regnode = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"cannot parse parameters\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@gpioregulator_regnode_class = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"cannot create regulator\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @gpioregulator_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpioregulator_attach(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.gpioregulator_softc*, align 8
  %5 = alloca %struct.regnode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call %struct.gpioregulator_softc* @device_get_softc(i8* %8)
  store %struct.gpioregulator_softc* %9, %struct.gpioregulator_softc** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = load %struct.gpioregulator_softc*, %struct.gpioregulator_softc** %4, align 8
  %12 = getelementptr inbounds %struct.gpioregulator_softc, %struct.gpioregulator_softc* %11, i32 0, i32 2
  store i8* %10, i8** %12, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @ofw_bus_get_node(i8* %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.gpioregulator_softc*, %struct.gpioregulator_softc** %4, align 8
  %16 = call i32 @gpioregulator_parse_fdt(%struct.gpioregulator_softc* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @device_printf(i8* %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENXIO, align 4
  store i32 %22, i32* %2, align 4
  br label %73

23:                                               ; preds = %1
  %24 = load %struct.gpioregulator_softc*, %struct.gpioregulator_softc** %4, align 8
  %25 = getelementptr inbounds %struct.gpioregulator_softc, %struct.gpioregulator_softc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.gpioregulator_softc*, %struct.gpioregulator_softc** %4, align 8
  %30 = getelementptr inbounds %struct.gpioregulator_softc, %struct.gpioregulator_softc* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  store i32 %28, i32* %32, align 4
  %33 = load i8*, i8** %3, align 8
  %34 = load %struct.gpioregulator_softc*, %struct.gpioregulator_softc** %4, align 8
  %35 = getelementptr inbounds %struct.gpioregulator_softc, %struct.gpioregulator_softc* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = call %struct.regnode* @regnode_create(i8* %33, i32* @gpioregulator_regnode_class, %struct.TYPE_6__* %36)
  store %struct.regnode* %37, %struct.regnode** %5, align 8
  %38 = load %struct.regnode*, %struct.regnode** %5, align 8
  %39 = icmp eq %struct.regnode* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %23
  %41 = load i8*, i8** %3, align 8
  %42 = call i32 @device_printf(i8* %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @ENXIO, align 4
  store i32 %43, i32* %2, align 4
  br label %73

44:                                               ; preds = %23
  %45 = load %struct.regnode*, %struct.regnode** %5, align 8
  %46 = call %struct.TYPE_5__* @regnode_get_softc(%struct.regnode* %45)
  %47 = load %struct.gpioregulator_softc*, %struct.gpioregulator_softc** %4, align 8
  %48 = getelementptr inbounds %struct.gpioregulator_softc, %struct.gpioregulator_softc* %47, i32 0, i32 1
  store %struct.TYPE_5__* %46, %struct.TYPE_5__** %48, align 8
  %49 = load %struct.regnode*, %struct.regnode** %5, align 8
  %50 = load %struct.gpioregulator_softc*, %struct.gpioregulator_softc** %4, align 8
  %51 = getelementptr inbounds %struct.gpioregulator_softc, %struct.gpioregulator_softc* %50, i32 0, i32 1
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 3
  store %struct.regnode* %49, %struct.regnode** %53, align 8
  %54 = load i8*, i8** %3, align 8
  %55 = load %struct.gpioregulator_softc*, %struct.gpioregulator_softc** %4, align 8
  %56 = getelementptr inbounds %struct.gpioregulator_softc, %struct.gpioregulator_softc* %55, i32 0, i32 1
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  store i8* %54, i8** %58, align 8
  %59 = load %struct.regnode*, %struct.regnode** %5, align 8
  %60 = call i32 @regnode_get_stdparam(%struct.regnode* %59)
  %61 = load %struct.gpioregulator_softc*, %struct.gpioregulator_softc** %4, align 8
  %62 = getelementptr inbounds %struct.gpioregulator_softc, %struct.gpioregulator_softc* %61, i32 0, i32 1
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  store i32 %60, i32* %64, align 8
  %65 = load %struct.gpioregulator_softc*, %struct.gpioregulator_softc** %4, align 8
  %66 = getelementptr inbounds %struct.gpioregulator_softc, %struct.gpioregulator_softc* %65, i32 0, i32 0
  %67 = load %struct.gpioregulator_softc*, %struct.gpioregulator_softc** %4, align 8
  %68 = getelementptr inbounds %struct.gpioregulator_softc, %struct.gpioregulator_softc* %67, i32 0, i32 1
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  store %struct.TYPE_4__* %66, %struct.TYPE_4__** %70, align 8
  %71 = load %struct.regnode*, %struct.regnode** %5, align 8
  %72 = call i32 @regnode_register(%struct.regnode* %71)
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %44, %40, %19
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local %struct.gpioregulator_softc* @device_get_softc(i8*) #1

declare dso_local i32 @ofw_bus_get_node(i8*) #1

declare dso_local i32 @gpioregulator_parse_fdt(%struct.gpioregulator_softc*) #1

declare dso_local i32 @device_printf(i8*, i8*) #1

declare dso_local %struct.regnode* @regnode_create(i8*, i32*, %struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_5__* @regnode_get_softc(%struct.regnode*) #1

declare dso_local i32 @regnode_get_stdparam(%struct.regnode*) #1

declare dso_local i32 @regnode_register(%struct.regnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
