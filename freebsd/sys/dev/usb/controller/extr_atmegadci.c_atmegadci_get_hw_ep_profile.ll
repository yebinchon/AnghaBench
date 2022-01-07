; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_atmegadci.c_atmegadci_get_hw_ep_profile.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_atmegadci.c_atmegadci_get_hw_ep_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hw_ep_profile = type { i32 }
%struct.usb_device = type { i32 }

@atmegadci_ep_profile = common dso_local global %struct.usb_hw_ep_profile* null, align 8
@ATMEGA_EP_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_device*, %struct.usb_hw_ep_profile**, i64)* @atmegadci_get_hw_ep_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmegadci_get_hw_ep_profile(%struct.usb_device* %0, %struct.usb_hw_ep_profile** %1, i64 %2) #0 {
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.usb_hw_ep_profile**, align 8
  %6 = alloca i64, align 8
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.usb_hw_ep_profile** %1, %struct.usb_hw_ep_profile*** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** @atmegadci_ep_profile, align 8
  %11 = load %struct.usb_hw_ep_profile**, %struct.usb_hw_ep_profile*** %5, align 8
  store %struct.usb_hw_ep_profile* %10, %struct.usb_hw_ep_profile** %11, align 8
  br label %23

12:                                               ; preds = %3
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @ATMEGA_EP_MAX, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** @atmegadci_ep_profile, align 8
  %18 = getelementptr inbounds %struct.usb_hw_ep_profile, %struct.usb_hw_ep_profile* %17, i64 1
  %19 = load %struct.usb_hw_ep_profile**, %struct.usb_hw_ep_profile*** %5, align 8
  store %struct.usb_hw_ep_profile* %18, %struct.usb_hw_ep_profile** %19, align 8
  br label %22

20:                                               ; preds = %12
  %21 = load %struct.usb_hw_ep_profile**, %struct.usb_hw_ep_profile*** %5, align 8
  store %struct.usb_hw_ep_profile* null, %struct.usb_hw_ep_profile** %21, align 8
  br label %22

22:                                               ; preds = %20, %16
  br label %23

23:                                               ; preds = %22, %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
