; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_cpulogos.c_vt_init_logos.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_cpulogos.c_vt_init_logos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.terminal = type { %struct.vt_window* }
%struct.vt_window = type { %struct.TYPE_2__, %struct.vt_font*, %struct.vt_device* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.vt_font = type { i32 }
%struct.vt_device = type { i32, i64, %struct.vt_window* }
%struct.winsize = type { i32 }

@VTY_VT = common dso_local global i32 0, align 4
@vt_splash_cpu = common dso_local global i32 0, align 4
@vt_consterm = common dso_local global %struct.terminal zeroinitializer, align 8
@VDF_INITIALIZED = common dso_local global i32 0, align 4
@VDF_DEAD = common dso_local global i32 0, align 4
@VDF_TEXTMODE = common dso_local global i32 0, align 4
@vt_logo_sprite_height = common dso_local global i64 0, align 8
@vt_draw_logo_cpus = common dso_local global i32 0, align 4
@VDF_INVALID = common dso_local global i32 0, align 4
@vt_splash_cpu_callout = common dso_local global i32 0, align 4
@vt_splash_cpu_duration = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@vt_fini_logos = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @vt_init_logos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vt_init_logos(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vt_device*, align 8
  %4 = alloca %struct.vt_window*, align 8
  %5 = alloca %struct.terminal*, align 8
  %6 = alloca %struct.vt_font*, align 8
  %7 = alloca %struct.winsize, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i32, i32* @VTY_VT, align 4
  %10 = call i32 @vty_enabled(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %119

13:                                               ; preds = %1
  %14 = load i32, i32* @vt_splash_cpu, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  br label %119

17:                                               ; preds = %13
  store %struct.terminal* @vt_consterm, %struct.terminal** %5, align 8
  %18 = load %struct.terminal*, %struct.terminal** %5, align 8
  %19 = getelementptr inbounds %struct.terminal, %struct.terminal* %18, i32 0, i32 0
  %20 = load %struct.vt_window*, %struct.vt_window** %19, align 8
  store %struct.vt_window* %20, %struct.vt_window** %4, align 8
  %21 = load %struct.vt_window*, %struct.vt_window** %4, align 8
  %22 = icmp eq %struct.vt_window* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %119

24:                                               ; preds = %17
  %25 = load %struct.vt_window*, %struct.vt_window** %4, align 8
  %26 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %25, i32 0, i32 2
  %27 = load %struct.vt_device*, %struct.vt_device** %26, align 8
  store %struct.vt_device* %27, %struct.vt_device** %3, align 8
  %28 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %29 = icmp eq %struct.vt_device* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %119

31:                                               ; preds = %24
  %32 = load %struct.vt_window*, %struct.vt_window** %4, align 8
  %33 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %32, i32 0, i32 1
  %34 = load %struct.vt_font*, %struct.vt_font** %33, align 8
  store %struct.vt_font* %34, %struct.vt_font** %6, align 8
  %35 = load %struct.vt_font*, %struct.vt_font** %6, align 8
  %36 = icmp eq %struct.vt_font* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %119

38:                                               ; preds = %31
  %39 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %40 = call i32 @VT_LOCK(%struct.vt_device* %39)
  %41 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %42 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @VDF_INITIALIZED, align 4
  %45 = and i32 %43, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %116

48:                                               ; preds = %38
  %49 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %50 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @VDF_DEAD, align 4
  %53 = load i32, i32* @VDF_TEXTMODE, align 4
  %54 = or i32 %52, %53
  %55 = and i32 %51, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %116

58:                                               ; preds = %48
  %59 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %60 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @vt_logo_sprite_height, align 8
  %63 = icmp sle i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %116

65:                                               ; preds = %58
  store i32 1, i32* @vt_draw_logo_cpus, align 4
  %66 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %67 = call i32 @VT_UNLOCK(%struct.vt_device* %66)
  %68 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %69 = load %struct.vt_font*, %struct.vt_font** %6, align 8
  %70 = call i32 @vt_termsize(%struct.vt_device* %68, %struct.vt_font* %69, i32* %8)
  %71 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %72 = load %struct.vt_font*, %struct.vt_font** %6, align 8
  %73 = call i32 @vt_winsize(%struct.vt_device* %71, %struct.vt_font* %72, %struct.winsize* %7)
  %74 = load %struct.terminal*, %struct.terminal** %5, align 8
  %75 = call i32 @terminal_mute(%struct.terminal* %74, i32 1)
  %76 = load %struct.vt_window*, %struct.vt_window** %4, align 8
  %77 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %76, i32 0, i32 0
  %78 = load %struct.vt_window*, %struct.vt_window** %4, align 8
  %79 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @vtbuf_grow(%struct.TYPE_2__* %77, i32* %8, i32 %81)
  %83 = load %struct.terminal*, %struct.terminal** %5, align 8
  %84 = call i32 @terminal_set_winsize_blank(%struct.terminal* %83, %struct.winsize* %7, i32 0, i32* null)
  %85 = load %struct.terminal*, %struct.terminal** %5, align 8
  %86 = load %struct.vt_window*, %struct.vt_window** %4, align 8
  %87 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = call i32 @terminal_set_cursor(%struct.terminal* %85, i32* %88)
  %90 = load %struct.terminal*, %struct.terminal** %5, align 8
  %91 = call i32 @terminal_mute(%struct.terminal* %90, i32 0)
  %92 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %93 = call i32 @VT_LOCK(%struct.vt_device* %92)
  %94 = load %struct.vt_window*, %struct.vt_window** %4, align 8
  %95 = call i32 @vt_compute_drawable_area(%struct.vt_window* %94)
  %96 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %97 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %96, i32 0, i32 2
  %98 = load %struct.vt_window*, %struct.vt_window** %97, align 8
  %99 = load %struct.vt_window*, %struct.vt_window** %4, align 8
  %100 = icmp eq %struct.vt_window* %98, %99
  br i1 %100, label %101, label %109

101:                                              ; preds = %65
  %102 = load i32, i32* @VDF_INVALID, align 4
  %103 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %104 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 8
  %107 = load %struct.vt_window*, %struct.vt_window** %4, align 8
  %108 = call i32 @vt_resume_flush_timer(%struct.vt_window* %107, i32 0)
  br label %109

109:                                              ; preds = %101, %65
  %110 = call i32 @callout_init(i32* @vt_splash_cpu_callout, i32 1)
  %111 = load i32, i32* @vt_splash_cpu_duration, align 4
  %112 = load i32, i32* @hz, align 4
  %113 = mul nsw i32 %111, %112
  %114 = load i32, i32* @vt_fini_logos, align 4
  %115 = call i32 @callout_reset(i32* @vt_splash_cpu_callout, i32 %113, i32 %114, i32* null)
  br label %116

116:                                              ; preds = %109, %64, %57, %47
  %117 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %118 = call i32 @VT_UNLOCK(%struct.vt_device* %117)
  br label %119

119:                                              ; preds = %116, %37, %30, %23, %16, %12
  ret void
}

declare dso_local i32 @vty_enabled(i32) #1

declare dso_local i32 @VT_LOCK(%struct.vt_device*) #1

declare dso_local i32 @VT_UNLOCK(%struct.vt_device*) #1

declare dso_local i32 @vt_termsize(%struct.vt_device*, %struct.vt_font*, i32*) #1

declare dso_local i32 @vt_winsize(%struct.vt_device*, %struct.vt_font*, %struct.winsize*) #1

declare dso_local i32 @terminal_mute(%struct.terminal*, i32) #1

declare dso_local i32 @vtbuf_grow(%struct.TYPE_2__*, i32*, i32) #1

declare dso_local i32 @terminal_set_winsize_blank(%struct.terminal*, %struct.winsize*, i32, i32*) #1

declare dso_local i32 @terminal_set_cursor(%struct.terminal*, i32*) #1

declare dso_local i32 @vt_compute_drawable_area(%struct.vt_window*) #1

declare dso_local i32 @vt_resume_flush_timer(%struct.vt_window*, i32) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
