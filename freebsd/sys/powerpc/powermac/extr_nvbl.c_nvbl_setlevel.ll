; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_nvbl.c_nvbl_setlevel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_nvbl.c_nvbl_setlevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbl_softc = type { i32 }

@NVIDIA_BRIGHT_SCALE = common dso_local global i32 0, align 4
@NVIDIA_BRIGHT_MIN = common dso_local global i32 0, align 4
@NVIDIA_PMC_OFF = common dso_local global i32 0, align 4
@NVIDIA_PMC_BL_EN = common dso_local global i32 0, align 4
@NVIDIA_PMC_BL_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvbl_softc*, i32)* @nvbl_setlevel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvbl_setlevel(%struct.nvbl_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.nvbl_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nvbl_softc* %0, %struct.nvbl_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp sgt i32 %6, 100
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 100, i32* %4, align 4
  br label %9

9:                                                ; preds = %8, %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %12, %9
  %14 = load i32, i32* %4, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @NVIDIA_BRIGHT_SCALE, align 4
  %19 = mul nsw i32 %17, %18
  %20 = load i32, i32* @NVIDIA_BRIGHT_MIN, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %16, %13
  %23 = load %struct.nvbl_softc*, %struct.nvbl_softc** %3, align 8
  %24 = getelementptr inbounds %struct.nvbl_softc, %struct.nvbl_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @NVIDIA_PMC_OFF, align 4
  %27 = call i32 @bus_read_stream_4(i32 %25, i32 %26)
  %28 = and i32 %27, 65535
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* @NVIDIA_PMC_BL_EN, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @NVIDIA_PMC_BL_SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = or i32 %29, %32
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %5, align 4
  %36 = load %struct.nvbl_softc*, %struct.nvbl_softc** %3, align 8
  %37 = getelementptr inbounds %struct.nvbl_softc, %struct.nvbl_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @NVIDIA_PMC_OFF, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @bus_write_stream_4(i32 %38, i32 %39, i32 %40)
  ret i32 0
}

declare dso_local i32 @bus_read_stream_4(i32, i32) #1

declare dso_local i32 @bus_write_stream_4(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
