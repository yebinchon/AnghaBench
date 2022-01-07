; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_s3_pci.c_s3lfb_set_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_s3_pci.c_s3lfb_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (%struct.TYPE_7__*, i32)* }
%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.s3pci_softc = type { i32 }

@s3pci_dev = common dso_local global i32 0, align 4
@prevvidsw = common dso_local global %struct.TYPE_8__* null, align 8
@M_VESA_BASE = common dso_local global i32 0, align 4
@V_INFO_GRAPHICS = common dso_local global i32 0, align 4
@V_INFO_LINEAR = common dso_local global i32 0, align 4
@S3_CRTC_ADDR = common dso_local global i32 0, align 4
@S3_CRTC_VALUE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32)* @s3lfb_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3lfb_set_mode(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.s3pci_softc*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @s3pci_dev, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i64 @device_get_softc(i32 %10)
  %12 = inttoptr i64 %11 to %struct.s3pci_softc*
  store %struct.s3pci_softc* %12, %struct.s3pci_softc** %7, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** @prevvidsw, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %14, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 %15(%struct.TYPE_7__* %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %3, align 4
  br label %147

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @M_VESA_BASE, align 4
  %25 = icmp sle i32 %23, %24
  br i1 %25, label %42, label %26

26:                                               ; preds = %22
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @V_INFO_GRAPHICS, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %26
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @V_INFO_LINEAR, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34, %26, %22
  store i32 0, i32* %3, align 4
  br label %147

43:                                               ; preds = %34
  %44 = load i32, i32* @S3_CRTC_ADDR, align 4
  %45 = call i32 @outb_p(i32 56, i32 %44)
  %46 = load i32, i32* @S3_CRTC_VALUE, align 4
  %47 = call i32 @outb_p(i32 72, i32 %46)
  %48 = load i32, i32* @S3_CRTC_ADDR, align 4
  %49 = call i32 @outb_p(i32 57, i32 %48)
  %50 = load i32, i32* @S3_CRTC_VALUE, align 4
  %51 = call i32 @outb_p(i32 165, i32 %50)
  %52 = load i32, i32* @S3_CRTC_ADDR, align 4
  %53 = call i32 @outb_p(i32 64, i32 %52)
  %54 = load i32, i32* @S3_CRTC_VALUE, align 4
  %55 = call i32 @inb_p(i32 %54)
  %56 = or i32 %55, 1
  %57 = load i32, i32* @S3_CRTC_VALUE, align 4
  %58 = call i32 @outb_p(i32 %56, i32 %57)
  %59 = call i32 @inb_enh(i32 0)
  %60 = or i32 %59, 1
  %61 = call i32 @outb_enh(i32 %60, i32 0)
  %62 = load i32, i32* @S3_CRTC_ADDR, align 4
  %63 = call i32 @outb_p(i32 49, i32 %62)
  %64 = load i32, i32* @S3_CRTC_VALUE, align 4
  %65 = call i32 @inb_p(i32 %64)
  %66 = or i32 %65, 8
  %67 = load i32, i32* @S3_CRTC_VALUE, align 4
  %68 = call i32 @outb_p(i32 %66, i32 %67)
  %69 = load i32, i32* @S3_CRTC_ADDR, align 4
  %70 = call i32 @outb_p(i32 88, i32 %69)
  %71 = load i32, i32* @S3_CRTC_VALUE, align 4
  %72 = call i32 @inb_p(i32 %71)
  %73 = or i32 %72, 19
  %74 = load i32, i32* @S3_CRTC_VALUE, align 4
  %75 = call i32 @outb_p(i32 %73, i32 %74)
  %76 = load i32, i32* @S3_CRTC_ADDR, align 4
  %77 = call i32 @outb_p(i32 64, i32 %76)
  %78 = load i32, i32* @S3_CRTC_VALUE, align 4
  %79 = call i32 @inb_p(i32 %78)
  %80 = and i32 %79, -2
  %81 = load i32, i32* @S3_CRTC_VALUE, align 4
  %82 = call i32 @outb_p(i32 %80, i32 %81)
  %83 = load i32, i32* @S3_CRTC_ADDR, align 4
  %84 = call i32 @outb_p(i32 57, i32 %83)
  %85 = load i32, i32* @S3_CRTC_VALUE, align 4
  %86 = call i32 @outb_p(i32 90, i32 %85)
  %87 = load i32, i32* @S3_CRTC_ADDR, align 4
  %88 = call i32 @outb_p(i32 56, i32 %87)
  %89 = load i32, i32* @S3_CRTC_VALUE, align 4
  %90 = call i32 @outb_p(i32 0, i32 %89)
  %91 = load i32, i32* @V_INFO_LINEAR, align 4
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %91
  store i32 %96, i32* %94, align 4
  %97 = load %struct.s3pci_softc*, %struct.s3pci_softc** %7, align 8
  %98 = getelementptr inbounds %struct.s3pci_softc, %struct.s3pci_softc* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 3
  store i32 %99, i32* %102, align 4
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @s3lfb_map_buffer(i32 %106, i32 %110)
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 4
  store i32 %111, i32* %113, align 4
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 4
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 5
  store i32 %122, i32* %124, align 4
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = sdiv i32 %128, %132
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = sdiv i32 %139, %143
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 2
  store i32 %144, i32* %146, align 4
  store i32 0, i32* %3, align 4
  br label %147

147:                                              ; preds = %43, %42, %20
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @inb_p(i32) #1

declare dso_local i32 @outb_enh(i32, i32) #1

declare dso_local i32 @inb_enh(i32) #1

declare dso_local i32 @s3lfb_map_buffer(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
