; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uhci.c_uhci_restart.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uhci.c_uhci_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.usb_page_search = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@UHCI_CMD = common dso_local global i32 0, align 4
@UHCI_CMD_RS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Already started\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Restarting\0A\00", align 1
@UHCI_FLBASEADDR = common dso_local global i32 0, align 4
@UHCI_CMD_MAXP = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@UHCI_STS = common dso_local global i32 0, align 4
@UHCI_STS_HCH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"Failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @uhci_restart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uhci_restart(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.usb_page_search, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %7 = load i32, i32* @MA_OWNED, align 4
  %8 = call i32 @USB_BUS_LOCK_ASSERT(%struct.TYPE_10__* %6, i32 %7)
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %10 = load i32, i32* @UHCI_CMD, align 4
  %11 = call i32 @UREAD2(%struct.TYPE_9__* %9, i32 %10)
  %12 = load i32, i32* @UHCI_CMD_RS, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = call i32 @DPRINTFN(i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %48

17:                                               ; preds = %1
  %18 = call i32 @DPRINTFN(i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = call i32 @usbd_get_page(i32* %21, i32 0, %struct.usb_page_search* %4)
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %24 = load i32, i32* @UHCI_FLBASEADDR, align 4
  %25 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @UWRITE4(%struct.TYPE_9__* %23, i32 %24, i32 %26)
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = load i32, i32* @UHCI_CMD_MAXP, align 4
  %30 = load i32, i32* @UHCI_CMD_RS, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @UHCICMD(%struct.TYPE_9__* %28, i32 %31)
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* @hz, align 4
  %37 = sdiv i32 %36, 100
  %38 = call i32 @usb_pause_mtx(i32* %35, i32 %37)
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %40 = load i32, i32* @UHCI_STS, align 4
  %41 = call i32 @UREAD2(%struct.TYPE_9__* %39, i32 %40)
  %42 = load i32, i32* @UHCI_STS_HCH, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %17
  %46 = call i32 @DPRINTFN(i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %48

47:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %45, %15
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @USB_BUS_LOCK_ASSERT(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @UREAD2(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*) #1

declare dso_local i32 @usbd_get_page(i32*, i32, %struct.usb_page_search*) #1

declare dso_local i32 @UWRITE4(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @UHCICMD(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @usb_pause_mtx(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
