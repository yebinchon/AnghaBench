; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/videomode/extr_vesagtf.c_vesagtf_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/videomode/extr_vesagtf.c_vesagtf_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videomode = type { i32 }
%struct.vesagtf_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@VESAGTF_MARGIN_PPT = common dso_local global i32 0, align 4
@VESAGTF_MIN_PORCH = common dso_local global i32 0, align 4
@VESAGTF_VSYNC_RQD = common dso_local global i32 0, align 4
@VESAGTF_HSYNC_PCT = common dso_local global i32 0, align 4
@VESAGTF_MIN_VSBP = common dso_local global i32 0, align 4
@VESAGTF_M = common dso_local global i32 0, align 4
@VESAGTF_C = common dso_local global i32 0, align 4
@VESAGTF_K = common dso_local global i32 0, align 4
@VESAGTF_J = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vesagtf_mode(i32 %0, i32 %1, i32 %2, %struct.videomode* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.videomode*, align 8
  %9 = alloca %struct.vesagtf_params, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.videomode* %3, %struct.videomode** %8, align 8
  %10 = load i32, i32* @VESAGTF_MARGIN_PPT, align 4
  %11 = getelementptr inbounds %struct.vesagtf_params, %struct.vesagtf_params* %9, i32 0, i32 8
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @VESAGTF_MIN_PORCH, align 4
  %13 = getelementptr inbounds %struct.vesagtf_params, %struct.vesagtf_params* %9, i32 0, i32 7
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @VESAGTF_VSYNC_RQD, align 4
  %15 = getelementptr inbounds %struct.vesagtf_params, %struct.vesagtf_params* %9, i32 0, i32 6
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @VESAGTF_HSYNC_PCT, align 4
  %17 = getelementptr inbounds %struct.vesagtf_params, %struct.vesagtf_params* %9, i32 0, i32 5
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @VESAGTF_MIN_VSBP, align 4
  %19 = getelementptr inbounds %struct.vesagtf_params, %struct.vesagtf_params* %9, i32 0, i32 4
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @VESAGTF_M, align 4
  %21 = getelementptr inbounds %struct.vesagtf_params, %struct.vesagtf_params* %9, i32 0, i32 3
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @VESAGTF_C, align 4
  %23 = getelementptr inbounds %struct.vesagtf_params, %struct.vesagtf_params* %9, i32 0, i32 2
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @VESAGTF_K, align 4
  %25 = getelementptr inbounds %struct.vesagtf_params, %struct.vesagtf_params* %9, i32 0, i32 1
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @VESAGTF_J, align 4
  %27 = getelementptr inbounds %struct.vesagtf_params, %struct.vesagtf_params* %9, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.videomode*, %struct.videomode** %8, align 8
  %32 = call i32 @vesagtf_mode_params(i32 %28, i32 %29, i32 %30, %struct.vesagtf_params* %9, i32 0, %struct.videomode* %31)
  ret void
}

declare dso_local i32 @vesagtf_mode_params(i32, i32, i32, %struct.vesagtf_params*, i32, %struct.videomode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
