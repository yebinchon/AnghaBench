; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_i810.c_agp_i830_get_stolen_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_i810.c_agp_i830_get_stolen_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_i810_softc = type { i32, i32, i32 }

@AGP_I830_GCC1 = common dso_local global i32 0, align 4
@AGP_I830_GCC1_GMS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"unknown memory configuration, disabling (GCC1 %x)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @agp_i830_get_stolen_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_i830_get_stolen_size(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.agp_i810_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.agp_i810_softc* @device_get_softc(i32 %6)
  store %struct.agp_i810_softc* %7, %struct.agp_i810_softc** %4, align 8
  %8 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %4, align 8
  %9 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @AGP_I830_GCC1, align 4
  %12 = call i32 @pci_read_config(i32 %10, i32 %11, i32 1)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @AGP_I830_GCC1_GMS, align 4
  %15 = and i32 %13, %14
  switch i32 %15, label %31 [
    i32 129, label %16
    i32 130, label %21
    i32 128, label %26
  ]

16:                                               ; preds = %1
  %17 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %4, align 8
  %18 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %17, i32 0, i32 0
  store i32 95, i32* %18, align 4
  %19 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %4, align 8
  %20 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %19, i32 0, i32 1
  store i32 524288, i32* %20, align 4
  br label %38

21:                                               ; preds = %1
  %22 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %4, align 8
  %23 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %22, i32 0, i32 0
  store i32 223, i32* %23, align 4
  %24 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %4, align 8
  %25 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %24, i32 0, i32 1
  store i32 1048576, i32* %25, align 4
  br label %38

26:                                               ; preds = %1
  %27 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %4, align 8
  %28 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %27, i32 0, i32 0
  store i32 2015, i32* %28, align 4
  %29 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %4, align 8
  %30 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %29, i32 0, i32 1
  store i32 8388608, i32* %30, align 4
  br label %38

31:                                               ; preds = %1
  %32 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %4, align 8
  %33 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %32, i32 0, i32 0
  store i32 0, i32* %33, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @device_printf(i32 %34, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* %2, align 4
  br label %39

38:                                               ; preds = %26, %21, %16
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %31
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.agp_i810_softc* @device_get_softc(i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
