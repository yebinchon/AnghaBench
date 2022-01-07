; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_set_slot_pointer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_set_slot_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.usb_page_search = type { %struct.xhci_dev_ctx_addr* }
%struct.xhci_dev_ctx_addr = type { i32* }

@.str = private unnamed_addr constant [20 x i8] c"addr[%u]=0x%016llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xhci_softc*, i64, i64)* @xhci_set_slot_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_set_slot_pointer(%struct.xhci_softc* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.xhci_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.usb_page_search, align 8
  %8 = alloca %struct.xhci_dev_ctx_addr*, align 8
  store %struct.xhci_softc* %0, %struct.xhci_softc** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %10 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @usbd_get_page(i32* %11, i32 0, %struct.usb_page_search* %7)
  %13 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %7, i32 0, i32 0
  %14 = load %struct.xhci_dev_ctx_addr*, %struct.xhci_dev_ctx_addr** %13, align 8
  store %struct.xhci_dev_ctx_addr* %14, %struct.xhci_dev_ctx_addr** %8, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @DPRINTF(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %15, i64 %16)
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @htole64(i64 %18)
  %20 = load %struct.xhci_dev_ctx_addr*, %struct.xhci_dev_ctx_addr** %8, align 8
  %21 = getelementptr inbounds %struct.xhci_dev_ctx_addr, %struct.xhci_dev_ctx_addr* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  store i32 %19, i32* %24, align 4
  %25 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %26 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @usb_pc_cpu_flush(i32* %27)
  ret void
}

declare dso_local i32 @usbd_get_page(i32*, i32, %struct.usb_page_search*) #1

declare dso_local i32 @DPRINTF(i8*, i64, i64) #1

declare dso_local i32 @htole64(i64) #1

declare dso_local i32 @usb_pc_cpu_flush(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
