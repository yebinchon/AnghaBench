; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_xfer_do_fifo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_xfer_do_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc_otg_softc = type { i32 }
%struct.usb_xfer = type { i8*, %struct.dwc_otg_td* }
%struct.dwc_otg_td = type { i64, i8*, i8*, i8*, %struct.dwc_otg_td*, i32, i64, i64 (%struct.dwc_otg_softc.0*, %struct.dwc_otg_td*)* }
%struct.dwc_otg_softc.0 = type opaque

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc_otg_softc*, %struct.usb_xfer*)* @dwc_otg_xfer_do_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc_otg_xfer_do_fifo(%struct.dwc_otg_softc* %0, %struct.usb_xfer* %1) #0 {
  %3 = alloca %struct.dwc_otg_softc*, align 8
  %4 = alloca %struct.usb_xfer*, align 8
  %5 = alloca %struct.dwc_otg_td*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.dwc_otg_softc* %0, %struct.dwc_otg_softc** %3, align 8
  store %struct.usb_xfer* %1, %struct.usb_xfer** %4, align 8
  %9 = call i32 @DPRINTFN(i32 9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %11 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %10, i32 0, i32 1
  %12 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %11, align 8
  store %struct.dwc_otg_td* %12, %struct.dwc_otg_td** %5, align 8
  %13 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %14 = icmp eq %struct.dwc_otg_td* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %85

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16, %54
  %18 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %19 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %18, i32 0, i32 7
  %20 = load i64 (%struct.dwc_otg_softc.0*, %struct.dwc_otg_td*)*, i64 (%struct.dwc_otg_softc.0*, %struct.dwc_otg_td*)** %19, align 8
  %21 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %22 = bitcast %struct.dwc_otg_softc* %21 to %struct.dwc_otg_softc.0*
  %23 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %24 = call i64 %20(%struct.dwc_otg_softc.0* %22, %struct.dwc_otg_td* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %79

27:                                               ; preds = %17
  %28 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %29 = bitcast %struct.dwc_otg_td* %28 to i8*
  %30 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %31 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = icmp eq i8* %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %80

35:                                               ; preds = %27
  %36 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %37 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %36, i32 0, i32 6
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %80

41:                                               ; preds = %35
  %42 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %43 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %48 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  br label %80

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %52, %41
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %56 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %55, i32 0, i32 2
  %57 = load i8*, i8** %56, align 8
  store i8* %57, i8** %8, align 8
  %58 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %59 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  store i8* %60, i8** %7, align 8
  %61 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %62 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %61, i32 0, i32 3
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %6, align 8
  %64 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %65 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %64, i32 0, i32 4
  %66 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %65, align 8
  store %struct.dwc_otg_td* %66, %struct.dwc_otg_td** %5, align 8
  %67 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %68 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %69 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %68, i32 0, i32 1
  store %struct.dwc_otg_td* %67, %struct.dwc_otg_td** %69, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %72 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %71, i32 0, i32 3
  store i8* %70, i8** %72, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %75 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %74, i32 0, i32 2
  store i8* %73, i8** %75, align 8
  %76 = load i8*, i8** %7, align 8
  %77 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %78 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  br label %17

79:                                               ; preds = %26
  br label %85

80:                                               ; preds = %51, %40, %34
  %81 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %82 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %81, i32 0, i32 1
  store %struct.dwc_otg_td* null, %struct.dwc_otg_td** %82, align 8
  %83 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %84 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %83, i32 0, i32 0
  store i32 1, i32* %84, align 4
  br label %85

85:                                               ; preds = %80, %79, %15
  ret void
}

declare dso_local i32 @DPRINTFN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
