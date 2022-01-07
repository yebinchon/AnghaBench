; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro.c_wp_settimer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro.c_wp_settimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agg_info = type { i32 }

@WPREG_TIMER_ENABLE = common dso_local global i32 0, align 4
@WPREG_TIMER_FREQ = common dso_local global i32 0, align 4
@WP_TIMER_FREQ_PRESCALE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.agg_info*, i32)* @wp_settimer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wp_settimer(%struct.agg_info* %0, i32 %1) #0 {
  %3 = alloca %struct.agg_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.agg_info* %0, %struct.agg_info** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @RANGE(i32 %6, i32 2, i32 4096)
  br label %8

8:                                                ; preds = %16, %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp sgt i32 %9, 32
  br i1 %10, label %11, label %19

11:                                               ; preds = %8
  %12 = load i32, i32* %5, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %4, align 4
  br label %16

16:                                               ; preds = %11
  %17 = load i32, i32* %4, align 4
  %18 = ashr i32 %17, 1
  store i32 %18, i32* %4, align 4
  br label %8

19:                                               ; preds = %8
  br label %20

20:                                               ; preds = %36, %19
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 7
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load i32, i32* %4, align 4
  %25 = icmp sgt i32 %24, 2
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i32, i32* %4, align 4
  %28 = and i32 %27, 1
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %26, %23, %20
  %32 = phi i1 [ false, %23 ], [ false, %20 ], [ %30, %26 ]
  br i1 %32, label %33, label %39

33:                                               ; preds = %31
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %4, align 4
  %38 = ashr i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %20

39:                                               ; preds = %31
  %40 = load %struct.agg_info*, %struct.agg_info** %3, align 8
  %41 = load i32, i32* @WPREG_TIMER_ENABLE, align 4
  %42 = call i32 @wp_wrreg(%struct.agg_info* %40, i32 %41, i32 0)
  %43 = load %struct.agg_info*, %struct.agg_info** %3, align 8
  %44 = load i32, i32* @WPREG_TIMER_FREQ, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @WP_TIMER_FREQ_PRESCALE_SHIFT, align 4
  %47 = shl i32 %45, %46
  %48 = or i32 36864, %47
  %49 = load i32, i32* %4, align 4
  %50 = sub nsw i32 %49, 1
  %51 = or i32 %48, %50
  %52 = call i32 @wp_wrreg(%struct.agg_info* %43, i32 %44, i32 %51)
  %53 = load %struct.agg_info*, %struct.agg_info** %3, align 8
  %54 = load i32, i32* @WPREG_TIMER_ENABLE, align 4
  %55 = call i32 @wp_wrreg(%struct.agg_info* %53, i32 %54, i32 1)
  ret void
}

declare dso_local i32 @RANGE(i32, i32, i32) #1

declare dso_local i32 @wp_wrreg(%struct.agg_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
