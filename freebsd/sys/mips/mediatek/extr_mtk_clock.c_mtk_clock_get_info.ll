; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_clock.c_mtk_clock_get_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_clock.c_mtk_clock_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdt_clock_info = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@SYSCTL_CLKCFG1 = common dso_local global i32 0, align 4
@FDT_CIFLAG_RUNNING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.fdt_clock_info*)* @mtk_clock_get_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_clock_get_info(i32 %0, i32 %1, %struct.fdt_clock_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.fdt_clock_info*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.fdt_clock_info* %2, %struct.fdt_clock_info** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = icmp sgt i32 %12, 31
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load %struct.fdt_clock_info*, %struct.fdt_clock_info** %7, align 8
  %16 = icmp eq %struct.fdt_clock_info* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14, %11, %3
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %4, align 4
  br label %33

19:                                               ; preds = %14
  %20 = load i32, i32* @SYSCTL_CLKCFG1, align 4
  %21 = call i32 @mtk_sysctl_get(i32 %20)
  %22 = load i32, i32* %8, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load i64, i64* @FDT_CIFLAG_RUNNING, align 8
  %27 = load %struct.fdt_clock_info*, %struct.fdt_clock_info** %7, align 8
  %28 = getelementptr inbounds %struct.fdt_clock_info, %struct.fdt_clock_info* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  br label %32

29:                                               ; preds = %19
  %30 = load %struct.fdt_clock_info*, %struct.fdt_clock_info** %7, align 8
  %31 = getelementptr inbounds %struct.fdt_clock_info, %struct.fdt_clock_info* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %29, %25
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %32, %17
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @mtk_sysctl_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
