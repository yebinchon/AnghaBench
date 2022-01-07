; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/hw/vga/extr_vt_vga.c_vga_bitblt_text.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/hw/vga/extr_vt_vga.c_vga_bitblt_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_device = type { i32 }
%struct.vt_window = type { i32 }

@VDF_TEXTMODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vt_device*, %struct.vt_window*, i32*)* @vga_bitblt_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vga_bitblt_text(%struct.vt_device* %0, %struct.vt_window* %1, i32* %2) #0 {
  %4 = alloca %struct.vt_device*, align 8
  %5 = alloca %struct.vt_window*, align 8
  %6 = alloca i32*, align 8
  store %struct.vt_device* %0, %struct.vt_device** %4, align 8
  store %struct.vt_window* %1, %struct.vt_window** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %8 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @VDF_TEXTMODE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %3
  %14 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %15 = load %struct.vt_window*, %struct.vt_window** %5, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @vga_bitblt_text_gfxmode(%struct.vt_device* %14, %struct.vt_window* %15, i32* %16)
  br label %23

18:                                               ; preds = %3
  %19 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %20 = load %struct.vt_window*, %struct.vt_window** %5, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @vga_bitblt_text_txtmode(%struct.vt_device* %19, %struct.vt_window* %20, i32* %21)
  br label %23

23:                                               ; preds = %18, %13
  ret void
}

declare dso_local i32 @vga_bitblt_text_gfxmode(%struct.vt_device*, %struct.vt_window*, i32*) #1

declare dso_local i32 @vga_bitblt_text_txtmode(%struct.vt_device*, %struct.vt_window*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
