; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/usb/extr_octusb_octeon.c_octusb_octeon_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/usb/extr_octusb_octeon.c_octusb_octeon_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octusb_octeon_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32**, i32** }

@OCTUSB_MAX_PORTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"octusb: too many USB ports %d\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @octusb_octeon_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octusb_octeon_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.octusb_octeon_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.octusb_octeon_softc* @device_get_softc(i32 %7)
  store %struct.octusb_octeon_softc* %8, %struct.octusb_octeon_softc** %3, align 8
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @device_delete_children(i32 %9)
  %11 = load %struct.octusb_octeon_softc*, %struct.octusb_octeon_softc** %3, align 8
  %12 = getelementptr inbounds %struct.octusb_octeon_softc, %struct.octusb_octeon_softc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32**, i32*** %13, align 8
  %15 = getelementptr inbounds i32*, i32** %14, i64 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %1
  %19 = load %struct.octusb_octeon_softc*, %struct.octusb_octeon_softc** %3, align 8
  %20 = getelementptr inbounds %struct.octusb_octeon_softc, %struct.octusb_octeon_softc* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i32**, i32*** %21, align 8
  %23 = getelementptr inbounds i32*, i32** %22, i64 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %18
  %27 = load %struct.octusb_octeon_softc*, %struct.octusb_octeon_softc** %3, align 8
  %28 = getelementptr inbounds %struct.octusb_octeon_softc, %struct.octusb_octeon_softc* %27, i32 0, i32 0
  %29 = call i32 @octusb_uninit(%struct.TYPE_2__* %28)
  br label %30

30:                                               ; preds = %26, %18, %1
  %31 = call i32 (...) @cvmx_usb_get_num_ports()
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @OCTUSB_MAX_PORTS, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @panic(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %35, %30
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %119, %38
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %122

43:                                               ; preds = %39
  %44 = load %struct.octusb_octeon_softc*, %struct.octusb_octeon_softc** %3, align 8
  %45 = getelementptr inbounds %struct.octusb_octeon_softc, %struct.octusb_octeon_softc* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32**, i32*** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32*, i32** %47, i64 %49
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %89

53:                                               ; preds = %43
  %54 = load %struct.octusb_octeon_softc*, %struct.octusb_octeon_softc** %3, align 8
  %55 = getelementptr inbounds %struct.octusb_octeon_softc, %struct.octusb_octeon_softc* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i32**, i32*** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32*, i32** %57, i64 %59
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %89

63:                                               ; preds = %53
  %64 = load i32, i32* %2, align 4
  %65 = load %struct.octusb_octeon_softc*, %struct.octusb_octeon_softc** %3, align 8
  %66 = getelementptr inbounds %struct.octusb_octeon_softc, %struct.octusb_octeon_softc* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32**, i32*** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32*, i32** %68, i64 %70
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.octusb_octeon_softc*, %struct.octusb_octeon_softc** %3, align 8
  %74 = getelementptr inbounds %struct.octusb_octeon_softc, %struct.octusb_octeon_softc* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  %76 = load i32**, i32*** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32*, i32** %76, i64 %78
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @bus_teardown_intr(i32 %64, i32* %72, i32* %80)
  store i32 %81, i32* %4, align 4
  %82 = load %struct.octusb_octeon_softc*, %struct.octusb_octeon_softc** %3, align 8
  %83 = getelementptr inbounds %struct.octusb_octeon_softc, %struct.octusb_octeon_softc* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  %85 = load i32**, i32*** %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32*, i32** %85, i64 %87
  store i32* null, i32** %88, align 8
  br label %89

89:                                               ; preds = %63, %53, %43
  %90 = load %struct.octusb_octeon_softc*, %struct.octusb_octeon_softc** %3, align 8
  %91 = getelementptr inbounds %struct.octusb_octeon_softc, %struct.octusb_octeon_softc* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i32**, i32*** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32*, i32** %93, i64 %95
  %97 = load i32*, i32** %96, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %118

99:                                               ; preds = %89
  %100 = load i32, i32* %2, align 4
  %101 = load i32, i32* @SYS_RES_IRQ, align 4
  %102 = load %struct.octusb_octeon_softc*, %struct.octusb_octeon_softc** %3, align 8
  %103 = getelementptr inbounds %struct.octusb_octeon_softc, %struct.octusb_octeon_softc* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = load i32**, i32*** %104, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32*, i32** %105, i64 %107
  %109 = load i32*, i32** %108, align 8
  %110 = call i32 @bus_release_resource(i32 %100, i32 %101, i32 0, i32* %109)
  %111 = load %struct.octusb_octeon_softc*, %struct.octusb_octeon_softc** %3, align 8
  %112 = getelementptr inbounds %struct.octusb_octeon_softc, %struct.octusb_octeon_softc* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  %114 = load i32**, i32*** %113, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32*, i32** %114, i64 %116
  store i32* null, i32** %117, align 8
  br label %118

118:                                              ; preds = %99, %89
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %6, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %6, align 4
  br label %39

122:                                              ; preds = %39
  %123 = load %struct.octusb_octeon_softc*, %struct.octusb_octeon_softc** %3, align 8
  %124 = getelementptr inbounds %struct.octusb_octeon_softc, %struct.octusb_octeon_softc* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = call i32 @usb_bus_mem_free_all(i32* %125, i32* null)
  ret i32 0
}

declare dso_local %struct.octusb_octeon_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_delete_children(i32) #1

declare dso_local i32 @octusb_uninit(%struct.TYPE_2__*) #1

declare dso_local i32 @cvmx_usb_get_num_ports(...) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @usb_bus_mem_free_all(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
