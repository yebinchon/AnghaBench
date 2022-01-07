; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_cpulogos.c_vt_draw_2_vga16_px.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_cpulogos.c_vt_draw_2_vga16_px.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.vt_device*, i64, i64, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vt_device*, i64, i64, i8)* @vt_draw_2_vga16_px to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vt_draw_2_vga16_px(%struct.vt_device* %0, i64 %1, i64 %2, i8 zeroext %3) #0 {
  %5 = alloca %struct.vt_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  store %struct.vt_device* %0, %struct.vt_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i8 %3, i8* %8, align 1
  %9 = load %struct.vt_device*, %struct.vt_device** %5, align 8
  %10 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (%struct.vt_device*, i64, i64, i32)*, i32 (%struct.vt_device*, i64, i64, i32)** %12, align 8
  %14 = load %struct.vt_device*, %struct.vt_device** %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i8, i8* %8, align 1
  %18 = zext i8 %17 to i32
  %19 = ashr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = call i32 @vt_vga2bsd(i8 zeroext %20)
  %22 = call i32 %13(%struct.vt_device* %14, i64 %15, i64 %16, i32 %21)
  %23 = load %struct.vt_device*, %struct.vt_device** %5, align 8
  %24 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.vt_device*, i64, i64, i32)*, i32 (%struct.vt_device*, i64, i64, i32)** %26, align 8
  %28 = load %struct.vt_device*, %struct.vt_device** %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = add nsw i64 %29, 1
  %31 = load i64, i64* %7, align 8
  %32 = load i8, i8* %8, align 1
  %33 = zext i8 %32 to i32
  %34 = and i32 %33, 15
  %35 = trunc i32 %34 to i8
  %36 = call i32 @vt_vga2bsd(i8 zeroext %35)
  %37 = call i32 %27(%struct.vt_device* %28, i64 %30, i64 %31, i32 %36)
  ret void
}

declare dso_local i32 @vt_vga2bsd(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
