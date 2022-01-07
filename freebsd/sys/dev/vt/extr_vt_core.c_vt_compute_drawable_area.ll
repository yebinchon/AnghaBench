; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_core.c_vt_compute_drawable_area.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_core.c_vt_compute_drawable_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_window = type { %struct.TYPE_6__, %struct.vt_font*, %struct.vt_device* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.vt_font = type { i32, i32 }
%struct.vt_device = type { i32, i32 }

@vt_draw_logo_cpus = common dso_local global i64 0, align 8
@vt_logo_sprite_height = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vt_compute_drawable_area(%struct.vt_window* %0) #0 {
  %2 = alloca %struct.vt_window*, align 8
  %3 = alloca %struct.vt_device*, align 8
  %4 = alloca %struct.vt_font*, align 8
  %5 = alloca i32, align 4
  store %struct.vt_window* %0, %struct.vt_window** %2, align 8
  %6 = load %struct.vt_window*, %struct.vt_window** %2, align 8
  %7 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %6, i32 0, i32 2
  %8 = load %struct.vt_device*, %struct.vt_device** %7, align 8
  store %struct.vt_device* %8, %struct.vt_device** %3, align 8
  %9 = load %struct.vt_window*, %struct.vt_window** %2, align 8
  %10 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %9, i32 0, i32 1
  %11 = load %struct.vt_font*, %struct.vt_font** %10, align 8
  %12 = icmp eq %struct.vt_font* %11, null
  br i1 %12, label %13, label %45

13:                                               ; preds = %1
  %14 = load %struct.vt_window*, %struct.vt_window** %2, align 8
  %15 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = load %struct.vt_window*, %struct.vt_window** %2, align 8
  %19 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  store i32 0, i32* %21, align 4
  %22 = load i64, i64* @vt_draw_logo_cpus, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %13
  %25 = load i32, i32* @vt_logo_sprite_height, align 4
  %26 = load %struct.vt_window*, %struct.vt_window** %2, align 8
  %27 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  store i32 %25, i32* %29, align 4
  br label %30

30:                                               ; preds = %24, %13
  %31 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %32 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.vt_window*, %struct.vt_window** %2, align 8
  %35 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 %33, i32* %37, align 8
  %38 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %39 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.vt_window*, %struct.vt_window** %2, align 8
  %42 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store i32 %40, i32* %44, align 4
  br label %128

45:                                               ; preds = %1
  %46 = load %struct.vt_window*, %struct.vt_window** %2, align 8
  %47 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %46, i32 0, i32 1
  %48 = load %struct.vt_font*, %struct.vt_font** %47, align 8
  store %struct.vt_font* %48, %struct.vt_font** %4, align 8
  %49 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %50 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %5, align 4
  %52 = load i64, i64* @vt_draw_logo_cpus, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %45
  %55 = load i32, i32* @vt_logo_sprite_height, align 4
  %56 = load i32, i32* %5, align 4
  %57 = sub nsw i32 %56, %55
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %54, %45
  %59 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %60 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.vt_font*, %struct.vt_font** %4, align 8
  %63 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = srem i32 %61, %64
  %66 = sdiv i32 %65, 2
  %67 = load %struct.vt_window*, %struct.vt_window** %2, align 8
  %68 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  store i32 %66, i32* %70, align 8
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.vt_font*, %struct.vt_font** %4, align 8
  %73 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = srem i32 %71, %74
  %76 = sdiv i32 %75, 2
  %77 = load %struct.vt_window*, %struct.vt_window** %2, align 8
  %78 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  store i32 %76, i32* %80, align 4
  %81 = load i64, i64* @vt_draw_logo_cpus, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %58
  %84 = load i32, i32* @vt_logo_sprite_height, align 4
  %85 = load %struct.vt_window*, %struct.vt_window** %2, align 8
  %86 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, %84
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %83, %58
  %92 = load %struct.vt_window*, %struct.vt_window** %2, align 8
  %93 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %98 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.vt_font*, %struct.vt_font** %4, align 8
  %101 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i8* @rounddown(i32 %99, i32 %102)
  %104 = sext i32 %96 to i64
  %105 = getelementptr i8, i8* %103, i64 %104
  %106 = ptrtoint i8* %105 to i32
  %107 = load %struct.vt_window*, %struct.vt_window** %2, align 8
  %108 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  store i32 %106, i32* %110, align 8
  %111 = load %struct.vt_window*, %struct.vt_window** %2, align 8
  %112 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %5, align 4
  %117 = load %struct.vt_font*, %struct.vt_font** %4, align 8
  %118 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i8* @rounddown(i32 %116, i32 %119)
  %121 = sext i32 %115 to i64
  %122 = getelementptr i8, i8* %120, i64 %121
  %123 = ptrtoint i8* %122 to i32
  %124 = load %struct.vt_window*, %struct.vt_window** %2, align 8
  %125 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  store i32 %123, i32* %127, align 4
  br label %128

128:                                              ; preds = %91, %30
  ret void
}

declare dso_local i8* @rounddown(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
