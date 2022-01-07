; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_evdev_mt.c_evdev_get_mt_slot_by_tracking_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_evdev_mt.c_evdev_get_mt_slot_by_tracking_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdev_dev = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@ABS_MT_TRACKING_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evdev_get_mt_slot_by_tracking_id(%struct.evdev_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.evdev_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.evdev_dev* %0, %struct.evdev_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %48, %2
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.evdev_dev*, %struct.evdev_dev** %4, align 8
  %12 = call i32 @MAXIMAL_MT_SLOT(%struct.evdev_dev* %11)
  %13 = icmp sle i32 %10, %12
  br i1 %13, label %14, label %51

14:                                               ; preds = %9
  %15 = load %struct.evdev_dev*, %struct.evdev_dev** %4, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @ABS_MT_TRACKING_ID, align 4
  %18 = call i32 @evdev_get_mt_value(%struct.evdev_dev* %15, i32 %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %3, align 4
  br label %53

24:                                               ; preds = %14
  %25 = load i32, i32* %8, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %47

27:                                               ; preds = %24
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %47

30:                                               ; preds = %27
  %31 = load %struct.evdev_dev*, %struct.evdev_dev** %4, align 8
  %32 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.evdev_dev*, %struct.evdev_dev** %4, align 8
  %42 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %40, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %30
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %45, %30, %27, %24
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %9

51:                                               ; preds = %9
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %51, %22
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @MAXIMAL_MT_SLOT(%struct.evdev_dev*) #1

declare dso_local i32 @evdev_get_mt_value(%struct.evdev_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
