; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_musb_otg.c_musbotg_xfer_do_fifo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_musb_otg.c_musbotg_xfer_do_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i8*, %struct.musbotg_td*, %struct.TYPE_2__* }
%struct.musbotg_td = type { i64, %struct.musbotg_td*, i32, i64, i64 (%struct.musbotg_td*)* }
%struct.TYPE_2__ = type { i32 }
%struct.musbotg_softc = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_xfer*)* @musbotg_xfer_do_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @musbotg_xfer_do_fifo(%struct.usb_xfer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca %struct.musbotg_softc*, align 8
  %5 = alloca %struct.musbotg_td*, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  %6 = call i32 @DPRINTFN(i32 8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %8 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.musbotg_softc* @MUSBOTG_BUS2SC(i32 %11)
  store %struct.musbotg_softc* %12, %struct.musbotg_softc** %4, align 8
  %13 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %14 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %13, i32 0, i32 1
  %15 = load %struct.musbotg_td*, %struct.musbotg_td** %14, align 8
  store %struct.musbotg_td* %15, %struct.musbotg_td** %5, align 8
  br label %16

16:                                               ; preds = %1, %51
  %17 = load %struct.musbotg_td*, %struct.musbotg_td** %5, align 8
  %18 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %17, i32 0, i32 4
  %19 = load i64 (%struct.musbotg_td*)*, i64 (%struct.musbotg_td*)** %18, align 8
  %20 = load %struct.musbotg_td*, %struct.musbotg_td** %5, align 8
  %21 = call i64 %19(%struct.musbotg_td* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %58

24:                                               ; preds = %16
  %25 = load %struct.musbotg_td*, %struct.musbotg_td** %5, align 8
  %26 = bitcast %struct.musbotg_td* %25 to i8*
  %27 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %28 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = icmp eq i8* %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %59

32:                                               ; preds = %24
  %33 = load %struct.musbotg_td*, %struct.musbotg_td** %5, align 8
  %34 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %59

38:                                               ; preds = %32
  %39 = load %struct.musbotg_td*, %struct.musbotg_td** %5, align 8
  %40 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load %struct.musbotg_td*, %struct.musbotg_td** %5, align 8
  %45 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  br label %59

49:                                               ; preds = %43
  br label %50

50:                                               ; preds = %49, %38
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.musbotg_td*, %struct.musbotg_td** %5, align 8
  %53 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %52, i32 0, i32 1
  %54 = load %struct.musbotg_td*, %struct.musbotg_td** %53, align 8
  store %struct.musbotg_td* %54, %struct.musbotg_td** %5, align 8
  %55 = load %struct.musbotg_td*, %struct.musbotg_td** %5, align 8
  %56 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %57 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %56, i32 0, i32 1
  store %struct.musbotg_td* %55, %struct.musbotg_td** %57, align 8
  br label %16

58:                                               ; preds = %23
  store i32 1, i32* %2, align 4
  br label %62

59:                                               ; preds = %48, %37, %31
  %60 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %61 = call i32 @musbotg_standard_done(%struct.usb_xfer* %60)
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %59, %58
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @DPRINTFN(i32, i8*) #1

declare dso_local %struct.musbotg_softc* @MUSBOTG_BUS2SC(i32) #1

declare dso_local i32 @musbotg_standard_done(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
