; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/misc/extr_uled.c_uled_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/misc/extr_uled.c_uled_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_fifo = type { i32 }
%struct.uled_softc = type { i32 }

@FREAD = common dso_local global i32 0, align 4
@ULED_ENABLED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_fifo*, i32)* @uled_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uled_open(%struct.usb_fifo* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_fifo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.uled_softc*, align 8
  %7 = alloca i32, align 4
  store %struct.usb_fifo* %0, %struct.usb_fifo** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @FREAD, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %2
  %13 = load %struct.usb_fifo*, %struct.usb_fifo** %4, align 8
  %14 = call %struct.uled_softc* @usb_fifo_softc(%struct.usb_fifo* %13)
  store %struct.uled_softc* %14, %struct.uled_softc** %6, align 8
  %15 = load %struct.uled_softc*, %struct.uled_softc** %6, align 8
  %16 = getelementptr inbounds %struct.uled_softc, %struct.uled_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @ULED_ENABLED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %12
  %22 = load i32, i32* @EBUSY, align 4
  store i32 %22, i32* %3, align 4
  br label %31

23:                                               ; preds = %12
  %24 = load %struct.uled_softc*, %struct.uled_softc** %6, align 8
  %25 = call i32 @uled_enable(%struct.uled_softc* %24)
  store i32 %25, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %31

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %29, %2
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %27, %21
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local %struct.uled_softc* @usb_fifo_softc(%struct.usb_fifo*) #1

declare dso_local i32 @uled_enable(%struct.uled_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
