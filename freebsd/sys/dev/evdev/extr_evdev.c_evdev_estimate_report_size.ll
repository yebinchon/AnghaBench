; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_evdev.c_evdev_estimate_report_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_evdev.c_evdev_estimate_report_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdev_dev = type { i32, i32, i32, i32, i32, i32*, i32, i32 }

@KEY_OK = common dso_local global i64 0, align 8
@KEY_CNT = common dso_local global i64 0, align 8
@BTN_MISC = common dso_local global i64 0, align 8
@REL_CNT = common dso_local global i64 0, align 8
@ABS_CNT = common dso_local global i64 0, align 8
@ABS_MT_FIRST = common dso_local global i64 0, align 8
@MT_CNT = common dso_local global i64 0, align 8
@ABS_MT_SLOT = common dso_local global i32 0, align 4
@MAX_MT_REPORTS = common dso_local global i32 0, align 4
@MSC_CNT = common dso_local global i64 0, align 8
@LED_CNT = common dso_local global i64 0, align 8
@SND_CNT = common dso_local global i64 0, align 8
@SW_CNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.evdev_dev*)* @evdev_estimate_report_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @evdev_estimate_report_size(%struct.evdev_dev* %0) #0 {
  %2 = alloca %struct.evdev_dev*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.evdev_dev* %0, %struct.evdev_dev** %2, align 8
  store i64 0, i64* %3, align 8
  %5 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %6 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %5, i32 0, i32 7
  %7 = load i32, i32* %6, align 4
  %8 = load i64, i64* @KEY_OK, align 8
  %9 = load i64, i64* @KEY_CNT, align 8
  %10 = load i64, i64* @KEY_OK, align 8
  %11 = sub nsw i64 %9, %10
  %12 = call i32 @bit_ffs_at(i32 %7, i64 %8, i64 %11, i32* %4)
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %17 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 4
  %19 = load i64, i64* @BTN_MISC, align 8
  %20 = call i32 @bit_ffs(i32 %18, i64 %19, i32* %4)
  br label %21

21:                                               ; preds = %15, %1
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, -1
  %24 = zext i1 %23 to i32
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* %3, align 8
  %27 = add i64 %26, %25
  store i64 %27, i64* %3, align 8
  %28 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %29 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* @BTN_MISC, align 8
  %32 = load i64, i64* @KEY_OK, align 8
  %33 = load i64, i64* @BTN_MISC, align 8
  %34 = sub nsw i64 %32, %33
  %35 = call i32 @bit_count(i32 %30, i64 %31, i64 %34, i32* %4)
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* %3, align 8
  %39 = add i64 %38, %37
  store i64 %39, i64* %3, align 8
  %40 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %41 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 8
  %43 = load i64, i64* @REL_CNT, align 8
  %44 = call i32 @bit_count(i32 %42, i64 0, i64 %43, i32* %4)
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* %3, align 8
  %48 = add i64 %47, %46
  store i64 %48, i64* %3, align 8
  %49 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %50 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %49, i32 0, i32 5
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %98

53:                                               ; preds = %21
  %54 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %55 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = load i64, i64* @ABS_CNT, align 8
  %58 = call i32 @bit_count(i32 %56, i64 0, i64 %57, i32* %4)
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* %3, align 8
  %62 = add i64 %61, %60
  store i64 %62, i64* %3, align 8
  %63 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %64 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = load i64, i64* @ABS_MT_FIRST, align 8
  %67 = load i64, i64* @MT_CNT, align 8
  %68 = call i32 @bit_count(i32 %65, i64 %66, i64 %67, i32* %4)
  %69 = load i32, i32* %4, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %97

71:                                               ; preds = %53
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %4, align 4
  %74 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %75 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @ABS_MT_SLOT, align 4
  %78 = call i64 @bit_test(i32 %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %71
  %81 = load i32, i32* %4, align 4
  %82 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %83 = call i32 @MAXIMAL_MT_SLOT(%struct.evdev_dev* %82)
  %84 = mul nsw i32 %81, %83
  %85 = sext i32 %84 to i64
  %86 = load i64, i64* %3, align 8
  %87 = add i64 %86, %85
  store i64 %87, i64* %3, align 8
  br label %96

88:                                               ; preds = %71
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @MAX_MT_REPORTS, align 4
  %91 = sub nsw i32 %90, 1
  %92 = mul nsw i32 %89, %91
  %93 = sext i32 %92 to i64
  %94 = load i64, i64* %3, align 8
  %95 = add i64 %94, %93
  store i64 %95, i64* %3, align 8
  br label %96

96:                                               ; preds = %88, %80
  br label %97

97:                                               ; preds = %96, %53
  br label %98

98:                                               ; preds = %97, %21
  %99 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %100 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load i64, i64* @MSC_CNT, align 8
  %103 = call i32 @bit_count(i32 %101, i64 0, i64 %102, i32* %4)
  %104 = load i32, i32* %4, align 4
  %105 = sext i32 %104 to i64
  %106 = load i64, i64* %3, align 8
  %107 = add i64 %106, %105
  store i64 %107, i64* %3, align 8
  %108 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %109 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load i64, i64* @LED_CNT, align 8
  %112 = call i32 @bit_count(i32 %110, i64 0, i64 %111, i32* %4)
  %113 = load i32, i32* %4, align 4
  %114 = sext i32 %113 to i64
  %115 = load i64, i64* %3, align 8
  %116 = add i64 %115, %114
  store i64 %116, i64* %3, align 8
  %117 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %118 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i64, i64* @SND_CNT, align 8
  %121 = call i32 @bit_ffs(i32 %119, i64 %120, i32* %4)
  %122 = load i32, i32* %4, align 4
  %123 = icmp ne i32 %122, -1
  %124 = zext i1 %123 to i32
  %125 = sext i32 %124 to i64
  %126 = load i64, i64* %3, align 8
  %127 = add i64 %126, %125
  store i64 %127, i64* %3, align 8
  %128 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %129 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i64, i64* @SW_CNT, align 8
  %132 = call i32 @bit_ffs(i32 %130, i64 %131, i32* %4)
  %133 = load i32, i32* %4, align 4
  %134 = icmp ne i32 %133, -1
  %135 = zext i1 %134 to i32
  %136 = sext i32 %135 to i64
  %137 = load i64, i64* %3, align 8
  %138 = add i64 %137, %136
  store i64 %138, i64* %3, align 8
  %139 = load i64, i64* %3, align 8
  %140 = add i64 %139, 1
  store i64 %140, i64* %3, align 8
  %141 = load i64, i64* %3, align 8
  ret i64 %141
}

declare dso_local i32 @bit_ffs_at(i32, i64, i64, i32*) #1

declare dso_local i32 @bit_ffs(i32, i64, i32*) #1

declare dso_local i32 @bit_count(i32, i64, i64, i32*) #1

declare dso_local i64 @bit_test(i32, i32) #1

declare dso_local i32 @MAXIMAL_MT_SLOT(%struct.evdev_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
