; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/usb/extr_octusb.c_octusb_host_control_status_tx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/usb/extr_octusb.c_octusb_host_control_status_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octusb_td = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32*, i64, i32, i32, i32, i64, i32, i32, %struct.octusb_softc* }
%struct.octusb_softc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@UE_DIR_IN = common dso_local global i32 0, align 4
@octusb_complete_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.octusb_td*)* @octusb_host_control_status_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octusb_host_control_status_tx(%struct.octusb_td* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.octusb_td*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.octusb_softc*, align 8
  store %struct.octusb_td* %0, %struct.octusb_td** %3, align 8
  %6 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %7 = call i64 @octusb_host_alloc_endpoint(%struct.octusb_td* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %104

10:                                               ; preds = %1
  %11 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %12 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %104

16:                                               ; preds = %10
  %17 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %18 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %25 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  store i32 0, i32* %2, align 4
  br label %104

28:                                               ; preds = %16
  %29 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %30 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @UE_DIR_IN, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %103, label %39

39:                                               ; preds = %28
  %40 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %41 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 9
  %44 = load %struct.octusb_softc*, %struct.octusb_softc** %43, align 8
  store %struct.octusb_softc* %44, %struct.octusb_softc** %5, align 8
  %45 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %46 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 8
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @usb_pc_cpu_flush(i32 %49)
  %51 = load %struct.octusb_softc*, %struct.octusb_softc** %5, align 8
  %52 = getelementptr inbounds %struct.octusb_softc, %struct.octusb_softc* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %55 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %62 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 7
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %67 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 6
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %72 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %71, i32 0, i32 1
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 6
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, 8
  %77 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %78 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %77, i32 0, i32 1
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %83 = call i32 @cvmx_usb_submit_control(i32* %60, i32 %65, i64 %70, i64 %76, i32 %81, i32* @octusb_complete_cb, %struct.octusb_td* %82)
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* %4, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %39
  %87 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %88 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %87, i32 0, i32 0
  store i32 1, i32* %88, align 8
  store i32 0, i32* %2, align 4
  br label %104

89:                                               ; preds = %39
  %90 = load i32, i32* %4, align 4
  %91 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %92 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %91, i32 0, i32 1
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 3
  store i32 %90, i32* %94, align 8
  %95 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %96 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %95, i32 0, i32 1
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 4
  store i32 1, i32* %98, align 4
  %99 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %100 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %99, i32 0, i32 1
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  store i64 0, i64* %102, align 8
  store i32 1, i32* %2, align 4
  br label %104

103:                                              ; preds = %28
  store i32 0, i32* %2, align 4
  br label %104

104:                                              ; preds = %103, %89, %86, %23, %15, %9
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i64 @octusb_host_alloc_endpoint(%struct.octusb_td*) #1

declare dso_local i32 @usb_pc_cpu_flush(i32) #1

declare dso_local i32 @cvmx_usb_submit_control(i32*, i32, i64, i64, i32, i32*, %struct.octusb_td*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
