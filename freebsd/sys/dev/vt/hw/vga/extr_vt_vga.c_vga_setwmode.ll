; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/hw/vga/extr_vt_vga.c_vga_setwmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/hw/vga/extr_vt_vga.c_vga_setwmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_device = type { %struct.vga_softc* }
%struct.vga_softc = type { i32 }

@VGA_GC_ADDRESS = common dso_local global i32 0, align 4
@VGA_GC_MODE = common dso_local global i32 0, align 4
@VGA_GC_DATA = common dso_local global i32 0, align 4
@VGA_SEQ_ADDRESS = common dso_local global i32 0, align 4
@VGA_SEQ_MAP_MASK = common dso_local global i32 0, align 4
@VGA_SEQ_DATA = common dso_local global i32 0, align 4
@VGA_SEQ_MM_EM3 = common dso_local global i32 0, align 4
@VGA_SEQ_MM_EM2 = common dso_local global i32 0, align 4
@VGA_SEQ_MM_EM1 = common dso_local global i32 0, align 4
@VGA_SEQ_MM_EM0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vt_device*, i32)* @vga_setwmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vga_setwmode(%struct.vt_device* %0, i32 %1) #0 {
  %3 = alloca %struct.vt_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vga_softc*, align 8
  store %struct.vt_device* %0, %struct.vt_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %7 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %6, i32 0, i32 0
  %8 = load %struct.vga_softc*, %struct.vga_softc** %7, align 8
  store %struct.vga_softc* %8, %struct.vga_softc** %5, align 8
  %9 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %10 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %43

15:                                               ; preds = %2
  %16 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %17 = load i32, i32* @VGA_GC_ADDRESS, align 4
  %18 = load i32, i32* @VGA_GC_MODE, align 4
  %19 = call i32 @REG_WRITE1(%struct.vga_softc* %16, i32 %17, i32 %18)
  %20 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %21 = load i32, i32* @VGA_GC_DATA, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @REG_WRITE1(%struct.vga_softc* %20, i32 %21, i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %26 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %4, align 4
  switch i32 %27, label %43 [
    i32 3, label %28
  ]

28:                                               ; preds = %15
  %29 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %30 = load i32, i32* @VGA_SEQ_ADDRESS, align 4
  %31 = load i32, i32* @VGA_SEQ_MAP_MASK, align 4
  %32 = call i32 @REG_WRITE1(%struct.vga_softc* %29, i32 %30, i32 %31)
  %33 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %34 = load i32, i32* @VGA_SEQ_DATA, align 4
  %35 = load i32, i32* @VGA_SEQ_MM_EM3, align 4
  %36 = load i32, i32* @VGA_SEQ_MM_EM2, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @VGA_SEQ_MM_EM1, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @VGA_SEQ_MM_EM0, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @REG_WRITE1(%struct.vga_softc* %33, i32 %34, i32 %41)
  br label %43

43:                                               ; preds = %14, %15, %28
  ret void
}

declare dso_local i32 @REG_WRITE1(%struct.vga_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
