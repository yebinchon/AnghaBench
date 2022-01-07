; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_core.c_vt_mark_mouse_position_as_dirty.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_core.c_vt_mark_mouse_position_as_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_device = type { i32, i32, %struct.TYPE_11__*, %struct.TYPE_8__*, %struct.vt_window* }
%struct.TYPE_11__ = type { i32 (%struct.vt_device*, %struct.TYPE_12__*)* }
%struct.TYPE_12__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.vt_window = type { i32, %struct.vt_font* }
%struct.vt_font = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vt_device*, i32)* @vt_mark_mouse_position_as_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vt_mark_mouse_position_as_dirty(%struct.vt_device* %0, i32 %1) #0 {
  %3 = alloca %struct.vt_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__, align 4
  %6 = alloca %struct.vt_window*, align 8
  %7 = alloca %struct.vt_font*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vt_device* %0, %struct.vt_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %11 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %10, i32 0, i32 4
  %12 = load %struct.vt_window*, %struct.vt_window** %11, align 8
  store %struct.vt_window* %12, %struct.vt_window** %6, align 8
  %13 = load %struct.vt_window*, %struct.vt_window** %6, align 8
  %14 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %13, i32 0, i32 1
  %15 = load %struct.vt_font*, %struct.vt_font** %14, align 8
  store %struct.vt_font* %15, %struct.vt_font** %7, align 8
  %16 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %17 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %8, align 4
  %19 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %20 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = load %struct.vt_font*, %struct.vt_font** %7, align 8
  %23 = icmp ne %struct.vt_font* %22, null
  br i1 %23, label %24, label %67

24:                                               ; preds = %2
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.vt_font*, %struct.vt_font** %7, align 8
  %27 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sdiv i32 %25, %28
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.vt_font*, %struct.vt_font** %7, align 8
  %34 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sdiv i32 %32, %35
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %41 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %40, i32 0, i32 3
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %39, %44
  %46 = load %struct.vt_font*, %struct.vt_font** %7, align 8
  %47 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sdiv i32 %45, %48
  %50 = add nsw i32 %49, 1
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %55 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %54, i32 0, i32 3
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %53, %58
  %60 = load %struct.vt_font*, %struct.vt_font** %7, align 8
  %61 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sdiv i32 %59, %62
  %64 = add nsw i32 %63, 1
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  br label %82

67:                                               ; preds = %2
  %68 = load i32, i32* %8, align 4
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* %9, align 4
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 2
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 2
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %67, %24
  %83 = load i32, i32* %4, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %82
  %86 = load %struct.vt_window*, %struct.vt_window** %6, align 8
  %87 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %86, i32 0, i32 0
  %88 = call i32 @vtbuf_lock(i32* %87)
  br label %89

89:                                               ; preds = %85, %82
  %90 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %91 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %90, i32 0, i32 2
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load i32 (%struct.vt_device*, %struct.TYPE_12__*)*, i32 (%struct.vt_device*, %struct.TYPE_12__*)** %93, align 8
  %95 = icmp ne i32 (%struct.vt_device*, %struct.TYPE_12__*)* %94, null
  br i1 %95, label %96, label %104

96:                                               ; preds = %89
  %97 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %98 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %97, i32 0, i32 2
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = load i32 (%struct.vt_device*, %struct.TYPE_12__*)*, i32 (%struct.vt_device*, %struct.TYPE_12__*)** %100, align 8
  %102 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %103 = call i32 %101(%struct.vt_device* %102, %struct.TYPE_12__* %5)
  br label %104

104:                                              ; preds = %96, %89
  %105 = load %struct.vt_window*, %struct.vt_window** %6, align 8
  %106 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %105, i32 0, i32 0
  %107 = call i32 @vtbuf_dirty(i32* %106, %struct.TYPE_12__* %5)
  %108 = load i32, i32* %4, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %104
  %111 = load %struct.vt_window*, %struct.vt_window** %6, align 8
  %112 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %111, i32 0, i32 0
  %113 = call i32 @vtbuf_unlock(i32* %112)
  br label %114

114:                                              ; preds = %110, %104
  ret void
}

declare dso_local i32 @vtbuf_lock(i32*) #1

declare dso_local i32 @vtbuf_dirty(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @vtbuf_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
