; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/ebus/extr_ebus.c_ebus_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/ebus/extr_ebus.c_ebus_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ebus_softc = type { i32 }
%struct.ebus_devinfo = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"<%s>: device_add_child failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ebus_softc*, i64)* @ebus_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebus_attach(i32* %0, %struct.ebus_softc* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ebus_softc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ebus_devinfo*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.ebus_softc* %1, %struct.ebus_softc** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load %struct.ebus_softc*, %struct.ebus_softc** %5, align 8
  %11 = getelementptr inbounds %struct.ebus_softc, %struct.ebus_softc* %10, i32 0, i32 0
  %12 = call i32 @ofw_bus_setup_iinfo(i64 %9, i32* %11, i32 4)
  %13 = load i64, i64* %6, align 8
  %14 = call i64 @OF_child(i64 %13)
  store i64 %14, i64* %6, align 8
  br label %15

15:                                               ; preds = %42, %3
  %16 = load i64, i64* %6, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %45

18:                                               ; preds = %15
  %19 = load i32*, i32** %4, align 8
  %20 = load %struct.ebus_softc*, %struct.ebus_softc** %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call %struct.ebus_devinfo* @ebus_setup_dinfo(i32* %19, %struct.ebus_softc* %20, i64 %21)
  store %struct.ebus_devinfo* %22, %struct.ebus_devinfo** %7, align 8
  %23 = icmp eq %struct.ebus_devinfo* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %42

25:                                               ; preds = %18
  %26 = load i32*, i32** %4, align 8
  %27 = call i32* @device_add_child(i32* %26, i32* null, i32 -1)
  store i32* %27, i32** %8, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = load i32*, i32** %4, align 8
  %31 = load %struct.ebus_devinfo*, %struct.ebus_devinfo** %7, align 8
  %32 = getelementptr inbounds %struct.ebus_devinfo, %struct.ebus_devinfo* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @device_printf(i32* %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load %struct.ebus_devinfo*, %struct.ebus_devinfo** %7, align 8
  %37 = call i32 @ebus_destroy_dinfo(%struct.ebus_devinfo* %36)
  br label %42

38:                                               ; preds = %25
  %39 = load i32*, i32** %8, align 8
  %40 = load %struct.ebus_devinfo*, %struct.ebus_devinfo** %7, align 8
  %41 = call i32 @device_set_ivars(i32* %39, %struct.ebus_devinfo* %40)
  br label %42

42:                                               ; preds = %38, %29, %24
  %43 = load i64, i64* %6, align 8
  %44 = call i64 @OF_peer(i64 %43)
  store i64 %44, i64* %6, align 8
  br label %15

45:                                               ; preds = %15
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @bus_generic_attach(i32* %46)
  ret i32 %47
}

declare dso_local i32 @ofw_bus_setup_iinfo(i64, i32*, i32) #1

declare dso_local i64 @OF_child(i64) #1

declare dso_local %struct.ebus_devinfo* @ebus_setup_dinfo(i32*, %struct.ebus_softc*, i64) #1

declare dso_local i32* @device_add_child(i32*, i32*, i32) #1

declare dso_local i32 @device_printf(i32*, i8*, i32) #1

declare dso_local i32 @ebus_destroy_dinfo(%struct.ebus_devinfo*) #1

declare dso_local i32 @device_set_ivars(i32*, %struct.ebus_devinfo*) #1

declare dso_local i64 @OF_peer(i64) #1

declare dso_local i32 @bus_generic_attach(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
