; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_core.c_vtterm_opened.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_core.c_vtterm_opened.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.terminal = type { %struct.vt_window* }
%struct.vt_window = type { i32, %struct.vt_device* }
%struct.vt_device = type { i32 }

@VDF_SPLASH = common dso_local global i32 0, align 4
@VWF_OPENED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.terminal*, i32)* @vtterm_opened to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtterm_opened(%struct.terminal* %0, i32 %1) #0 {
  %3 = alloca %struct.terminal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vt_window*, align 8
  %6 = alloca %struct.vt_device*, align 8
  store %struct.terminal* %0, %struct.terminal** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.terminal*, %struct.terminal** %3, align 8
  %8 = getelementptr inbounds %struct.terminal, %struct.terminal* %7, i32 0, i32 0
  %9 = load %struct.vt_window*, %struct.vt_window** %8, align 8
  store %struct.vt_window* %9, %struct.vt_window** %5, align 8
  %10 = load %struct.vt_window*, %struct.vt_window** %5, align 8
  %11 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %10, i32 0, i32 1
  %12 = load %struct.vt_device*, %struct.vt_device** %11, align 8
  store %struct.vt_device* %12, %struct.vt_device** %6, align 8
  %13 = load %struct.vt_device*, %struct.vt_device** %6, align 8
  %14 = call i32 @VT_LOCK(%struct.vt_device* %13)
  %15 = load i32, i32* @VDF_SPLASH, align 4
  %16 = xor i32 %15, -1
  %17 = load %struct.vt_device*, %struct.vt_device** %6, align 8
  %18 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load i32, i32* @VWF_OPENED, align 4
  %25 = load %struct.vt_window*, %struct.vt_window** %5, align 8
  %26 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 8
  br label %36

29:                                               ; preds = %2
  %30 = load i32, i32* @VWF_OPENED, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.vt_window*, %struct.vt_window** %5, align 8
  %33 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 8
  br label %36

36:                                               ; preds = %29, %23
  %37 = load %struct.vt_device*, %struct.vt_device** %6, align 8
  %38 = call i32 @VT_UNLOCK(%struct.vt_device* %37)
  ret void
}

declare dso_local i32 @VT_LOCK(%struct.vt_device*) #1

declare dso_local i32 @VT_UNLOCK(%struct.vt_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
