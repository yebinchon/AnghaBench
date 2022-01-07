; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/superio/extr_superio.c_superio_add_known_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/superio/extr_superio.c_superio_add_known_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siosc = type { i32 }
%struct.superio_devinfo = type { i8*, i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"failed to add child for ldn %d, type %s\0A\00", align 1
@link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @superio_add_known_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @superio_add_known_child(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.siosc*, align 8
  %8 = alloca %struct.superio_devinfo*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = call %struct.siosc* @device_get_softc(i32* %10)
  store %struct.siosc* %11, %struct.siosc** %7, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32* @BUS_ADD_CHILD(i32* %12, i32 0, i32* null, i32 -1)
  store i32* %13, i32** %9, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @devtype_to_str(i32 %19)
  %21 = call i32 @device_printf(i32* %17, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %20)
  br label %60

22:                                               ; preds = %3
  %23 = load i32*, i32** %9, align 8
  %24 = call %struct.superio_devinfo* @device_get_ivars(i32* %23)
  store %struct.superio_devinfo* %24, %struct.superio_devinfo** %8, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.superio_devinfo*, %struct.superio_devinfo** %8, align 8
  %27 = getelementptr inbounds %struct.superio_devinfo, %struct.superio_devinfo* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.superio_devinfo*, %struct.superio_devinfo** %8, align 8
  %30 = getelementptr inbounds %struct.superio_devinfo, %struct.superio_devinfo* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 8
  %31 = load %struct.siosc*, %struct.siosc** %7, align 8
  %32 = call i32 @sio_conf_enter(%struct.siosc* %31)
  %33 = load %struct.siosc*, %struct.siosc** %7, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i8* @sio_ldn_readw(%struct.siosc* %33, i32 %34, i32 96)
  %36 = load %struct.superio_devinfo*, %struct.superio_devinfo** %8, align 8
  %37 = getelementptr inbounds %struct.superio_devinfo, %struct.superio_devinfo* %36, i32 0, i32 3
  store i8* %35, i8** %37, align 8
  %38 = load %struct.siosc*, %struct.siosc** %7, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i8* @sio_ldn_readw(%struct.siosc* %38, i32 %39, i32 98)
  %41 = load %struct.superio_devinfo*, %struct.superio_devinfo** %8, align 8
  %42 = getelementptr inbounds %struct.superio_devinfo, %struct.superio_devinfo* %41, i32 0, i32 2
  store i8* %40, i8** %42, align 8
  %43 = load %struct.siosc*, %struct.siosc** %7, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i8* @sio_ldn_readw(%struct.siosc* %43, i32 %44, i32 112)
  %46 = load %struct.superio_devinfo*, %struct.superio_devinfo** %8, align 8
  %47 = getelementptr inbounds %struct.superio_devinfo, %struct.superio_devinfo* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = load %struct.siosc*, %struct.siosc** %7, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i8* @sio_ldn_readw(%struct.siosc* %48, i32 %49, i32 116)
  %51 = load %struct.superio_devinfo*, %struct.superio_devinfo** %8, align 8
  %52 = getelementptr inbounds %struct.superio_devinfo, %struct.superio_devinfo* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = load %struct.siosc*, %struct.siosc** %7, align 8
  %54 = call i32 @sio_conf_exit(%struct.siosc* %53)
  %55 = load %struct.siosc*, %struct.siosc** %7, align 8
  %56 = getelementptr inbounds %struct.siosc, %struct.siosc* %55, i32 0, i32 0
  %57 = load %struct.superio_devinfo*, %struct.superio_devinfo** %8, align 8
  %58 = load i32, i32* @link, align 4
  %59 = call i32 @STAILQ_INSERT_TAIL(i32* %56, %struct.superio_devinfo* %57, i32 %58)
  br label %60

60:                                               ; preds = %22, %16
  ret void
}

declare dso_local %struct.siosc* @device_get_softc(i32*) #1

declare dso_local i32* @BUS_ADD_CHILD(i32*, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32*, i8*, i32, i32) #1

declare dso_local i32 @devtype_to_str(i32) #1

declare dso_local %struct.superio_devinfo* @device_get_ivars(i32*) #1

declare dso_local i32 @sio_conf_enter(%struct.siosc*) #1

declare dso_local i8* @sio_ldn_readw(%struct.siosc*, i32, i32) #1

declare dso_local i32 @sio_conf_exit(%struct.siosc*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.superio_devinfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
