; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_core.c_vtterm_mmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_core.c_vtterm_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.terminal = type { %struct.vt_window* }
%struct.vt_window = type { %struct.vt_device* }
%struct.vt_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.vt_device*, i32, i32*, i32, i32*)* }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.terminal*, i32, i32*, i32, i32*)* @vtterm_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtterm_mmap(%struct.terminal* %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.terminal*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.vt_window*, align 8
  %13 = alloca %struct.vt_device*, align 8
  store %struct.terminal* %0, %struct.terminal** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = load %struct.terminal*, %struct.terminal** %7, align 8
  %15 = getelementptr inbounds %struct.terminal, %struct.terminal* %14, i32 0, i32 0
  %16 = load %struct.vt_window*, %struct.vt_window** %15, align 8
  store %struct.vt_window* %16, %struct.vt_window** %12, align 8
  %17 = load %struct.vt_window*, %struct.vt_window** %12, align 8
  %18 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %17, i32 0, i32 0
  %19 = load %struct.vt_device*, %struct.vt_device** %18, align 8
  store %struct.vt_device* %19, %struct.vt_device** %13, align 8
  %20 = load %struct.vt_device*, %struct.vt_device** %13, align 8
  %21 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.vt_device*, i32, i32*, i32, i32*)*, i32 (%struct.vt_device*, i32, i32*, i32, i32*)** %23, align 8
  %25 = icmp ne i32 (%struct.vt_device*, i32, i32*, i32, i32*)* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %5
  %27 = load %struct.vt_device*, %struct.vt_device** %13, align 8
  %28 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (%struct.vt_device*, i32, i32*, i32, i32*)*, i32 (%struct.vt_device*, i32, i32*, i32, i32*)** %30, align 8
  %32 = load %struct.vt_device*, %struct.vt_device** %13, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load i32*, i32** %11, align 8
  %37 = call i32 %31(%struct.vt_device* %32, i32 %33, i32* %34, i32 %35, i32* %36)
  store i32 %37, i32* %6, align 4
  br label %40

38:                                               ; preds = %5
  %39 = load i32, i32* @ENXIO, align 4
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %38, %26
  %41 = load i32, i32* %6, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
