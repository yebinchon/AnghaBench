; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_avr32dci.c_avr32dci_get_hw_ep_profile.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_avr32dci.c_avr32dci_get_hw_ep_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hw_ep_profile = type { i32 }
%struct.usb_device = type { i32 }

@avr32dci_ep_profile = common dso_local global %struct.usb_hw_ep_profile* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_device*, %struct.usb_hw_ep_profile**, i32)* @avr32dci_get_hw_ep_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @avr32dci_get_hw_ep_profile(%struct.usb_device* %0, %struct.usb_hw_ep_profile** %1, i32 %2) #0 {
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.usb_hw_ep_profile**, align 8
  %6 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.usb_hw_ep_profile** %1, %struct.usb_hw_ep_profile*** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** @avr32dci_ep_profile, align 8
  %11 = load %struct.usb_hw_ep_profile**, %struct.usb_hw_ep_profile*** %5, align 8
  store %struct.usb_hw_ep_profile* %10, %struct.usb_hw_ep_profile** %11, align 8
  br label %38

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 3
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** @avr32dci_ep_profile, align 8
  %17 = getelementptr inbounds %struct.usb_hw_ep_profile, %struct.usb_hw_ep_profile* %16, i64 1
  %18 = load %struct.usb_hw_ep_profile**, %struct.usb_hw_ep_profile*** %5, align 8
  store %struct.usb_hw_ep_profile* %17, %struct.usb_hw_ep_profile** %18, align 8
  br label %37

19:                                               ; preds = %12
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 5
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** @avr32dci_ep_profile, align 8
  %24 = getelementptr inbounds %struct.usb_hw_ep_profile, %struct.usb_hw_ep_profile* %23, i64 2
  %25 = load %struct.usb_hw_ep_profile**, %struct.usb_hw_ep_profile*** %5, align 8
  store %struct.usb_hw_ep_profile* %24, %struct.usb_hw_ep_profile** %25, align 8
  br label %36

26:                                               ; preds = %19
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 7
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** @avr32dci_ep_profile, align 8
  %31 = getelementptr inbounds %struct.usb_hw_ep_profile, %struct.usb_hw_ep_profile* %30, i64 3
  %32 = load %struct.usb_hw_ep_profile**, %struct.usb_hw_ep_profile*** %5, align 8
  store %struct.usb_hw_ep_profile* %31, %struct.usb_hw_ep_profile** %32, align 8
  br label %35

33:                                               ; preds = %26
  %34 = load %struct.usb_hw_ep_profile**, %struct.usb_hw_ep_profile*** %5, align 8
  store %struct.usb_hw_ep_profile* null, %struct.usb_hw_ep_profile** %34, align 8
  br label %35

35:                                               ; preds = %33, %29
  br label %36

36:                                               ; preds = %35, %22
  br label %37

37:                                               ; preds = %36, %15
  br label %38

38:                                               ; preds = %37, %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
