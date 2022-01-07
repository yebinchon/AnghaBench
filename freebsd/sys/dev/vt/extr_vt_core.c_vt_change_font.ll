; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_core.c_vt_change_font.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_core.c_vt_change_font.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_window = type { i32, %struct.TYPE_7__, %struct.vt_font*, %struct.TYPE_8__, %struct.terminal*, %struct.vt_device* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.terminal = type { i32 }
%struct.vt_device = type { i32, %struct.vt_window*, i8*, i8* }
%struct.vt_font = type { i32 }
%struct.winsize = type { i32 }

@VWF_BUSY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@VDF_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vt_window*, %struct.vt_font*)* @vt_change_font to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vt_change_font(%struct.vt_window* %0, %struct.vt_font* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vt_window*, align 8
  %5 = alloca %struct.vt_font*, align 8
  %6 = alloca %struct.vt_device*, align 8
  %7 = alloca %struct.terminal*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.winsize, align 4
  store %struct.vt_window* %0, %struct.vt_window** %4, align 8
  store %struct.vt_font* %1, %struct.vt_font** %5, align 8
  %10 = load %struct.vt_window*, %struct.vt_window** %4, align 8
  %11 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %10, i32 0, i32 5
  %12 = load %struct.vt_device*, %struct.vt_device** %11, align 8
  store %struct.vt_device* %12, %struct.vt_device** %6, align 8
  %13 = load %struct.vt_window*, %struct.vt_window** %4, align 8
  %14 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %13, i32 0, i32 4
  %15 = load %struct.terminal*, %struct.terminal** %14, align 8
  store %struct.terminal* %15, %struct.terminal** %7, align 8
  %16 = load %struct.vt_device*, %struct.vt_device** %6, align 8
  %17 = call i32 @VT_LOCK(%struct.vt_device* %16)
  %18 = load %struct.vt_window*, %struct.vt_window** %4, align 8
  %19 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @VWF_BUSY, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load %struct.vt_device*, %struct.vt_device** %6, align 8
  %26 = call i32 @VT_UNLOCK(%struct.vt_device* %25)
  %27 = load i32, i32* @EBUSY, align 4
  store i32 %27, i32* %3, align 4
  br label %145

28:                                               ; preds = %2
  %29 = load i32, i32* @VWF_BUSY, align 4
  %30 = load %struct.vt_window*, %struct.vt_window** %4, align 8
  %31 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load %struct.vt_device*, %struct.vt_device** %6, align 8
  %35 = call i32 @VT_UNLOCK(%struct.vt_device* %34)
  %36 = load %struct.vt_device*, %struct.vt_device** %6, align 8
  %37 = load %struct.vt_font*, %struct.vt_font** %5, align 8
  %38 = call i32 @vt_termsize(%struct.vt_device* %36, %struct.vt_font* %37, i32* %8)
  %39 = load %struct.vt_device*, %struct.vt_device** %6, align 8
  %40 = load %struct.vt_font*, %struct.vt_font** %5, align 8
  %41 = call i32 @vt_winsize(%struct.vt_device* %39, %struct.vt_font* %40, %struct.winsize* %9)
  %42 = load %struct.terminal*, %struct.terminal** %7, align 8
  %43 = call i32 @terminal_mute(%struct.terminal* %42, i32 1)
  %44 = load %struct.vt_window*, %struct.vt_window** %4, align 8
  %45 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %44, i32 0, i32 3
  %46 = load %struct.vt_window*, %struct.vt_window** %4, align 8
  %47 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @vtbuf_grow(%struct.TYPE_8__* %45, i32* %8, i32 %49)
  %51 = load %struct.terminal*, %struct.terminal** %7, align 8
  %52 = call i32 @terminal_set_winsize_blank(%struct.terminal* %51, %struct.winsize* %9, i32 0, i32* null)
  %53 = load %struct.terminal*, %struct.terminal** %7, align 8
  %54 = load %struct.vt_window*, %struct.vt_window** %4, align 8
  %55 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = call i32 @terminal_set_cursor(%struct.terminal* %53, i32* %56)
  %58 = load %struct.terminal*, %struct.terminal** %7, align 8
  %59 = call i32 @terminal_mute(%struct.terminal* %58, i32 0)
  %60 = load %struct.vt_device*, %struct.vt_device** %6, align 8
  %61 = call i32 @VT_LOCK(%struct.vt_device* %60)
  %62 = load %struct.vt_window*, %struct.vt_window** %4, align 8
  %63 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %62, i32 0, i32 2
  %64 = load %struct.vt_font*, %struct.vt_font** %63, align 8
  %65 = load %struct.vt_font*, %struct.vt_font** %5, align 8
  %66 = icmp ne %struct.vt_font* %64, %65
  br i1 %66, label %67, label %84

67:                                               ; preds = %28
  %68 = load %struct.vt_window*, %struct.vt_window** %4, align 8
  %69 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %68, i32 0, i32 2
  %70 = load %struct.vt_font*, %struct.vt_font** %69, align 8
  %71 = icmp ne %struct.vt_font* %70, null
  br i1 %71, label %72, label %84

72:                                               ; preds = %67
  %73 = load %struct.vt_font*, %struct.vt_font** %5, align 8
  %74 = icmp ne %struct.vt_font* %73, null
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = load %struct.vt_window*, %struct.vt_window** %4, align 8
  %77 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %76, i32 0, i32 2
  %78 = load %struct.vt_font*, %struct.vt_font** %77, align 8
  %79 = call i32 @vtfont_unref(%struct.vt_font* %78)
  %80 = load %struct.vt_font*, %struct.vt_font** %5, align 8
  %81 = call %struct.vt_font* @vtfont_ref(%struct.vt_font* %80)
  %82 = load %struct.vt_window*, %struct.vt_window** %4, align 8
  %83 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %82, i32 0, i32 2
  store %struct.vt_font* %81, %struct.vt_font** %83, align 8
  br label %84

84:                                               ; preds = %75, %72, %67, %28
  %85 = load %struct.vt_window*, %struct.vt_window** %4, align 8
  %86 = call i32 @vt_compute_drawable_area(%struct.vt_window* %85)
  %87 = load %struct.vt_device*, %struct.vt_device** %6, align 8
  %88 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %87, i32 0, i32 3
  %89 = load i8*, i8** %88, align 8
  %90 = load %struct.vt_window*, %struct.vt_window** %4, align 8
  %91 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.vt_window*, %struct.vt_window** %4, align 8
  %96 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = sub nsw i64 %94, %99
  %101 = sub nsw i64 %100, 1
  %102 = call i8* @min(i8* %89, i64 %101)
  %103 = load %struct.vt_device*, %struct.vt_device** %6, align 8
  %104 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %103, i32 0, i32 3
  store i8* %102, i8** %104, align 8
  %105 = load %struct.vt_device*, %struct.vt_device** %6, align 8
  %106 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %105, i32 0, i32 2
  %107 = load i8*, i8** %106, align 8
  %108 = load %struct.vt_window*, %struct.vt_window** %4, align 8
  %109 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.vt_window*, %struct.vt_window** %4, align 8
  %114 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = sub nsw i64 %112, %117
  %119 = sub nsw i64 %118, 1
  %120 = call i8* @min(i8* %107, i64 %119)
  %121 = load %struct.vt_device*, %struct.vt_device** %6, align 8
  %122 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %121, i32 0, i32 2
  store i8* %120, i8** %122, align 8
  %123 = load %struct.vt_device*, %struct.vt_device** %6, align 8
  %124 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %123, i32 0, i32 1
  %125 = load %struct.vt_window*, %struct.vt_window** %124, align 8
  %126 = load %struct.vt_window*, %struct.vt_window** %4, align 8
  %127 = icmp eq %struct.vt_window* %125, %126
  br i1 %127, label %128, label %136

128:                                              ; preds = %84
  %129 = load i32, i32* @VDF_INVALID, align 4
  %130 = load %struct.vt_device*, %struct.vt_device** %6, align 8
  %131 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = or i32 %132, %129
  store i32 %133, i32* %131, align 8
  %134 = load %struct.vt_window*, %struct.vt_window** %4, align 8
  %135 = call i32 @vt_resume_flush_timer(%struct.vt_window* %134, i32 0)
  br label %136

136:                                              ; preds = %128, %84
  %137 = load i32, i32* @VWF_BUSY, align 4
  %138 = xor i32 %137, -1
  %139 = load %struct.vt_window*, %struct.vt_window** %4, align 8
  %140 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = and i32 %141, %138
  store i32 %142, i32* %140, align 8
  %143 = load %struct.vt_device*, %struct.vt_device** %6, align 8
  %144 = call i32 @VT_UNLOCK(%struct.vt_device* %143)
  store i32 0, i32* %3, align 4
  br label %145

145:                                              ; preds = %136, %24
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i32 @VT_LOCK(%struct.vt_device*) #1

declare dso_local i32 @VT_UNLOCK(%struct.vt_device*) #1

declare dso_local i32 @vt_termsize(%struct.vt_device*, %struct.vt_font*, i32*) #1

declare dso_local i32 @vt_winsize(%struct.vt_device*, %struct.vt_font*, %struct.winsize*) #1

declare dso_local i32 @terminal_mute(%struct.terminal*, i32) #1

declare dso_local i32 @vtbuf_grow(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @terminal_set_winsize_blank(%struct.terminal*, %struct.winsize*, i32, i32*) #1

declare dso_local i32 @terminal_set_cursor(%struct.terminal*, i32*) #1

declare dso_local i32 @vtfont_unref(%struct.vt_font*) #1

declare dso_local %struct.vt_font* @vtfont_ref(%struct.vt_font*) #1

declare dso_local i32 @vt_compute_drawable_area(%struct.vt_window*) #1

declare dso_local i8* @min(i8*, i64) #1

declare dso_local i32 @vt_resume_flush_timer(%struct.vt_window*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
