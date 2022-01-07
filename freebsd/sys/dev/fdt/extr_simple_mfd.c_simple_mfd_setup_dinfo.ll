; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fdt/extr_simple_mfd.c_simple_mfd_setup_dinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fdt/extr_simple_mfd.c_simple_mfd_setup_dinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.simplebus_devinfo = type { i32, i32 }
%struct.simplebus_softc = type { i32, i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.simplebus_devinfo* @simple_mfd_setup_dinfo(i32 %0, i32 %1, %struct.simplebus_devinfo* %2) #0 {
  %4 = alloca %struct.simplebus_devinfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.simplebus_devinfo*, align 8
  %8 = alloca %struct.simplebus_softc*, align 8
  %9 = alloca %struct.simplebus_devinfo*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.simplebus_devinfo* %2, %struct.simplebus_devinfo** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.simplebus_softc* @device_get_softc(i32 %10)
  store %struct.simplebus_softc* %11, %struct.simplebus_softc** %8, align 8
  %12 = load %struct.simplebus_devinfo*, %struct.simplebus_devinfo** %7, align 8
  %13 = icmp eq %struct.simplebus_devinfo* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load i32, i32* @M_DEVBUF, align 4
  %16 = load i32, i32* @M_WAITOK, align 4
  %17 = load i32, i32* @M_ZERO, align 4
  %18 = or i32 %16, %17
  %19 = call %struct.simplebus_devinfo* @malloc(i32 8, i32 %15, i32 %18)
  store %struct.simplebus_devinfo* %19, %struct.simplebus_devinfo** %9, align 8
  br label %22

20:                                               ; preds = %3
  %21 = load %struct.simplebus_devinfo*, %struct.simplebus_devinfo** %7, align 8
  store %struct.simplebus_devinfo* %21, %struct.simplebus_devinfo** %9, align 8
  br label %22

22:                                               ; preds = %20, %14
  %23 = load %struct.simplebus_devinfo*, %struct.simplebus_devinfo** %9, align 8
  %24 = getelementptr inbounds %struct.simplebus_devinfo, %struct.simplebus_devinfo* %23, i32 0, i32 1
  %25 = load i32, i32* %6, align 4
  %26 = call i64 @ofw_bus_gen_setup_devinfo(i32* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = load %struct.simplebus_devinfo*, %struct.simplebus_devinfo** %7, align 8
  %30 = icmp eq %struct.simplebus_devinfo* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load %struct.simplebus_devinfo*, %struct.simplebus_devinfo** %9, align 8
  %33 = load i32, i32* @M_DEVBUF, align 4
  %34 = call i32 @free(%struct.simplebus_devinfo* %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %28
  store %struct.simplebus_devinfo* null, %struct.simplebus_devinfo** %4, align 8
  br label %58

36:                                               ; preds = %22
  %37 = load %struct.simplebus_devinfo*, %struct.simplebus_devinfo** %9, align 8
  %38 = getelementptr inbounds %struct.simplebus_devinfo, %struct.simplebus_devinfo* %37, i32 0, i32 0
  %39 = call i32 @resource_list_init(i32* %38)
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @OF_parent(i32 %41)
  %43 = load %struct.simplebus_softc*, %struct.simplebus_softc** %8, align 8
  %44 = getelementptr inbounds %struct.simplebus_softc, %struct.simplebus_softc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.simplebus_softc*, %struct.simplebus_softc** %8, align 8
  %47 = getelementptr inbounds %struct.simplebus_softc, %struct.simplebus_softc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.simplebus_devinfo*, %struct.simplebus_devinfo** %9, align 8
  %50 = getelementptr inbounds %struct.simplebus_devinfo, %struct.simplebus_devinfo* %49, i32 0, i32 0
  %51 = call i32 @ofw_bus_reg_to_rl(i32 %40, i32 %42, i32 %45, i32 %48, i32* %50)
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.simplebus_devinfo*, %struct.simplebus_devinfo** %9, align 8
  %55 = getelementptr inbounds %struct.simplebus_devinfo, %struct.simplebus_devinfo* %54, i32 0, i32 0
  %56 = call i32 @ofw_bus_intr_to_rl(i32 %52, i32 %53, i32* %55, i32* null)
  %57 = load %struct.simplebus_devinfo*, %struct.simplebus_devinfo** %9, align 8
  store %struct.simplebus_devinfo* %57, %struct.simplebus_devinfo** %4, align 8
  br label %58

58:                                               ; preds = %36, %35
  %59 = load %struct.simplebus_devinfo*, %struct.simplebus_devinfo** %4, align 8
  ret %struct.simplebus_devinfo* %59
}

declare dso_local %struct.simplebus_softc* @device_get_softc(i32) #1

declare dso_local %struct.simplebus_devinfo* @malloc(i32, i32, i32) #1

declare dso_local i64 @ofw_bus_gen_setup_devinfo(i32*, i32) #1

declare dso_local i32 @free(%struct.simplebus_devinfo*, i32) #1

declare dso_local i32 @resource_list_init(i32*) #1

declare dso_local i32 @ofw_bus_reg_to_rl(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @OF_parent(i32) #1

declare dso_local i32 @ofw_bus_intr_to_rl(i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
