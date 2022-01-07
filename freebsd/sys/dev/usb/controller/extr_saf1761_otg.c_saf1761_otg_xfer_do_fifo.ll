; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_otg_xfer_do_fifo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_otg_xfer_do_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saf1761_otg_softc = type { i32 }
%struct.usb_xfer = type { i8*, %struct.saf1761_otg_td* }
%struct.saf1761_otg_td = type { i64, i32, %struct.saf1761_otg_td*, i32, i64, i64 (%struct.saf1761_otg_softc.0*, %struct.saf1761_otg_td*)* }
%struct.saf1761_otg_softc.0 = type opaque

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.saf1761_otg_softc*, %struct.usb_xfer*)* @saf1761_otg_xfer_do_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @saf1761_otg_xfer_do_fifo(%struct.saf1761_otg_softc* %0, %struct.usb_xfer* %1) #0 {
  %3 = alloca %struct.saf1761_otg_softc*, align 8
  %4 = alloca %struct.usb_xfer*, align 8
  %5 = alloca %struct.saf1761_otg_td*, align 8
  %6 = alloca i32, align 4
  store %struct.saf1761_otg_softc* %0, %struct.saf1761_otg_softc** %3, align 8
  store %struct.usb_xfer* %1, %struct.usb_xfer** %4, align 8
  %7 = call i32 @DPRINTFN(i32 9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %9 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %8, i32 0, i32 1
  %10 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %9, align 8
  store %struct.saf1761_otg_td* %10, %struct.saf1761_otg_td** %5, align 8
  %11 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %12 = icmp eq %struct.saf1761_otg_td* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %71

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %14, %52
  %16 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %17 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %16, i32 0, i32 5
  %18 = load i64 (%struct.saf1761_otg_softc.0*, %struct.saf1761_otg_td*)*, i64 (%struct.saf1761_otg_softc.0*, %struct.saf1761_otg_td*)** %17, align 8
  %19 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %20 = bitcast %struct.saf1761_otg_softc* %19 to %struct.saf1761_otg_softc.0*
  %21 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %22 = call i64 %18(%struct.saf1761_otg_softc.0* %20, %struct.saf1761_otg_td* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %65

25:                                               ; preds = %15
  %26 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %27 = bitcast %struct.saf1761_otg_td* %26 to i8*
  %28 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %29 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = icmp eq i8* %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %66

33:                                               ; preds = %25
  %34 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %35 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %66

39:                                               ; preds = %33
  %40 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %41 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %46 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  br label %66

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %50, %39
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %54 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %6, align 4
  %56 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %57 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %56, i32 0, i32 2
  %58 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %57, align 8
  store %struct.saf1761_otg_td* %58, %struct.saf1761_otg_td** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %61 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %63 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %64 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %63, i32 0, i32 1
  store %struct.saf1761_otg_td* %62, %struct.saf1761_otg_td** %64, align 8
  br label %15

65:                                               ; preds = %24
  br label %71

66:                                               ; preds = %49, %38, %32
  %67 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %68 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %67, i32 0, i32 1
  store %struct.saf1761_otg_td* null, %struct.saf1761_otg_td** %68, align 8
  %69 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %70 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %69, i32 0, i32 0
  store i32 1, i32* %70, align 4
  br label %71

71:                                               ; preds = %66, %65, %13
  ret void
}

declare dso_local i32 @DPRINTFN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
