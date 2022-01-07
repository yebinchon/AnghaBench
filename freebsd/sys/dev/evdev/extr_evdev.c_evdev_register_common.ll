; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_evdev.c_evdev_register_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_evdev.c_evdev_register_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdev_dev = type { i32*, i64, i32*, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"%s: registered evdev provider: %s <%s>\0A\00", align 1
@EV_REP = common dso_local global i32 0, align 4
@EVDEV_FLAG_SOFTREPEAT = common dso_local global i32 0, align 4
@REP_DELAY = common dso_local global i64 0, align 8
@REP_PERIOD = common dso_local global i64 0, align 8
@ABS_MT_SLOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evdev_dev*)* @evdev_register_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evdev_register_common(%struct.evdev_dev* %0) #0 {
  %2 = alloca %struct.evdev_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.evdev_dev* %0, %struct.evdev_dev** %2, align 8
  %4 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %5 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %6 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %5, i32 0, i32 10
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %9 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %8, i32 0, i32 9
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %12 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %11, i32 0, i32 8
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @debugf(%struct.evdev_dev* %4, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %10, i32 %13)
  %15 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %16 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %15, i32 0, i32 7
  %17 = call i32 @LIST_INIT(i32* %16)
  %18 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %19 = load i32, i32* @EV_REP, align 4
  %20 = call i64 @evdev_event_supported(%struct.evdev_dev* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %62

22:                                               ; preds = %1
  %23 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %24 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @EVDEV_FLAG_SOFTREPEAT, align 4
  %27 = call i64 @bit_test(i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %62

29:                                               ; preds = %22
  %30 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %31 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %30, i32 0, i32 5
  %32 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %33 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %32, i32 0, i32 4
  %34 = call i32 @callout_init_mtx(i32* %31, i32* %33, i32 0)
  %35 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %36 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @REP_DELAY, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %61

42:                                               ; preds = %29
  %43 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %44 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* @REP_PERIOD, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %42
  %51 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %52 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* @REP_DELAY, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32 250, i32* %55, align 4
  %56 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %57 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* @REP_PERIOD, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32 33, i32* %60, align 4
  br label %61

61:                                               ; preds = %50, %42, %29
  br label %62

62:                                               ; preds = %61, %22, %1
  %63 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %64 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @ABS_MT_SLOT, align 4
  %67 = call i64 @bit_test(i32 %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %62
  %70 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %71 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %81

74:                                               ; preds = %69
  %75 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %76 = call i64 @MAXIMAL_MT_SLOT(%struct.evdev_dev* %75)
  %77 = icmp sgt i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %80 = call i32 @evdev_mt_init(%struct.evdev_dev* %79)
  br label %81

81:                                               ; preds = %78, %74, %69, %62
  %82 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %83 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %81
  %87 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %88 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %89 = call i32 @evdev_estimate_report_size(%struct.evdev_dev* %88)
  %90 = call i32 @evdev_set_report_size(%struct.evdev_dev* %87, i32 %89)
  store i32 %90, i32* %3, align 4
  %91 = load i32, i32* %3, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  br label %104

94:                                               ; preds = %86
  br label %95

95:                                               ; preds = %94, %81
  %96 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %97 = call i32 @evdev_cdev_create(%struct.evdev_dev* %96)
  store i32 %97, i32* %3, align 4
  %98 = load i32, i32* %3, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  br label %104

101:                                              ; preds = %95
  %102 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %103 = call i32 @evdev_sysctl_create(%struct.evdev_dev* %102)
  br label %104

104:                                              ; preds = %101, %100, %93
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @debugf(%struct.evdev_dev*, i8*, i32, i32, i32) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i64 @evdev_event_supported(%struct.evdev_dev*, i32) #1

declare dso_local i64 @bit_test(i32, i32) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i64 @MAXIMAL_MT_SLOT(%struct.evdev_dev*) #1

declare dso_local i32 @evdev_mt_init(%struct.evdev_dev*) #1

declare dso_local i32 @evdev_set_report_size(%struct.evdev_dev*, i32) #1

declare dso_local i32 @evdev_estimate_report_size(%struct.evdev_dev*) #1

declare dso_local i32 @evdev_cdev_create(%struct.evdev_dev*) #1

declare dso_local i32 @evdev_sysctl_create(%struct.evdev_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
