; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_uep.c_uep_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_uep.c_uep_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_fifo = type { i32 }
%struct.uep_softc = type { i32 }

@FREAD = common dso_local global i32 0, align 4
@UEP_ENABLED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@UEP_FIFO_BUF_SIZE = common dso_local global i32 0, align 4
@UEP_FIFO_QUEUE_MAXLEN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_fifo*, i32)* @uep_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uep_open(%struct.usb_fifo* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_fifo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.uep_softc*, align 8
  store %struct.usb_fifo* %0, %struct.usb_fifo** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @FREAD, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %36

11:                                               ; preds = %2
  %12 = load %struct.usb_fifo*, %struct.usb_fifo** %4, align 8
  %13 = call %struct.uep_softc* @usb_fifo_softc(%struct.usb_fifo* %12)
  store %struct.uep_softc* %13, %struct.uep_softc** %6, align 8
  %14 = load %struct.uep_softc*, %struct.uep_softc** %6, align 8
  %15 = getelementptr inbounds %struct.uep_softc, %struct.uep_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @UEP_ENABLED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %11
  %21 = load i32, i32* @EBUSY, align 4
  store i32 %21, i32* %3, align 4
  br label %37

22:                                               ; preds = %11
  %23 = load %struct.usb_fifo*, %struct.usb_fifo** %4, align 8
  %24 = load i32, i32* @UEP_FIFO_BUF_SIZE, align 4
  %25 = load i32, i32* @UEP_FIFO_QUEUE_MAXLEN, align 4
  %26 = call i64 @usb_fifo_alloc_buffer(%struct.usb_fifo* %23, i32 %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @ENOMEM, align 4
  store i32 %29, i32* %3, align 4
  br label %37

30:                                               ; preds = %22
  %31 = load i32, i32* @UEP_ENABLED, align 4
  %32 = load %struct.uep_softc*, %struct.uep_softc** %6, align 8
  %33 = getelementptr inbounds %struct.uep_softc, %struct.uep_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %30, %2
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %28, %20
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.uep_softc* @usb_fifo_softc(%struct.usb_fifo*) #1

declare dso_local i64 @usb_fifo_alloc_buffer(%struct.usb_fifo*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
