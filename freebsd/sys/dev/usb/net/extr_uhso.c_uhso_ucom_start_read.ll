; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_uhso.c_uhso_ucom_start_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_uhso.c_uhso_ucom_start_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucom_softc = type { i64, %struct.TYPE_3__*, %struct.uhso_softc* }
%struct.TYPE_3__ = type { i32 }
%struct.uhso_softc = type { i32**, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"unit=%d, subunit=%d\0A\00", align 1
@UHSO_IF_MUX = common dso_local global i32 0, align 4
@UHSO_MUX_ENDPT_INTR = common dso_local global i64 0, align 8
@UHSO_IF_BULK = common dso_local global i32 0, align 4
@UHSO_BULK_ENDPT_READ = common dso_local global i64 0, align 8
@UHSO_BULK_ENDPT_INTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucom_softc*)* @uhso_ucom_start_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uhso_ucom_start_read(%struct.ucom_softc* %0) #0 {
  %2 = alloca %struct.ucom_softc*, align 8
  %3 = alloca %struct.uhso_softc*, align 8
  store %struct.ucom_softc* %0, %struct.ucom_softc** %2, align 8
  %4 = load %struct.ucom_softc*, %struct.ucom_softc** %2, align 8
  %5 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %4, i32 0, i32 2
  %6 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  store %struct.uhso_softc* %6, %struct.uhso_softc** %3, align 8
  %7 = load %struct.ucom_softc*, %struct.ucom_softc** %2, align 8
  %8 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %7, i32 0, i32 1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ucom_softc*, %struct.ucom_softc** %2, align 8
  %13 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @UHSO_DPRINTF(i32 3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %11, i64 %14)
  %16 = load %struct.uhso_softc*, %struct.uhso_softc** %3, align 8
  %17 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @UHSO_IFACE_USB_TYPE(i32 %18)
  %20 = load i32, i32* @UHSO_IF_MUX, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %1
  %24 = load %struct.uhso_softc*, %struct.uhso_softc** %3, align 8
  %25 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load %struct.ucom_softc*, %struct.ucom_softc** %2, align 8
  %28 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  %32 = load %struct.uhso_softc*, %struct.uhso_softc** %3, align 8
  %33 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %32, i32 0, i32 0
  %34 = load i32**, i32*** %33, align 8
  %35 = load i64, i64* @UHSO_MUX_ENDPT_INTR, align 8
  %36 = getelementptr inbounds i32*, i32** %34, i64 %35
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @usbd_transfer_start(i32* %37)
  br label %77

39:                                               ; preds = %1
  %40 = load %struct.uhso_softc*, %struct.uhso_softc** %3, align 8
  %41 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @UHSO_IFACE_USB_TYPE(i32 %42)
  %44 = load i32, i32* @UHSO_IF_BULK, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %76

47:                                               ; preds = %39
  %48 = load %struct.uhso_softc*, %struct.uhso_softc** %3, align 8
  %49 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32 1, i32* %52, align 4
  %53 = load %struct.uhso_softc*, %struct.uhso_softc** %3, align 8
  %54 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %53, i32 0, i32 0
  %55 = load i32**, i32*** %54, align 8
  %56 = load i64, i64* @UHSO_BULK_ENDPT_READ, align 8
  %57 = getelementptr inbounds i32*, i32** %55, i64 %56
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @usbd_transfer_start(i32* %58)
  %60 = load %struct.uhso_softc*, %struct.uhso_softc** %3, align 8
  %61 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %60, i32 0, i32 0
  %62 = load i32**, i32*** %61, align 8
  %63 = load i64, i64* @UHSO_BULK_ENDPT_INTR, align 8
  %64 = getelementptr inbounds i32*, i32** %62, i64 %63
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %75

67:                                               ; preds = %47
  %68 = load %struct.uhso_softc*, %struct.uhso_softc** %3, align 8
  %69 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %68, i32 0, i32 0
  %70 = load i32**, i32*** %69, align 8
  %71 = load i64, i64* @UHSO_BULK_ENDPT_INTR, align 8
  %72 = getelementptr inbounds i32*, i32** %70, i64 %71
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @usbd_transfer_start(i32* %73)
  br label %75

75:                                               ; preds = %67, %47
  br label %76

76:                                               ; preds = %75, %39
  br label %77

77:                                               ; preds = %76, %23
  ret void
}

declare dso_local i32 @UHSO_DPRINTF(i32, i8*, i32, i64) #1

declare dso_local i32 @UHSO_IFACE_USB_TYPE(i32) #1

declare dso_local i32 @usbd_transfer_start(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
