; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_core.c_vtterm_bell.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_core.c_vtterm_bell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.terminal = type { %struct.vt_window* }
%struct.vt_window = type { %struct.vt_device* }
%struct.vt_device = type { i32 }

@vt_enable_bell = common dso_local global i32 0, align 4
@VDF_QUIET_BELL = common dso_local global i32 0, align 4
@VT_BELLPITCH = common dso_local global i32 0, align 4
@VT_BELLDURATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.terminal*)* @vtterm_bell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtterm_bell(%struct.terminal* %0) #0 {
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
  %11 = load i32, i32* @vt_enable_bell, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %27

14:                                               ; preds = %1
  %15 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %16 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @VDF_QUIET_BELL, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %27

22:                                               ; preds = %14
  %23 = load i32, i32* @VT_BELLPITCH, align 4
  %24 = sdiv i32 1193182, %23
  %25 = load i32, i32* @VT_BELLDURATION, align 4
  %26 = call i32 @sysbeep(i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %22, %21, %13
  ret void
}

declare dso_local i32 @sysbeep(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
