; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uss820dci.c_uss820dci_set_stall.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uss820dci.c_uss820dci_set_stall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.usb_endpoint = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.uss820dci_softc = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"endpoint=%p\0A\00", align 1
@UE_ADDR = common dso_local global i32 0, align 4
@UE_DIR_IN = common dso_local global i32 0, align 4
@UE_DIR_OUT = common dso_local global i32 0, align 4
@UE_XFERTYPE = common dso_local global i32 0, align 4
@UE_CONTROL = common dso_local global i32 0, align 4
@USS820_EPINDEX = common dso_local global i32 0, align 4
@USS820_EPCON_TXSTL = common dso_local global i32 0, align 4
@USS820_EPCON_RXSTL = common dso_local global i32 0, align 4
@USS820_EPCON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_device*, %struct.usb_endpoint*, i32*)* @uss820dci_set_stall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uss820dci_set_stall(%struct.usb_device* %0, %struct.usb_endpoint* %1, i32* %2) #0 {
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.usb_endpoint*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.uss820dci_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.usb_endpoint* %1, %struct.usb_endpoint** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %13 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @MA_OWNED, align 4
  %16 = call i32 @USB_BUS_LOCK_ASSERT(i32 %14, i32 %15)
  %17 = load %struct.usb_endpoint*, %struct.usb_endpoint** %5, align 8
  %18 = call i32 @DPRINTFN(i32 5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.usb_endpoint* %17)
  %19 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %20 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.uss820dci_softc* @USS820_DCI_BUS2SC(i32 %21)
  store %struct.uss820dci_softc* %22, %struct.uss820dci_softc** %7, align 8
  %23 = load %struct.usb_endpoint*, %struct.usb_endpoint** %5, align 8
  %24 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @UE_ADDR, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %8, align 4
  %30 = load %struct.usb_endpoint*, %struct.usb_endpoint** %5, align 8
  %31 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @UE_DIR_IN, align 4
  %36 = load i32, i32* @UE_DIR_OUT, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  store i32 %38, i32* %10, align 4
  %39 = load %struct.usb_endpoint*, %struct.usb_endpoint** %5, align 8
  %40 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @UE_XFERTYPE, align 4
  %45 = and i32 %43, %44
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @UE_CONTROL, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %3
  br label %73

50:                                               ; preds = %3
  %51 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %7, align 8
  %52 = getelementptr inbounds %struct.uss820dci_softc, %struct.uss820dci_softc* %51, i32 0, i32 0
  %53 = call i32 @USB_BUS_SPIN_LOCK(i32* %52)
  %54 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %7, align 8
  %55 = load i32, i32* @USS820_EPINDEX, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @USS820_WRITE_1(%struct.uss820dci_softc* %54, i32 %55, i32 %56)
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @UE_DIR_IN, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %50
  %62 = load i32, i32* @USS820_EPCON_TXSTL, align 4
  store i32 %62, i32* %11, align 4
  br label %65

63:                                               ; preds = %50
  %64 = load i32, i32* @USS820_EPCON_RXSTL, align 4
  store i32 %64, i32* %11, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %7, align 8
  %67 = load i32, i32* @USS820_EPCON, align 4
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @uss820dci_update_shared_1(%struct.uss820dci_softc* %66, i32 %67, i32 255, i32 %68)
  %70 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %7, align 8
  %71 = getelementptr inbounds %struct.uss820dci_softc, %struct.uss820dci_softc* %70, i32 0, i32 0
  %72 = call i32 @USB_BUS_SPIN_UNLOCK(i32* %71)
  br label %73

73:                                               ; preds = %65, %49
  ret void
}

declare dso_local i32 @USB_BUS_LOCK_ASSERT(i32, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, %struct.usb_endpoint*) #1

declare dso_local %struct.uss820dci_softc* @USS820_DCI_BUS2SC(i32) #1

declare dso_local i32 @USB_BUS_SPIN_LOCK(i32*) #1

declare dso_local i32 @USS820_WRITE_1(%struct.uss820dci_softc*, i32, i32) #1

declare dso_local i32 @uss820dci_update_shared_1(%struct.uss820dci_softc*, i32, i32, i32) #1

declare dso_local i32 @USB_BUS_SPIN_UNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
