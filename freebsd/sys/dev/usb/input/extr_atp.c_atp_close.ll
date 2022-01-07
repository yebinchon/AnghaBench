; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_atp.c_atp_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_atp.c_atp_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_fifo = type { i32 }
%struct.atp_softc = type { i32 }

@FREAD = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_fifo*, i32)* @atp_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atp_close(%struct.usb_fifo* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_fifo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.atp_softc*, align 8
  store %struct.usb_fifo* %0, %struct.usb_fifo** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.usb_fifo*, %struct.usb_fifo** %3, align 8
  %7 = call %struct.atp_softc* @usb_fifo_softc(%struct.usb_fifo* %6)
  store %struct.atp_softc* %7, %struct.atp_softc** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @FREAD, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.usb_fifo*, %struct.usb_fifo** %3, align 8
  %14 = call i32 @usb_fifo_free_buffer(%struct.usb_fifo* %13)
  br label %15

15:                                               ; preds = %12, %2
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @FREAD, align 4
  %18 = load i32, i32* @FWRITE, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = xor i32 %20, -1
  %22 = load %struct.atp_softc*, %struct.atp_softc** %5, align 8
  %23 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load %struct.atp_softc*, %struct.atp_softc** %5, align 8
  %27 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %15
  %31 = load %struct.atp_softc*, %struct.atp_softc** %5, align 8
  %32 = call i32 @atp_disable(%struct.atp_softc* %31)
  br label %33

33:                                               ; preds = %30, %15
  ret void
}

declare dso_local %struct.atp_softc* @usb_fifo_softc(%struct.usb_fifo*) #1

declare dso_local i32 @usb_fifo_free_buffer(%struct.usb_fifo*) #1

declare dso_local i32 @atp_disable(%struct.atp_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
