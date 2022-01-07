; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/hw/vga/extr_vt_vga.c_vga_setfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/hw/vga/extr_vt_vga.c_vga_setfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_device = type { %struct.vga_softc* }
%struct.vga_softc = type { i64 }

@VGA_GC_ADDRESS = common dso_local global i32 0, align 4
@VGA_GC_SET_RESET = common dso_local global i32 0, align 4
@VGA_GC_DATA = common dso_local global i32 0, align 4
@cons_to_vga_colors = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vt_device*, i64)* @vga_setfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vga_setfg(%struct.vt_device* %0, i64 %1) #0 {
  %3 = alloca %struct.vt_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.vga_softc*, align 8
  store %struct.vt_device* %0, %struct.vt_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %7 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %6, i32 0, i32 0
  %8 = load %struct.vga_softc*, %struct.vga_softc** %7, align 8
  store %struct.vga_softc* %8, %struct.vga_softc** %5, align 8
  %9 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %10 = call i32 @vga_setwmode(%struct.vt_device* %9, i32 3)
  %11 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %12 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %4, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %32

17:                                               ; preds = %2
  %18 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %19 = load i32, i32* @VGA_GC_ADDRESS, align 4
  %20 = load i32, i32* @VGA_GC_SET_RESET, align 4
  %21 = call i32 @REG_WRITE1(%struct.vga_softc* %18, i32 %19, i32 %20)
  %22 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %23 = load i32, i32* @VGA_GC_DATA, align 4
  %24 = load i32*, i32** @cons_to_vga_colors, align 8
  %25 = load i64, i64* %4, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @REG_WRITE1(%struct.vga_softc* %22, i32 %23, i32 %27)
  %29 = load i64, i64* %4, align 8
  %30 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %31 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  br label %32

32:                                               ; preds = %17, %16
  ret void
}

declare dso_local i32 @vga_setwmode(%struct.vt_device*, i32) #1

declare dso_local i32 @REG_WRITE1(%struct.vga_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
