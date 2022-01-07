; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_sis.c_agp_sis_set_aperture.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_sis.c_agp_sis_set_aperture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@AGP_SIS_WINCTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @agp_sis_set_aperture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_sis_set_aperture(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = sub nsw i32 %8, 1
  %10 = and i32 %7, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 4194304
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %5, align 4
  %17 = icmp sgt i32 %16, 268435456
  br i1 %17, label %18, label %20

18:                                               ; preds = %15, %12, %2
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %3, align 4
  br label %37

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  %22 = sdiv i32 %21, 4
  %23 = mul nsw i32 %22, 1024
  %24 = mul nsw i32 %23, 1024
  %25 = call i32 @ffs(i32 %24)
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @AGP_SIS_WINCTRL, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @AGP_SIS_WINCTRL, align 4
  %31 = call i32 @pci_read_config(i32 %29, i32 %30, i32 1)
  %32 = and i32 %31, -113
  %33 = load i32, i32* %6, align 4
  %34 = shl i32 %33, 4
  %35 = or i32 %32, %34
  %36 = call i32 @pci_write_config(i32 %27, i32 %28, i32 %35, i32 1)
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %20, %18
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
