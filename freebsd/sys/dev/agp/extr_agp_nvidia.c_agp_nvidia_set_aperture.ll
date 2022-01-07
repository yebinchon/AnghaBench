; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_nvidia.c_agp_nvidia_set_aperture.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_nvidia.c_agp_nvidia_set_aperture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"Invalid aperture size (%dMb)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AGP_NVIDIA_0_APSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @agp_nvidia_set_aperture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_nvidia_set_aperture(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %14 [
    i32 536870912, label %9
    i32 268435456, label %10
    i32 134217728, label %11
    i32 67108864, label %12
    i32 33554432, label %13
  ]

9:                                                ; preds = %2
  store i32 0, i32* %7, align 4
  br label %21

10:                                               ; preds = %2
  store i32 8, i32* %7, align 4
  br label %21

11:                                               ; preds = %2
  store i32 12, i32* %7, align 4
  br label %21

12:                                               ; preds = %2
  store i32 14, i32* %7, align 4
  br label %21

13:                                               ; preds = %2
  store i32 15, i32* %7, align 4
  br label %21

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %5, align 4
  %17 = sdiv i32 %16, 1024
  %18 = sdiv i32 %17, 1024
  %19 = call i32 @device_printf(i32 %15, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %3, align 4
  br label %32

21:                                               ; preds = %13, %12, %11, %10, %9
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @AGP_NVIDIA_0_APSIZE, align 4
  %24 = call i32 @pci_read_config(i32 %22, i32 %23, i32 1)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @AGP_NVIDIA_0_APSIZE, align 4
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, -16
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @pci_write_config(i32 %25, i32 %26, i32 %30, i32 1)
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %21, %14
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
