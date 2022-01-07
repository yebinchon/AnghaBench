; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/ebus/extr_ebus.c_ebus_nexus_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/ebus/extr_ebus.c_ebus_nexus_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ebus_softc = type { i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"portid\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"could not determine IGN\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"ranges\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"could not get ranges property\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ebus_nexus_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebus_nexus_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ebus_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.ebus_softc* @device_get_softc(i32 %6)
  store %struct.ebus_softc* %7, %struct.ebus_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @ofw_bus_get_node(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.ebus_softc*, %struct.ebus_softc** %4, align 8
  %12 = getelementptr inbounds %struct.ebus_softc, %struct.ebus_softc* %11, i32 0, i32 2
  %13 = call i32 @OF_getprop(i32 %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %12, i32 4)
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @device_printf(i32 %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* @ENXIO, align 4
  store i32 %18, i32* %2, align 4
  br label %39

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.ebus_softc*, %struct.ebus_softc** %4, align 8
  %22 = getelementptr inbounds %struct.ebus_softc, %struct.ebus_softc* %21, i32 0, i32 1
  %23 = call i32 @OF_getprop_alloc_multi(i32 %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 4, i32* %22)
  %24 = load %struct.ebus_softc*, %struct.ebus_softc** %4, align 8
  %25 = getelementptr inbounds %struct.ebus_softc, %struct.ebus_softc* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.ebus_softc*, %struct.ebus_softc** %4, align 8
  %27 = getelementptr inbounds %struct.ebus_softc, %struct.ebus_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %34

30:                                               ; preds = %19
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @device_printf(i32 %31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %33 = load i32, i32* @ENXIO, align 4
  store i32 %33, i32* %2, align 4
  br label %39

34:                                               ; preds = %19
  %35 = load i32, i32* %3, align 4
  %36 = load %struct.ebus_softc*, %struct.ebus_softc** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @ebus_attach(i32 %35, %struct.ebus_softc* %36, i32 %37)
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %34, %30, %15
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.ebus_softc* @device_get_softc(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @OF_getprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @OF_getprop_alloc_multi(i32, i8*, i32, i32*) #1

declare dso_local i32 @ebus_attach(i32, %struct.ebus_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
