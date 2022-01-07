; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_ofw_gpiobus.c_ofw_gpiobus_destroy_devinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_ofw_gpiobus.c_ofw_gpiobus_destroy_devinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofw_gpiobus_devinfo = type { i32, %struct.gpiobus_ivar }
%struct.gpiobus_ivar = type { i32, i64*, i32 }
%struct.gpiobus_softc = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.ofw_gpiobus_devinfo*)* @ofw_gpiobus_destroy_devinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ofw_gpiobus_destroy_devinfo(i32 %0, %struct.ofw_gpiobus_devinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ofw_gpiobus_devinfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gpiobus_ivar*, align 8
  %7 = alloca %struct.gpiobus_softc*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.ofw_gpiobus_devinfo* %1, %struct.ofw_gpiobus_devinfo** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.gpiobus_softc* @device_get_softc(i32 %8)
  store %struct.gpiobus_softc* %9, %struct.gpiobus_softc** %7, align 8
  %10 = load %struct.ofw_gpiobus_devinfo*, %struct.ofw_gpiobus_devinfo** %4, align 8
  %11 = getelementptr inbounds %struct.ofw_gpiobus_devinfo, %struct.ofw_gpiobus_devinfo* %10, i32 0, i32 1
  store %struct.gpiobus_ivar* %11, %struct.gpiobus_ivar** %6, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %44, %2
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %6, align 8
  %15 = getelementptr inbounds %struct.gpiobus_ivar, %struct.gpiobus_ivar* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %47

18:                                               ; preds = %12
  %19 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %6, align 8
  %20 = getelementptr inbounds %struct.gpiobus_ivar, %struct.gpiobus_ivar* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.gpiobus_softc*, %struct.gpiobus_softc** %7, align 8
  %27 = getelementptr inbounds %struct.gpiobus_softc, %struct.gpiobus_softc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ugt i64 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  br label %44

31:                                               ; preds = %18
  %32 = load %struct.gpiobus_softc*, %struct.gpiobus_softc** %7, align 8
  %33 = getelementptr inbounds %struct.gpiobus_softc, %struct.gpiobus_softc* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %6, align 8
  %36 = getelementptr inbounds %struct.gpiobus_ivar, %struct.gpiobus_ivar* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %31, %30
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %12

47:                                               ; preds = %12
  %48 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %6, align 8
  %49 = call i32 @gpiobus_free_ivars(%struct.gpiobus_ivar* %48)
  %50 = load %struct.ofw_gpiobus_devinfo*, %struct.ofw_gpiobus_devinfo** %4, align 8
  %51 = getelementptr inbounds %struct.ofw_gpiobus_devinfo, %struct.ofw_gpiobus_devinfo* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.gpiobus_ivar, %struct.gpiobus_ivar* %51, i32 0, i32 2
  %53 = call i32 @resource_list_free(i32* %52)
  %54 = load %struct.ofw_gpiobus_devinfo*, %struct.ofw_gpiobus_devinfo** %4, align 8
  %55 = getelementptr inbounds %struct.ofw_gpiobus_devinfo, %struct.ofw_gpiobus_devinfo* %54, i32 0, i32 0
  %56 = call i32 @ofw_bus_gen_destroy_devinfo(i32* %55)
  %57 = load %struct.ofw_gpiobus_devinfo*, %struct.ofw_gpiobus_devinfo** %4, align 8
  %58 = load i32, i32* @M_DEVBUF, align 4
  %59 = call i32 @free(%struct.ofw_gpiobus_devinfo* %57, i32 %58)
  ret void
}

declare dso_local %struct.gpiobus_softc* @device_get_softc(i32) #1

declare dso_local i32 @gpiobus_free_ivars(%struct.gpiobus_ivar*) #1

declare dso_local i32 @resource_list_free(i32*) #1

declare dso_local i32 @ofw_bus_gen_destroy_devinfo(i32*) #1

declare dso_local i32 @free(%struct.ofw_gpiobus_devinfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
