; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_usb_serial.c_ucom_cfg_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_usb_serial.c_ucom_cfg_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_proc_msg = type { i32 }
%struct.ucom_cfg_task = type { %struct.ucom_softc* }
%struct.ucom_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ucom_softc*)* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@UCOM_FLAG_LL_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_proc_msg*)* @ucom_cfg_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ucom_cfg_close(%struct.usb_proc_msg* %0) #0 {
  %2 = alloca %struct.usb_proc_msg*, align 8
  %3 = alloca %struct.ucom_cfg_task*, align 8
  %4 = alloca %struct.ucom_softc*, align 8
  store %struct.usb_proc_msg* %0, %struct.usb_proc_msg** %2, align 8
  %5 = load %struct.usb_proc_msg*, %struct.usb_proc_msg** %2, align 8
  %6 = bitcast %struct.usb_proc_msg* %5 to %struct.ucom_cfg_task*
  store %struct.ucom_cfg_task* %6, %struct.ucom_cfg_task** %3, align 8
  %7 = load %struct.ucom_cfg_task*, %struct.ucom_cfg_task** %3, align 8
  %8 = getelementptr inbounds %struct.ucom_cfg_task, %struct.ucom_cfg_task* %7, i32 0, i32 0
  %9 = load %struct.ucom_softc*, %struct.ucom_softc** %8, align 8
  store %struct.ucom_softc* %9, %struct.ucom_softc** %4, align 8
  %10 = call i32 @DPRINTF(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %12 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @UCOM_FLAG_LL_READY, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %1
  %18 = load i32, i32* @UCOM_FLAG_LL_READY, align 4
  %19 = xor i32 %18, -1
  %20 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %21 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 8
  %24 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %25 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.ucom_softc*)*, i32 (%struct.ucom_softc*)** %27, align 8
  %29 = icmp ne i32 (%struct.ucom_softc*)* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %17
  %31 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %32 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (%struct.ucom_softc*)*, i32 (%struct.ucom_softc*)** %34, align 8
  %36 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %37 = call i32 %35(%struct.ucom_softc* %36)
  br label %38

38:                                               ; preds = %30, %17
  br label %40

39:                                               ; preds = %1
  br label %40

40:                                               ; preds = %39, %38
  ret void
}

declare dso_local i32 @DPRINTF(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
