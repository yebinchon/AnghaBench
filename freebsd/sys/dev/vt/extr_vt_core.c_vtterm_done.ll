; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_core.c_vtterm_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_core.c_vtterm_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.terminal = type { %struct.vt_window* }
%struct.vt_window = type { %struct.vt_device* }
%struct.vt_device = type { i32, %struct.TYPE_2__*, %struct.vt_window* }
%struct.TYPE_2__ = type { i32 (%struct.vt_device*)* }

@kdb_active = common dso_local global i64 0, align 8
@panicstr = common dso_local global i32* null, align 8
@VDF_INVALID = common dso_local global i32 0, align 4
@VDF_SPLASH = common dso_local global i32 0, align 4
@VDF_ASYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.terminal*)* @vtterm_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtterm_done(%struct.terminal* %0) #0 {
  %2 = alloca %struct.terminal*, align 8
  %3 = alloca %struct.vt_window*, align 8
  %4 = alloca %struct.vt_device*, align 8
  store %struct.terminal* %0, %struct.terminal** %2, align 8
  %5 = load %struct.terminal*, %struct.terminal** %2, align 8
  %6 = getelementptr inbounds %struct.terminal, %struct.terminal* %5, i32 0, i32 0
  %7 = load %struct.vt_window*, %struct.vt_window** %6, align 8
  store %struct.vt_window* %7, %struct.vt_window** %3, align 8
  %8 = load %struct.vt_window*, %struct.vt_window** %3, align 8
  %9 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %8, i32 0, i32 0
  %10 = load %struct.vt_device*, %struct.vt_device** %9, align 8
  store %struct.vt_device* %10, %struct.vt_device** %4, align 8
  %11 = load i64, i64* @kdb_active, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32*, i32** @panicstr, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %55

16:                                               ; preds = %13, %1
  %17 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %18 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %17, i32 0, i32 2
  %19 = load %struct.vt_window*, %struct.vt_window** %18, align 8
  %20 = load %struct.vt_window*, %struct.vt_window** %3, align 8
  %21 = icmp ne %struct.vt_window* %19, %20
  br i1 %21, label %22, label %46

22:                                               ; preds = %16
  %23 = load %struct.vt_window*, %struct.vt_window** %3, align 8
  %24 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %25 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %24, i32 0, i32 2
  store %struct.vt_window* %23, %struct.vt_window** %25, align 8
  %26 = load i32, i32* @VDF_INVALID, align 4
  %27 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %28 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %32 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (%struct.vt_device*)*, i32 (%struct.vt_device*)** %34, align 8
  %36 = icmp ne i32 (%struct.vt_device*)* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %22
  %38 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %39 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32 (%struct.vt_device*)*, i32 (%struct.vt_device*)** %41, align 8
  %43 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %44 = call i32 %42(%struct.vt_device* %43)
  br label %45

45:                                               ; preds = %37, %22
  br label %46

46:                                               ; preds = %45, %16
  %47 = load i32, i32* @VDF_SPLASH, align 4
  %48 = xor i32 %47, -1
  %49 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %50 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %54 = call i32 @vt_flush(%struct.vt_device* %53)
  br label %66

55:                                               ; preds = %13
  %56 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %57 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @VDF_ASYNC, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %55
  %63 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %64 = call i32 @vt_flush(%struct.vt_device* %63)
  br label %65

65:                                               ; preds = %62, %55
  br label %66

66:                                               ; preds = %65, %46
  ret void
}

declare dso_local i32 @vt_flush(%struct.vt_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
