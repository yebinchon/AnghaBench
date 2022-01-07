; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_core.c_vt_termrect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_core.c_vt_termrect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_device = type { i32, i32 }
%struct.vt_font = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64, i64 }

@vt_draw_logo_cpus = common dso_local global i64 0, align 8
@vt_logo_sprite_height = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vt_device*, %struct.vt_font*, %struct.TYPE_7__*)* @vt_termrect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vt_termrect(%struct.vt_device* %0, %struct.vt_font* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca %struct.vt_device*, align 8
  %5 = alloca %struct.vt_font*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  store %struct.vt_device* %0, %struct.vt_device** %4, align 8
  store %struct.vt_font* %1, %struct.vt_font** %5, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %6, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  store i64 0, i64* %9, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = load i64, i64* @vt_draw_logo_cpus, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load i64, i64* @vt_logo_sprite_height, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i64 %16, i64* %19, align 8
  br label %20

20:                                               ; preds = %15, %3
  %21 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %22 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  store i32 %23, i32* %26, align 4
  %27 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %28 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load %struct.vt_font*, %struct.vt_font** %5, align 8
  %34 = icmp ne %struct.vt_font* %33, null
  br i1 %34, label %35, label %63

35:                                               ; preds = %20
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.vt_font*, %struct.vt_font** %5, align 8
  %41 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @howmany(i64 %39, i32 %42)
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store i64 %43, i64* %46, align 8
  %47 = load %struct.vt_font*, %struct.vt_font** %5, align 8
  %48 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sdiv i32 %53, %49
  store i32 %54, i32* %52, align 4
  %55 = load %struct.vt_font*, %struct.vt_font** %5, align 8
  %56 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sdiv i32 %61, %57
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %35, %20
  ret void
}

declare dso_local i64 @howmany(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
