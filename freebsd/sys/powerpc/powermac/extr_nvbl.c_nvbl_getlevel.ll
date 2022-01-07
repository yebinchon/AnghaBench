; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_nvbl.c_nvbl_getlevel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_nvbl.c_nvbl_getlevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbl_softc = type { i32 }

@NVIDIA_PMC_OFF = common dso_local global i32 0, align 4
@NVIDIA_BRIGHT_MIN = common dso_local global i32 0, align 4
@NVIDIA_BRIGHT_SCALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvbl_softc*)* @nvbl_getlevel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvbl_getlevel(%struct.nvbl_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvbl_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.nvbl_softc* %0, %struct.nvbl_softc** %3, align 8
  %5 = load %struct.nvbl_softc*, %struct.nvbl_softc** %3, align 8
  %6 = getelementptr inbounds %struct.nvbl_softc, %struct.nvbl_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @NVIDIA_PMC_OFF, align 4
  %9 = call i32 @bus_read_stream_2(i32 %7, i32 %8)
  %10 = and i32 %9, 32767
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @NVIDIA_BRIGHT_MIN, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %22

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @NVIDIA_BRIGHT_MIN, align 4
  %18 = sub nsw i32 %16, %17
  %19 = load i32, i32* @NVIDIA_BRIGHT_SCALE, align 4
  %20 = sdiv i32 %18, %19
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %15, %14
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @bus_read_stream_2(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
