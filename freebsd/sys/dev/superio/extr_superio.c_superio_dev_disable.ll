; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/superio/extr_superio.c_superio_dev_disable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/superio/extr_superio.c_superio_dev_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siosc = type { i64, i32 }
%struct.superio_devinfo = type { i32 }

@SUPERIO_VENDOR_ITE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @superio_dev_disable(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.siosc*, align 8
  %7 = alloca %struct.superio_devinfo*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @device_get_parent(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.siosc* @device_get_softc(i32 %11)
  store %struct.siosc* %12, %struct.siosc** %6, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.superio_devinfo* @device_get_ivars(i32 %13)
  store %struct.superio_devinfo* %14, %struct.superio_devinfo** %7, align 8
  %15 = load %struct.siosc*, %struct.siosc** %6, align 8
  %16 = getelementptr inbounds %struct.siosc, %struct.siosc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SUPERIO_VENDOR_ITE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.superio_devinfo*, %struct.superio_devinfo** %7, align 8
  %22 = getelementptr inbounds %struct.superio_devinfo, %struct.superio_devinfo* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 7
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %52

26:                                               ; preds = %20, %2
  %27 = load %struct.siosc*, %struct.siosc** %6, align 8
  %28 = call i32 @sio_conf_enter(%struct.siosc* %27)
  %29 = load %struct.siosc*, %struct.siosc** %6, align 8
  %30 = load %struct.superio_devinfo*, %struct.superio_devinfo** %7, align 8
  %31 = getelementptr inbounds %struct.superio_devinfo, %struct.superio_devinfo* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.siosc*, %struct.siosc** %6, align 8
  %34 = getelementptr inbounds %struct.siosc, %struct.siosc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @sio_ldn_read(%struct.siosc* %29, i32 %32, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %4, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %8, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %8, align 4
  %41 = load %struct.siosc*, %struct.siosc** %6, align 8
  %42 = load %struct.superio_devinfo*, %struct.superio_devinfo** %7, align 8
  %43 = getelementptr inbounds %struct.superio_devinfo, %struct.superio_devinfo* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.siosc*, %struct.siosc** %6, align 8
  %46 = getelementptr inbounds %struct.siosc, %struct.siosc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @sio_ldn_write(%struct.siosc* %41, i32 %44, i32 %47, i32 %48)
  %50 = load %struct.siosc*, %struct.siosc** %6, align 8
  %51 = call i32 @sio_conf_exit(%struct.siosc* %50)
  br label %52

52:                                               ; preds = %26, %25
  ret void
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local %struct.siosc* @device_get_softc(i32) #1

declare dso_local %struct.superio_devinfo* @device_get_ivars(i32) #1

declare dso_local i32 @sio_conf_enter(%struct.siosc*) #1

declare dso_local i32 @sio_ldn_read(%struct.siosc*, i32, i32) #1

declare dso_local i32 @sio_ldn_write(%struct.siosc*, i32, i32, i32) #1

declare dso_local i32 @sio_conf_exit(%struct.siosc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
