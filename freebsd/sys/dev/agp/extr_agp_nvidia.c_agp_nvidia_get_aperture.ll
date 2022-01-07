; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_nvidia.c_agp_nvidia_get_aperture.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_nvidia.c_agp_nvidia_get_aperture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AGP_NVIDIA_0_APSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Invalid aperture setting 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @agp_nvidia_get_aperture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_nvidia_get_aperture(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @AGP_NVIDIA_0_APSIZE, align 4
  %6 = call i32 @pci_read_config(i32 %4, i32 %5, i32 1)
  %7 = and i32 %6, 15
  switch i32 %7, label %13 [
    i32 0, label %8
    i32 8, label %9
    i32 12, label %10
    i32 14, label %11
    i32 15, label %12
  ]

8:                                                ; preds = %1
  store i32 536870912, i32* %2, align 4
  br label %19

9:                                                ; preds = %1
  store i32 268435456, i32* %2, align 4
  br label %19

10:                                               ; preds = %1
  store i32 134217728, i32* %2, align 4
  br label %19

11:                                               ; preds = %1
  store i32 67108864, i32* %2, align 4
  br label %19

12:                                               ; preds = %1
  store i32 33554432, i32* %2, align 4
  br label %19

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @AGP_NVIDIA_0_APSIZE, align 4
  %17 = call i32 @pci_read_config(i32 %15, i32 %16, i32 1)
  %18 = call i32 @device_printf(i32 %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %13, %12, %11, %10, %9, %8
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
