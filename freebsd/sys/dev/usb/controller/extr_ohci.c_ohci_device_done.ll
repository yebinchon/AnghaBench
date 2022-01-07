; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ohci.c_ohci_device_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ohci.c_ohci_device_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_pipe_methods = type { i32 }
%struct.usb_xfer = type { i64, i32*, i32*, %struct.TYPE_9__, %struct.TYPE_11__**, %struct.TYPE_12__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { %struct.usb_pipe_methods* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32*, i32, i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"xfer=%p, endpoint=%p, error=%d\0A\00", align 1
@ohci_device_bulk_methods = common dso_local global %struct.usb_pipe_methods zeroinitializer, align 4
@ohci_device_ctrl_methods = common dso_local global %struct.usb_pipe_methods zeroinitializer, align 4
@ohci_device_intr_methods = common dso_local global %struct.usb_pipe_methods zeroinitializer, align 4
@ohci_device_isoc_methods = common dso_local global %struct.usb_pipe_methods zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @ohci_device_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ohci_device_done(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_pipe_methods*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %9 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %8, i32 0, i32 5
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load %struct.usb_pipe_methods*, %struct.usb_pipe_methods** %11, align 8
  store %struct.usb_pipe_methods* %12, %struct.usb_pipe_methods** %5, align 8
  %13 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %14 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %13, i32 0, i32 6
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.TYPE_10__* @OHCI_BUS2SC(i32 %17)
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %6, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 4
  %21 = load i32, i32* @MA_OWNED, align 4
  %22 = call i32 @USB_BUS_LOCK_ASSERT(i32* %20, i32 %21)
  %23 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %24 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %25 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %24, i32 0, i32 5
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @DPRINTFN(i32 2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.usb_xfer* %23, %struct.TYPE_12__* %26, i32 %27)
  %29 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %30 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %29, i32 0, i32 4
  %31 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %30, align 8
  %32 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %33 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %31, i64 %35
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  store %struct.TYPE_11__* %37, %struct.TYPE_11__** %7, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %39 = icmp ne %struct.TYPE_11__* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %2
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @usb_pc_cpu_invalidate(i32 %43)
  br label %45

45:                                               ; preds = %40, %2
  %46 = load %struct.usb_pipe_methods*, %struct.usb_pipe_methods** %5, align 8
  %47 = icmp eq %struct.usb_pipe_methods* %46, @ohci_device_bulk_methods
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @OHCI_REMOVE_QH(%struct.TYPE_11__* %49, i32 %52)
  br label %54

54:                                               ; preds = %48, %45
  %55 = load %struct.usb_pipe_methods*, %struct.usb_pipe_methods** %5, align 8
  %56 = icmp eq %struct.usb_pipe_methods* %55, @ohci_device_ctrl_methods
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @OHCI_REMOVE_QH(%struct.TYPE_11__* %58, i32 %61)
  br label %63

63:                                               ; preds = %57, %54
  %64 = load %struct.usb_pipe_methods*, %struct.usb_pipe_methods** %5, align 8
  %65 = icmp eq %struct.usb_pipe_methods* %64, @ohci_device_intr_methods
  br i1 %65, label %66, label %77

66:                                               ; preds = %63
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %72 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @OHCI_REMOVE_QH(%struct.TYPE_11__* %67, i32 %75)
  br label %77

77:                                               ; preds = %66, %63
  %78 = load %struct.usb_pipe_methods*, %struct.usb_pipe_methods** %5, align 8
  %79 = icmp eq %struct.usb_pipe_methods* %78, @ohci_device_isoc_methods
  br i1 %79, label %80, label %86

80:                                               ; preds = %77
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @OHCI_REMOVE_QH(%struct.TYPE_11__* %81, i32 %84)
  br label %86

86:                                               ; preds = %80, %77
  %87 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %88 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %87, i32 0, i32 2
  store i32* null, i32** %88, align 8
  %89 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %90 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %89, i32 0, i32 1
  store i32* null, i32** %90, align 8
  %91 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %92 = load i32, i32* %4, align 4
  %93 = call i32 @usbd_transfer_done(%struct.usb_xfer* %91, i32 %92)
  ret void
}

declare dso_local %struct.TYPE_10__* @OHCI_BUS2SC(i32) #1

declare dso_local i32 @USB_BUS_LOCK_ASSERT(i32*, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, %struct.usb_xfer*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @usb_pc_cpu_invalidate(i32) #1

declare dso_local i32 @OHCI_REMOVE_QH(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @usbd_transfer_done(%struct.usb_xfer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
