; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_device_generic_multi_enter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_device_generic_multi_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_endpoint = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.usb_xfer* }
%struct.usb_xfer = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_endpoint*, i64, %struct.usb_xfer*)* @xhci_device_generic_multi_enter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_device_generic_multi_enter(%struct.usb_endpoint* %0, i64 %1, %struct.usb_xfer* %2) #0 {
  %4 = alloca %struct.usb_endpoint*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.usb_xfer*, align 8
  %7 = alloca %struct.usb_xfer*, align 8
  store %struct.usb_endpoint* %0, %struct.usb_endpoint** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.usb_xfer* %2, %struct.usb_xfer** %6, align 8
  %8 = load %struct.usb_endpoint*, %struct.usb_endpoint** %4, align 8
  %9 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = load i64, i64* %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load %struct.usb_xfer*, %struct.usb_xfer** %13, align 8
  store %struct.usb_xfer* %14, %struct.usb_xfer** %7, align 8
  %15 = load %struct.usb_xfer*, %struct.usb_xfer** %7, align 8
  %16 = icmp eq %struct.usb_xfer* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %44

18:                                               ; preds = %3
  %19 = load %struct.usb_xfer*, %struct.usb_xfer** %7, align 8
  %20 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  br label %44

25:                                               ; preds = %18
  %26 = load %struct.usb_endpoint*, %struct.usb_endpoint** %4, align 8
  %27 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load i64, i64* %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = call %struct.usb_xfer* @TAILQ_FIRST(i32* %31)
  store %struct.usb_xfer* %32, %struct.usb_xfer** %7, align 8
  %33 = load %struct.usb_xfer*, %struct.usb_xfer** %7, align 8
  %34 = icmp eq %struct.usb_xfer* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %25
  %36 = load %struct.usb_xfer*, %struct.usb_xfer** %6, align 8
  store %struct.usb_xfer* %36, %struct.usb_xfer** %7, align 8
  %37 = load %struct.usb_xfer*, %struct.usb_xfer** %7, align 8
  %38 = icmp eq %struct.usb_xfer* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %44

40:                                               ; preds = %35
  br label %41

41:                                               ; preds = %40, %25
  %42 = load %struct.usb_xfer*, %struct.usb_xfer** %7, align 8
  %43 = call i32 @xhci_transfer_insert(%struct.usb_xfer* %42)
  br label %44

44:                                               ; preds = %41, %39, %24, %17
  ret void
}

declare dso_local %struct.usb_xfer* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @xhci_transfer_insert(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
