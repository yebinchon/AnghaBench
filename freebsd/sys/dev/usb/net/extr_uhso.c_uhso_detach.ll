; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_uhso.c_uhso_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_uhso.c_uhso_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uhso_softc = type { i32, i32, i32, %struct.TYPE_6__*, i32, %struct.TYPE_5__*, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@UHSO_CTRL_MAX = common dso_local global i32 0, align 4
@uhso_ifnet_unit = common dso_local global i32 0, align 4
@UHSO_IFNET_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @uhso_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uhso_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uhso_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.uhso_softc* @device_get_softc(i32 %5)
  store %struct.uhso_softc* %6, %struct.uhso_softc** %3, align 8
  %7 = load %struct.uhso_softc*, %struct.uhso_softc** %3, align 8
  %8 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %7, i32 0, i32 9
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @usbd_transfer_unsetup(i32 %9, i32 3)
  %11 = load %struct.uhso_softc*, %struct.uhso_softc** %3, align 8
  %12 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %11, i32 0, i32 8
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @UHSO_CTRL_MAX, align 4
  %15 = call i32 @usbd_transfer_unsetup(i32 %13, i32 %14)
  %16 = load %struct.uhso_softc*, %struct.uhso_softc** %3, align 8
  %17 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %59

20:                                               ; preds = %1
  %21 = load %struct.uhso_softc*, %struct.uhso_softc** %3, align 8
  %22 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %21, i32 0, i32 7
  %23 = load %struct.uhso_softc*, %struct.uhso_softc** %3, align 8
  %24 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @ucom_detach(i32* %22, i32 %25)
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %55, %20
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.uhso_softc*, %struct.uhso_softc** %3, align 8
  %30 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %58

33:                                               ; preds = %27
  %34 = load %struct.uhso_softc*, %struct.uhso_softc** %3, align 8
  %35 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %34, i32 0, i32 5
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, -1
  br i1 %42, label %43, label %54

43:                                               ; preds = %33
  %44 = load %struct.uhso_softc*, %struct.uhso_softc** %3, align 8
  %45 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %44, i32 0, i32 5
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @UHSO_CTRL_MAX, align 4
  %53 = call i32 @usbd_transfer_unsetup(i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %43, %33
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %4, align 4
  br label %27

58:                                               ; preds = %27
  br label %59

59:                                               ; preds = %58, %1
  %60 = load %struct.uhso_softc*, %struct.uhso_softc** %3, align 8
  %61 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %60, i32 0, i32 3
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = icmp ne %struct.TYPE_6__* %62, null
  br i1 %63, label %64, label %100

64:                                               ; preds = %59
  %65 = load %struct.uhso_softc*, %struct.uhso_softc** %3, align 8
  %66 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %65, i32 0, i32 4
  %67 = call i32 @callout_drain(i32* %66)
  %68 = load i32, i32* @uhso_ifnet_unit, align 4
  %69 = load %struct.uhso_softc*, %struct.uhso_softc** %3, align 8
  %70 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %69, i32 0, i32 3
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @free_unr(i32 %68, i32 %73)
  %75 = load %struct.uhso_softc*, %struct.uhso_softc** %3, align 8
  %76 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %75, i32 0, i32 2
  %77 = call i32 @mtx_lock(i32* %76)
  %78 = load %struct.uhso_softc*, %struct.uhso_softc** %3, align 8
  %79 = call i32 @uhso_if_stop(%struct.uhso_softc* %78)
  %80 = load %struct.uhso_softc*, %struct.uhso_softc** %3, align 8
  %81 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %80, i32 0, i32 3
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = call i32 @bpfdetach(%struct.TYPE_6__* %82)
  %84 = load %struct.uhso_softc*, %struct.uhso_softc** %3, align 8
  %85 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %84, i32 0, i32 3
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = call i32 @if_detach(%struct.TYPE_6__* %86)
  %88 = load %struct.uhso_softc*, %struct.uhso_softc** %3, align 8
  %89 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %88, i32 0, i32 3
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = call i32 @if_free(%struct.TYPE_6__* %90)
  %92 = load %struct.uhso_softc*, %struct.uhso_softc** %3, align 8
  %93 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %92, i32 0, i32 2
  %94 = call i32 @mtx_unlock(i32* %93)
  %95 = load %struct.uhso_softc*, %struct.uhso_softc** %3, align 8
  %96 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @UHSO_IFNET_MAX, align 4
  %99 = call i32 @usbd_transfer_unsetup(i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %64, %59
  %101 = load i32, i32* %2, align 4
  %102 = call i32 @device_claim_softc(i32 %101)
  %103 = load %struct.uhso_softc*, %struct.uhso_softc** %3, align 8
  %104 = call i32 @uhso_free_softc(%struct.uhso_softc* %103)
  ret i32 0
}

declare dso_local %struct.uhso_softc* @device_get_softc(i32) #1

declare dso_local i32 @usbd_transfer_unsetup(i32, i32) #1

declare dso_local i32 @ucom_detach(i32*, i32) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @free_unr(i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @uhso_if_stop(%struct.uhso_softc*) #1

declare dso_local i32 @bpfdetach(%struct.TYPE_6__*) #1

declare dso_local i32 @if_detach(%struct.TYPE_6__*) #1

declare dso_local i32 @if_free(%struct.TYPE_6__*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @device_claim_softc(i32) #1

declare dso_local i32 @uhso_free_softc(%struct.uhso_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
