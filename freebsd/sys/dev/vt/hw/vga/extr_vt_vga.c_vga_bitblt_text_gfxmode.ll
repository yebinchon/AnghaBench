; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/hw/vga/extr_vt_vga.c_vga_bitblt_text_gfxmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/hw/vga/extr_vt_vga.c_vga_bitblt_text_gfxmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_device = type { i32 }
%struct.vt_window = type { %struct.TYPE_12__, %struct.vt_font* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.vt_font = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@VT_VGA_PIXELS_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vt_device*, %struct.vt_window*, %struct.TYPE_13__*)* @vga_bitblt_text_gfxmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vga_bitblt_text_gfxmode(%struct.vt_device* %0, %struct.vt_window* %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca %struct.vt_device*, align 8
  %5 = alloca %struct.vt_window*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.vt_font*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.vt_device* %0, %struct.vt_device** %4, align 8
  store %struct.vt_window* %1, %struct.vt_window** %5, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %6, align 8
  %16 = load %struct.vt_window*, %struct.vt_window** %5, align 8
  %17 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %16, i32 0, i32 1
  %18 = load %struct.vt_font*, %struct.vt_font** %17, align 8
  store %struct.vt_font* %18, %struct.vt_font** %7, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.vt_font*, %struct.vt_font** %7, align 8
  %29 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = mul i32 %27, %30
  %32 = load %struct.vt_window*, %struct.vt_window** %5, align 8
  %33 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add i32 %31, %36
  %38 = load i32, i32* @VT_VGA_PIXELS_BLOCK, align 4
  %39 = udiv i32 %37, %38
  %40 = load i32, i32* @VT_VGA_PIXELS_BLOCK, align 4
  %41 = mul i32 %39, %40
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.vt_font*, %struct.vt_font** %7, align 8
  %44 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = mul i32 %42, %45
  %47 = load %struct.vt_window*, %struct.vt_window** %5, align 8
  %48 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = add i32 %46, %51
  store i32 %52, i32* %11, align 4
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %8, align 4
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.vt_font*, %struct.vt_font** %7, align 8
  %63 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = mul i32 %61, %64
  %66 = load %struct.vt_window*, %struct.vt_window** %5, align 8
  %67 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = add i32 %65, %70
  %72 = load i32, i32* @VT_VGA_PIXELS_BLOCK, align 4
  %73 = call i64 @howmany(i32 %71, i32 %72)
  %74 = trunc i64 %73 to i32
  %75 = load i32, i32* @VT_VGA_PIXELS_BLOCK, align 4
  %76 = mul i32 %74, %75
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.vt_font*, %struct.vt_font** %7, align 8
  %79 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = mul i32 %77, %80
  %82 = load %struct.vt_window*, %struct.vt_window** %5, align 8
  %83 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = add i32 %81, %86
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %12, align 4
  %89 = load %struct.vt_window*, %struct.vt_window** %5, align 8
  %90 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @min(i32 %88, i32 %93)
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %13, align 4
  %96 = load %struct.vt_window*, %struct.vt_window** %5, align 8
  %97 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @min(i32 %95, i32 %100)
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* %11, align 4
  store i32 %102, i32* %15, align 4
  br label %103

103:                                              ; preds = %124, %3
  %104 = load i32, i32* %15, align 4
  %105 = load i32, i32* %13, align 4
  %106 = icmp ult i32 %104, %105
  br i1 %106, label %107, label %130

107:                                              ; preds = %103
  %108 = load i32, i32* %10, align 4
  store i32 %108, i32* %14, align 4
  br label %109

109:                                              ; preds = %119, %107
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* %12, align 4
  %112 = icmp ult i32 %110, %111
  br i1 %112, label %113, label %123

113:                                              ; preds = %109
  %114 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %115 = load %struct.vt_window*, %struct.vt_window** %5, align 8
  %116 = load i32, i32* %14, align 4
  %117 = load i32, i32* %15, align 4
  %118 = call i32 @vga_bitblt_one_text_pixels_block(%struct.vt_device* %114, %struct.vt_window* %115, i32 %116, i32 %117)
  br label %119

119:                                              ; preds = %113
  %120 = load i32, i32* @VT_VGA_PIXELS_BLOCK, align 4
  %121 = load i32, i32* %14, align 4
  %122 = add i32 %121, %120
  store i32 %122, i32* %14, align 4
  br label %109

123:                                              ; preds = %109
  br label %124

124:                                              ; preds = %123
  %125 = load %struct.vt_font*, %struct.vt_font** %7, align 8
  %126 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %15, align 4
  %129 = add i32 %128, %127
  store i32 %129, i32* %15, align 4
  br label %103

130:                                              ; preds = %103
  ret void
}

declare dso_local i64 @howmany(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @vga_bitblt_one_text_pixels_block(%struct.vt_device*, %struct.vt_window*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
