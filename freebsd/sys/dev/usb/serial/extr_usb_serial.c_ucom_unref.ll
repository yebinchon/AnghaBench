; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_usb_serial.c_ucom_unref.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_usb_serial.c_ucom_unref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucom_super_softc = type { i32 }

@ucom_mtx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ucom_unref(%struct.ucom_super_softc* %0) #0 {
  %2 = alloca %struct.ucom_super_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.ucom_super_softc* %0, %struct.ucom_super_softc** %2, align 8
  %4 = call i32 @mtx_lock(i32* @ucom_mtx)
  %5 = load %struct.ucom_super_softc*, %struct.ucom_super_softc** %2, align 8
  %6 = getelementptr inbounds %struct.ucom_super_softc, %struct.ucom_super_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp slt i32 %7, 2
  %9 = zext i1 %8 to i32
  store i32 %9, i32* %3, align 4
  %10 = load %struct.ucom_super_softc*, %struct.ucom_super_softc** %2, align 8
  %11 = getelementptr inbounds %struct.ucom_super_softc, %struct.ucom_super_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %11, align 4
  %14 = call i32 @mtx_unlock(i32* @ucom_mtx)
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.ucom_super_softc*, %struct.ucom_super_softc** %2, align 8
  %19 = call i32 @ucom_free_unit(%struct.ucom_super_softc* %18)
  br label %20

20:                                               ; preds = %17, %1
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @ucom_free_unit(%struct.ucom_super_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
