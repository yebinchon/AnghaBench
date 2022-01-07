; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_evdev.c_evdev_dispose_client.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_evdev.c_evdev_dispose_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdev_dev = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.evdev_dev*)* }
%struct.evdev_client = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"removing client for device %s\00", align 1
@ec_link = common dso_local global i32 0, align 4
@EV_REP = common dso_local global i32 0, align 4
@EVDEV_FLAG_SOFTREPEAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evdev_dispose_client(%struct.evdev_dev* %0, %struct.evdev_client* %1) #0 {
  %3 = alloca %struct.evdev_dev*, align 8
  %4 = alloca %struct.evdev_client*, align 8
  store %struct.evdev_dev* %0, %struct.evdev_dev** %3, align 8
  store %struct.evdev_client* %1, %struct.evdev_client** %4, align 8
  %5 = load %struct.evdev_dev*, %struct.evdev_dev** %3, align 8
  %6 = load %struct.evdev_dev*, %struct.evdev_dev** %3, align 8
  %7 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @debugf(%struct.evdev_dev* %5, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.evdev_dev*, %struct.evdev_dev** %3, align 8
  %11 = call i32 @EVDEV_LOCK_ASSERT(%struct.evdev_dev* %10)
  %12 = load %struct.evdev_client*, %struct.evdev_client** %4, align 8
  %13 = load i32, i32* @ec_link, align 4
  %14 = call i32 @LIST_REMOVE(%struct.evdev_client* %12, i32 %13)
  %15 = load %struct.evdev_dev*, %struct.evdev_dev** %3, align 8
  %16 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %15, i32 0, i32 2
  %17 = call i64 @LIST_EMPTY(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %55

19:                                               ; preds = %2
  %20 = load %struct.evdev_dev*, %struct.evdev_dev** %3, align 8
  %21 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = icmp ne %struct.TYPE_2__* %22, null
  br i1 %23, label %24, label %39

24:                                               ; preds = %19
  %25 = load %struct.evdev_dev*, %struct.evdev_dev** %3, align 8
  %26 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (%struct.evdev_dev*)*, i32 (%struct.evdev_dev*)** %28, align 8
  %30 = icmp ne i32 (%struct.evdev_dev*)* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %24
  %32 = load %struct.evdev_dev*, %struct.evdev_dev** %3, align 8
  %33 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (%struct.evdev_dev*)*, i32 (%struct.evdev_dev*)** %35, align 8
  %37 = load %struct.evdev_dev*, %struct.evdev_dev** %3, align 8
  %38 = call i32 %36(%struct.evdev_dev* %37)
  br label %39

39:                                               ; preds = %31, %24, %19
  %40 = load %struct.evdev_dev*, %struct.evdev_dev** %3, align 8
  %41 = load i32, i32* @EV_REP, align 4
  %42 = call i64 @evdev_event_supported(%struct.evdev_dev* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  %45 = load %struct.evdev_dev*, %struct.evdev_dev** %3, align 8
  %46 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @EVDEV_FLAG_SOFTREPEAT, align 4
  %49 = call i64 @bit_test(i32 %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load %struct.evdev_dev*, %struct.evdev_dev** %3, align 8
  %53 = call i32 @evdev_stop_repeat(%struct.evdev_dev* %52)
  br label %54

54:                                               ; preds = %51, %44, %39
  br label %55

55:                                               ; preds = %54, %2
  %56 = load %struct.evdev_dev*, %struct.evdev_dev** %3, align 8
  %57 = load %struct.evdev_client*, %struct.evdev_client** %4, align 8
  %58 = call i32 @evdev_release_client(%struct.evdev_dev* %56, %struct.evdev_client* %57)
  ret void
}

declare dso_local i32 @debugf(%struct.evdev_dev*, i8*, i32) #1

declare dso_local i32 @EVDEV_LOCK_ASSERT(%struct.evdev_dev*) #1

declare dso_local i32 @LIST_REMOVE(%struct.evdev_client*, i32) #1

declare dso_local i64 @LIST_EMPTY(i32*) #1

declare dso_local i64 @evdev_event_supported(%struct.evdev_dev*, i32) #1

declare dso_local i64 @bit_test(i32, i32) #1

declare dso_local i32 @evdev_stop_repeat(%struct.evdev_dev*) #1

declare dso_local i32 @evdev_release_client(%struct.evdev_dev*, %struct.evdev_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
