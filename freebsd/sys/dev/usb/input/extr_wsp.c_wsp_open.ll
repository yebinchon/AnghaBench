; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_wsp.c_wsp_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_wsp.c_wsp_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_fifo = type { i32 }
%struct.wsp_softc = type { i32 }

@WSP_LLEVEL_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@FREAD = common dso_local global i32 0, align 4
@WSP_ENABLED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@WSP_FIFO_BUF_SIZE = common dso_local global i32 0, align 4
@WSP_FIFO_QUEUE_MAXLEN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_fifo*, i32)* @wsp_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wsp_open(%struct.usb_fifo* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_fifo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wsp_softc*, align 8
  %7 = alloca i32, align 4
  store %struct.usb_fifo* %0, %struct.usb_fifo** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @WSP_LLEVEL_INFO, align 4
  %9 = call i32 @DPRINTFN(i32 %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @FREAD, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %43

14:                                               ; preds = %2
  %15 = load %struct.usb_fifo*, %struct.usb_fifo** %4, align 8
  %16 = call %struct.wsp_softc* @usb_fifo_softc(%struct.usb_fifo* %15)
  store %struct.wsp_softc* %16, %struct.wsp_softc** %6, align 8
  %17 = load %struct.wsp_softc*, %struct.wsp_softc** %6, align 8
  %18 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @WSP_ENABLED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i32, i32* @EBUSY, align 4
  store i32 %24, i32* %3, align 4
  br label %44

25:                                               ; preds = %14
  %26 = load %struct.usb_fifo*, %struct.usb_fifo** %4, align 8
  %27 = load i32, i32* @WSP_FIFO_BUF_SIZE, align 4
  %28 = load i32, i32* @WSP_FIFO_QUEUE_MAXLEN, align 4
  %29 = call i64 @usb_fifo_alloc_buffer(%struct.usb_fifo* %26, i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @ENOMEM, align 4
  store i32 %32, i32* %3, align 4
  br label %44

33:                                               ; preds = %25
  %34 = load %struct.wsp_softc*, %struct.wsp_softc** %6, align 8
  %35 = call i32 @wsp_enable(%struct.wsp_softc* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.usb_fifo*, %struct.usb_fifo** %4, align 8
  %40 = call i32 @usb_fifo_free_buffer(%struct.usb_fifo* %39)
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %3, align 4
  br label %44

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42, %2
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %38, %31, %23
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @DPRINTFN(i32, i8*) #1

declare dso_local %struct.wsp_softc* @usb_fifo_softc(%struct.usb_fifo*) #1

declare dso_local i64 @usb_fifo_alloc_buffer(%struct.usb_fifo*, i32, i32) #1

declare dso_local i32 @wsp_enable(%struct.wsp_softc*) #1

declare dso_local i32 @usb_fifo_free_buffer(%struct.usb_fifo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
