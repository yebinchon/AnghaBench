; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ehci.c_ehci_device_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ehci.c_ehci_device_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_pipe_methods = type { i32 }
%struct.usb_xfer = type { i64, i32*, i32*, %struct.TYPE_10__, i32*, %struct.TYPE_12__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_12__ = type { i32, %struct.usb_pipe_methods* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32*, i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"xfer=%p, endpoint=%p, error=%d\0A\00", align 1
@ehci_device_bulk_methods = common dso_local global %struct.usb_pipe_methods zeroinitializer, align 4
@ehci_device_ctrl_methods = common dso_local global %struct.usb_pipe_methods zeroinitializer, align 4
@ehci_device_intr_methods = common dso_local global %struct.usb_pipe_methods zeroinitializer, align 4
@ehci_device_isoc_fs_methods = common dso_local global %struct.usb_pipe_methods zeroinitializer, align 4
@ehci_device_isoc_hs_methods = common dso_local global %struct.usb_pipe_methods zeroinitializer, align 4
@ehcidebug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @ehci_device_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehci_device_done(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_pipe_methods*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %8 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %7, i32 0, i32 5
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  %11 = load %struct.usb_pipe_methods*, %struct.usb_pipe_methods** %10, align 8
  store %struct.usb_pipe_methods* %11, %struct.usb_pipe_methods** %5, align 8
  %12 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %13 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %12, i32 0, i32 6
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.TYPE_11__* @EHCI_BUS2SC(i32 %16)
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %6, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 2
  %20 = load i32, i32* @MA_OWNED, align 4
  %21 = call i32 @USB_BUS_LOCK_ASSERT(i32* %19, i32 %20)
  %22 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %23 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %24 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %23, i32 0, i32 5
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @DPRINTFN(i32 2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.usb_xfer* %22, %struct.TYPE_12__* %25, i32 %26)
  %28 = load %struct.usb_pipe_methods*, %struct.usb_pipe_methods** %5, align 8
  %29 = icmp eq %struct.usb_pipe_methods* %28, @ehci_device_bulk_methods
  br i1 %29, label %33, label %30

30:                                               ; preds = %2
  %31 = load %struct.usb_pipe_methods*, %struct.usb_pipe_methods** %5, align 8
  %32 = icmp eq %struct.usb_pipe_methods* %31, @ehci_device_ctrl_methods
  br i1 %32, label %33, label %47

33:                                               ; preds = %30, %2
  %34 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %35 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %34, i32 0, i32 4
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %38 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i32, i32* %36, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @EHCI_REMOVE_QH(i32 %42, i32 %45)
  br label %47

47:                                               ; preds = %33, %30
  %48 = load %struct.usb_pipe_methods*, %struct.usb_pipe_methods** %5, align 8
  %49 = icmp eq %struct.usb_pipe_methods* %48, @ehci_device_intr_methods
  br i1 %49, label %50, label %69

50:                                               ; preds = %47
  %51 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %52 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %51, i32 0, i32 4
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %55 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds i32, i32* %53, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %64 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @EHCI_REMOVE_QH(i32 %59, i32 %67)
  br label %69

69:                                               ; preds = %50, %47
  %70 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %71 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %98

74:                                               ; preds = %69
  %75 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %76 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %98

79:                                               ; preds = %74
  %80 = load %struct.usb_pipe_methods*, %struct.usb_pipe_methods** %5, align 8
  %81 = icmp eq %struct.usb_pipe_methods* %80, @ehci_device_isoc_fs_methods
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %84 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %85 = call i32 @ehci_isoc_fs_done(%struct.TYPE_11__* %83, %struct.usb_xfer* %84)
  br label %86

86:                                               ; preds = %82, %79
  %87 = load %struct.usb_pipe_methods*, %struct.usb_pipe_methods** %5, align 8
  %88 = icmp eq %struct.usb_pipe_methods* %87, @ehci_device_isoc_hs_methods
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %91 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %92 = call i32 @ehci_isoc_hs_done(%struct.TYPE_11__* %90, %struct.usb_xfer* %91)
  br label %93

93:                                               ; preds = %89, %86
  %94 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %95 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %94, i32 0, i32 2
  store i32* null, i32** %95, align 8
  %96 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %97 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %96, i32 0, i32 1
  store i32* null, i32** %97, align 8
  br label %98

98:                                               ; preds = %93, %74, %69
  %99 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %100 = load i32, i32* %4, align 4
  %101 = call i32 @usbd_transfer_done(%struct.usb_xfer* %99, i32 %100)
  ret void
}

declare dso_local %struct.TYPE_11__* @EHCI_BUS2SC(i32) #1

declare dso_local i32 @USB_BUS_LOCK_ASSERT(i32*, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, %struct.usb_xfer*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @EHCI_REMOVE_QH(i32, i32) #1

declare dso_local i32 @ehci_isoc_fs_done(%struct.TYPE_11__*, %struct.usb_xfer*) #1

declare dso_local i32 @ehci_isoc_hs_done(%struct.TYPE_11__*, %struct.usb_xfer*) #1

declare dso_local i32 @usbd_transfer_done(%struct.usb_xfer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
