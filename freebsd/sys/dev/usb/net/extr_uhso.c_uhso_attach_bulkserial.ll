; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_uhso.c_uhso_attach_bulkserial.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_uhso.c_uhso_attach_bulkserial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uhso_softc = type { %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.usb_interface = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@uhso_bs_config = common dso_local global i32 0, align 4
@UHSO_BULK_ENDPT_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"usbd_transfer_setup failed\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uhso_softc*, %struct.usb_interface*, i32)* @uhso_attach_bulkserial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uhso_attach_bulkserial(%struct.uhso_softc* %0, %struct.usb_interface* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uhso_softc*, align 8
  %6 = alloca %struct.usb_interface*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.uhso_softc* %0, %struct.uhso_softc** %5, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %11 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %14 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %18 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @uhso_bs_config, align 4
  %21 = load i64, i64* @UHSO_BULK_ENDPT_MAX, align 8
  %22 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %23 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %24 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %23, i32 0, i32 2
  %25 = call i64 @usbd_transfer_setup(i32 %12, i32* %16, i32 %19, i32 %20, i64 %21, %struct.uhso_softc* %22, i32* %24)
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %8, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %3
  %29 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %30 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %33 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %37 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @uhso_bs_config, align 4
  %40 = load i64, i64* @UHSO_BULK_ENDPT_MAX, align 8
  %41 = sub nsw i64 %40, 1
  %42 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %43 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %44 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %43, i32 0, i32 2
  %45 = call i64 @usbd_transfer_setup(i32 %31, i32* %35, i32 %38, i32 %39, i64 %41, %struct.uhso_softc* %42, i32* %44)
  store i64 %45, i64* %8, align 8
  br label %46

46:                                               ; preds = %28, %3
  %47 = load i64, i64* %8, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = call i32 @UHSO_DPRINTF(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %71

51:                                               ; preds = %46
  %52 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %53 = call i32 @uhso_alloc_tty(%struct.uhso_softc* %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %58 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i64, i64* @UHSO_BULK_ENDPT_MAX, align 8
  %61 = call i32 @usbd_transfer_unsetup(i32 %59, i64 %60)
  %62 = load i32, i32* @ENOMEM, align 4
  store i32 %62, i32* %4, align 4
  br label %71

63:                                               ; preds = %51
  %64 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %65 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store i32 -1, i32* %70, align 4
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %63, %56, %49
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i64 @usbd_transfer_setup(i32, i32*, i32, i32, i64, %struct.uhso_softc*, i32*) #1

declare dso_local i32 @UHSO_DPRINTF(i32, i8*) #1

declare dso_local i32 @uhso_alloc_tty(%struct.uhso_softc*) #1

declare dso_local i32 @usbd_transfer_unsetup(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
