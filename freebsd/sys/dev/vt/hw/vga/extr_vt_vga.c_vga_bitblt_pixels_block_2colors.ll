; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/hw/vga/extr_vt_vga.c_vga_bitblt_pixels_block_2colors.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/hw/vga/extr_vt_vga.c_vga_bitblt_pixels_block_2colors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_device = type { %struct.vga_softc* }
%struct.vga_softc = type { i32 }

@VT_VGA_WIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vt_device*, i32*, i32, i32, i32, i32, i32)* @vga_bitblt_pixels_block_2colors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vga_bitblt_pixels_block_2colors(%struct.vt_device* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.vt_device*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.vga_softc*, align 8
  store %struct.vt_device* %0, %struct.vt_device** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %18 = load %struct.vt_device*, %struct.vt_device** %8, align 8
  %19 = load i32, i32* %11, align 4
  %20 = call i32 @vga_setbg(%struct.vt_device* %18, i32 %19)
  %21 = load %struct.vt_device*, %struct.vt_device** %8, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @vga_setfg(%struct.vt_device* %21, i32 %22)
  %24 = load %struct.vt_device*, %struct.vt_device** %8, align 8
  %25 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %24, i32 0, i32 0
  %26 = load %struct.vga_softc*, %struct.vga_softc** %25, align 8
  store %struct.vga_softc* %26, %struct.vga_softc** %17, align 8
  %27 = load i32, i32* @VT_VGA_WIDTH, align 4
  %28 = load i32, i32* %13, align 4
  %29 = mul i32 %27, %28
  %30 = load i32, i32* %12, align 4
  %31 = add i32 %29, %30
  %32 = udiv i32 %31, 8
  store i32 %32, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %33

33:                                               ; preds = %46, %7
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %33
  %38 = load %struct.vga_softc*, %struct.vga_softc** %17, align 8
  %39 = load i32, i32* %16, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* %15, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @MEM_WRITE1(%struct.vga_softc* %38, i32 %39, i32 %44)
  br label %46

46:                                               ; preds = %37
  %47 = load i32, i32* %15, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* @VT_VGA_WIDTH, align 4
  %50 = udiv i32 %49, 8
  %51 = load i32, i32* %16, align 4
  %52 = add i32 %51, %50
  store i32 %52, i32* %16, align 4
  br label %33

53:                                               ; preds = %33
  ret void
}

declare dso_local i32 @vga_setbg(%struct.vt_device*, i32) #1

declare dso_local i32 @vga_setfg(%struct.vt_device*, i32) #1

declare dso_local i32 @MEM_WRITE1(%struct.vga_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
