; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/usb/extr_octusb.c_octusb_host_free_endpoint.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/usb/extr_octusb.c_octusb_host_free_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octusb_td = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i32, i32, %struct.octusb_softc* }
%struct.octusb_softc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octusb_td*)* @octusb_host_free_endpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octusb_host_free_endpoint(%struct.octusb_td* %0) #0 {
  %2 = alloca %struct.octusb_td*, align 8
  %3 = alloca %struct.octusb_softc*, align 8
  store %struct.octusb_td* %0, %struct.octusb_td** %2, align 8
  %4 = load %struct.octusb_td*, %struct.octusb_td** %2, align 8
  %5 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %4, i32 0, i32 0
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %66

11:                                               ; preds = %1
  %12 = load %struct.octusb_td*, %struct.octusb_td** %2, align 8
  %13 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 4
  %16 = load %struct.octusb_softc*, %struct.octusb_softc** %15, align 8
  store %struct.octusb_softc* %16, %struct.octusb_softc** %3, align 8
  %17 = load %struct.octusb_td*, %struct.octusb_td** %2, align 8
  %18 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %11
  %24 = load %struct.octusb_softc*, %struct.octusb_softc** %3, align 8
  %25 = getelementptr inbounds %struct.octusb_softc, %struct.octusb_softc* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = load %struct.octusb_td*, %struct.octusb_td** %2, align 8
  %28 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load %struct.octusb_td*, %struct.octusb_td** %2, align 8
  %35 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.octusb_td*, %struct.octusb_td** %2, align 8
  %40 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @cvmx_usb_cancel(i32* %33, i32 %38, i32 %43)
  br label %45

45:                                               ; preds = %23, %11
  %46 = load %struct.octusb_softc*, %struct.octusb_softc** %3, align 8
  %47 = getelementptr inbounds %struct.octusb_softc, %struct.octusb_softc* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load %struct.octusb_td*, %struct.octusb_td** %2, align 8
  %50 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load %struct.octusb_td*, %struct.octusb_td** %2, align 8
  %57 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @cvmx_usb_close_pipe(i32* %55, i32 %60)
  %62 = load %struct.octusb_td*, %struct.octusb_td** %2, align 8
  %63 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i64 0, i64* %65, align 8
  br label %66

66:                                               ; preds = %45, %10
  ret void
}

declare dso_local i32 @cvmx_usb_cancel(i32*, i32, i32) #1

declare dso_local i32 @cvmx_usb_close_pipe(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
