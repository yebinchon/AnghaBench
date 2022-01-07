; ModuleID = '/home/carl/AnghaBench/freebsd/sys/xen/xenbus/extr_xenbusb.c_xenbusb_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/xen/xenbus/extr_xenbusb.c_xenbusb_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbusb_softc = type { i8*, i32, %struct.TYPE_3__, i32, i32, %struct.TYPE_4__, i8*, i32, i32 }
%struct.TYPE_3__ = type { i8*, i64, i32 }
%struct.TYPE_4__ = type { i8*, i32 }

@.str = private unnamed_addr constant [19 x i8] c"xenbusb softc lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@xenbusb_nop_confighook_cb = common dso_local global i32 0, align 4
@XBS_ATTACH_CH_ACTIVE = common dso_local global i32 0, align 4
@xenbusb_devices_changed = common dso_local global i32 0, align 4
@xenbusb_probe_children_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xenbusb_attach(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xenbusb_softc*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = call %struct.xenbusb_softc* @device_get_softc(i8* %8)
  store %struct.xenbusb_softc* %9, %struct.xenbusb_softc** %7, align 8
  %10 = load %struct.xenbusb_softc*, %struct.xenbusb_softc** %7, align 8
  %11 = getelementptr inbounds %struct.xenbusb_softc, %struct.xenbusb_softc* %10, i32 0, i32 8
  %12 = load i32, i32* @MTX_DEF, align 4
  %13 = call i32 @mtx_init(i32* %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* null, i32 %12)
  %14 = load i8*, i8** %5, align 8
  %15 = load %struct.xenbusb_softc*, %struct.xenbusb_softc** %7, align 8
  %16 = getelementptr inbounds %struct.xenbusb_softc, %struct.xenbusb_softc* %15, i32 0, i32 0
  store i8* %14, i8** %16, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.xenbusb_softc*, %struct.xenbusb_softc** %7, align 8
  %19 = getelementptr inbounds %struct.xenbusb_softc, %struct.xenbusb_softc* %18, i32 0, i32 7
  store i32 %17, i32* %19, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = load %struct.xenbusb_softc*, %struct.xenbusb_softc** %7, align 8
  %22 = getelementptr inbounds %struct.xenbusb_softc, %struct.xenbusb_softc* %21, i32 0, i32 6
  store i8* %20, i8** %22, align 8
  %23 = load i32, i32* @xenbusb_nop_confighook_cb, align 4
  %24 = load %struct.xenbusb_softc*, %struct.xenbusb_softc** %7, align 8
  %25 = getelementptr inbounds %struct.xenbusb_softc, %struct.xenbusb_softc* %24, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  store i32 %23, i32* %26, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = load %struct.xenbusb_softc*, %struct.xenbusb_softc** %7, align 8
  %29 = getelementptr inbounds %struct.xenbusb_softc, %struct.xenbusb_softc* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i8* %27, i8** %30, align 8
  %31 = load %struct.xenbusb_softc*, %struct.xenbusb_softc** %7, align 8
  %32 = getelementptr inbounds %struct.xenbusb_softc, %struct.xenbusb_softc* %31, i32 0, i32 5
  %33 = call i32 @config_intrhook_establish(%struct.TYPE_4__* %32)
  %34 = load i32, i32* @XBS_ATTACH_CH_ACTIVE, align 4
  %35 = load %struct.xenbusb_softc*, %struct.xenbusb_softc** %7, align 8
  %36 = getelementptr inbounds %struct.xenbusb_softc, %struct.xenbusb_softc* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load %struct.xenbusb_softc*, %struct.xenbusb_softc** %7, align 8
  %40 = getelementptr inbounds %struct.xenbusb_softc, %struct.xenbusb_softc* %39, i32 0, i32 1
  store i32 1, i32* %40, align 8
  %41 = load %struct.xenbusb_softc*, %struct.xenbusb_softc** %7, align 8
  %42 = call i32 @xenbusb_enumerate_bus(%struct.xenbusb_softc* %41)
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 @xenbusb_probe_children(i8* %43)
  %45 = load i8*, i8** %5, align 8
  %46 = load %struct.xenbusb_softc*, %struct.xenbusb_softc** %7, align 8
  %47 = getelementptr inbounds %struct.xenbusb_softc, %struct.xenbusb_softc* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i8* %45, i8** %48, align 8
  %49 = load i32, i32* @xenbusb_devices_changed, align 4
  %50 = load %struct.xenbusb_softc*, %struct.xenbusb_softc** %7, align 8
  %51 = getelementptr inbounds %struct.xenbusb_softc, %struct.xenbusb_softc* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  store i32 %49, i32* %52, align 8
  %53 = load %struct.xenbusb_softc*, %struct.xenbusb_softc** %7, align 8
  %54 = ptrtoint %struct.xenbusb_softc* %53 to i64
  %55 = load %struct.xenbusb_softc*, %struct.xenbusb_softc** %7, align 8
  %56 = getelementptr inbounds %struct.xenbusb_softc, %struct.xenbusb_softc* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  store i64 %54, i64* %57, align 8
  %58 = load %struct.xenbusb_softc*, %struct.xenbusb_softc** %7, align 8
  %59 = getelementptr inbounds %struct.xenbusb_softc, %struct.xenbusb_softc* %58, i32 0, i32 3
  %60 = load i32, i32* @xenbusb_probe_children_cb, align 4
  %61 = load i8*, i8** %4, align 8
  %62 = call i32 @TASK_INIT(i32* %59, i32 0, i32 %60, i8* %61)
  %63 = load %struct.xenbusb_softc*, %struct.xenbusb_softc** %7, align 8
  %64 = getelementptr inbounds %struct.xenbusb_softc, %struct.xenbusb_softc* %63, i32 0, i32 2
  %65 = call i32 @xs_register_watch(%struct.TYPE_3__* %64)
  %66 = load %struct.xenbusb_softc*, %struct.xenbusb_softc** %7, align 8
  %67 = call i32 @xenbusb_release_confighook(%struct.xenbusb_softc* %66)
  ret i32 0
}

declare dso_local %struct.xenbusb_softc* @device_get_softc(i8*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @config_intrhook_establish(%struct.TYPE_4__*) #1

declare dso_local i32 @xenbusb_enumerate_bus(%struct.xenbusb_softc*) #1

declare dso_local i32 @xenbusb_probe_children(i8*) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, i8*) #1

declare dso_local i32 @xs_register_watch(%struct.TYPE_3__*) #1

declare dso_local i32 @xenbusb_release_confighook(%struct.xenbusb_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
