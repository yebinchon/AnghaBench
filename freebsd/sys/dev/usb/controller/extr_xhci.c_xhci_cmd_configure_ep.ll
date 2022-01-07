; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_cmd_configure_ep.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_cmd_configure_ep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_softc = type { i32 }
%struct.xhci_trb = type { i32, i64, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@XHCI_TRB_TYPE_CONFIGURE_EP = common dso_local global i32 0, align 4
@XHCI_TRB_3_DCEP_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xhci_softc*, i32, i64, i64)* @xhci_cmd_configure_ep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_cmd_configure_ep(%struct.xhci_softc* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.xhci_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.xhci_trb, align 8
  %10 = alloca i32, align 4
  store %struct.xhci_softc* %0, %struct.xhci_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = call i32 @DPRINTF(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @htole64(i32 %12)
  %14 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %9, i32 0, i32 2
  store i32 %13, i32* %14, align 8
  %15 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %9, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* @XHCI_TRB_TYPE_CONFIGURE_EP, align 4
  %17 = call i32 @XHCI_TRB_3_TYPE_SET(i32 %16)
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @XHCI_TRB_3_SLOT_SET(i64 %18)
  %20 = or i32 %17, %19
  store i32 %20, i32* %10, align 4
  %21 = load i64, i64* %7, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %4
  %24 = load i32, i32* @XHCI_TRB_3_DCEP_BIT, align 4
  %25 = load i32, i32* %10, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %10, align 4
  br label %27

27:                                               ; preds = %23, %4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @htole32(i32 %28)
  %30 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %9, i32 0, i32 0
  store i32 %29, i32* %30, align 8
  %31 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %32 = call i32 @xhci_do_command(%struct.xhci_softc* %31, %struct.xhci_trb* %9, i32 100)
  ret i32 %32
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @htole64(i32) #1

declare dso_local i32 @XHCI_TRB_3_TYPE_SET(i32) #1

declare dso_local i32 @XHCI_TRB_3_SLOT_SET(i64) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @xhci_do_command(%struct.xhci_softc*, %struct.xhci_trb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
