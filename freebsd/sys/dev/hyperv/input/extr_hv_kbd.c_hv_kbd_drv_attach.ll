; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/input/extr_hv_kbd.c_hv_kbd_drv_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/input/extr_hv_kbd.c_hv_kbd_drv_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i8* }
%struct.TYPE_18__ = type { i32 (%struct.TYPE_17__*)* }

@HVKBD_DRIVER_NAME = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@KB_OTHER = common dso_local global i32 0, align 4
@key_map = common dso_local global i32 0, align 4
@accent_map = common dso_local global i32 0, align 4
@fkey_tab = common dso_local global i32 0, align 4
@K_RAW = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hv_kbd_drv_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.TYPE_19__* @device_get_softc(i32 %8)
  store %struct.TYPE_19__* %9, %struct.TYPE_19__** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @device_get_unit(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 1
  store %struct.TYPE_17__* %13, %struct.TYPE_17__** %6, align 8
  %14 = load i32, i32* @HVKBD_DRIVER_NAME, align 4
  %15 = call %struct.TYPE_18__* @kbd_get_switch(i32 %14)
  store %struct.TYPE_18__* %15, %struct.TYPE_18__** %7, align 8
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %17 = icmp eq %struct.TYPE_18__* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @ENXIO, align 4
  store i32 %19, i32* %2, align 4
  br label %69

20:                                               ; preds = %1
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %22 = load i32, i32* @HVKBD_DRIVER_NAME, align 4
  %23 = load i32, i32* @KB_OTHER, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @kbd_init_struct(%struct.TYPE_17__* %21, i32 %22, i32 %23, i32 %24, i32 0, i32 0, i32 0)
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %27 = bitcast %struct.TYPE_19__* %26 to i8*
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %31 = load i32, i32* @fkey_tab, align 4
  %32 = load i32, i32* @fkey_tab, align 4
  %33 = call i32 @nitems(i32 %32)
  %34 = call i32 @kbd_set_maps(%struct.TYPE_17__* %30, i32* @key_map, i32* @accent_map, i32 %31, i32 %33)
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %36 = call i32 @KBD_FOUND_DEVICE(%struct.TYPE_17__* %35)
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %38 = call i32 @hvkbd_clear_state(%struct.TYPE_17__* %37)
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %40 = call i32 @KBD_PROBE_DONE(%struct.TYPE_17__* %39)
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %42 = call i32 @KBD_INIT_DONE(%struct.TYPE_17__* %41)
  %43 = load i32, i32* @K_RAW, align 4
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 0
  %48 = load i32 (%struct.TYPE_17__*)*, i32 (%struct.TYPE_17__*)** %47, align 8
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %50 = call i32 %48(%struct.TYPE_17__* %49)
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %52 = call i64 @kbd_register(%struct.TYPE_17__* %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %20
  br label %65

55:                                               ; preds = %20
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %57 = call i32 @KBD_CONFIG_DONE(%struct.TYPE_17__* %56)
  %58 = load i64, i64* @bootverbose, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %62 = load i64, i64* @bootverbose, align 8
  %63 = call i32 @genkbd_diag(%struct.TYPE_17__* %61, i64 %62)
  br label %64

64:                                               ; preds = %60, %55
  store i32 0, i32* %2, align 4
  br label %69

65:                                               ; preds = %54
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @hv_kbd_drv_detach(i32 %66)
  %68 = load i32, i32* @ENXIO, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %65, %64, %18
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.TYPE_19__* @device_get_softc(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local %struct.TYPE_18__* @kbd_get_switch(i32) #1

declare dso_local i32 @kbd_init_struct(%struct.TYPE_17__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @kbd_set_maps(%struct.TYPE_17__*, i32*, i32*, i32, i32) #1

declare dso_local i32 @nitems(i32) #1

declare dso_local i32 @KBD_FOUND_DEVICE(%struct.TYPE_17__*) #1

declare dso_local i32 @hvkbd_clear_state(%struct.TYPE_17__*) #1

declare dso_local i32 @KBD_PROBE_DONE(%struct.TYPE_17__*) #1

declare dso_local i32 @KBD_INIT_DONE(%struct.TYPE_17__*) #1

declare dso_local i64 @kbd_register(%struct.TYPE_17__*) #1

declare dso_local i32 @KBD_CONFIG_DONE(%struct.TYPE_17__*) #1

declare dso_local i32 @genkbd_diag(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @hv_kbd_drv_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
