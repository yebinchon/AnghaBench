; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_otg_set_stall.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_otg_set_stall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.usb_endpoint = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.saf1761_otg_softc = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@USB_MODE_DEVICE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"endpoint=%p\0A\00", align 1
@UE_ADDR = common dso_local global i32 0, align 4
@UE_DIR_IN = common dso_local global i32 0, align 4
@UE_DIR_OUT = common dso_local global i32 0, align 4
@UE_XFERTYPE = common dso_local global i32 0, align 4
@UE_CONTROL = common dso_local global i32 0, align 4
@SOTG_EP_INDEX = common dso_local global i32 0, align 4
@SOTG_EP_INDEX_ENDP_INDEX_SHIFT = common dso_local global i32 0, align 4
@SOTG_EP_INDEX_DIR_IN = common dso_local global i32 0, align 4
@SOTG_EP_INDEX_DIR_OUT = common dso_local global i32 0, align 4
@SOTG_CTRL_FUNC = common dso_local global i32 0, align 4
@SOTG_CTRL_FUNC_STALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_device*, %struct.usb_endpoint*, i32*)* @saf1761_otg_set_stall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @saf1761_otg_set_stall(%struct.usb_device* %0, %struct.usb_endpoint* %1, i32* %2) #0 {
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.usb_endpoint*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.saf1761_otg_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.usb_endpoint* %1, %struct.usb_endpoint** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %12 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @MA_OWNED, align 4
  %15 = call i32 @USB_BUS_LOCK_ASSERT(i32 %13, i32 %14)
  %16 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %17 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @USB_MODE_DEVICE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %84

23:                                               ; preds = %3
  %24 = load %struct.usb_endpoint*, %struct.usb_endpoint** %5, align 8
  %25 = call i32 @DPRINTFN(i32 5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.usb_endpoint* %24)
  %26 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %27 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.saf1761_otg_softc* @SAF1761_OTG_BUS2SC(i32 %28)
  store %struct.saf1761_otg_softc* %29, %struct.saf1761_otg_softc** %7, align 8
  %30 = load %struct.usb_endpoint*, %struct.usb_endpoint** %5, align 8
  %31 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @UE_ADDR, align 4
  %36 = and i32 %34, %35
  store i32 %36, i32* %8, align 4
  %37 = load %struct.usb_endpoint*, %struct.usb_endpoint** %5, align 8
  %38 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @UE_DIR_IN, align 4
  %43 = load i32, i32* @UE_DIR_OUT, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %41, %44
  store i32 %45, i32* %10, align 4
  %46 = load %struct.usb_endpoint*, %struct.usb_endpoint** %5, align 8
  %47 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @UE_XFERTYPE, align 4
  %52 = and i32 %50, %51
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @UE_CONTROL, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %23
  br label %84

57:                                               ; preds = %23
  %58 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %7, align 8
  %59 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %58, i32 0, i32 0
  %60 = call i32 @USB_BUS_SPIN_LOCK(i32* %59)
  %61 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %7, align 8
  %62 = load i32, i32* @SOTG_EP_INDEX, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @SOTG_EP_INDEX_ENDP_INDEX_SHIFT, align 4
  %65 = shl i32 %63, %64
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @UE_DIR_IN, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %57
  %70 = load i32, i32* @SOTG_EP_INDEX_DIR_IN, align 4
  br label %73

71:                                               ; preds = %57
  %72 = load i32, i32* @SOTG_EP_INDEX_DIR_OUT, align 4
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i32 [ %70, %69 ], [ %72, %71 ]
  %75 = or i32 %65, %74
  %76 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %61, i32 %62, i32 %75)
  %77 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %7, align 8
  %78 = load i32, i32* @SOTG_CTRL_FUNC, align 4
  %79 = load i32, i32* @SOTG_CTRL_FUNC_STALL, align 4
  %80 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %77, i32 %78, i32 %79)
  %81 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %7, align 8
  %82 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %81, i32 0, i32 0
  %83 = call i32 @USB_BUS_SPIN_UNLOCK(i32* %82)
  br label %84

84:                                               ; preds = %73, %56, %22
  ret void
}

declare dso_local i32 @USB_BUS_LOCK_ASSERT(i32, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, %struct.usb_endpoint*) #1

declare dso_local %struct.saf1761_otg_softc* @SAF1761_OTG_BUS2SC(i32) #1

declare dso_local i32 @USB_BUS_SPIN_LOCK(i32*) #1

declare dso_local i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc*, i32, i32) #1

declare dso_local i32 @USB_BUS_SPIN_UNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
