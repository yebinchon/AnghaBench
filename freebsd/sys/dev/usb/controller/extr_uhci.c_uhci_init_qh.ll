; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uhci.c_uhci_init_qh.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uhci.c_uhci_init_qh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uhci_qh = type { i32, %struct.usb_page_cache* }
%struct.usb_page_cache = type { i32 }
%struct.usb_page_search = type { i32, %struct.uhci_qh* }

@UHCI_PTR_QH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.uhci_qh* (%struct.usb_page_cache*)* @uhci_init_qh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.uhci_qh* @uhci_init_qh(%struct.usb_page_cache* %0) #0 {
  %2 = alloca %struct.usb_page_cache*, align 8
  %3 = alloca %struct.usb_page_search, align 8
  %4 = alloca %struct.uhci_qh*, align 8
  store %struct.usb_page_cache* %0, %struct.usb_page_cache** %2, align 8
  %5 = load %struct.usb_page_cache*, %struct.usb_page_cache** %2, align 8
  %6 = call i32 @usbd_get_page(%struct.usb_page_cache* %5, i32 0, %struct.usb_page_search* %3)
  %7 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %3, i32 0, i32 1
  %8 = load %struct.uhci_qh*, %struct.uhci_qh** %7, align 8
  store %struct.uhci_qh* %8, %struct.uhci_qh** %4, align 8
  %9 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %3, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @htole32(i32 %10)
  %12 = load i32, i32* @UHCI_PTR_QH, align 4
  %13 = call i32 @htole32(i32 %12)
  %14 = or i32 %11, %13
  %15 = load %struct.uhci_qh*, %struct.uhci_qh** %4, align 8
  %16 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.usb_page_cache*, %struct.usb_page_cache** %2, align 8
  %18 = load %struct.uhci_qh*, %struct.uhci_qh** %4, align 8
  %19 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %18, i32 0, i32 1
  store %struct.usb_page_cache* %17, %struct.usb_page_cache** %19, align 8
  %20 = load %struct.uhci_qh*, %struct.uhci_qh** %4, align 8
  ret %struct.uhci_qh* %20
}

declare dso_local i32 @usbd_get_page(%struct.usb_page_cache*, i32, %struct.usb_page_search*) #1

declare dso_local i32 @htole32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
