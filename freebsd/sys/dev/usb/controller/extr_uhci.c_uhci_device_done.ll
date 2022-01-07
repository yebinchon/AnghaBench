; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uhci.c_uhci_device_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uhci.c_uhci_device_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_pipe_methods = type { i32 }
%struct.usb_xfer = type { i64, i32*, i32*, %struct.TYPE_14__*, %struct.TYPE_12__, %struct.TYPE_16__**, %struct.TYPE_11__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_11__ = type { %struct.usb_pipe_methods* }
%struct.TYPE_15__ = type { i32*, i32, i32, i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"xfer=%p, endpoint=%p, error=%d\0A\00", align 1
@uhci_device_bulk_methods = common dso_local global %struct.usb_pipe_methods zeroinitializer, align 4
@uhci_device_ctrl_methods = common dso_local global %struct.usb_pipe_methods zeroinitializer, align 4
@USB_SPEED_LOW = common dso_local global i64 0, align 8
@uhci_device_intr_methods = common dso_local global %struct.usb_pipe_methods zeroinitializer, align 4
@uhci_device_isoc_methods = common dso_local global %struct.usb_pipe_methods zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @uhci_device_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uhci_device_done(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_pipe_methods*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %9 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %8, i32 0, i32 6
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load %struct.usb_pipe_methods*, %struct.usb_pipe_methods** %11, align 8
  store %struct.usb_pipe_methods* %12, %struct.usb_pipe_methods** %5, align 8
  %13 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %14 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %13, i32 0, i32 3
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.TYPE_15__* @UHCI_BUS2SC(i32 %17)
  store %struct.TYPE_15__* %18, %struct.TYPE_15__** %6, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 4
  %21 = load i32, i32* @MA_OWNED, align 4
  %22 = call i32 @USB_BUS_LOCK_ASSERT(i32* %20, i32 %21)
  %23 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %24 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %25 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %24, i32 0, i32 6
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @DPRINTFN(i32 2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.usb_xfer* %23, %struct.TYPE_11__* %26, i32 %27)
  %29 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %30 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %29, i32 0, i32 5
  %31 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %30, align 8
  %32 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %33 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %31, i64 %35
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %36, align 8
  store %struct.TYPE_16__* %37, %struct.TYPE_16__** %7, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %39 = icmp ne %struct.TYPE_16__* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %2
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @usb_pc_cpu_invalidate(i32 %43)
  br label %45

45:                                               ; preds = %40, %2
  %46 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %47 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %53 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %56 = call i32 @uhci_rem_loop(%struct.TYPE_15__* %55)
  br label %57

57:                                               ; preds = %51, %45
  %58 = load %struct.usb_pipe_methods*, %struct.usb_pipe_methods** %5, align 8
  %59 = icmp eq %struct.usb_pipe_methods* %58, @uhci_device_bulk_methods
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @UHCI_REMOVE_QH(%struct.TYPE_16__* %61, i32 %64)
  br label %66

66:                                               ; preds = %60, %57
  %67 = load %struct.usb_pipe_methods*, %struct.usb_pipe_methods** %5, align 8
  %68 = icmp eq %struct.usb_pipe_methods* %67, @uhci_device_ctrl_methods
  br i1 %68, label %69, label %92

69:                                               ; preds = %66
  %70 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %71 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %70, i32 0, i32 3
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @USB_SPEED_LOW, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %69
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @UHCI_REMOVE_QH(%struct.TYPE_16__* %80, i32 %83)
  br label %91

85:                                               ; preds = %69
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @UHCI_REMOVE_QH(%struct.TYPE_16__* %86, i32 %89)
  br label %91

91:                                               ; preds = %85, %79
  br label %92

92:                                               ; preds = %91, %66
  %93 = load %struct.usb_pipe_methods*, %struct.usb_pipe_methods** %5, align 8
  %94 = icmp eq %struct.usb_pipe_methods* %93, @uhci_device_intr_methods
  br i1 %94, label %95, label %106

95:                                               ; preds = %92
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %101 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds i32, i32* %99, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @UHCI_REMOVE_QH(%struct.TYPE_16__* %96, i32 %104)
  br label %106

106:                                              ; preds = %95, %92
  %107 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %108 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %128

111:                                              ; preds = %106
  %112 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %113 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %128

116:                                              ; preds = %111
  %117 = load %struct.usb_pipe_methods*, %struct.usb_pipe_methods** %5, align 8
  %118 = icmp eq %struct.usb_pipe_methods* %117, @uhci_device_isoc_methods
  br i1 %118, label %119, label %123

119:                                              ; preds = %116
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %121 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %122 = call i32 @uhci_isoc_done(%struct.TYPE_15__* %120, %struct.usb_xfer* %121)
  br label %123

123:                                              ; preds = %119, %116
  %124 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %125 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %124, i32 0, i32 2
  store i32* null, i32** %125, align 8
  %126 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %127 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %126, i32 0, i32 1
  store i32* null, i32** %127, align 8
  br label %128

128:                                              ; preds = %123, %111, %106
  %129 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %130 = load i32, i32* %4, align 4
  %131 = call i32 @usbd_transfer_done(%struct.usb_xfer* %129, i32 %130)
  ret void
}

declare dso_local %struct.TYPE_15__* @UHCI_BUS2SC(i32) #1

declare dso_local i32 @USB_BUS_LOCK_ASSERT(i32*, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, %struct.usb_xfer*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @usb_pc_cpu_invalidate(i32) #1

declare dso_local i32 @uhci_rem_loop(%struct.TYPE_15__*) #1

declare dso_local i32 @UHCI_REMOVE_QH(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @uhci_isoc_done(%struct.TYPE_15__*, %struct.usb_xfer*) #1

declare dso_local i32 @usbd_transfer_done(%struct.usb_xfer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
