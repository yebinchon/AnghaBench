; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_evdev.c_evdev_set_report_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_evdev.c_evdev_set_report_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdev_dev = type { i64 }

@KEY_CNT = common dso_local global i64 0, align 8
@REL_CNT = common dso_local global i64 0, align 8
@ABS_CNT = common dso_local global i64 0, align 8
@MAX_MT_SLOTS = common dso_local global i64 0, align 8
@MT_CNT = common dso_local global i64 0, align 8
@MSC_CNT = common dso_local global i64 0, align 8
@LED_CNT = common dso_local global i64 0, align 8
@SND_CNT = common dso_local global i64 0, align 8
@SW_CNT = common dso_local global i64 0, align 8
@FF_CNT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evdev_set_report_size(%struct.evdev_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.evdev_dev*, align 8
  %5 = alloca i64, align 8
  store %struct.evdev_dev* %0, %struct.evdev_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @KEY_CNT, align 8
  %8 = load i64, i64* @REL_CNT, align 8
  %9 = add i64 %7, %8
  %10 = load i64, i64* @ABS_CNT, align 8
  %11 = add i64 %9, %10
  %12 = load i64, i64* @MAX_MT_SLOTS, align 8
  %13 = load i64, i64* @MT_CNT, align 8
  %14 = mul i64 %12, %13
  %15 = add i64 %11, %14
  %16 = load i64, i64* @MSC_CNT, align 8
  %17 = add i64 %15, %16
  %18 = load i64, i64* @LED_CNT, align 8
  %19 = add i64 %17, %18
  %20 = load i64, i64* @SND_CNT, align 8
  %21 = add i64 %19, %20
  %22 = load i64, i64* @SW_CNT, align 8
  %23 = add i64 %21, %22
  %24 = load i64, i64* @FF_CNT, align 8
  %25 = add i64 %23, %24
  %26 = icmp ugt i64 %6, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %3, align 4
  br label %33

29:                                               ; preds = %2
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.evdev_dev*, %struct.evdev_dev** %4, align 8
  %32 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %29, %27
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
