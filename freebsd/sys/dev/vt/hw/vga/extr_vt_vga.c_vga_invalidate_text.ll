; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/hw/vga/extr_vt_vga.c_vga_invalidate_text.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/hw/vga/extr_vt_vga.c_vga_invalidate_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_device = type { i64*, i64*, i64* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@VT_FB_MAX_WIDTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vga_invalidate_text(%struct.vt_device* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.vt_device*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.vt_device* %0, %struct.vt_device** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  br label %12

12:                                               ; preds = %76, %2
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ult i32 %13, %17
  br i1 %18, label %19, label %79

19:                                               ; preds = %12
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %72, %19
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ult i32 %25, %29
  br i1 %30, label %31, label %75

31:                                               ; preds = %24
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @VT_FB_MAX_WIDTH, align 4
  %34 = call i32 @PIXEL_WIDTH(i32 %33)
  %35 = mul i32 %32, %34
  %36 = load i32, i32* %5, align 4
  %37 = add i32 %35, %36
  %38 = zext i32 %37 to i64
  store i64 %38, i64* %7, align 8
  %39 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %40 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %39, i32 0, i32 2
  %41 = load i64*, i64** %40, align 8
  %42 = icmp ne i64* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %31
  %44 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %45 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %44, i32 0, i32 2
  %46 = load i64*, i64** %45, align 8
  %47 = load i64, i64* %7, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  store i64 0, i64* %48, align 8
  br label %49

49:                                               ; preds = %43, %31
  %50 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %51 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = icmp ne i64* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %56 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %55, i32 0, i32 1
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* %7, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  store i64 0, i64* %59, align 8
  br label %60

60:                                               ; preds = %54, %49
  %61 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %62 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = icmp ne i64* %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %67 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = load i64, i64* %7, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  store i64 0, i64* %70, align 8
  br label %71

71:                                               ; preds = %65, %60
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %5, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %5, align 4
  br label %24

75:                                               ; preds = %24
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %6, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %6, align 4
  br label %12

79:                                               ; preds = %12
  ret void
}

declare dso_local i32 @PIXEL_WIDTH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
