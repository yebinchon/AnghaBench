; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_atp.c_atp_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_atp.c_atp_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_fifo = type { i32 }
%struct.atp_softc = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@ATP_FIFO_BUF_SIZE = common dso_local global i32 0, align 4
@ATP_FIFO_QUEUE_MAXLEN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_fifo*, i32)* @atp_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atp_open(%struct.usb_fifo* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_fifo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.atp_softc*, align 8
  %7 = alloca i32, align 4
  store %struct.usb_fifo* %0, %struct.usb_fifo** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.usb_fifo*, %struct.usb_fifo** %4, align 8
  %9 = call %struct.atp_softc* @usb_fifo_softc(%struct.usb_fifo* %8)
  store %struct.atp_softc* %9, %struct.atp_softc** %6, align 8
  %10 = load %struct.atp_softc*, %struct.atp_softc** %6, align 8
  %11 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @EBUSY, align 4
  store i32 %17, i32* %3, align 4
  br label %54

18:                                               ; preds = %2
  %19 = load %struct.atp_softc*, %struct.atp_softc** %6, align 8
  %20 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load %struct.atp_softc*, %struct.atp_softc** %6, align 8
  %25 = call i32 @atp_enable(%struct.atp_softc* %24)
  store i32 %25, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %54

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %29, %18
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @FREAD, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = load %struct.usb_fifo*, %struct.usb_fifo** %4, align 8
  %37 = load i32, i32* @ATP_FIFO_BUF_SIZE, align 4
  %38 = load i32, i32* @ATP_FIFO_QUEUE_MAXLEN, align 4
  %39 = call i64 @usb_fifo_alloc_buffer(%struct.usb_fifo* %36, i32 %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @ENOMEM, align 4
  store i32 %42, i32* %3, align 4
  br label %54

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43, %30
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @FREAD, align 4
  %47 = load i32, i32* @FWRITE, align 4
  %48 = or i32 %46, %47
  %49 = and i32 %45, %48
  %50 = load %struct.atp_softc*, %struct.atp_softc** %6, align 8
  %51 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %44, %41, %27, %16
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.atp_softc* @usb_fifo_softc(%struct.usb_fifo*) #1

declare dso_local i32 @atp_enable(%struct.atp_softc*) #1

declare dso_local i64 @usb_fifo_alloc_buffer(%struct.usb_fifo*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
