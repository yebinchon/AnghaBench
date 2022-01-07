; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ulpt.c_unlpt_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ulpt.c_unlpt_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_fifo = type { i32 }
%struct.ulpt_softc = type { i32, %struct.usb_fifo**, i32*, i32 }

@EBUSY = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@ULPT_BULK_DT_RD = common dso_local global i64 0, align 8
@ULPT_IFQ_MAXLEN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_FIFO_RX = common dso_local global i64 0, align 8
@FWRITE = common dso_local global i32 0, align 4
@ULPT_BULK_DT_WR = common dso_local global i64 0, align 8
@USB_FIFO_TX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_fifo*, i32)* @unlpt_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unlpt_open(%struct.usb_fifo* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_fifo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ulpt_softc*, align 8
  store %struct.usb_fifo* %0, %struct.usb_fifo** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.usb_fifo*, %struct.usb_fifo** %4, align 8
  %8 = call %struct.ulpt_softc* @usb_fifo_softc(%struct.usb_fifo* %7)
  store %struct.ulpt_softc* %8, %struct.ulpt_softc** %6, align 8
  %9 = load %struct.ulpt_softc*, %struct.ulpt_softc** %6, align 8
  %10 = getelementptr inbounds %struct.ulpt_softc, %struct.ulpt_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @EBUSY, align 4
  store i32 %16, i32* %3, align 4
  br label %105

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @FREAD, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %56

22:                                               ; preds = %17
  %23 = load %struct.ulpt_softc*, %struct.ulpt_softc** %6, align 8
  %24 = getelementptr inbounds %struct.ulpt_softc, %struct.ulpt_softc* %23, i32 0, i32 3
  %25 = call i32 @mtx_lock(i32* %24)
  %26 = load %struct.ulpt_softc*, %struct.ulpt_softc** %6, align 8
  %27 = getelementptr inbounds %struct.ulpt_softc, %struct.ulpt_softc* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* @ULPT_BULK_DT_RD, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @usbd_xfer_set_stall(i32 %31)
  %33 = load %struct.ulpt_softc*, %struct.ulpt_softc** %6, align 8
  %34 = getelementptr inbounds %struct.ulpt_softc, %struct.ulpt_softc* %33, i32 0, i32 3
  %35 = call i32 @mtx_unlock(i32* %34)
  %36 = load %struct.usb_fifo*, %struct.usb_fifo** %4, align 8
  %37 = load %struct.ulpt_softc*, %struct.ulpt_softc** %6, align 8
  %38 = getelementptr inbounds %struct.ulpt_softc, %struct.ulpt_softc* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @ULPT_BULK_DT_RD, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @usbd_xfer_max_len(i32 %42)
  %44 = load i32, i32* @ULPT_IFQ_MAXLEN, align 4
  %45 = call i64 @usb_fifo_alloc_buffer(%struct.usb_fifo* %36, i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %22
  %48 = load i32, i32* @ENOMEM, align 4
  store i32 %48, i32* %3, align 4
  br label %105

49:                                               ; preds = %22
  %50 = load %struct.usb_fifo*, %struct.usb_fifo** %4, align 8
  %51 = load %struct.ulpt_softc*, %struct.ulpt_softc** %6, align 8
  %52 = getelementptr inbounds %struct.ulpt_softc, %struct.ulpt_softc* %51, i32 0, i32 1
  %53 = load %struct.usb_fifo**, %struct.usb_fifo*** %52, align 8
  %54 = load i64, i64* @USB_FIFO_RX, align 8
  %55 = getelementptr inbounds %struct.usb_fifo*, %struct.usb_fifo** %53, i64 %54
  store %struct.usb_fifo* %50, %struct.usb_fifo** %55, align 8
  br label %56

56:                                               ; preds = %49, %17
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @FWRITE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %95

61:                                               ; preds = %56
  %62 = load %struct.ulpt_softc*, %struct.ulpt_softc** %6, align 8
  %63 = getelementptr inbounds %struct.ulpt_softc, %struct.ulpt_softc* %62, i32 0, i32 3
  %64 = call i32 @mtx_lock(i32* %63)
  %65 = load %struct.ulpt_softc*, %struct.ulpt_softc** %6, align 8
  %66 = getelementptr inbounds %struct.ulpt_softc, %struct.ulpt_softc* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* @ULPT_BULK_DT_WR, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @usbd_xfer_set_stall(i32 %70)
  %72 = load %struct.ulpt_softc*, %struct.ulpt_softc** %6, align 8
  %73 = getelementptr inbounds %struct.ulpt_softc, %struct.ulpt_softc* %72, i32 0, i32 3
  %74 = call i32 @mtx_unlock(i32* %73)
  %75 = load %struct.usb_fifo*, %struct.usb_fifo** %4, align 8
  %76 = load %struct.ulpt_softc*, %struct.ulpt_softc** %6, align 8
  %77 = getelementptr inbounds %struct.ulpt_softc, %struct.ulpt_softc* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* @ULPT_BULK_DT_WR, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @usbd_xfer_max_len(i32 %81)
  %83 = load i32, i32* @ULPT_IFQ_MAXLEN, align 4
  %84 = call i64 @usb_fifo_alloc_buffer(%struct.usb_fifo* %75, i32 %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %61
  %87 = load i32, i32* @ENOMEM, align 4
  store i32 %87, i32* %3, align 4
  br label %105

88:                                               ; preds = %61
  %89 = load %struct.usb_fifo*, %struct.usb_fifo** %4, align 8
  %90 = load %struct.ulpt_softc*, %struct.ulpt_softc** %6, align 8
  %91 = getelementptr inbounds %struct.ulpt_softc, %struct.ulpt_softc* %90, i32 0, i32 1
  %92 = load %struct.usb_fifo**, %struct.usb_fifo*** %91, align 8
  %93 = load i64, i64* @USB_FIFO_TX, align 8
  %94 = getelementptr inbounds %struct.usb_fifo*, %struct.usb_fifo** %92, i64 %93
  store %struct.usb_fifo* %89, %struct.usb_fifo** %94, align 8
  br label %95

95:                                               ; preds = %88, %56
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @FREAD, align 4
  %98 = load i32, i32* @FWRITE, align 4
  %99 = or i32 %97, %98
  %100 = and i32 %96, %99
  %101 = load %struct.ulpt_softc*, %struct.ulpt_softc** %6, align 8
  %102 = getelementptr inbounds %struct.ulpt_softc, %struct.ulpt_softc* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 8
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %95, %86, %47, %15
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local %struct.ulpt_softc* @usb_fifo_softc(%struct.usb_fifo*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @usbd_xfer_set_stall(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i64 @usb_fifo_alloc_buffer(%struct.usb_fifo*, i32, i32) #1

declare dso_local i32 @usbd_xfer_max_len(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
