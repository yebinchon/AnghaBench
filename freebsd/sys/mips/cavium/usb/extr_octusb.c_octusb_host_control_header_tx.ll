; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/usb/extr_octusb.c_octusb_host_control_header_tx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/usb/extr_octusb.c_octusb_host_control_header_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octusb_td = type { i32, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64, i32*, i32, i64, i32, i32, i64, i32, i32, %struct.octusb_softc*, i64 }
%struct.octusb_softc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@OCTUSB_MAX_FIXUP = common dso_local global i32 0, align 4
@UE_DIR_IN = common dso_local global i32 0, align 4
@octusb_complete_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.octusb_td*)* @octusb_host_control_header_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octusb_host_control_header_tx(%struct.octusb_td* %0) #0 {
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
  br label %165

10:                                               ; preds = %1
  %11 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %12 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %165

16:                                               ; preds = %10
  %17 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %18 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %17, i32 0, i32 3
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %16
  %24 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %25 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %24, i32 0, i32 3
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %29 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %28, i32 0, i32 3
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 8
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @usb_pc_cpu_invalidate(i32 %32)
  store i32 0, i32* %2, align 4
  br label %165

34:                                               ; preds = %16
  %35 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %36 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 8
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %41 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  store i32 0, i32* %2, align 4
  br label %165

42:                                               ; preds = %34
  %43 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %44 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %47 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %50 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %49, i32 0, i32 3
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @usbd_copy_out(i32 %45, i32 %48, i32* %53, i32 8)
  %55 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %56 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 8
  store i32 %58, i32* %56, align 8
  %59 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %60 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %61, 8
  store i32 %62, i32* %60, align 4
  %63 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %64 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %63, i32 0, i32 3
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 6
  %69 = call i32 @UGETW(i32* %68)
  %70 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %71 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %70, i32 0, i32 3
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  store i32 %69, i32* %73, align 8
  %74 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %75 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %74, i32 0, i32 3
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 10
  store i64 0, i64* %77, align 8
  %78 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %79 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %78, i32 0, i32 3
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @OCTUSB_MAX_FIXUP, align 4
  %84 = sub nsw i32 %83, 8
  %85 = icmp sgt i32 %82, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %42
  %87 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %88 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %87, i32 0, i32 0
  store i32 1, i32* %88, align 8
  store i32 0, i32* %2, align 4
  br label %165

89:                                               ; preds = %42
  %90 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %91 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %90, i32 0, i32 3
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @UE_DIR_IN, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %164

100:                                              ; preds = %89
  %101 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %102 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %101, i32 0, i32 3
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 9
  %105 = load %struct.octusb_softc*, %struct.octusb_softc** %104, align 8
  store %struct.octusb_softc* %105, %struct.octusb_softc** %5, align 8
  %106 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %107 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %106, i32 0, i32 3
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 8
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @usb_pc_cpu_flush(i32 %110)
  %112 = load %struct.octusb_softc*, %struct.octusb_softc** %5, align 8
  %113 = getelementptr inbounds %struct.octusb_softc, %struct.octusb_softc* %112, i32 0, i32 0
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %116 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %115, i32 0, i32 3
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %123 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %122, i32 0, i32 3
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 7
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %128 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %127, i32 0, i32 3
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 6
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %133 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %132, i32 0, i32 3
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 6
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %136, 8
  %138 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %139 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %138, i32 0, i32 3
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %144 = call i32 @cvmx_usb_submit_control(i32* %121, i32 %126, i64 %131, i64 %137, i32 %142, i32* @octusb_complete_cb, %struct.octusb_td* %143)
  store i32 %144, i32* %4, align 4
  %145 = load i32, i32* %4, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %100
  %148 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %149 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %148, i32 0, i32 0
  store i32 1, i32* %149, align 8
  store i32 0, i32* %2, align 4
  br label %165

150:                                              ; preds = %100
  %151 = load i32, i32* %4, align 4
  %152 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %153 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %152, i32 0, i32 3
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 4
  store i32 %151, i32* %155, align 8
  %156 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %157 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %156, i32 0, i32 3
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 5
  store i32 1, i32* %159, align 4
  %160 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %161 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %160, i32 0, i32 3
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  store i64 0, i64* %163, align 8
  store i32 1, i32* %2, align 4
  br label %165

164:                                              ; preds = %89
  store i32 0, i32* %2, align 4
  br label %165

165:                                              ; preds = %164, %150, %147, %86, %39, %23, %15, %9
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

declare dso_local i64 @octusb_host_alloc_endpoint(%struct.octusb_td*) #1

declare dso_local i32 @usb_pc_cpu_invalidate(i32) #1

declare dso_local i32 @usbd_copy_out(i32, i32, i32*, i32) #1

declare dso_local i32 @UGETW(i32*) #1

declare dso_local i32 @usb_pc_cpu_flush(i32) #1

declare dso_local i32 @cvmx_usb_submit_control(i32*, i32, i64, i64, i32, i32*, %struct.octusb_td*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
