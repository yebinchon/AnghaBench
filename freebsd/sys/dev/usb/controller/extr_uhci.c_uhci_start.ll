; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uhci.c_uhci_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uhci.c_uhci_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"enabling\0A\00", align 1
@UHCI_INTR = common dso_local global i32 0, align 4
@UHCI_INTR_TOCRCIE = common dso_local global i32 0, align 4
@UHCI_INTR_RIE = common dso_local global i32 0, align 4
@UHCI_INTR_IOCE = common dso_local global i32 0, align 4
@UHCI_INTR_SPIE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"cannot start HC controller\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @uhci_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uhci_start(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %3 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %5 = load i32, i32* @MA_OWNED, align 4
  %6 = call i32 @USB_BUS_LOCK_ASSERT(%struct.TYPE_8__* %4, i32 %5)
  %7 = call i32 @DPRINTFN(i32 2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %9 = load i32, i32* @UHCI_INTR, align 4
  %10 = load i32, i32* @UHCI_INTR_TOCRCIE, align 4
  %11 = load i32, i32* @UHCI_INTR_RIE, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @UHCI_INTR_IOCE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @UHCI_INTR_SPIE, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @UWRITE2(%struct.TYPE_7__* %8, i32 %9, i32 %16)
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %19 = call i64 @uhci_restart(%struct.TYPE_7__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @device_printf(i32 %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %21, %1
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %29 = call i32 @uhci_root_intr(%struct.TYPE_7__* %28)
  ret void
}

declare dso_local i32 @USB_BUS_LOCK_ASSERT(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*) #1

declare dso_local i32 @UWRITE2(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i64 @uhci_restart(%struct.TYPE_7__*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @uhci_root_intr(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
