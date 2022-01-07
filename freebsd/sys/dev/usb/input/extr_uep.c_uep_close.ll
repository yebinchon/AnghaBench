; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_uep.c_uep_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_uep.c_uep_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_fifo = type { i32 }
%struct.uep_softc = type { i32 }

@FREAD = common dso_local global i32 0, align 4
@UEP_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_fifo*, i32)* @uep_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uep_close(%struct.usb_fifo* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_fifo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uep_softc*, align 8
  store %struct.usb_fifo* %0, %struct.usb_fifo** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @FREAD, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load %struct.usb_fifo*, %struct.usb_fifo** %3, align 8
  %12 = call %struct.uep_softc* @usb_fifo_softc(%struct.usb_fifo* %11)
  store %struct.uep_softc* %12, %struct.uep_softc** %5, align 8
  %13 = load i32, i32* @UEP_ENABLED, align 4
  %14 = xor i32 %13, -1
  %15 = load %struct.uep_softc*, %struct.uep_softc** %5, align 8
  %16 = getelementptr inbounds %struct.uep_softc, %struct.uep_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load %struct.usb_fifo*, %struct.usb_fifo** %3, align 8
  %20 = call i32 @usb_fifo_free_buffer(%struct.usb_fifo* %19)
  br label %21

21:                                               ; preds = %10, %2
  ret void
}

declare dso_local %struct.uep_softc* @usb_fifo_softc(%struct.usb_fifo*) #1

declare dso_local i32 @usb_fifo_free_buffer(%struct.usb_fifo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
