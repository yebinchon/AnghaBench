; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/video/extr_udl.c_udl_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/video/extr_udl.c_udl_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udl_softc = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@UDL_N_TRANSFER = common dso_local global i32 0, align 4
@M_USB_DL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @udl_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udl_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.udl_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.udl_softc* @device_get_softc(i32 %4)
  store %struct.udl_softc* %5, %struct.udl_softc** %3, align 8
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @device_delete_children(i32 %6)
  %8 = load %struct.udl_softc*, %struct.udl_softc** %3, align 8
  %9 = call i32 @UDL_LOCK(%struct.udl_softc* %8)
  %10 = load %struct.udl_softc*, %struct.udl_softc** %3, align 8
  %11 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %10, i32 0, i32 0
  store i32 1, i32* %11, align 4
  %12 = load %struct.udl_softc*, %struct.udl_softc** %3, align 8
  %13 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %12, i32 0, i32 6
  %14 = call i32 @callout_stop(i32* %13)
  %15 = load %struct.udl_softc*, %struct.udl_softc** %3, align 8
  %16 = call i32 @UDL_UNLOCK(%struct.udl_softc* %15)
  %17 = load %struct.udl_softc*, %struct.udl_softc** %3, align 8
  %18 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @UDL_N_TRANSFER, align 4
  %21 = call i32 @usbd_transfer_unsetup(i32 %19, i32 %20)
  %22 = load %struct.udl_softc*, %struct.udl_softc** %3, align 8
  %23 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %22, i32 0, i32 6
  %24 = call i32 @callout_drain(i32* %23)
  %25 = load %struct.udl_softc*, %struct.udl_softc** %3, align 8
  %26 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %25, i32 0, i32 5
  %27 = call i32 @mtx_destroy(i32* %26)
  %28 = load %struct.udl_softc*, %struct.udl_softc** %3, align 8
  %29 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %28, i32 0, i32 4
  %30 = call i32 @cv_destroy(i32* %29)
  %31 = load %struct.udl_softc*, %struct.udl_softc** %3, align 8
  %32 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.udl_softc*, %struct.udl_softc** %3, align 8
  %35 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @udl_buffer_free(i32 %33, i32 %36)
  %38 = load %struct.udl_softc*, %struct.udl_softc** %3, align 8
  %39 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @M_USB_DL, align 4
  %42 = call i32 @free(i32 %40, i32 %41)
  ret i32 0
}

declare dso_local %struct.udl_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_delete_children(i32) #1

declare dso_local i32 @UDL_LOCK(%struct.udl_softc*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @UDL_UNLOCK(%struct.udl_softc*) #1

declare dso_local i32 @usbd_transfer_unsetup(i32, i32) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @cv_destroy(i32*) #1

declare dso_local i32 @udl_buffer_free(i32, i32) #1

declare dso_local i32 @free(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
