; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro.c_apu_setparam.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro.c_apu_setparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agg_info = type { i32 }

@APUREG_WAVESPACE = common dso_local global i32 0, align 4
@APU_64KPAGE_MASK = common dso_local global i32 0, align 4
@APUREG_CURPTR = common dso_local global i32 0, align 4
@APUREG_ENDPTR = common dso_local global i32 0, align 4
@APUREG_LOOPLEN = common dso_local global i32 0, align 4
@APUREG_ROUTING = common dso_local global i32 0, align 4
@APUREG_AMPLITUDE = common dso_local global i32 0, align 4
@APUREG_POSITION = common dso_local global i32 0, align 4
@APU_RADIUS_MASK = common dso_local global i32 0, align 4
@RADIUS_CENTERCIRCLE = common dso_local global i32 0, align 4
@APU_RADIUS_SHIFT = common dso_local global i32 0, align 4
@APU_PAN_MASK = common dso_local global i32 0, align 4
@PAN_FRONT = common dso_local global i32 0, align 4
@APU_PAN_SHIFT = common dso_local global i32 0, align 4
@APUREG_FREQ_LOBYTE = common dso_local global i32 0, align 4
@APU_plus6dB = common dso_local global i32 0, align 4
@APU_FREQ_LOBYTE_SHIFT = common dso_local global i32 0, align 4
@APUREG_FREQ_HIWORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.agg_info*, i32, i32, i32, i32, i32)* @apu_setparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apu_setparam(%struct.agg_info* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.agg_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.agg_info* %0, %struct.agg_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load %struct.agg_info*, %struct.agg_info** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @APUREG_WAVESPACE, align 4
  %16 = load i32, i32* %9, align 4
  %17 = ashr i32 %16, 8
  %18 = load i32, i32* @APU_64KPAGE_MASK, align 4
  %19 = and i32 %17, %18
  %20 = call i32 @wp_wrapu(%struct.agg_info* %13, i32 %14, i32 %15, i32 %19)
  %21 = load %struct.agg_info*, %struct.agg_info** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @APUREG_CURPTR, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @wp_wrapu(%struct.agg_info* %21, i32 %22, i32 %23, i32 %24)
  %26 = load %struct.agg_info*, %struct.agg_info** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @APUREG_ENDPTR, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = add nsw i32 %29, %30
  %32 = call i32 @wp_wrapu(%struct.agg_info* %26, i32 %27, i32 %28, i32 %31)
  %33 = load %struct.agg_info*, %struct.agg_info** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @APUREG_LOOPLEN, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @wp_wrapu(%struct.agg_info* %33, i32 %34, i32 %35, i32 %36)
  %38 = load %struct.agg_info*, %struct.agg_info** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @APUREG_ROUTING, align 4
  %41 = call i32 @wp_wrapu(%struct.agg_info* %38, i32 %39, i32 %40, i32 0)
  %42 = load %struct.agg_info*, %struct.agg_info** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @APUREG_AMPLITUDE, align 4
  %45 = call i32 @wp_wrapu(%struct.agg_info* %42, i32 %43, i32 %44, i32 61440)
  %46 = load %struct.agg_info*, %struct.agg_info** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @APUREG_POSITION, align 4
  %49 = load i32, i32* @APU_RADIUS_MASK, align 4
  %50 = load i32, i32* @RADIUS_CENTERCIRCLE, align 4
  %51 = load i32, i32* @APU_RADIUS_SHIFT, align 4
  %52 = shl i32 %50, %51
  %53 = and i32 %49, %52
  %54 = or i32 36608, %53
  %55 = load i32, i32* @APU_PAN_MASK, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @PAN_FRONT, align 4
  %58 = add nsw i32 %56, %57
  %59 = load i32, i32* @APU_PAN_SHIFT, align 4
  %60 = shl i32 %58, %59
  %61 = and i32 %55, %60
  %62 = or i32 %54, %61
  %63 = call i32 @wp_wrapu(%struct.agg_info* %46, i32 %47, i32 %48, i32 %62)
  %64 = load %struct.agg_info*, %struct.agg_info** %7, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @APUREG_FREQ_LOBYTE, align 4
  %67 = load i32, i32* @APU_plus6dB, align 4
  %68 = load i32, i32* %12, align 4
  %69 = and i32 %68, 255
  %70 = load i32, i32* @APU_FREQ_LOBYTE_SHIFT, align 4
  %71 = shl i32 %69, %70
  %72 = or i32 %67, %71
  %73 = call i32 @wp_wrapu(%struct.agg_info* %64, i32 %65, i32 %66, i32 %72)
  %74 = load %struct.agg_info*, %struct.agg_info** %7, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @APUREG_FREQ_HIWORD, align 4
  %77 = load i32, i32* %12, align 4
  %78 = ashr i32 %77, 8
  %79 = call i32 @wp_wrapu(%struct.agg_info* %74, i32 %75, i32 %76, i32 %78)
  ret void
}

declare dso_local i32 @wp_wrapu(%struct.agg_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
