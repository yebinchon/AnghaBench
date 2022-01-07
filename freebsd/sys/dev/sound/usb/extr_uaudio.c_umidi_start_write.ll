; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_umidi_start_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_umidi_start_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_fifo = type { i32 }
%struct.umidi_chan = type { i32** }

@UMIDI_TX_TRANSFER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_fifo*)* @umidi_start_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @umidi_start_write(%struct.usb_fifo* %0) #0 {
  %2 = alloca %struct.usb_fifo*, align 8
  %3 = alloca %struct.umidi_chan*, align 8
  %4 = alloca [1 x i32], align 4
  %5 = alloca i32, align 4
  store %struct.usb_fifo* %0, %struct.usb_fifo** %2, align 8
  %6 = load %struct.usb_fifo*, %struct.usb_fifo** %2, align 8
  %7 = call %struct.umidi_chan* @usb_fifo_softc(%struct.usb_fifo* %6)
  store %struct.umidi_chan* %7, %struct.umidi_chan** %3, align 8
  %8 = load %struct.umidi_chan*, %struct.umidi_chan** %3, align 8
  %9 = getelementptr inbounds %struct.umidi_chan, %struct.umidi_chan* %8, i32 0, i32 0
  %10 = load i32**, i32*** %9, align 8
  %11 = load i64, i64* @UMIDI_TX_TRANSFER, align 8
  %12 = getelementptr inbounds i32*, i32** %10, i64 %11
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %20, %15
  %17 = load %struct.usb_fifo*, %struct.usb_fifo** %2, align 8
  %18 = getelementptr inbounds [1 x i32], [1 x i32]* %4, i64 0, i64 0
  %19 = call i32 @usb_fifo_get_data_linear(%struct.usb_fifo* %17, i32* %18, i32 1, i32* %5, i32 0)
  br label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %16, label %23

23:                                               ; preds = %20
  br label %32

24:                                               ; preds = %1
  %25 = load %struct.umidi_chan*, %struct.umidi_chan** %3, align 8
  %26 = getelementptr inbounds %struct.umidi_chan, %struct.umidi_chan* %25, i32 0, i32 0
  %27 = load i32**, i32*** %26, align 8
  %28 = load i64, i64* @UMIDI_TX_TRANSFER, align 8
  %29 = getelementptr inbounds i32*, i32** %27, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @usbd_transfer_start(i32* %30)
  br label %32

32:                                               ; preds = %24, %23
  ret void
}

declare dso_local %struct.umidi_chan* @usb_fifo_softc(%struct.usb_fifo*) #1

declare dso_local i32 @usb_fifo_get_data_linear(%struct.usb_fifo*, i32*, i32, i32*, i32) #1

declare dso_local i32 @usbd_transfer_start(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
