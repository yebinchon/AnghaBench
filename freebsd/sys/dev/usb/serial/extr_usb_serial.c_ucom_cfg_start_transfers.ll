; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_usb_serial.c_ucom_cfg_start_transfers.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_usb_serial.c_ucom_cfg_start_transfers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_proc_msg = type { i32 }
%struct.ucom_cfg_task = type { %struct.ucom_softc* }
%struct.ucom_softc = type { i32, %struct.TYPE_2__*, %struct.usb_proc_msg* }
%struct.TYPE_2__ = type { i32 (%struct.ucom_softc*)*, i32 (%struct.ucom_softc*)* }

@UCOM_FLAG_LL_READY = common dso_local global i32 0, align 4
@UCOM_FLAG_HL_READY = common dso_local global i32 0, align 4
@UCOM_FLAG_GP_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_proc_msg*)* @ucom_cfg_start_transfers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ucom_cfg_start_transfers(%struct.usb_proc_msg* %0) #0 {
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
  %10 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %11 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @UCOM_FLAG_LL_READY, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %67

17:                                               ; preds = %1
  %18 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %19 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @UCOM_FLAG_HL_READY, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  br label %67

25:                                               ; preds = %17
  %26 = load %struct.usb_proc_msg*, %struct.usb_proc_msg** %2, align 8
  %27 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %28 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %27, i32 0, i32 2
  %29 = load %struct.usb_proc_msg*, %struct.usb_proc_msg** %28, align 8
  %30 = icmp eq %struct.usb_proc_msg* %26, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load i32, i32* @UCOM_FLAG_GP_DATA, align 4
  %33 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %34 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  br label %37

37:                                               ; preds = %31, %25
  %38 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %39 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32 (%struct.ucom_softc*)*, i32 (%struct.ucom_softc*)** %41, align 8
  %43 = icmp ne i32 (%struct.ucom_softc*)* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %37
  %45 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %46 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32 (%struct.ucom_softc*)*, i32 (%struct.ucom_softc*)** %48, align 8
  %50 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %51 = call i32 %49(%struct.ucom_softc* %50)
  br label %52

52:                                               ; preds = %44, %37
  %53 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %54 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32 (%struct.ucom_softc*)*, i32 (%struct.ucom_softc*)** %56, align 8
  %58 = icmp ne i32 (%struct.ucom_softc*)* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %52
  %60 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %61 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32 (%struct.ucom_softc*)*, i32 (%struct.ucom_softc*)** %63, align 8
  %65 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %66 = call i32 %64(%struct.ucom_softc* %65)
  br label %67

67:                                               ; preds = %16, %24, %59, %52
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
