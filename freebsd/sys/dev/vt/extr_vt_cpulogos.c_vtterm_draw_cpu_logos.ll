; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_cpulogos.c_vtterm_draw_cpu_logos.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_cpulogos.c_vtterm_draw_cpu_logos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_device = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 (%struct.vt_device*, i32)*, i32 (%struct.vt_device*, i32, i32, i32, i32, i32, i32)* }
%struct.TYPE_5__ = type { %struct.terminal* }
%struct.terminal = type { i32 }
%struct.TYPE_7__ = type { i32 }

@vt_splash_ncpu = common dso_local global i32 0, align 4
@mp_ncpus = common dso_local global i32 0, align 4
@vt_logo_sprite_height = common dso_local global i32 0, align 4
@vt_logo_sprite_width = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vtterm_draw_cpu_logos(%struct.vt_device* %0) #0 {
  %2 = alloca %struct.vt_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.terminal*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  store %struct.vt_device* %0, %struct.vt_device** %2, align 8
  %8 = load %struct.vt_device*, %struct.vt_device** %2, align 8
  %9 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %8, i32 0, i32 2
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.terminal*, %struct.terminal** %11, align 8
  store %struct.terminal* %12, %struct.terminal** %6, align 8
  %13 = load i32, i32* @vt_splash_ncpu, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @vt_splash_ncpu, align 4
  store i32 %16, i32* %3, align 4
  br label %23

17:                                               ; preds = %1
  %18 = load i32, i32* @mp_ncpus, align 4
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp ult i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  br label %22

22:                                               ; preds = %21, %17
  br label %23

23:                                               ; preds = %22, %15
  %24 = load %struct.terminal*, %struct.terminal** %6, align 8
  %25 = getelementptr inbounds %struct.terminal, %struct.terminal* %24, i32 0, i32 0
  %26 = call %struct.TYPE_7__* @teken_get_curattr(i32* %25)
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %7, align 8
  %27 = load %struct.vt_device*, %struct.vt_device** %2, align 8
  %28 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %27, i32 0, i32 1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32 (%struct.vt_device*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.vt_device*, i32, i32, i32, i32, i32, i32)** %30, align 8
  %32 = icmp ne i32 (%struct.vt_device*, i32, i32, i32, i32, i32, i32)* %31, null
  br i1 %32, label %33, label %48

33:                                               ; preds = %23
  %34 = load %struct.vt_device*, %struct.vt_device** %2, align 8
  %35 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32 (%struct.vt_device*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.vt_device*, i32, i32, i32, i32, i32, i32)** %37, align 8
  %39 = load %struct.vt_device*, %struct.vt_device** %2, align 8
  %40 = load %struct.vt_device*, %struct.vt_device** %2, align 8
  %41 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @vt_logo_sprite_height, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 %38(%struct.vt_device* %39, i32 0, i32 0, i32 %42, i32 %43, i32 1, i32 %46)
  br label %67

48:                                               ; preds = %23
  %49 = load %struct.vt_device*, %struct.vt_device** %2, align 8
  %50 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %49, i32 0, i32 1
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32 (%struct.vt_device*, i32)*, i32 (%struct.vt_device*, i32)** %52, align 8
  %54 = icmp ne i32 (%struct.vt_device*, i32)* %53, null
  br i1 %54, label %55, label %66

55:                                               ; preds = %48
  %56 = load %struct.vt_device*, %struct.vt_device** %2, align 8
  %57 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %56, i32 0, i32 1
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32 (%struct.vt_device*, i32)*, i32 (%struct.vt_device*, i32)** %59, align 8
  %61 = load %struct.vt_device*, %struct.vt_device** %2, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 %60(%struct.vt_device* %61, i32 %64)
  br label %66

66:                                               ; preds = %55, %48
  br label %67

67:                                               ; preds = %66, %33
  %68 = load i32, i32* %3, align 4
  %69 = load %struct.vt_device*, %struct.vt_device** %2, align 8
  %70 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @vt_logo_sprite_width, align 4
  %73 = sdiv i32 %71, %72
  %74 = call i32 @MIN(i32 %68, i32 %73)
  store i32 %74, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i64 0, i64* %5, align 8
  br label %75

75:                                               ; preds = %83, %67
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* %3, align 4
  %78 = icmp ult i32 %76, %77
  br i1 %78, label %79, label %90

79:                                               ; preds = %75
  %80 = load %struct.vt_device*, %struct.vt_device** %2, align 8
  %81 = load i64, i64* %5, align 8
  %82 = call i32 @vt_draw_1_logo(%struct.vt_device* %80, i32 0, i64 %81)
  br label %83

83:                                               ; preds = %79
  %84 = load i32, i32* @vt_logo_sprite_width, align 4
  %85 = sext i32 %84 to i64
  %86 = load i64, i64* %5, align 8
  %87 = add nsw i64 %86, %85
  store i64 %87, i64* %5, align 8
  %88 = load i32, i32* %4, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %4, align 4
  br label %75

90:                                               ; preds = %75
  ret void
}

declare dso_local %struct.TYPE_7__* @teken_get_curattr(i32*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @vt_draw_1_logo(%struct.vt_device*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
