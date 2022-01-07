; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_evdev.c_evdev_push_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_evdev.c_evdev_push_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdev_dev = type { i32, i32, i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@kdb_active = common dso_local global i64 0, align 8
@EV_LED = common dso_local global i32 0, align 4
@EV_SYN = common dso_local global i32 0, align 4
@SYN_REPORT = common dso_local global i32 0, align 4
@EVDEV_FLAG_MT_AUTOREL = common dso_local global i32 0, align 4
@EVDEV_FLAG_MT_STCOMPAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evdev_push_event(%struct.evdev_dev* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.evdev_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.evdev_dev* %0, %struct.evdev_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %10 = load %struct.evdev_dev*, %struct.evdev_dev** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i64, i64* %9, align 8
  %14 = call i64 @evdev_check_event(%struct.evdev_dev* %10, i32 %11, i32 %12, i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %5, align 4
  br label %109

18:                                               ; preds = %4
  %19 = load i64, i64* @kdb_active, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = call i64 (...) @SCHEDULER_STOPPED()
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %21, %18
  %25 = load %struct.evdev_dev*, %struct.evdev_dev** %6, align 8
  %26 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @EV_LED, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %24
  %31 = load %struct.evdev_dev*, %struct.evdev_dev** %6, align 8
  %32 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.evdev_dev*, %struct.evdev_dev** %6, align 8
  %35 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i64 @bit_test(i32 %36, i32 %37)
  %39 = load i64, i64* %9, align 8
  %40 = icmp ne i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @bit_set(i32 %33, i32 %41)
  br label %43

43:                                               ; preds = %30, %24
  store i32 0, i32* %5, align 4
  br label %109

44:                                               ; preds = %21
  %45 = load %struct.evdev_dev*, %struct.evdev_dev** %6, align 8
  %46 = call i32 @EVDEV_ENTER(%struct.evdev_dev* %45)
  %47 = load %struct.evdev_dev*, %struct.evdev_dev** %6, align 8
  %48 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %44
  %52 = load %struct.evdev_dev*, %struct.evdev_dev** %6, align 8
  %53 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %52, i32 0, i32 0
  store i32 0, i32* %53, align 8
  %54 = load %struct.evdev_dev*, %struct.evdev_dev** %6, align 8
  %55 = call i32 @evdev_restore_after_kdb(%struct.evdev_dev* %54)
  br label %56

56:                                               ; preds = %51, %44
  %57 = load %struct.evdev_dev*, %struct.evdev_dev** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @evdev_modify_event(%struct.evdev_dev* %57, i32 %58, i32 %59, i64* %9)
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @EV_SYN, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %78

64:                                               ; preds = %56
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @SYN_REPORT, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %64
  %69 = load %struct.evdev_dev*, %struct.evdev_dev** %6, align 8
  %70 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @EVDEV_FLAG_MT_AUTOREL, align 4
  %73 = call i64 @bit_test(i32 %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load %struct.evdev_dev*, %struct.evdev_dev** %6, align 8
  %77 = call i32 @evdev_send_mt_autorel(%struct.evdev_dev* %76)
  br label %78

78:                                               ; preds = %75, %68, %64, %56
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @EV_SYN, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %101

82:                                               ; preds = %78
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @SYN_REPORT, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %101

86:                                               ; preds = %82
  %87 = load %struct.evdev_dev*, %struct.evdev_dev** %6, align 8
  %88 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %86
  %92 = load %struct.evdev_dev*, %struct.evdev_dev** %6, align 8
  %93 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @EVDEV_FLAG_MT_STCOMPAT, align 4
  %96 = call i64 @bit_test(i32 %94, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %91
  %99 = load %struct.evdev_dev*, %struct.evdev_dev** %6, align 8
  %100 = call i32 @evdev_send_mt_compat(%struct.evdev_dev* %99)
  br label %101

101:                                              ; preds = %98, %91, %86, %82, %78
  %102 = load %struct.evdev_dev*, %struct.evdev_dev** %6, align 8
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %8, align 4
  %105 = load i64, i64* %9, align 8
  %106 = call i32 @evdev_send_event(%struct.evdev_dev* %102, i32 %103, i32 %104, i64 %105)
  %107 = load %struct.evdev_dev*, %struct.evdev_dev** %6, align 8
  %108 = call i32 @EVDEV_EXIT(%struct.evdev_dev* %107)
  store i32 0, i32* %5, align 4
  br label %109

109:                                              ; preds = %101, %43, %16
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i64 @evdev_check_event(%struct.evdev_dev*, i32, i32, i64) #1

declare dso_local i64 @SCHEDULER_STOPPED(...) #1

declare dso_local i32 @bit_set(i32, i32) #1

declare dso_local i64 @bit_test(i32, i32) #1

declare dso_local i32 @EVDEV_ENTER(%struct.evdev_dev*) #1

declare dso_local i32 @evdev_restore_after_kdb(%struct.evdev_dev*) #1

declare dso_local i32 @evdev_modify_event(%struct.evdev_dev*, i32, i32, i64*) #1

declare dso_local i32 @evdev_send_mt_autorel(%struct.evdev_dev*) #1

declare dso_local i32 @evdev_send_mt_compat(%struct.evdev_dev*) #1

declare dso_local i32 @evdev_send_event(%struct.evdev_dev*, i32, i32, i64) #1

declare dso_local i32 @EVDEV_EXIT(%struct.evdev_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
