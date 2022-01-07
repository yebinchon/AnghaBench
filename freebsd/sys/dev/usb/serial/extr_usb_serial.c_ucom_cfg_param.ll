; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_usb_serial.c_ucom_cfg_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_usb_serial.c_ucom_cfg_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_proc_msg = type { i32 }
%struct.ucom_param_task = type { i32, %struct.ucom_softc* }
%struct.ucom_softc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ucom_softc*, i32*)* }

@UCOM_FLAG_LL_READY = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_proc_msg*)* @ucom_cfg_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ucom_cfg_param(%struct.usb_proc_msg* %0) #0 {
  %2 = alloca %struct.usb_proc_msg*, align 8
  %3 = alloca %struct.ucom_param_task*, align 8
  %4 = alloca %struct.ucom_softc*, align 8
  store %struct.usb_proc_msg* %0, %struct.usb_proc_msg** %2, align 8
  %5 = load %struct.usb_proc_msg*, %struct.usb_proc_msg** %2, align 8
  %6 = bitcast %struct.usb_proc_msg* %5 to %struct.ucom_param_task*
  store %struct.ucom_param_task* %6, %struct.ucom_param_task** %3, align 8
  %7 = load %struct.ucom_param_task*, %struct.ucom_param_task** %3, align 8
  %8 = getelementptr inbounds %struct.ucom_param_task, %struct.ucom_param_task* %7, i32 0, i32 1
  %9 = load %struct.ucom_softc*, %struct.ucom_softc** %8, align 8
  store %struct.ucom_softc* %9, %struct.ucom_softc** %4, align 8
  %10 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %11 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @UCOM_FLAG_LL_READY, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %41

17:                                               ; preds = %1
  %18 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %19 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.ucom_softc*, i32*)*, i32 (%struct.ucom_softc*, i32*)** %21, align 8
  %23 = icmp eq i32 (%struct.ucom_softc*, i32*)* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %41

25:                                               ; preds = %17
  %26 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %27 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.ucom_softc*, i32*)*, i32 (%struct.ucom_softc*, i32*)** %29, align 8
  %31 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %32 = load %struct.ucom_param_task*, %struct.ucom_param_task** %3, align 8
  %33 = getelementptr inbounds %struct.ucom_param_task, %struct.ucom_param_task* %32, i32 0, i32 0
  %34 = call i32 %30(%struct.ucom_softc* %31, i32* %33)
  %35 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %36 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @hz, align 4
  %39 = sdiv i32 %38, 10
  %40 = call i32 @usb_pause_mtx(i32 %37, i32 %39)
  br label %41

41:                                               ; preds = %25, %24, %16
  ret void
}

declare dso_local i32 @usb_pause_mtx(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
