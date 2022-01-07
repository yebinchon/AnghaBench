; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_evdev.c_evdev_inject_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_evdev.c_evdev_inject_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdev_dev = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { {}* }

@EVDEV_FLAG_SOFTREPEAT = common dso_local global i32 0, align 4
@EV_LOCK_INTERNAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evdev_inject_event(%struct.evdev_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.evdev_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.evdev_dev* %0, %struct.evdev_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %78 [
    i32 131, label %11
    i32 134, label %20
    i32 133, label %20
    i32 130, label %20
    i32 136, label %20
    i32 128, label %53
    i32 135, label %53
    i32 132, label %53
    i32 137, label %53
    i32 129, label %53
  ]

11:                                               ; preds = %4
  %12 = load %struct.evdev_dev*, %struct.evdev_dev** %5, align 8
  %13 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @EVDEV_FLAG_SOFTREPEAT, align 4
  %16 = call i32 @bit_test(i32 %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  br label %54

19:                                               ; preds = %11
  br label %20

20:                                               ; preds = %4, %4, %4, %4, %19
  %21 = load %struct.evdev_dev*, %struct.evdev_dev** %5, align 8
  %22 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = icmp ne %struct.TYPE_2__* %23, null
  br i1 %24, label %25, label %45

25:                                               ; preds = %20
  %26 = load %struct.evdev_dev*, %struct.evdev_dev** %5, align 8
  %27 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = bitcast {}** %29 to i32 (%struct.evdev_dev*, i32, i32, i32)**
  %31 = load i32 (%struct.evdev_dev*, i32, i32, i32)*, i32 (%struct.evdev_dev*, i32, i32, i32)** %30, align 8
  %32 = icmp ne i32 (%struct.evdev_dev*, i32, i32, i32)* %31, null
  br i1 %32, label %33, label %45

33:                                               ; preds = %25
  %34 = load %struct.evdev_dev*, %struct.evdev_dev** %5, align 8
  %35 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = bitcast {}** %37 to i32 (%struct.evdev_dev*, i32, i32, i32)**
  %39 = load i32 (%struct.evdev_dev*, i32, i32, i32)*, i32 (%struct.evdev_dev*, i32, i32, i32)** %38, align 8
  %40 = load %struct.evdev_dev*, %struct.evdev_dev** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 %39(%struct.evdev_dev* %40, i32 %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %33, %25, %20
  %46 = load i32, i32* %6, align 4
  %47 = icmp eq i32 %46, 134
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %6, align 4
  %50 = icmp eq i32 %49, 131
  br i1 %50, label %51, label %52

51:                                               ; preds = %48, %45
  br label %80

52:                                               ; preds = %48
  br label %53

53:                                               ; preds = %4, %4, %4, %4, %4, %52
  br label %54

54:                                               ; preds = %53, %18
  %55 = load %struct.evdev_dev*, %struct.evdev_dev** %5, align 8
  %56 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @EV_LOCK_INTERNAL, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load %struct.evdev_dev*, %struct.evdev_dev** %5, align 8
  %62 = call i32 @EVDEV_LOCK(%struct.evdev_dev* %61)
  br label %63

63:                                               ; preds = %60, %54
  %64 = load %struct.evdev_dev*, %struct.evdev_dev** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @evdev_push_event(%struct.evdev_dev* %64, i32 %65, i32 %66, i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load %struct.evdev_dev*, %struct.evdev_dev** %5, align 8
  %70 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @EV_LOCK_INTERNAL, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %63
  %75 = load %struct.evdev_dev*, %struct.evdev_dev** %5, align 8
  %76 = call i32 @EVDEV_UNLOCK(%struct.evdev_dev* %75)
  br label %77

77:                                               ; preds = %74, %63
  br label %80

78:                                               ; preds = %4
  %79 = load i32, i32* @EINVAL, align 4
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %78, %77, %51
  %81 = load i32, i32* %9, align 4
  ret i32 %81
}

declare dso_local i32 @bit_test(i32, i32) #1

declare dso_local i32 @EVDEV_LOCK(%struct.evdev_dev*) #1

declare dso_local i32 @evdev_push_event(%struct.evdev_dev*, i32, i32, i32) #1

declare dso_local i32 @EVDEV_UNLOCK(%struct.evdev_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
