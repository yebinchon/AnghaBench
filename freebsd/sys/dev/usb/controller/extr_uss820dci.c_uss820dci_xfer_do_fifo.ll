; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uss820dci.c_uss820dci_xfer_do_fifo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uss820dci.c_uss820dci_xfer_do_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i8*, %struct.uss820dci_td*, %struct.TYPE_2__* }
%struct.uss820dci_td = type { i64, %struct.uss820dci_td*, i32, i64, i64 (%struct.uss820dci_softc*, %struct.uss820dci_td*)* }
%struct.uss820dci_softc = type opaque
%struct.TYPE_2__ = type { i32 }
%struct.uss820dci_softc.0 = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*)* @uss820dci_xfer_do_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uss820dci_xfer_do_fifo(%struct.usb_xfer* %0) #0 {
  %2 = alloca %struct.usb_xfer*, align 8
  %3 = alloca %struct.uss820dci_softc.0*, align 8
  %4 = alloca %struct.uss820dci_td*, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %2, align 8
  %5 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %6 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.uss820dci_softc.0* @USS820_DCI_BUS2SC(i32 %9)
  store %struct.uss820dci_softc.0* %10, %struct.uss820dci_softc.0** %3, align 8
  %11 = call i32 @DPRINTFN(i32 9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %13 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %12, i32 0, i32 1
  %14 = load %struct.uss820dci_td*, %struct.uss820dci_td** %13, align 8
  store %struct.uss820dci_td* %14, %struct.uss820dci_td** %4, align 8
  %15 = load %struct.uss820dci_td*, %struct.uss820dci_td** %4, align 8
  %16 = icmp eq %struct.uss820dci_td* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %69

18:                                               ; preds = %1
  br label %19

19:                                               ; preds = %18, %56
  %20 = load %struct.uss820dci_td*, %struct.uss820dci_td** %4, align 8
  %21 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %20, i32 0, i32 4
  %22 = load i64 (%struct.uss820dci_softc*, %struct.uss820dci_td*)*, i64 (%struct.uss820dci_softc*, %struct.uss820dci_td*)** %21, align 8
  %23 = load %struct.uss820dci_softc.0*, %struct.uss820dci_softc.0** %3, align 8
  %24 = bitcast %struct.uss820dci_softc.0* %23 to %struct.uss820dci_softc*
  %25 = load %struct.uss820dci_td*, %struct.uss820dci_td** %4, align 8
  %26 = call i64 %22(%struct.uss820dci_softc* %24, %struct.uss820dci_td* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %63

29:                                               ; preds = %19
  %30 = load %struct.uss820dci_td*, %struct.uss820dci_td** %4, align 8
  %31 = bitcast %struct.uss820dci_td* %30 to i8*
  %32 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %33 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = icmp eq i8* %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %64

37:                                               ; preds = %29
  %38 = load %struct.uss820dci_td*, %struct.uss820dci_td** %4, align 8
  %39 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %64

43:                                               ; preds = %37
  %44 = load %struct.uss820dci_td*, %struct.uss820dci_td** %4, align 8
  %45 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load %struct.uss820dci_td*, %struct.uss820dci_td** %4, align 8
  %50 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  br label %64

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54, %43
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.uss820dci_td*, %struct.uss820dci_td** %4, align 8
  %58 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %57, i32 0, i32 1
  %59 = load %struct.uss820dci_td*, %struct.uss820dci_td** %58, align 8
  store %struct.uss820dci_td* %59, %struct.uss820dci_td** %4, align 8
  %60 = load %struct.uss820dci_td*, %struct.uss820dci_td** %4, align 8
  %61 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %62 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %61, i32 0, i32 1
  store %struct.uss820dci_td* %60, %struct.uss820dci_td** %62, align 8
  br label %19

63:                                               ; preds = %28
  br label %69

64:                                               ; preds = %53, %42, %36
  %65 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %66 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %65, i32 0, i32 1
  store %struct.uss820dci_td* null, %struct.uss820dci_td** %66, align 8
  %67 = load %struct.uss820dci_softc.0*, %struct.uss820dci_softc.0** %3, align 8
  %68 = getelementptr inbounds %struct.uss820dci_softc.0, %struct.uss820dci_softc.0* %67, i32 0, i32 0
  store i32 1, i32* %68, align 4
  br label %69

69:                                               ; preds = %64, %63, %17
  ret void
}

declare dso_local %struct.uss820dci_softc.0* @USS820_DCI_BUS2SC(i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
