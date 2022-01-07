; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/usb/extr_octusb.c_octusb_host_alloc_endpoint.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/usb/extr_octusb.c_octusb_host_alloc_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octusb_td = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64, i32, i64, i32, i32, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.octusb_softc* }
%struct.octusb_softc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@UE_ADDR = common dso_local global i32 0, align 4
@UE_DIR_IN = common dso_local global i32 0, align 4
@CVMX_USB_DIRECTION_IN = common dso_local global i32 0, align 4
@CVMX_USB_DIRECTION_OUT = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"cvmx_usb_open_pipe failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.octusb_td*)* @octusb_host_alloc_endpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octusb_host_alloc_endpoint(%struct.octusb_td* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.octusb_td*, align 8
  %4 = alloca %struct.octusb_softc*, align 8
  %5 = alloca i32, align 4
  store %struct.octusb_td* %0, %struct.octusb_td** %3, align 8
  %6 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %7 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 7
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %168

13:                                               ; preds = %1
  %14 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %15 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %168

21:                                               ; preds = %13
  %22 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %23 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 19
  %26 = load %struct.octusb_softc*, %struct.octusb_softc** %25, align 8
  store %struct.octusb_softc* %26, %struct.octusb_softc** %4, align 8
  %27 = load %struct.octusb_softc*, %struct.octusb_softc** %4, align 8
  %28 = getelementptr inbounds %struct.octusb_softc, %struct.octusb_softc* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %31 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %38 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 18
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %43 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @UE_ADDR, align 4
  %48 = and i32 %46, %47
  %49 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %50 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @octusb_convert_speed(i64 %53)
  %55 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %56 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 17
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %61 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 16
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @octusb_convert_ep_type(i32 %64)
  %66 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %67 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @UE_DIR_IN, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %21
  %75 = load i32, i32* @CVMX_USB_DIRECTION_IN, align 4
  br label %78

76:                                               ; preds = %21
  %77 = load i32, i32* @CVMX_USB_DIRECTION_OUT, align 4
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i32 [ %75, %74 ], [ %77, %76 ]
  %80 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %81 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %80, i32 0, i32 0
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 15
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %86 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @USB_SPEED_HIGH, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %78
  %93 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %94 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %93, i32 0, i32 0
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 14
  %97 = load i32, i32* %96, align 4
  br label %99

98:                                               ; preds = %78
  br label %99

99:                                               ; preds = %98, %92
  %100 = phi i32 [ %97, %92 ], [ 0, %98 ]
  %101 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %102 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %101, i32 0, i32 0
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 13
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %107 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %106, i32 0, i32 0
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 12
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @cvmx_usb_open_pipe(i32* %36, i32 0, i32 %41, i32 %48, i32 %54, i32 %59, i32 %65, i32 %79, i32 %84, i32 %100, i32 %105, i32 %110)
  store i32 %111, i32* %5, align 4
  %112 = load i32, i32* %5, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %99
  %115 = load i32, i32* %5, align 4
  %116 = call i32 @DPRINTFN(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %115)
  store i32 1, i32* %2, align 4
  br label %168

117:                                              ; preds = %99
  %118 = load %struct.octusb_softc*, %struct.octusb_softc** %4, align 8
  %119 = getelementptr inbounds %struct.octusb_softc, %struct.octusb_softc* %118, i32 0, i32 0
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %119, align 8
  %121 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %122 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %121, i32 0, i32 0
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i32, i32* %5, align 4
  %129 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %130 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %129, i32 0, i32 0
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 11
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @cvmx_usb_set_toggle(i32* %127, i32 %128, i32 %133)
  %135 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %136 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %135, i32 0, i32 0
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 4
  store i32 -1, i32* %138, align 8
  %139 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %140 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %139, i32 0, i32 0
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 10
  store i64 0, i64* %142, align 8
  %143 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %144 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %143, i32 0, i32 0
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 9
  store i64 0, i64* %146, align 8
  %147 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %148 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %147, i32 0, i32 0
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 8
  store i64 0, i64* %150, align 8
  %151 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %152 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %151, i32 0, i32 0
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 7
  store i64 0, i64* %154, align 8
  %155 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %156 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %155, i32 0, i32 0
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 6
  store i64 0, i64* %158, align 8
  %159 = load i32, i32* %5, align 4
  %160 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %161 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %160, i32 0, i32 0
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 5
  store i32 %159, i32* %163, align 4
  %164 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %165 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %164, i32 0, i32 0
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  store i32 1, i32* %167, align 8
  store i32 0, i32* %2, align 4
  br label %168

168:                                              ; preds = %117, %114, %20, %12
  %169 = load i32, i32* %2, align 4
  ret i32 %169
}

declare dso_local i32 @cvmx_usb_open_pipe(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @octusb_convert_speed(i64) #1

declare dso_local i32 @octusb_convert_ep_type(i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, i32) #1

declare dso_local i32 @cvmx_usb_set_toggle(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
