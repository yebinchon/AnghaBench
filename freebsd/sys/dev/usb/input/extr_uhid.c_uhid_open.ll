; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_uhid.c_uhid_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_uhid.c_uhid_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_fifo = type { i32 }
%struct.uhid_softc = type { i64, i64, i32, i32 }

@FREAD = common dso_local global i32 0, align 4
@UHID_FLAG_IMMED = common dso_local global i32 0, align 4
@UHID_FRAME_NUM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_fifo*, i32)* @uhid_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uhid_open(%struct.usb_fifo* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_fifo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.uhid_softc*, align 8
  store %struct.usb_fifo* %0, %struct.usb_fifo** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.usb_fifo*, %struct.usb_fifo** %4, align 8
  %8 = call %struct.uhid_softc* @usb_fifo_softc(%struct.usb_fifo* %7)
  store %struct.uhid_softc* %8, %struct.uhid_softc** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @FREAD, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %37

13:                                               ; preds = %2
  %14 = load %struct.uhid_softc*, %struct.uhid_softc** %6, align 8
  %15 = getelementptr inbounds %struct.uhid_softc, %struct.uhid_softc* %14, i32 0, i32 2
  %16 = call i32 @mtx_lock(i32* %15)
  %17 = load i32, i32* @UHID_FLAG_IMMED, align 4
  %18 = xor i32 %17, -1
  %19 = load %struct.uhid_softc*, %struct.uhid_softc** %6, align 8
  %20 = getelementptr inbounds %struct.uhid_softc, %struct.uhid_softc* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load %struct.uhid_softc*, %struct.uhid_softc** %6, align 8
  %24 = getelementptr inbounds %struct.uhid_softc, %struct.uhid_softc* %23, i32 0, i32 2
  %25 = call i32 @mtx_unlock(i32* %24)
  %26 = load %struct.usb_fifo*, %struct.usb_fifo** %4, align 8
  %27 = load %struct.uhid_softc*, %struct.uhid_softc** %6, align 8
  %28 = getelementptr inbounds %struct.uhid_softc, %struct.uhid_softc* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 1
  %31 = load i32, i32* @UHID_FRAME_NUM, align 4
  %32 = call i64 @usb_fifo_alloc_buffer(%struct.usb_fifo* %26, i64 %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %13
  %35 = load i32, i32* @ENOMEM, align 4
  store i32 %35, i32* %3, align 4
  br label %55

36:                                               ; preds = %13
  br label %37

37:                                               ; preds = %36, %2
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @FWRITE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %37
  %43 = load %struct.usb_fifo*, %struct.usb_fifo** %4, align 8
  %44 = load %struct.uhid_softc*, %struct.uhid_softc** %6, align 8
  %45 = getelementptr inbounds %struct.uhid_softc, %struct.uhid_softc* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, 1
  %48 = load i32, i32* @UHID_FRAME_NUM, align 4
  %49 = call i64 @usb_fifo_alloc_buffer(%struct.usb_fifo* %43, i64 %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = load i32, i32* @ENOMEM, align 4
  store i32 %52, i32* %3, align 4
  br label %55

53:                                               ; preds = %42
  br label %54

54:                                               ; preds = %53, %37
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %51, %34
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.uhid_softc* @usb_fifo_softc(%struct.usb_fifo*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i64 @usb_fifo_alloc_buffer(%struct.usb_fifo*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
