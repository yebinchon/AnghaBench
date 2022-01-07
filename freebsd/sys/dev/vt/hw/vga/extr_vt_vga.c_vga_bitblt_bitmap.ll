; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/hw/vga/extr_vt_vga.c_vga_bitblt_bitmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/hw/vga/extr_vt_vga.c_vga_bitblt_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_device = type { i32, i32 }
%struct.vt_window = type { i32 }

@VT_VGA_PIXELS_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vt_device*, %struct.vt_window*, i64*, i64*, i32, i32, i32, i32, i32, i32)* @vga_bitblt_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vga_bitblt_bitmap(%struct.vt_device* %0, %struct.vt_window* %1, i64* %2, i64* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca %struct.vt_device*, align 8
  %12 = alloca %struct.vt_window*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  store %struct.vt_device* %0, %struct.vt_device** %11, align 8
  store %struct.vt_window* %1, %struct.vt_window** %12, align 8
  store i64* %2, i64** %13, align 8
  store i64* %3, i64** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %31 = load i32, i32* %17, align 4
  %32 = load i32, i32* @VT_VGA_PIXELS_BLOCK, align 4
  %33 = call i32 @rounddown(i32 %31, i32 %32)
  store i32 %33, i32* %21, align 4
  %34 = load i32, i32* %18, align 4
  store i32 %34, i32* %22, align 4
  %35 = load i32, i32* %17, align 4
  %36 = load i32, i32* %15, align 4
  %37 = add i32 %35, %36
  %38 = load i32, i32* @VT_VGA_PIXELS_BLOCK, align 4
  %39 = call i32 @roundup(i32 %37, i32 %38)
  store i32 %39, i32* %23, align 4
  %40 = load i32, i32* %18, align 4
  %41 = load i32, i32* %16, align 4
  %42 = add i32 %40, %41
  store i32 %42, i32* %24, align 4
  %43 = load i32, i32* %23, align 4
  %44 = load %struct.vt_device*, %struct.vt_device** %11, align 8
  %45 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sub i32 %46, 1
  %48 = call i32 @min(i32 %43, i32 %47)
  store i32 %48, i32* %23, align 4
  %49 = load i32, i32* %24, align 4
  %50 = load %struct.vt_device*, %struct.vt_device** %11, align 8
  %51 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sub i32 %52, 1
  %54 = call i32 @min(i32 %49, i32 %53)
  store i32 %54, i32* %24, align 4
  %55 = load i32, i32* %22, align 4
  store i32 %55, i32* %26, align 4
  br label %56

56:                                               ; preds = %109, %10
  %57 = load i32, i32* %26, align 4
  %58 = load i32, i32* %24, align 4
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %60, label %112

60:                                               ; preds = %56
  store i32 0, i32* %27, align 4
  %61 = load i32, i32* %17, align 4
  %62 = load i32, i32* %21, align 4
  %63 = sub i32 %61, %62
  store i32 %63, i32* %28, align 4
  %64 = load i32, i32* @VT_VGA_PIXELS_BLOCK, align 4
  %65 = load i32, i32* %28, align 4
  %66 = sub i32 %64, %65
  store i32 %66, i32* %29, align 4
  %67 = load i32, i32* %21, align 4
  store i32 %67, i32* %25, align 4
  br label %68

68:                                               ; preds = %104, %60
  %69 = load i32, i32* %25, align 4
  %70 = load i32, i32* %23, align 4
  %71 = icmp ult i32 %69, %70
  br i1 %71, label %72, label %108

72:                                               ; preds = %68
  store i64 0, i64* %30, align 8
  %73 = load i64*, i64** %13, align 8
  %74 = load i64*, i64** %14, align 8
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* %27, align 4
  %77 = load i32, i32* %28, align 4
  %78 = load i32, i32* %29, align 4
  %79 = load i32, i32* %26, align 4
  %80 = load i32, i32* %22, align 4
  %81 = sub i32 %79, %80
  %82 = load i32, i32* %19, align 4
  %83 = load i32, i32* %20, align 4
  %84 = call i32 @vga_copy_bitmap_portion(i64* %30, i32* null, i64* %73, i64* %74, i32 %75, i32 %76, i32 %77, i32 %78, i32 %81, i32 0, i32 1, i32 %82, i32 %83, i32 0)
  %85 = load %struct.vt_device*, %struct.vt_device** %11, align 8
  %86 = load i32, i32* %19, align 4
  %87 = load i32, i32* %20, align 4
  %88 = load i32, i32* %25, align 4
  %89 = load i32, i32* %26, align 4
  %90 = call i32 @vga_bitblt_pixels_block_2colors(%struct.vt_device* %85, i64* %30, i32 %86, i32 %87, i32 %88, i32 %89, i32 1)
  %91 = load i32, i32* %29, align 4
  %92 = load i32, i32* %27, align 4
  %93 = add i32 %92, %91
  store i32 %93, i32* %27, align 4
  %94 = load i32, i32* %28, align 4
  %95 = load i32, i32* %29, align 4
  %96 = add i32 %94, %95
  %97 = load i32, i32* @VT_VGA_PIXELS_BLOCK, align 4
  %98 = urem i32 %96, %97
  store i32 %98, i32* %28, align 4
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* %27, align 4
  %101 = sub i32 %99, %100
  %102 = load i32, i32* @VT_VGA_PIXELS_BLOCK, align 4
  %103 = call i32 @min(i32 %101, i32 %102)
  store i32 %103, i32* %29, align 4
  br label %104

104:                                              ; preds = %72
  %105 = load i32, i32* @VT_VGA_PIXELS_BLOCK, align 4
  %106 = load i32, i32* %25, align 4
  %107 = add i32 %106, %105
  store i32 %107, i32* %25, align 4
  br label %68

108:                                              ; preds = %68
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %26, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %26, align 4
  br label %56

112:                                              ; preds = %56
  ret void
}

declare dso_local i32 @rounddown(i32, i32) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @vga_copy_bitmap_portion(i64*, i32*, i64*, i64*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vga_bitblt_pixels_block_2colors(%struct.vt_device*, i64*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
